; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/debug.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_hole = type { i32, i32 }
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
%struct.ath_hw_antcomb_conf = type { i8, i8, i8, i8, i8, i32, i32, i8 }
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
%struct.ath_tx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ath9k_vif_iter_data = type { [6 x i8], [6 x i8], i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.94 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.98 = type { ptr }
%struct.anon.142 = type { ptr, i32 }

@ath9k_gstrings_stats = internal constant { [78 x [32 x i8]], [608 x i8] } { [78 x [32 x i8]] [[32 x i8] c"tx_pkts_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pkts_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_pkts_BE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_pkts_BK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_pkts_VI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_pkts_VO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_bytes_BE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_bytes_BK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_bytes_VI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_bytes_VO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdus_queued_BE\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdus_queued_BK\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdus_queued_VI\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdus_queued_VO\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdus_completed_BE\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdus_completed_BK\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdus_completed_VI\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdus_completed_VO\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdu_xretries_BE\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdu_xretries_BK\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdu_xretries_VI\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdu_xretries_VO\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_aggregates_BE\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_aggregates_BK\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_aggregates_VI\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_aggregates_VO\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdus_queued_hw_BE\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdus_queued_hw_BK\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdus_queued_hw_VI\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdus_queued_hw_VO\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdus_completed_BE\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdus_completed_BK\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdus_completed_VI\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdus_completed_VO\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdu_retries_BE\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdu_retries_BK\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdu_retries_VI\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdu_retries_VO\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdu_xretries_BE\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdu_xretries_BK\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdu_xretries_VI\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ampdu_xretries_VO\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_fifo_underrun_BE\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_fifo_underrun_BK\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_fifo_underrun_VI\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_fifo_underrun_VO\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_op_exceeded_BE\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_op_exceeded_BK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_op_exceeded_VI\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_op_exceeded_VO\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_timer_expiry_BE\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_timer_expiry_BK\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_timer_expiry_VI\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_timer_expiry_VO\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_desc_cfg_err_BE\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_desc_cfg_err_BK\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_desc_cfg_err_VI\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_desc_cfg_err_VO\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_data_underrun_BE\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_data_underrun_BK\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_data_underrun_VI\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_data_underrun_VO\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_delim_underrun_BE\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_delim_underrun_BK\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_delim_underrun_VI\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_delim_underrun_VO\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_crc_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_decrypt_crc_err\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_phy_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_mic_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_pre_delim_crc_err\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_post_delim_crc_err\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_decrypt_busy_err\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_phyerr_radar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_phyerr_ofdm_timing\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_phyerr_cck_timing\00\00\00\00\00\00\00\00\00\00"], [608 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ath9k\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@fops_debug = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_debug, ptr @write_file_debug, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interrupt\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xmit\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"queues\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"misc\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@fops_reset = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @write_file_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_file_reset, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_chainmask\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_chainmask\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ani\00", [28 x i8] zeroinitializer }, align 32
@fops_ani = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_ani, ptr @write_file_ani, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"paprd\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regidx\00", [25 x i8] zeroinitializer }, align 32
@fops_regidx = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_regidx, ptr @write_file_regidx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regval\00", [25 x i8] zeroinitializer }, align 32
@fops_regval = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_regval, ptr @write_file_regval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ignore_extcca\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"regdump\00", [24 x i8] zeroinitializer }, align 32
@fops_regdump = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath9k_debugfs_read_buf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_file_regdump, ptr null, ptr @ath9k_debugfs_release_buf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dump_nfcal\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio_mask\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_val\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"antenna_diversity\00", [46 x i8] zeroinitializer }, align 32
@fops_antenna_diversity = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_antenna_diversity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bt_ant_diversity\00", [47 x i8] zeroinitializer }, align 32
@fops_bt_ant_diversity = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_bt_ant_diversity, ptr @write_file_bt_ant_diversity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"btcoex\00", [25 x i8] zeroinitializer }, align 32
@fops_btcoex = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_btcoex, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wow\00", [28 x i8] zeroinitializer }, align 32
@fops_wow = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_wow, ptr @write_file_wow, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ack_to\00", [25 x i8] zeroinitializer }, align 32
@fops_ackto = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_ackto, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tpc\00", [28 x i8] zeroinitializer }, align 32
@fops_tpc = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_tpc, ptr @write_file_tpc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nf_override\00", [20 x i8] zeroinitializer }, align 32
@fops_nf_override = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_nf_override, ptr @write_file_nf_override, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Raw DMA Debug values:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d: %08x \00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0A\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Num QCU: chain_st fsp_ok fsp_st DCU: chain_st\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%2d          %2x      %1x     %2x           %2x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"qcu_stitch state:   %2x    qcu_fetch state:        %2x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"qcu_complete state: %2x    dcu_complete state:     %2x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"dcu_arb state:      %2x    dcu_fp state:           %2x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"chan_idle_dur:     %3d    chan_idle_dur_valid:     %1d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"txfifo_valid_0:      %1d    txfifo_valid_1:          %1d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"txfifo_dcu_num_0:   %2d    txfifo_dcu_num_1:       %2d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcu observe: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AR_CR: 0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%21s: %10u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RXLP\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RXHP\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WATCHDOG\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXEOL\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXORN\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TXURN\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MIB\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXPHY\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXKCM\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWBA\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BMISS\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BNR\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CST\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GTT\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TIM\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CABEND\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DTIMSYNC\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DTIM\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TSFOOR\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MCI\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GENTIMER\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TOTAL\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SYNC_CAUSE stats:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sync-All\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RTC-IRQ\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MAC-IRQ\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EEPROM-Illegal-Access\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"APB-Timeout\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCI-Mode-Conflict\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HOST1-Fatal\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HOST1-Perr\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TRCV-FIFO-Perr\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RADM-CPL-EP\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RADM-CPL-DLLP-Abort\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RADM-CPL-TLP-Abort\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RADM-CPL-ECRC-Err\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RADM-CPL-Timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Local-Bus-Timeout\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PM-Access\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MAC-Awake\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MAC-Asleep\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MAC-Sleep-Access\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%30s %10s%10s%10s\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BE\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BK\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VI\00", [29 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VO\00", [29 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s%13u%11u%10u%10u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MPDUs Queued:    \00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MPDUs Completed: \00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MPDUs XRetried:  \00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Aggregates:      \00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AMPDUs Queued HW:\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AMPDUs Completed:\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AMPDUs Retried:  \00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AMPDUs XRetried: \00", [46 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TXERR Filtered:  \00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FIFO Underrun:   \00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TXOP Exceeded:   \00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TXTIMER Expiry:  \00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DESC CFG Error:  \00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DATA Underrun:   \00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DELIM Underrun:  \00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX-Pkts-All:     \00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX-Bytes-All:    \00", [46 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HW-put-tx-buf:   \00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HW-tx-start:     \00", [46 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HW-tx-proc-desc: \00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX-Failed:       \00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(%s):  \00", [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(CAB): \00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d \00", [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qnum\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: %2d \00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qdepth\00", [25 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ampdu-depth\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: %3d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pending\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BSSID: %pM\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BSSID-MASK: %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OPMODE: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RXFILTER: 0x%x\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" UCAST\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" MCAST\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" BCAST\00", [25 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" CONTROL\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" BEACON\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" PROM\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" PROBEREQ\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" PHYERR\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" MYBEACON\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" COMP_BAR\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" PSPOLL\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" PHYRADAR\00", [22 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" MCAST_BCAST_ALL\00", [47 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" CONTROL_WRAPPER\00", [47 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INTERRUPT-MASK: 0x%x\00", [43 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" SWBA\00", [26 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" BMISS\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" CST\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" RX\00", [28 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" RXHP\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" RXLP\00", [26 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" BB_WATCHDOG\00", [19 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VIFS: CTX %i(%i) AP: %i STA: %i MESH: %i\00", [55 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c" ADHOC: %i OCB: %i TOTAL: %hi BEACON-VIF: %hi\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"User reset\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Baseband Hang\00", [18 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Baseband Watchdog\00", [46 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fatal HW Error\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX HW error\00", [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Transmit timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX Path Hang\00", [19 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PLL RX Hang\00", [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAC Hang\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Stuck Beacon\00", [19 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MCI Reset\00", [22 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Calibration error\00", [46 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tx DMA stop error\00", [46 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Rx DMA stop error\00", [46 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%17s: %2d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ANI RESET\00", [22 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OFDM LEVEL\00", [21 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CCK LEVEL\00", [22 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPUR UP\00", [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPUR DOWN\00", [22 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OFDM WS-DET ON\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OFDM WS-DET OFF\00", [16 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MRC-CCK ON\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MRC-CCK OFF\00", [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FIR-STEP UP\00", [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIR-STEP DOWN\00", [18 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INV LISTENTIME\00", [17 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OFDM ERRORS\00", [20 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CCK ERRORS\00", [21 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%15s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ANI\00", [28 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISABLED\00", [23 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENABLED\00", [24 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%15s: %u\0A\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@open_file_regdump.reg_hole_list = internal constant { [6 x %struct.reg_hole], [48 x i8] } { [6 x %struct.reg_hole] [%struct.reg_hole { i32 512, i32 2044 }, %struct.reg_hole { i32 3072, i32 4092 }, %struct.reg_hole { i32 8192, i32 16380 }, %struct.reg_hole { i32 16640, i32 28668 }, %struct.reg_hole { i32 28764, i32 32764 }, %struct.reg_hole zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%06x 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Channel Noise Floor : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Chain | privNF | # Readings | NF Readings\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" %d\09 %d\09 %d\09\09\00", [18 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@read_file_antenna_diversity.lna_conf_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196], [16 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LNA1_MINUS_LNA2\00", [16 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LNA2\00", [27 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LNA1\00", [27 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LNA1_PLUS_LNA2\00", [17 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Antenna Diversity Combining is disabled\00", [56 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Current MAIN config : %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Current ALT config  : %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Average MAIN RSSI   : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Average ALT RSSI    : %d\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Packet Receive Cnt:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"-------------------\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%30s%15s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MAIN\00", [27 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALT\00", [28 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%-14s:%15d%15d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TOTAL COUNT\00", [20 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LNA1 + LNA2\00", [20 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LNA1 - LNA2\00", [20 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0ALNA Config Attempts:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"--------------------\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Enable WLAN/BT RX Antenna diversity: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BTCOEX is disabled\00", [45 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WOW: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %c\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.222 = private unnamed_addr constant [21 x i8] c"ath9k_gstrings_stats\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1295, i32 19 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1421, i32 45 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1427, i32 22 }
@___asan_gen_.231 = private unnamed_addr constant [11 x i8] c"fops_debug\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 119, i32 37 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1435, i32 39 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1437, i32 39 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1439, i32 39 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1441, i32 39 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1443, i32 39 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1445, i32 22 }
@___asan_gen_.252 = private unnamed_addr constant [11 x i8] c"fops_reset\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 822, i32 37 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1451, i32 20 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1453, i32 20 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1455, i32 22 }
@___asan_gen_.264 = private unnamed_addr constant [9 x i8] c"fops_ani\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 220, i32 37 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1457, i32 22 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1459, i32 22 }
@___asan_gen_.273 = private unnamed_addr constant [12 x i8] c"fops_regidx\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 904, i32 37 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1461, i32 22 }
@___asan_gen_.279 = private unnamed_addr constant [12 x i8] c"fops_regval\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 951, i32 37 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1463, i32 22 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1466, i32 22 }
@___asan_gen_.288 = private unnamed_addr constant [13 x i8] c"fops_regdump\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1005, i32 37 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1468, i32 39 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1475, i32 21 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1477, i32 21 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1479, i32 22 }
@___asan_gen_.303 = private unnamed_addr constant [23 x i8] c"fops_antenna_diversity\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 397, i32 37 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1482, i32 22 }
@___asan_gen_.309 = private unnamed_addr constant [22 x i8] c"fops_bt_ant_diversity\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 275, i32 37 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1484, i32 22 }
@___asan_gen_.315 = private unnamed_addr constant [12 x i8] c"fops_btcoex\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1069, i32 37 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1489, i32 22 }
@___asan_gen_.321 = private unnamed_addr constant [9 x i8] c"fops_wow\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1153, i32 37 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1493, i32 22 }
@___asan_gen_.327 = private unnamed_addr constant [11 x i8] c"fops_ackto\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1092, i32 37 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1496, i32 22 }
@___asan_gen_.333 = private unnamed_addr constant [9 x i8] c"fops_tpc\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1222, i32 37 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1498, i32 22 }
@___asan_gen_.339 = private unnamed_addr constant [17 x i8] c"fops_nf_override\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1284, i32 37 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 94, i32 21 }
@___asan_gen_.346 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 156, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 420, i32 17 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 424, i32 19 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 427, i32 20 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 430, i32 17 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 431, i32 17 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 444, i32 20 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 453, i32 19 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 455, i32 19 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 457, i32 19 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 459, i32 19 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 461, i32 19 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 463, i32 19 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 466, i32 19 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 467, i32 19 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 539, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 540, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 541, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 543, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 545, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 546, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 547, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 548, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 549, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 550, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 551, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 552, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 553, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 554, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 555, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 556, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 557, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 558, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 559, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 560, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 561, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 562, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 563, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 564, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 566, i32 17 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 568, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 569, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 570, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 571, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 572, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 573, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 574, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 575, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 576, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 577, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 578, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 579, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 580, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 581, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 582, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 583, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 584, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 585, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 586, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 596, i32 19 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 596, i32 44 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 596, i32 50 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 596, i32 56 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 596, i32 62 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 598, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 599, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 600, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 601, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 602, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 603, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 604, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 605, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 606, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 607, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 608, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 609, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 610, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 611, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 612, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 613, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 614, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 615, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 616, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 617, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 618, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 648, i32 20 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 652, i32 17 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 628, i32 19 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 628, i32 30 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 629, i32 19 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 629, i32 31 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 630, i32 31 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 631, i32 19 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 631, i32 32 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 668, i32 19 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 669, i32 19 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 670, i32 19 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 677, i32 19 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 680, i32 18 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 682, i32 18 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 684, i32 18 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 686, i32 18 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 688, i32 18 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 690, i32 18 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 692, i32 18 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 694, i32 18 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 696, i32 18 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 698, i32 18 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 700, i32 18 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 702, i32 18 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 704, i32 18 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 706, i32 18 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 712, i32 19 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 715, i32 18 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 717, i32 18 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 719, i32 18 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 721, i32 18 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 723, i32 18 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 725, i32 18 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 727, i32 18 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 738, i32 7 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 742, i32 20 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 754, i32 23 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 755, i32 26 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 756, i32 30 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 757, i32 28 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 758, i32 27 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 759, i32 25 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 760, i32 26 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 761, i32 27 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 762, i32 27 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 763, i32 31 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 764, i32 22 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 765, i32 30 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 766, i32 26 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 767, i32 26 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 775, i32 20 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 147, i32 5 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 148, i32 5 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 149, i32 5 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 150, i32 5 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 151, i32 5 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 152, i32 5 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 153, i32 5 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 154, i32 5 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 155, i32 5 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 156, i32 5 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 157, i32 5 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 158, i32 5 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 159, i32 5 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 160, i32 5 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 167, i32 42 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 167, i32 56 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 168, i32 27 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 168, i32 40 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 174, i32 43 }
@___asan_gen_.819 = private unnamed_addr constant [14 x i8] c"reg_hole_list\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 971, i32 4 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 996, i32 4 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1025, i32 19 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1026, i32 17 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1033, i32 20 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1035, i32 21 }
@___asan_gen_.837 = private unnamed_addr constant [13 x i8] c"lna_conf_str\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 313, i32 21 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 314, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 314, i32 22 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 314, i32 30 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 314, i32 38 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 322, i32 43 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 323, i32 6 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 329, i32 42 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 331, i32 42 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 333, i32 42 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 335, i32 42 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 339, i32 42 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 340, i32 42 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 342, i32 42 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 343, i32 5 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 343, i32 13 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 344, i32 42 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 345, i32 5 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 357, i32 5 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 361, i32 5 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 365, i32 42 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 366, i32 42 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 239, i32 21 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 268, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1057, i32 5 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1114, i32 42 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1086, i32 21 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1240, i32 22 }
@___asan_gen_.924 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.925 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath9k/debug.c\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.925, i32 1262, i32 14 }
@llvm.compiler.used = appending global [235 x ptr] [ptr @ath9k_gstrings_stats, ptr @.str.1, ptr @.str.2, ptr @fops_debug, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @fops_reset, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @fops_ani, ptr @.str.12, ptr @.str.13, ptr @fops_regidx, ptr @.str.14, ptr @fops_regval, ptr @.str.15, ptr @.str.16, ptr @fops_regdump, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @fops_antenna_diversity, ptr @.str.21, ptr @fops_bt_ant_diversity, ptr @.str.22, ptr @fops_btcoex, ptr @.str.23, ptr @fops_wow, ptr @.str.24, ptr @fops_ackto, ptr @.str.25, ptr @fops_tpc, ptr @.str.26, ptr @fops_nf_override, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @open_file_regdump.reg_hole_list, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @read_file_antenna_diversity.lna_conf_str, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221], section "llvm.metadata"
@0 = internal global [235 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_gstrings_stats to i32), i32 2496, i32 3104, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_debug to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_reset to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ani to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_regidx to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_regval to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_regdump to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_antenna_diversity to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_bt_ant_diversity to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_btcoex to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_wow to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ackto to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_tpc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_nf_override to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_file_regdump.reg_hole_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_file_antenna_diversity.lna_conf_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath9k_debug_sync_cause(ptr nocapture noundef %sc, i32 noundef %sync_cause) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync_cause)
  %tobool.not = icmp eq i32 %sync_cause, 0
  br i1 %tobool.not, label %entry.if.end143_crit_edge, label %if.end

entry.if.end143_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

if.end:                                           ; preds = %entry
  %sync_cause_all = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 25
  %0 = ptrtoint ptr %sync_cause_all to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_cause_all, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %sync_cause_all, align 4
  %and = and i32 %sync_cause, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sync_rtc_irq = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 26
  %2 = ptrtoint ptr %sync_rtc_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sync_rtc_irq, align 4
  %inc6 = add i32 %3, 1
  store i32 %inc6, ptr %sync_rtc_irq, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %and8 = and i32 %sync_cause, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %sync_mac_irq = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 27
  %4 = ptrtoint ptr %sync_mac_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_mac_irq, align 4
  %inc14 = add i32 %5, 1
  store i32 %inc14, ptr %sync_mac_irq, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end7.if.end15_crit_edge
  %and16 = and i32 %sync_cause, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %eeprom_illegal_access = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 28
  %6 = ptrtoint ptr %eeprom_illegal_access to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eeprom_illegal_access, align 4
  %inc22 = add i32 %7, 1
  store i32 %inc22, ptr %eeprom_illegal_access, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15.if.end23_crit_edge
  %and24 = and i32 %sync_cause, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end31_crit_edge, label %if.then26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %apb_timeout = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 29
  %8 = ptrtoint ptr %apb_timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %apb_timeout, align 4
  %inc30 = add i32 %9, 1
  store i32 %inc30, ptr %apb_timeout, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end23.if.end31_crit_edge
  %and32 = and i32 %sync_cause, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end39_crit_edge, label %if.then34

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %pci_mode_conflict = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 30
  %10 = ptrtoint ptr %pci_mode_conflict to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pci_mode_conflict, align 4
  %inc38 = add i32 %11, 1
  store i32 %inc38, ptr %pci_mode_conflict, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end31.if.end39_crit_edge
  %and40 = and i32 %sync_cause, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end47_crit_edge, label %if.then42

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %host1_fatal = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 31
  %12 = ptrtoint ptr %host1_fatal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host1_fatal, align 4
  %inc46 = add i32 %13, 1
  store i32 %inc46, ptr %host1_fatal, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end39.if.end47_crit_edge
  %and48 = and i32 %sync_cause, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end55_crit_edge, label %if.then50

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %host1_perr = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 32
  %14 = ptrtoint ptr %host1_perr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host1_perr, align 4
  %inc54 = add i32 %15, 1
  store i32 %inc54, ptr %host1_perr, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.end47.if.end55_crit_edge
  %and56 = and i32 %sync_cause, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end63_crit_edge, label %if.then58

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %trcv_fifo_perr = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 33
  %16 = ptrtoint ptr %trcv_fifo_perr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %trcv_fifo_perr, align 4
  %inc62 = add i32 %17, 1
  store i32 %inc62, ptr %trcv_fifo_perr, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end55.if.end63_crit_edge
  %and64 = and i32 %sync_cause, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end71_crit_edge, label %if.then66

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %radm_cpl_ep = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 34
  %18 = ptrtoint ptr %radm_cpl_ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %radm_cpl_ep, align 4
  %inc70 = add i32 %19, 1
  store i32 %inc70, ptr %radm_cpl_ep, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end63.if.end71_crit_edge
  %and72 = and i32 %sync_cause, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end79_crit_edge, label %if.then74

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %radm_cpl_dllp_abort = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 35
  %20 = ptrtoint ptr %radm_cpl_dllp_abort to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %radm_cpl_dllp_abort, align 4
  %inc78 = add i32 %21, 1
  store i32 %inc78, ptr %radm_cpl_dllp_abort, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end71.if.end79_crit_edge
  %and80 = and i32 %sync_cause, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end87_crit_edge, label %if.then82

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %radm_cpl_tlp_abort = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 36
  %22 = ptrtoint ptr %radm_cpl_tlp_abort to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %radm_cpl_tlp_abort, align 4
  %inc86 = add i32 %23, 1
  store i32 %inc86, ptr %radm_cpl_tlp_abort, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %if.end79.if.end87_crit_edge
  %and88 = and i32 %sync_cause, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end87.if.end95_crit_edge, label %if.then90

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  %radm_cpl_ecrc_err = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 37
  %24 = ptrtoint ptr %radm_cpl_ecrc_err to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %radm_cpl_ecrc_err, align 4
  %inc94 = add i32 %25, 1
  store i32 %inc94, ptr %radm_cpl_ecrc_err, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %if.end87.if.end95_crit_edge
  %and96 = and i32 %sync_cause, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end103_crit_edge, label %if.then98

if.end95.if.end103_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  %radm_cpl_timeout = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 38
  %26 = ptrtoint ptr %radm_cpl_timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %radm_cpl_timeout, align 4
  %inc102 = add i32 %27, 1
  store i32 %inc102, ptr %radm_cpl_timeout, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %if.end95.if.end103_crit_edge
  %and104 = and i32 %sync_cause, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end111_crit_edge, label %if.then106

if.end103.if.end111_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  %local_timeout = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 39
  %28 = ptrtoint ptr %local_timeout to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %local_timeout, align 4
  %inc110 = add i32 %29, 1
  store i32 %inc110, ptr %local_timeout, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %if.end103.if.end111_crit_edge
  %and112 = and i32 %sync_cause, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end119_crit_edge, label %if.then114

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  %pm_access = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 40
  %30 = ptrtoint ptr %pm_access to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pm_access, align 4
  %inc118 = add i32 %31, 1
  store i32 %inc118, ptr %pm_access, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end111.if.end119_crit_edge
  %and120 = and i32 %sync_cause, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end119.if.end127_crit_edge, label %if.then122

if.end119.if.end127_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  %mac_awake = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 41
  %32 = ptrtoint ptr %mac_awake to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mac_awake, align 4
  %inc126 = add i32 %33, 1
  store i32 %inc126, ptr %mac_awake, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %if.end119.if.end127_crit_edge
  %and128 = and i32 %sync_cause, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.if.end135_crit_edge, label %if.then130

if.end127.if.end135_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #16
  %mac_asleep = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 42
  %34 = ptrtoint ptr %mac_asleep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mac_asleep, align 4
  %inc134 = add i32 %35, 1
  store i32 %inc134, ptr %mac_asleep, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %if.end127.if.end135_crit_edge
  %and136 = and i32 %sync_cause, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.if.end143_crit_edge, label %if.then138

if.end135.if.end143_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  %mac_sleep_access = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 43
  %36 = ptrtoint ptr %mac_sleep_access to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mac_sleep_access, align 4
  %inc142 = add i32 %37, 1
  store i32 %inc142, ptr %mac_sleep_access, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %if.end135.if.end143_crit_edge, %entry.if.end143_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath9k_debug_stat_ant(ptr nocapture noundef %sc, ptr nocapture noundef readonly %div_ant_conf, i32 noundef %main_rssi_avg, i32 noundef %alt_rssi_avg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %div_ant_conf, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 4, i32 0, i32 3, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx5, align 4
  %alt_lna_conf = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 1
  %4 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alt_lna_conf, align 1
  %idxprom7 = zext i8 %5 to i32
  %arrayidx8 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 4, i32 1, i32 3, i32 %idxprom7
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  %inc9 = add i32 %7, 1
  store i32 %inc9, ptr %arrayidx8, align 4
  %rssi_avg = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %rssi_avg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %main_rssi_avg, ptr %rssi_avg, align 4
  %rssi_avg10 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %rssi_avg10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %alt_rssi_avg, ptr %rssi_avg10, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath_debug_stat_interrupt(ptr noundef %sc, i32 noundef %status) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stats = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %stats, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then2.if.end10_crit_edge, label %if.then5

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %rxlp = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %rxlp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxlp, align 4
  %inc9 = add i32 %7, 1
  store i32 %inc9, ptr %rxlp, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.then2.if.end10_crit_edge
  %and11 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end18_crit_edge, label %if.then13

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %rxhp = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 3
  %8 = ptrtoint ptr %rxhp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxhp, align 4
  %inc17 = add i32 %9, 1
  store i32 %inc17, ptr %rxhp, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end10.if.end18_crit_edge
  %and19 = and i32 %status, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end35_crit_edge, label %if.then21

if.end18.if.end35_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %bb_watchdog = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 21
  br label %if.end35.sink.split

if.else:                                          ; preds = %if.end
  %and27 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else.if.end35_crit_edge, label %if.then29

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %rxok = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 1
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %if.then29, %if.then21
  %rxok.sink225 = phi ptr [ %rxok, %if.then29 ], [ %bb_watchdog, %if.then21 ]
  %10 = ptrtoint ptr %rxok.sink225 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxok.sink225, align 4
  %inc33 = add i32 %11, 1
  store i32 %inc33, ptr %rxok.sink225, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.else.if.end35_crit_edge, %if.end18.if.end35_crit_edge
  %and36 = and i32 %status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end43_crit_edge, label %if.then38

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %rxeol = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %rxeol to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxeol, align 4
  %inc42 = add i32 %13, 1
  store i32 %inc42, ptr %rxeol, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end35.if.end43_crit_edge
  %and44 = and i32 %status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end51_crit_edge, label %if.then46

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %rxorn = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 5
  %14 = ptrtoint ptr %rxorn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxorn, align 4
  %inc50 = add i32 %15, 1
  store i32 %inc50, ptr %rxorn, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end43.if.end51_crit_edge
  %and52 = and i32 %status, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end59_crit_edge, label %if.then54

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %txok = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 6
  %16 = ptrtoint ptr %txok to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txok, align 4
  %inc58 = add i32 %17, 1
  store i32 %inc58, ptr %txok, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end51.if.end59_crit_edge
  %and60 = and i32 %status, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end67_crit_edge, label %if.then62

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %txurn = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 8
  %18 = ptrtoint ptr %txurn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txurn, align 4
  %inc66 = add i32 %19, 1
  store i32 %inc66, ptr %txurn, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end59.if.end67_crit_edge
  %and68 = and i32 %status, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end75_crit_edge, label %if.then70

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %rxphyerr = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 10
  %20 = ptrtoint ptr %rxphyerr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rxphyerr, align 4
  %inc74 = add i32 %21, 1
  store i32 %inc74, ptr %rxphyerr, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %if.end67.if.end75_crit_edge
  %and76 = and i32 %status, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end83_crit_edge, label %if.then78

if.end75.if.end83_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  %rx_keycache_miss = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 11
  %22 = ptrtoint ptr %rx_keycache_miss to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_keycache_miss, align 4
  %inc82 = add i32 %23, 1
  store i32 %inc82, ptr %rx_keycache_miss, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end75.if.end83_crit_edge
  %and84 = and i32 %status, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end91_crit_edge, label %if.then86

if.end83.if.end91_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  %swba = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 12
  %24 = ptrtoint ptr %swba to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %swba, align 4
  %inc90 = add i32 %25, 1
  store i32 %inc90, ptr %swba, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.end83.if.end91_crit_edge
  %and92 = and i32 %status, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end99_crit_edge, label %if.then94

if.end91.if.end99_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  %bmiss = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 13
  %26 = ptrtoint ptr %bmiss to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bmiss, align 4
  %inc98 = add i32 %27, 1
  store i32 %inc98, ptr %bmiss, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.end91.if.end99_crit_edge
  %and100 = and i32 %status, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end107_crit_edge, label %if.then102

if.end99.if.end107_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  %bnr = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 14
  %28 = ptrtoint ptr %bnr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bnr, align 4
  %inc106 = add i32 %29, 1
  store i32 %inc106, ptr %bnr, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.end99.if.end107_crit_edge
  %and108 = and i32 %status, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end115_crit_edge, label %if.then110

if.end107.if.end115_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  %cst = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 15
  %30 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cst, align 4
  %inc114 = add i32 %31, 1
  store i32 %inc114, ptr %cst, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.end107.if.end115_crit_edge
  %and116 = and i32 %status, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end123_crit_edge, label %if.then118

if.end115.if.end123_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  %gtt = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 16
  %32 = ptrtoint ptr %gtt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gtt, align 4
  %inc122 = add i32 %33, 1
  store i32 %inc122, ptr %gtt, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then118, %if.end115.if.end123_crit_edge
  %and124 = and i32 %status, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end123.if.end131_crit_edge, label %if.then126

if.end123.if.end131_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end131

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  %tim = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 17
  %34 = ptrtoint ptr %tim to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tim, align 4
  %inc130 = add i32 %35, 1
  store i32 %inc130, ptr %tim, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then126, %if.end123.if.end131_crit_edge
  %and132 = and i32 %status, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end131.if.end139_crit_edge, label %if.then134

if.end131.if.end139_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139

if.then134:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  %cabend = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 18
  %36 = ptrtoint ptr %cabend to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cabend, align 4
  %inc138 = add i32 %37, 1
  store i32 %inc138, ptr %cabend, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then134, %if.end131.if.end139_crit_edge
  %and140 = and i32 %status, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end139.if.end147_crit_edge, label %if.then142

if.end139.if.end147_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #16
  %dtimsync = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 19
  %38 = ptrtoint ptr %dtimsync to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dtimsync, align 4
  %inc146 = add i32 %39, 1
  store i32 %inc146, ptr %dtimsync, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then142, %if.end139.if.end147_crit_edge
  %and148 = and i32 %status, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end147.if.end155_crit_edge, label %if.then150

if.end147.if.end155_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end155

if.then150:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  %dtim = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 20
  %40 = ptrtoint ptr %dtim to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dtim, align 4
  %inc154 = add i32 %41, 1
  store i32 %inc154, ptr %dtim, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then150, %if.end147.if.end155_crit_edge
  %and156 = and i32 %status, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end155.if.end163_crit_edge, label %if.then158

if.end155.if.end163_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end163

if.then158:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #16
  %tsfoor = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 22
  %42 = ptrtoint ptr %tsfoor to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tsfoor, align 4
  %inc162 = add i32 %43, 1
  store i32 %inc162, ptr %tsfoor, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then158, %if.end155.if.end163_crit_edge
  %and164 = and i32 %status, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end163.if.end171_crit_edge, label %if.then166

if.end163.if.end171_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171

if.then166:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  %mci = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 23
  %44 = ptrtoint ptr %mci to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mci, align 4
  %inc170 = add i32 %45, 1
  store i32 %inc170, ptr %mci, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %if.end163.if.end171_crit_edge
  %and172 = and i32 %status, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.end171.if.end179_crit_edge, label %if.then174

if.end171.if.end179_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end179

if.then174:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  %gen_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 0, i32 24
  %46 = ptrtoint ptr %gen_timer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gen_timer, align 4
  %inc178 = add i32 %47, 1
  store i32 %inc178, ptr %gen_timer, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.then174, %if.end171.if.end179_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath_debug_stat_tx(ptr nocapture noundef %sc, ptr nocapture noundef readonly %bf, ptr nocapture noundef readonly %ts, ptr nocapture noundef readonly %txq, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 1
  %0 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %axq_qnum, align 4
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 3
  %4 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bf_mpdu, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %tx_bytes_all = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 1
  %8 = ptrtoint ptr %tx_bytes_all to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_bytes_all, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %tx_bytes_all, align 4
  %bf_state = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 8
  %10 = ptrtoint ptr %bf_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bf_state, align 4
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.else24, label %if.then

if.then:                                          ; preds = %entry
  %and5 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body16, label %do.body8

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %a_xretries = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 9
  br label %if.end47

do.body16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %a_completed = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 7
  br label %if.end47

if.else24:                                        ; preds = %entry
  %ts_status = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 2
  %13 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ts_status, align 2
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool27.not = icmp eq i8 %15, 0
  br i1 %tobool27.not, label %do.body38, label %do.body29

do.body29:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  %xretries = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 4
  br label %if.end47

do.body38:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  %completed = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 3
  br label %if.end47

if.end47:                                         ; preds = %do.body38, %do.body29, %do.body16, %do.body8
  %xretries.sink177 = phi ptr [ %xretries, %do.body29 ], [ %completed, %do.body38 ], [ %a_xretries, %do.body8 ], [ %a_completed, %do.body16 ]
  %16 = ptrtoint ptr %xretries.sink177 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xretries.sink177, align 4
  %inc34 = add i32 %17, 1
  store i32 %inc34, ptr %xretries.sink177, align 4
  %ts_status48 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 2
  %18 = ptrtoint ptr %ts_status48 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ts_status48, align 2
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool51.not = icmp eq i8 %20, 0
  br i1 %tobool51.not, label %if.end47.if.end61_crit_edge, label %do.body53

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

do.body53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %txerr_filtered = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 10
  %21 = ptrtoint ptr %txerr_filtered to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %txerr_filtered, align 4
  %inc58 = add i32 %22, 1
  store i32 %inc58, ptr %txerr_filtered, align 4
  br label %if.end61

if.end61:                                         ; preds = %do.body53, %if.end47.if.end61_crit_edge
  %23 = ptrtoint ptr %ts_status48 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ts_status48, align 2
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool65.not = icmp eq i8 %25, 0
  br i1 %tobool65.not, label %if.end61.if.end75_crit_edge, label %do.body67

if.end61.if.end75_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

do.body67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %fifo_underrun = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 11
  %26 = ptrtoint ptr %fifo_underrun to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fifo_underrun, align 4
  %inc72 = add i32 %27, 1
  store i32 %inc72, ptr %fifo_underrun, align 4
  br label %if.end75

if.end75:                                         ; preds = %do.body67, %if.end61.if.end75_crit_edge
  %28 = ptrtoint ptr %ts_status48 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ts_status48, align 2
  %30 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool79.not = icmp eq i8 %30, 0
  br i1 %tobool79.not, label %if.end75.if.end89_crit_edge, label %do.body81

if.end75.if.end89_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

do.body81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  %xtxop = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 12
  %31 = ptrtoint ptr %xtxop to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xtxop, align 4
  %inc86 = add i32 %32, 1
  store i32 %inc86, ptr %xtxop, align 4
  br label %if.end89

if.end89:                                         ; preds = %do.body81, %if.end75.if.end89_crit_edge
  %33 = ptrtoint ptr %ts_status48 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ts_status48, align 2
  %35 = and i8 %34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool93.not = icmp eq i8 %35, 0
  br i1 %tobool93.not, label %if.end89.if.end103_crit_edge, label %do.body95

if.end89.if.end103_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103

do.body95:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  %timer_exp = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 13
  %36 = ptrtoint ptr %timer_exp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timer_exp, align 4
  %inc100 = add i32 %37, 1
  store i32 %inc100, ptr %timer_exp, align 4
  br label %if.end103

if.end103:                                        ; preds = %do.body95, %if.end89.if.end103_crit_edge
  %ts_flags = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 8
  %38 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ts_flags, align 4
  %40 = and i8 %39, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool106.not = icmp eq i8 %40, 0
  br i1 %tobool106.not, label %if.end103.if.end116_crit_edge, label %do.body108

if.end103.if.end116_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end116

do.body108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  %desc_cfg_err = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 14
  %41 = ptrtoint ptr %desc_cfg_err to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %desc_cfg_err, align 4
  %inc113 = add i32 %42, 1
  store i32 %inc113, ptr %desc_cfg_err, align 4
  br label %if.end116

if.end116:                                        ; preds = %do.body108, %if.end103.if.end116_crit_edge
  %43 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ts_flags, align 4
  %45 = and i8 %44, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool120.not = icmp eq i8 %45, 0
  br i1 %tobool120.not, label %if.end116.if.end130_crit_edge, label %do.body122

if.end116.if.end130_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end130

do.body122:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #16
  %data_underrun = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 15
  %46 = ptrtoint ptr %data_underrun to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_underrun, align 4
  %inc127 = add i32 %47, 1
  store i32 %inc127, ptr %data_underrun, align 4
  br label %if.end130

if.end130:                                        ; preds = %do.body122, %if.end116.if.end130_crit_edge
  %48 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ts_flags, align 4
  %50 = and i8 %49, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool134.not = icmp eq i8 %50, 0
  br i1 %tobool134.not, label %if.end130.if.end144_crit_edge, label %do.body136

if.end130.if.end144_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end144

do.body136:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #16
  %delim_underrun = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %1, i32 16
  %51 = ptrtoint ptr %delim_underrun to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delim_underrun, align 4
  %inc141 = add i32 %52, 1
  store i32 %inc141, ptr %delim_underrun, align 4
  br label %if.end144

if.end144:                                        ; preds = %do.body136, %if.end130.if.end144_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_debug_stat_rx(ptr noundef %sc, ptr noundef %rs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rxstats = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 2
  tail call void @ath9k_cmn_debug_stat_rx(ptr noundef %rxstats, ptr noundef %rs) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_debug_stat_rx(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath9k_get_et_strings(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, i32 noundef %sset, ptr nocapture noundef writeonly %data) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memcpy(ptr %data, ptr @ath9k_gstrings_stats, i32 2496)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath9k_get_et_sset_count(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, i32 noundef %sset) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  %. = select i1 %cmp, i32 78, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath9k_get_et_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %stats, ptr noundef writeonly %data) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %txq_map = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 35, i32 5
  %arrayidx = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 35, i32 5, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %axq_qnum, align 4
  %arrayidx2 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %arrayidx8 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 35, i32 5, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum9 = getelementptr inbounds %struct.ath_txq, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %axq_qnum9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %axq_qnum9, align 4
  %arrayidx10 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %11
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %add = add i32 %13, %7
  %arrayidx17 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 35, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum18 = getelementptr inbounds %struct.ath_txq, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %axq_qnum18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %axq_qnum18, align 4
  %arrayidx19 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %17
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx19, align 4
  %add21 = add i32 %add, %19
  %20 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %txq_map, align 4
  %axq_qnum28 = getelementptr inbounds %struct.ath_txq, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %axq_qnum28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %axq_qnum28, align 4
  %arrayidx29 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %23
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx29, align 4
  %add31 = add i32 %add21, %25
  %conv = zext i32 %add31 to i64
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv, ptr %data, align 8
  %27 = load ptr, ptr %arrayidx, align 4
  %axq_qnum39 = getelementptr inbounds %struct.ath_txq, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %axq_qnum39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %axq_qnum39, align 4
  %tx_bytes_all = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %29, i32 1
  %30 = ptrtoint ptr %tx_bytes_all to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_bytes_all, align 4
  %32 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum47 = getelementptr inbounds %struct.ath_txq, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %axq_qnum47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %axq_qnum47, align 4
  %tx_bytes_all49 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %34, i32 1
  %35 = ptrtoint ptr %tx_bytes_all49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_bytes_all49, align 4
  %add50 = add i32 %36, %31
  %37 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum57 = getelementptr inbounds %struct.ath_txq, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %axq_qnum57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %axq_qnum57, align 4
  %tx_bytes_all59 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %39, i32 1
  %40 = ptrtoint ptr %tx_bytes_all59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_bytes_all59, align 4
  %add60 = add i32 %add50, %41
  %42 = load ptr, ptr %txq_map, align 4
  %axq_qnum67 = getelementptr inbounds %struct.ath_txq, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %axq_qnum67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %axq_qnum67, align 4
  %tx_bytes_all69 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %44, i32 1
  %45 = ptrtoint ptr %tx_bytes_all69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_bytes_all69, align 4
  %add70 = add i32 %add60, %46
  %conv71 = zext i32 %add70 to i64
  %arrayidx73 = getelementptr i64, ptr %data, i32 1
  %47 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv71, ptr %arrayidx73, align 8
  %rxstats = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2
  %48 = ptrtoint ptr %rxstats to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rxstats, align 4
  %conv76 = zext i32 %49 to i64
  %arrayidx78 = getelementptr i64, ptr %data, i32 2
  %50 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv76, ptr %arrayidx78, align 8
  %rx_bytes_all = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2, i32 1
  %51 = ptrtoint ptr %rx_bytes_all to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_bytes_all, align 4
  %conv83 = zext i32 %52 to i64
  %arrayidx85 = getelementptr i64, ptr %data, i32 3
  %53 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv83, ptr %arrayidx85, align 8
  %54 = load ptr, ptr %arrayidx, align 4
  %axq_qnum95 = getelementptr inbounds %struct.ath_txq, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %axq_qnum95 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %axq_qnum95, align 4
  %arrayidx96 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %56
  %57 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx96, align 4
  %conv98 = zext i32 %58 to i64
  %arrayidx100 = getelementptr i64, ptr %data, i32 4
  %59 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv98, ptr %arrayidx100, align 8
  %60 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum107 = getelementptr inbounds %struct.ath_txq, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %axq_qnum107 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %axq_qnum107, align 4
  %arrayidx108 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %62
  %63 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx108, align 4
  %conv110 = zext i32 %64 to i64
  %arrayidx112 = getelementptr i64, ptr %data, i32 5
  %65 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv110, ptr %arrayidx112, align 8
  %66 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum119 = getelementptr inbounds %struct.ath_txq, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %axq_qnum119 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %axq_qnum119, align 4
  %arrayidx120 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %68
  %69 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx120, align 4
  %conv122 = zext i32 %70 to i64
  %arrayidx124 = getelementptr i64, ptr %data, i32 6
  %71 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv122, ptr %arrayidx124, align 8
  %72 = load ptr, ptr %txq_map, align 4
  %axq_qnum131 = getelementptr inbounds %struct.ath_txq, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %axq_qnum131 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %axq_qnum131, align 4
  %arrayidx132 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %74
  %75 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx132, align 4
  %conv134 = zext i32 %76 to i64
  %arrayidx136 = getelementptr i64, ptr %data, i32 7
  %77 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv134, ptr %arrayidx136, align 8
  %78 = load ptr, ptr %arrayidx, align 4
  %axq_qnum146 = getelementptr inbounds %struct.ath_txq, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %axq_qnum146 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %axq_qnum146, align 4
  %tx_bytes_all148 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %80, i32 1
  %81 = ptrtoint ptr %tx_bytes_all148 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_bytes_all148, align 4
  %conv149 = zext i32 %82 to i64
  %arrayidx151 = getelementptr i64, ptr %data, i32 8
  %83 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv149, ptr %arrayidx151, align 8
  %84 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum158 = getelementptr inbounds %struct.ath_txq, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %axq_qnum158 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %axq_qnum158, align 4
  %tx_bytes_all160 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %86, i32 1
  %87 = ptrtoint ptr %tx_bytes_all160 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_bytes_all160, align 4
  %conv161 = zext i32 %88 to i64
  %arrayidx163 = getelementptr i64, ptr %data, i32 9
  %89 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv161, ptr %arrayidx163, align 8
  %90 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum170 = getelementptr inbounds %struct.ath_txq, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %axq_qnum170 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %axq_qnum170, align 4
  %tx_bytes_all172 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %92, i32 1
  %93 = ptrtoint ptr %tx_bytes_all172 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_bytes_all172, align 4
  %conv173 = zext i32 %94 to i64
  %arrayidx175 = getelementptr i64, ptr %data, i32 10
  %95 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %conv173, ptr %arrayidx175, align 8
  %96 = load ptr, ptr %txq_map, align 4
  %axq_qnum182 = getelementptr inbounds %struct.ath_txq, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %axq_qnum182 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %axq_qnum182, align 4
  %tx_bytes_all184 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %98, i32 1
  %99 = ptrtoint ptr %tx_bytes_all184 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx_bytes_all184, align 4
  %conv185 = zext i32 %100 to i64
  %arrayidx187 = getelementptr i64, ptr %data, i32 11
  %101 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv185, ptr %arrayidx187, align 8
  %102 = load ptr, ptr %arrayidx, align 4
  %axq_qnum197 = getelementptr inbounds %struct.ath_txq, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %axq_qnum197 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %axq_qnum197, align 4
  %queued = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %104, i32 2
  %105 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %queued, align 4
  %conv199 = zext i32 %106 to i64
  %arrayidx201 = getelementptr i64, ptr %data, i32 12
  %107 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv199, ptr %arrayidx201, align 8
  %108 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum208 = getelementptr inbounds %struct.ath_txq, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %axq_qnum208 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %axq_qnum208, align 4
  %queued210 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %110, i32 2
  %111 = ptrtoint ptr %queued210 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %queued210, align 4
  %conv211 = zext i32 %112 to i64
  %arrayidx213 = getelementptr i64, ptr %data, i32 13
  %113 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv211, ptr %arrayidx213, align 8
  %114 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum220 = getelementptr inbounds %struct.ath_txq, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %axq_qnum220 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %axq_qnum220, align 4
  %queued222 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %116, i32 2
  %117 = ptrtoint ptr %queued222 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %queued222, align 4
  %conv223 = zext i32 %118 to i64
  %arrayidx225 = getelementptr i64, ptr %data, i32 14
  %119 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv223, ptr %arrayidx225, align 8
  %120 = load ptr, ptr %txq_map, align 4
  %axq_qnum232 = getelementptr inbounds %struct.ath_txq, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %axq_qnum232 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %axq_qnum232, align 4
  %queued234 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %122, i32 2
  %123 = ptrtoint ptr %queued234 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %queued234, align 4
  %conv235 = zext i32 %124 to i64
  %arrayidx237 = getelementptr i64, ptr %data, i32 15
  %125 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %conv235, ptr %arrayidx237, align 8
  %126 = load ptr, ptr %arrayidx, align 4
  %axq_qnum247 = getelementptr inbounds %struct.ath_txq, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %axq_qnum247 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %axq_qnum247, align 4
  %completed = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %128, i32 3
  %129 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %completed, align 4
  %conv249 = zext i32 %130 to i64
  %arrayidx251 = getelementptr i64, ptr %data, i32 16
  %131 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %conv249, ptr %arrayidx251, align 8
  %132 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum258 = getelementptr inbounds %struct.ath_txq, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %axq_qnum258 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %axq_qnum258, align 4
  %completed260 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %134, i32 3
  %135 = ptrtoint ptr %completed260 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %completed260, align 4
  %conv261 = zext i32 %136 to i64
  %arrayidx263 = getelementptr i64, ptr %data, i32 17
  %137 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv261, ptr %arrayidx263, align 8
  %138 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum270 = getelementptr inbounds %struct.ath_txq, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %axq_qnum270 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %axq_qnum270, align 4
  %completed272 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %140, i32 3
  %141 = ptrtoint ptr %completed272 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %completed272, align 4
  %conv273 = zext i32 %142 to i64
  %arrayidx275 = getelementptr i64, ptr %data, i32 18
  %143 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %conv273, ptr %arrayidx275, align 8
  %144 = load ptr, ptr %txq_map, align 4
  %axq_qnum282 = getelementptr inbounds %struct.ath_txq, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %axq_qnum282 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %axq_qnum282, align 4
  %completed284 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %146, i32 3
  %147 = ptrtoint ptr %completed284 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %completed284, align 4
  %conv285 = zext i32 %148 to i64
  %arrayidx287 = getelementptr i64, ptr %data, i32 19
  %149 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %conv285, ptr %arrayidx287, align 8
  %150 = load ptr, ptr %arrayidx, align 4
  %axq_qnum297 = getelementptr inbounds %struct.ath_txq, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %axq_qnum297 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %axq_qnum297, align 4
  %xretries = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %152, i32 4
  %153 = ptrtoint ptr %xretries to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %xretries, align 4
  %conv299 = zext i32 %154 to i64
  %arrayidx301 = getelementptr i64, ptr %data, i32 20
  %155 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %conv299, ptr %arrayidx301, align 8
  %156 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum308 = getelementptr inbounds %struct.ath_txq, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %axq_qnum308 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %axq_qnum308, align 4
  %xretries310 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %158, i32 4
  %159 = ptrtoint ptr %xretries310 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %xretries310, align 4
  %conv311 = zext i32 %160 to i64
  %arrayidx313 = getelementptr i64, ptr %data, i32 21
  %161 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %conv311, ptr %arrayidx313, align 8
  %162 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum320 = getelementptr inbounds %struct.ath_txq, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %axq_qnum320 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %axq_qnum320, align 4
  %xretries322 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %164, i32 4
  %165 = ptrtoint ptr %xretries322 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %xretries322, align 4
  %conv323 = zext i32 %166 to i64
  %arrayidx325 = getelementptr i64, ptr %data, i32 22
  %167 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %conv323, ptr %arrayidx325, align 8
  %168 = load ptr, ptr %txq_map, align 4
  %axq_qnum332 = getelementptr inbounds %struct.ath_txq, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %axq_qnum332 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %axq_qnum332, align 4
  %xretries334 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %170, i32 4
  %171 = ptrtoint ptr %xretries334 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %xretries334, align 4
  %conv335 = zext i32 %172 to i64
  %arrayidx337 = getelementptr i64, ptr %data, i32 23
  %173 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %conv335, ptr %arrayidx337, align 8
  %174 = load ptr, ptr %arrayidx, align 4
  %axq_qnum347 = getelementptr inbounds %struct.ath_txq, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %axq_qnum347 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %axq_qnum347, align 4
  %a_aggr = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %176, i32 5
  %177 = ptrtoint ptr %a_aggr to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %a_aggr, align 4
  %conv349 = zext i32 %178 to i64
  %arrayidx351 = getelementptr i64, ptr %data, i32 24
  %179 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %conv349, ptr %arrayidx351, align 8
  %180 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum358 = getelementptr inbounds %struct.ath_txq, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %axq_qnum358 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %axq_qnum358, align 4
  %a_aggr360 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %182, i32 5
  %183 = ptrtoint ptr %a_aggr360 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %a_aggr360, align 4
  %conv361 = zext i32 %184 to i64
  %arrayidx363 = getelementptr i64, ptr %data, i32 25
  %185 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %conv361, ptr %arrayidx363, align 8
  %186 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum370 = getelementptr inbounds %struct.ath_txq, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %axq_qnum370 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %axq_qnum370, align 4
  %a_aggr372 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %188, i32 5
  %189 = ptrtoint ptr %a_aggr372 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %a_aggr372, align 4
  %conv373 = zext i32 %190 to i64
  %arrayidx375 = getelementptr i64, ptr %data, i32 26
  %191 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %conv373, ptr %arrayidx375, align 8
  %192 = load ptr, ptr %txq_map, align 4
  %axq_qnum382 = getelementptr inbounds %struct.ath_txq, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %axq_qnum382 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %axq_qnum382, align 4
  %a_aggr384 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %194, i32 5
  %195 = ptrtoint ptr %a_aggr384 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %a_aggr384, align 4
  %conv385 = zext i32 %196 to i64
  %arrayidx387 = getelementptr i64, ptr %data, i32 27
  %197 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %conv385, ptr %arrayidx387, align 8
  %198 = load ptr, ptr %arrayidx, align 4
  %axq_qnum397 = getelementptr inbounds %struct.ath_txq, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %axq_qnum397 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %axq_qnum397, align 4
  %a_queued_hw = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %200, i32 6
  %201 = ptrtoint ptr %a_queued_hw to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %a_queued_hw, align 4
  %conv399 = zext i32 %202 to i64
  %arrayidx401 = getelementptr i64, ptr %data, i32 28
  %203 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %conv399, ptr %arrayidx401, align 8
  %204 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum408 = getelementptr inbounds %struct.ath_txq, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %axq_qnum408 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %axq_qnum408, align 4
  %a_queued_hw410 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %206, i32 6
  %207 = ptrtoint ptr %a_queued_hw410 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %a_queued_hw410, align 4
  %conv411 = zext i32 %208 to i64
  %arrayidx413 = getelementptr i64, ptr %data, i32 29
  %209 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %conv411, ptr %arrayidx413, align 8
  %210 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum420 = getelementptr inbounds %struct.ath_txq, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %axq_qnum420 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %axq_qnum420, align 4
  %a_queued_hw422 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %212, i32 6
  %213 = ptrtoint ptr %a_queued_hw422 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %a_queued_hw422, align 4
  %conv423 = zext i32 %214 to i64
  %arrayidx425 = getelementptr i64, ptr %data, i32 30
  %215 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %conv423, ptr %arrayidx425, align 8
  %216 = load ptr, ptr %txq_map, align 4
  %axq_qnum432 = getelementptr inbounds %struct.ath_txq, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %axq_qnum432 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %axq_qnum432, align 4
  %a_queued_hw434 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %218, i32 6
  %219 = ptrtoint ptr %a_queued_hw434 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %a_queued_hw434, align 4
  %conv435 = zext i32 %220 to i64
  %arrayidx437 = getelementptr i64, ptr %data, i32 31
  %221 = ptrtoint ptr %arrayidx437 to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %conv435, ptr %arrayidx437, align 8
  %222 = load ptr, ptr %arrayidx, align 4
  %axq_qnum447 = getelementptr inbounds %struct.ath_txq, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %axq_qnum447 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %axq_qnum447, align 4
  %a_completed = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %224, i32 7
  %225 = ptrtoint ptr %a_completed to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %a_completed, align 4
  %conv449 = zext i32 %226 to i64
  %arrayidx451 = getelementptr i64, ptr %data, i32 32
  %227 = ptrtoint ptr %arrayidx451 to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %conv449, ptr %arrayidx451, align 8
  %228 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum458 = getelementptr inbounds %struct.ath_txq, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %axq_qnum458 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %axq_qnum458, align 4
  %a_completed460 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %230, i32 7
  %231 = ptrtoint ptr %a_completed460 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %a_completed460, align 4
  %conv461 = zext i32 %232 to i64
  %arrayidx463 = getelementptr i64, ptr %data, i32 33
  %233 = ptrtoint ptr %arrayidx463 to i32
  call void @__asan_store8_noabort(i32 %233)
  store i64 %conv461, ptr %arrayidx463, align 8
  %234 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum470 = getelementptr inbounds %struct.ath_txq, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %axq_qnum470 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %axq_qnum470, align 4
  %a_completed472 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %236, i32 7
  %237 = ptrtoint ptr %a_completed472 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %a_completed472, align 4
  %conv473 = zext i32 %238 to i64
  %arrayidx475 = getelementptr i64, ptr %data, i32 34
  %239 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %conv473, ptr %arrayidx475, align 8
  %240 = load ptr, ptr %txq_map, align 4
  %axq_qnum482 = getelementptr inbounds %struct.ath_txq, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %axq_qnum482 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %axq_qnum482, align 4
  %a_completed484 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %242, i32 7
  %243 = ptrtoint ptr %a_completed484 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %a_completed484, align 4
  %conv485 = zext i32 %244 to i64
  %arrayidx487 = getelementptr i64, ptr %data, i32 35
  %245 = ptrtoint ptr %arrayidx487 to i32
  call void @__asan_store8_noabort(i32 %245)
  store i64 %conv485, ptr %arrayidx487, align 8
  %246 = load ptr, ptr %arrayidx, align 4
  %axq_qnum497 = getelementptr inbounds %struct.ath_txq, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %axq_qnum497 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %axq_qnum497, align 4
  %a_retries = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %248, i32 8
  %249 = ptrtoint ptr %a_retries to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %a_retries, align 4
  %conv499 = zext i32 %250 to i64
  %arrayidx501 = getelementptr i64, ptr %data, i32 36
  %251 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 %conv499, ptr %arrayidx501, align 8
  %252 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum508 = getelementptr inbounds %struct.ath_txq, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %axq_qnum508 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %axq_qnum508, align 4
  %a_retries510 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %254, i32 8
  %255 = ptrtoint ptr %a_retries510 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %a_retries510, align 4
  %conv511 = zext i32 %256 to i64
  %arrayidx513 = getelementptr i64, ptr %data, i32 37
  %257 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_store8_noabort(i32 %257)
  store i64 %conv511, ptr %arrayidx513, align 8
  %258 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum520 = getelementptr inbounds %struct.ath_txq, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %axq_qnum520 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %axq_qnum520, align 4
  %a_retries522 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %260, i32 8
  %261 = ptrtoint ptr %a_retries522 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %a_retries522, align 4
  %conv523 = zext i32 %262 to i64
  %arrayidx525 = getelementptr i64, ptr %data, i32 38
  %263 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 %conv523, ptr %arrayidx525, align 8
  %264 = load ptr, ptr %txq_map, align 4
  %axq_qnum532 = getelementptr inbounds %struct.ath_txq, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %axq_qnum532 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %axq_qnum532, align 4
  %a_retries534 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %266, i32 8
  %267 = ptrtoint ptr %a_retries534 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %a_retries534, align 4
  %conv535 = zext i32 %268 to i64
  %arrayidx537 = getelementptr i64, ptr %data, i32 39
  %269 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_store8_noabort(i32 %269)
  store i64 %conv535, ptr %arrayidx537, align 8
  %270 = load ptr, ptr %arrayidx, align 4
  %axq_qnum547 = getelementptr inbounds %struct.ath_txq, ptr %270, i32 0, i32 1
  %271 = ptrtoint ptr %axq_qnum547 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %axq_qnum547, align 4
  %a_xretries = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %272, i32 9
  %273 = ptrtoint ptr %a_xretries to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %a_xretries, align 4
  %conv549 = zext i32 %274 to i64
  %arrayidx551 = getelementptr i64, ptr %data, i32 40
  %275 = ptrtoint ptr %arrayidx551 to i32
  call void @__asan_store8_noabort(i32 %275)
  store i64 %conv549, ptr %arrayidx551, align 8
  %276 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum558 = getelementptr inbounds %struct.ath_txq, ptr %276, i32 0, i32 1
  %277 = ptrtoint ptr %axq_qnum558 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %axq_qnum558, align 4
  %a_xretries560 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %278, i32 9
  %279 = ptrtoint ptr %a_xretries560 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %a_xretries560, align 4
  %conv561 = zext i32 %280 to i64
  %arrayidx563 = getelementptr i64, ptr %data, i32 41
  %281 = ptrtoint ptr %arrayidx563 to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 %conv561, ptr %arrayidx563, align 8
  %282 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum570 = getelementptr inbounds %struct.ath_txq, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %axq_qnum570 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %axq_qnum570, align 4
  %a_xretries572 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %284, i32 9
  %285 = ptrtoint ptr %a_xretries572 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %a_xretries572, align 4
  %conv573 = zext i32 %286 to i64
  %arrayidx575 = getelementptr i64, ptr %data, i32 42
  %287 = ptrtoint ptr %arrayidx575 to i32
  call void @__asan_store8_noabort(i32 %287)
  store i64 %conv573, ptr %arrayidx575, align 8
  %288 = load ptr, ptr %txq_map, align 4
  %axq_qnum582 = getelementptr inbounds %struct.ath_txq, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %axq_qnum582 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %axq_qnum582, align 4
  %a_xretries584 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %290, i32 9
  %291 = ptrtoint ptr %a_xretries584 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %a_xretries584, align 4
  %conv585 = zext i32 %292 to i64
  %arrayidx587 = getelementptr i64, ptr %data, i32 43
  %293 = ptrtoint ptr %arrayidx587 to i32
  call void @__asan_store8_noabort(i32 %293)
  store i64 %conv585, ptr %arrayidx587, align 8
  %294 = load ptr, ptr %arrayidx, align 4
  %axq_qnum597 = getelementptr inbounds %struct.ath_txq, ptr %294, i32 0, i32 1
  %295 = ptrtoint ptr %axq_qnum597 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %axq_qnum597, align 4
  %fifo_underrun = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %296, i32 11
  %297 = ptrtoint ptr %fifo_underrun to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %fifo_underrun, align 4
  %conv599 = zext i32 %298 to i64
  %arrayidx601 = getelementptr i64, ptr %data, i32 44
  %299 = ptrtoint ptr %arrayidx601 to i32
  call void @__asan_store8_noabort(i32 %299)
  store i64 %conv599, ptr %arrayidx601, align 8
  %300 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum608 = getelementptr inbounds %struct.ath_txq, ptr %300, i32 0, i32 1
  %301 = ptrtoint ptr %axq_qnum608 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %axq_qnum608, align 4
  %fifo_underrun610 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %302, i32 11
  %303 = ptrtoint ptr %fifo_underrun610 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %fifo_underrun610, align 4
  %conv611 = zext i32 %304 to i64
  %arrayidx613 = getelementptr i64, ptr %data, i32 45
  %305 = ptrtoint ptr %arrayidx613 to i32
  call void @__asan_store8_noabort(i32 %305)
  store i64 %conv611, ptr %arrayidx613, align 8
  %306 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum620 = getelementptr inbounds %struct.ath_txq, ptr %306, i32 0, i32 1
  %307 = ptrtoint ptr %axq_qnum620 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %axq_qnum620, align 4
  %fifo_underrun622 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %308, i32 11
  %309 = ptrtoint ptr %fifo_underrun622 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %fifo_underrun622, align 4
  %conv623 = zext i32 %310 to i64
  %arrayidx625 = getelementptr i64, ptr %data, i32 46
  %311 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_store8_noabort(i32 %311)
  store i64 %conv623, ptr %arrayidx625, align 8
  %312 = load ptr, ptr %txq_map, align 4
  %axq_qnum632 = getelementptr inbounds %struct.ath_txq, ptr %312, i32 0, i32 1
  %313 = ptrtoint ptr %axq_qnum632 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %axq_qnum632, align 4
  %fifo_underrun634 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %314, i32 11
  %315 = ptrtoint ptr %fifo_underrun634 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %fifo_underrun634, align 4
  %conv635 = zext i32 %316 to i64
  %arrayidx637 = getelementptr i64, ptr %data, i32 47
  %317 = ptrtoint ptr %arrayidx637 to i32
  call void @__asan_store8_noabort(i32 %317)
  store i64 %conv635, ptr %arrayidx637, align 8
  %318 = load ptr, ptr %arrayidx, align 4
  %axq_qnum647 = getelementptr inbounds %struct.ath_txq, ptr %318, i32 0, i32 1
  %319 = ptrtoint ptr %axq_qnum647 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %axq_qnum647, align 4
  %xtxop = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %320, i32 12
  %321 = ptrtoint ptr %xtxop to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %xtxop, align 4
  %conv649 = zext i32 %322 to i64
  %arrayidx651 = getelementptr i64, ptr %data, i32 48
  %323 = ptrtoint ptr %arrayidx651 to i32
  call void @__asan_store8_noabort(i32 %323)
  store i64 %conv649, ptr %arrayidx651, align 8
  %324 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum658 = getelementptr inbounds %struct.ath_txq, ptr %324, i32 0, i32 1
  %325 = ptrtoint ptr %axq_qnum658 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %axq_qnum658, align 4
  %xtxop660 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %326, i32 12
  %327 = ptrtoint ptr %xtxop660 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %xtxop660, align 4
  %conv661 = zext i32 %328 to i64
  %arrayidx663 = getelementptr i64, ptr %data, i32 49
  %329 = ptrtoint ptr %arrayidx663 to i32
  call void @__asan_store8_noabort(i32 %329)
  store i64 %conv661, ptr %arrayidx663, align 8
  %330 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum670 = getelementptr inbounds %struct.ath_txq, ptr %330, i32 0, i32 1
  %331 = ptrtoint ptr %axq_qnum670 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %axq_qnum670, align 4
  %xtxop672 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %332, i32 12
  %333 = ptrtoint ptr %xtxop672 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %xtxop672, align 4
  %conv673 = zext i32 %334 to i64
  %arrayidx675 = getelementptr i64, ptr %data, i32 50
  %335 = ptrtoint ptr %arrayidx675 to i32
  call void @__asan_store8_noabort(i32 %335)
  store i64 %conv673, ptr %arrayidx675, align 8
  %336 = load ptr, ptr %txq_map, align 4
  %axq_qnum682 = getelementptr inbounds %struct.ath_txq, ptr %336, i32 0, i32 1
  %337 = ptrtoint ptr %axq_qnum682 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %axq_qnum682, align 4
  %xtxop684 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %338, i32 12
  %339 = ptrtoint ptr %xtxop684 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %xtxop684, align 4
  %conv685 = zext i32 %340 to i64
  %arrayidx687 = getelementptr i64, ptr %data, i32 51
  %341 = ptrtoint ptr %arrayidx687 to i32
  call void @__asan_store8_noabort(i32 %341)
  store i64 %conv685, ptr %arrayidx687, align 8
  %342 = load ptr, ptr %arrayidx, align 4
  %axq_qnum697 = getelementptr inbounds %struct.ath_txq, ptr %342, i32 0, i32 1
  %343 = ptrtoint ptr %axq_qnum697 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %axq_qnum697, align 4
  %timer_exp = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %344, i32 13
  %345 = ptrtoint ptr %timer_exp to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %timer_exp, align 4
  %conv699 = zext i32 %346 to i64
  %arrayidx701 = getelementptr i64, ptr %data, i32 52
  %347 = ptrtoint ptr %arrayidx701 to i32
  call void @__asan_store8_noabort(i32 %347)
  store i64 %conv699, ptr %arrayidx701, align 8
  %348 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum708 = getelementptr inbounds %struct.ath_txq, ptr %348, i32 0, i32 1
  %349 = ptrtoint ptr %axq_qnum708 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %axq_qnum708, align 4
  %timer_exp710 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %350, i32 13
  %351 = ptrtoint ptr %timer_exp710 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %timer_exp710, align 4
  %conv711 = zext i32 %352 to i64
  %arrayidx713 = getelementptr i64, ptr %data, i32 53
  %353 = ptrtoint ptr %arrayidx713 to i32
  call void @__asan_store8_noabort(i32 %353)
  store i64 %conv711, ptr %arrayidx713, align 8
  %354 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum720 = getelementptr inbounds %struct.ath_txq, ptr %354, i32 0, i32 1
  %355 = ptrtoint ptr %axq_qnum720 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %axq_qnum720, align 4
  %timer_exp722 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %356, i32 13
  %357 = ptrtoint ptr %timer_exp722 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %timer_exp722, align 4
  %conv723 = zext i32 %358 to i64
  %arrayidx725 = getelementptr i64, ptr %data, i32 54
  %359 = ptrtoint ptr %arrayidx725 to i32
  call void @__asan_store8_noabort(i32 %359)
  store i64 %conv723, ptr %arrayidx725, align 8
  %360 = load ptr, ptr %txq_map, align 4
  %axq_qnum732 = getelementptr inbounds %struct.ath_txq, ptr %360, i32 0, i32 1
  %361 = ptrtoint ptr %axq_qnum732 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %axq_qnum732, align 4
  %timer_exp734 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %362, i32 13
  %363 = ptrtoint ptr %timer_exp734 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %timer_exp734, align 4
  %conv735 = zext i32 %364 to i64
  %arrayidx737 = getelementptr i64, ptr %data, i32 55
  %365 = ptrtoint ptr %arrayidx737 to i32
  call void @__asan_store8_noabort(i32 %365)
  store i64 %conv735, ptr %arrayidx737, align 8
  %366 = load ptr, ptr %arrayidx, align 4
  %axq_qnum747 = getelementptr inbounds %struct.ath_txq, ptr %366, i32 0, i32 1
  %367 = ptrtoint ptr %axq_qnum747 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %axq_qnum747, align 4
  %desc_cfg_err = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %368, i32 14
  %369 = ptrtoint ptr %desc_cfg_err to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %desc_cfg_err, align 4
  %conv749 = zext i32 %370 to i64
  %arrayidx751 = getelementptr i64, ptr %data, i32 56
  %371 = ptrtoint ptr %arrayidx751 to i32
  call void @__asan_store8_noabort(i32 %371)
  store i64 %conv749, ptr %arrayidx751, align 8
  %372 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum758 = getelementptr inbounds %struct.ath_txq, ptr %372, i32 0, i32 1
  %373 = ptrtoint ptr %axq_qnum758 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %axq_qnum758, align 4
  %desc_cfg_err760 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %374, i32 14
  %375 = ptrtoint ptr %desc_cfg_err760 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %desc_cfg_err760, align 4
  %conv761 = zext i32 %376 to i64
  %arrayidx763 = getelementptr i64, ptr %data, i32 57
  %377 = ptrtoint ptr %arrayidx763 to i32
  call void @__asan_store8_noabort(i32 %377)
  store i64 %conv761, ptr %arrayidx763, align 8
  %378 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum770 = getelementptr inbounds %struct.ath_txq, ptr %378, i32 0, i32 1
  %379 = ptrtoint ptr %axq_qnum770 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %axq_qnum770, align 4
  %desc_cfg_err772 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %380, i32 14
  %381 = ptrtoint ptr %desc_cfg_err772 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %desc_cfg_err772, align 4
  %conv773 = zext i32 %382 to i64
  %arrayidx775 = getelementptr i64, ptr %data, i32 58
  %383 = ptrtoint ptr %arrayidx775 to i32
  call void @__asan_store8_noabort(i32 %383)
  store i64 %conv773, ptr %arrayidx775, align 8
  %384 = load ptr, ptr %txq_map, align 4
  %axq_qnum782 = getelementptr inbounds %struct.ath_txq, ptr %384, i32 0, i32 1
  %385 = ptrtoint ptr %axq_qnum782 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %axq_qnum782, align 4
  %desc_cfg_err784 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %386, i32 14
  %387 = ptrtoint ptr %desc_cfg_err784 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %desc_cfg_err784, align 4
  %conv785 = zext i32 %388 to i64
  %arrayidx787 = getelementptr i64, ptr %data, i32 59
  %389 = ptrtoint ptr %arrayidx787 to i32
  call void @__asan_store8_noabort(i32 %389)
  store i64 %conv785, ptr %arrayidx787, align 8
  %390 = load ptr, ptr %arrayidx, align 4
  %axq_qnum797 = getelementptr inbounds %struct.ath_txq, ptr %390, i32 0, i32 1
  %391 = ptrtoint ptr %axq_qnum797 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %axq_qnum797, align 4
  %data_underrun = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %392, i32 15
  %393 = ptrtoint ptr %data_underrun to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %data_underrun, align 4
  %conv799 = zext i32 %394 to i64
  %arrayidx801 = getelementptr i64, ptr %data, i32 60
  %395 = ptrtoint ptr %arrayidx801 to i32
  call void @__asan_store8_noabort(i32 %395)
  store i64 %conv799, ptr %arrayidx801, align 8
  %396 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum808 = getelementptr inbounds %struct.ath_txq, ptr %396, i32 0, i32 1
  %397 = ptrtoint ptr %axq_qnum808 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %axq_qnum808, align 4
  %data_underrun810 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %398, i32 15
  %399 = ptrtoint ptr %data_underrun810 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %data_underrun810, align 4
  %conv811 = zext i32 %400 to i64
  %arrayidx813 = getelementptr i64, ptr %data, i32 61
  %401 = ptrtoint ptr %arrayidx813 to i32
  call void @__asan_store8_noabort(i32 %401)
  store i64 %conv811, ptr %arrayidx813, align 8
  %402 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum820 = getelementptr inbounds %struct.ath_txq, ptr %402, i32 0, i32 1
  %403 = ptrtoint ptr %axq_qnum820 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %axq_qnum820, align 4
  %data_underrun822 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %404, i32 15
  %405 = ptrtoint ptr %data_underrun822 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %data_underrun822, align 4
  %conv823 = zext i32 %406 to i64
  %arrayidx825 = getelementptr i64, ptr %data, i32 62
  %407 = ptrtoint ptr %arrayidx825 to i32
  call void @__asan_store8_noabort(i32 %407)
  store i64 %conv823, ptr %arrayidx825, align 8
  %408 = load ptr, ptr %txq_map, align 4
  %axq_qnum832 = getelementptr inbounds %struct.ath_txq, ptr %408, i32 0, i32 1
  %409 = ptrtoint ptr %axq_qnum832 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %axq_qnum832, align 4
  %data_underrun834 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %410, i32 15
  %411 = ptrtoint ptr %data_underrun834 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %data_underrun834, align 4
  %conv835 = zext i32 %412 to i64
  %arrayidx837 = getelementptr i64, ptr %data, i32 63
  %413 = ptrtoint ptr %arrayidx837 to i32
  call void @__asan_store8_noabort(i32 %413)
  store i64 %conv835, ptr %arrayidx837, align 8
  %414 = load ptr, ptr %arrayidx, align 4
  %axq_qnum847 = getelementptr inbounds %struct.ath_txq, ptr %414, i32 0, i32 1
  %415 = ptrtoint ptr %axq_qnum847 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %axq_qnum847, align 4
  %delim_underrun = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %416, i32 16
  %417 = ptrtoint ptr %delim_underrun to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %delim_underrun, align 4
  %conv849 = zext i32 %418 to i64
  %arrayidx851 = getelementptr i64, ptr %data, i32 64
  %419 = ptrtoint ptr %arrayidx851 to i32
  call void @__asan_store8_noabort(i32 %419)
  store i64 %conv849, ptr %arrayidx851, align 8
  %420 = load ptr, ptr %arrayidx8, align 4
  %axq_qnum858 = getelementptr inbounds %struct.ath_txq, ptr %420, i32 0, i32 1
  %421 = ptrtoint ptr %axq_qnum858 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %axq_qnum858, align 4
  %delim_underrun860 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %422, i32 16
  %423 = ptrtoint ptr %delim_underrun860 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %delim_underrun860, align 4
  %conv861 = zext i32 %424 to i64
  %arrayidx863 = getelementptr i64, ptr %data, i32 65
  %425 = ptrtoint ptr %arrayidx863 to i32
  call void @__asan_store8_noabort(i32 %425)
  store i64 %conv861, ptr %arrayidx863, align 8
  %426 = load ptr, ptr %arrayidx17, align 4
  %axq_qnum870 = getelementptr inbounds %struct.ath_txq, ptr %426, i32 0, i32 1
  %427 = ptrtoint ptr %axq_qnum870 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %axq_qnum870, align 4
  %delim_underrun872 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %428, i32 16
  %429 = ptrtoint ptr %delim_underrun872 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %delim_underrun872, align 4
  %conv873 = zext i32 %430 to i64
  %arrayidx875 = getelementptr i64, ptr %data, i32 66
  %431 = ptrtoint ptr %arrayidx875 to i32
  call void @__asan_store8_noabort(i32 %431)
  store i64 %conv873, ptr %arrayidx875, align 8
  %432 = load ptr, ptr %txq_map, align 4
  %axq_qnum882 = getelementptr inbounds %struct.ath_txq, ptr %432, i32 0, i32 1
  %433 = ptrtoint ptr %axq_qnum882 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %axq_qnum882, align 4
  %delim_underrun884 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %434, i32 16
  %435 = ptrtoint ptr %delim_underrun884 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %delim_underrun884, align 4
  %conv885 = zext i32 %436 to i64
  %arrayidx887 = getelementptr i64, ptr %data, i32 67
  %437 = ptrtoint ptr %arrayidx887 to i32
  call void @__asan_store8_noabort(i32 %437)
  store i64 %conv885, ptr %arrayidx887, align 8
  %crc_err = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2, i32 2
  %438 = ptrtoint ptr %crc_err to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %crc_err, align 4
  %conv894 = zext i32 %439 to i64
  %arrayidx896 = getelementptr i64, ptr %data, i32 68
  %440 = ptrtoint ptr %arrayidx896 to i32
  call void @__asan_store8_noabort(i32 %440)
  store i64 %conv894, ptr %arrayidx896, align 8
  %decrypt_crc_err = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2, i32 3
  %441 = ptrtoint ptr %decrypt_crc_err to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %decrypt_crc_err, align 4
  %conv903 = zext i32 %442 to i64
  %arrayidx905 = getelementptr i64, ptr %data, i32 69
  %443 = ptrtoint ptr %arrayidx905 to i32
  call void @__asan_store8_noabort(i32 %443)
  store i64 %conv903, ptr %arrayidx905, align 8
  %phy_err = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2, i32 4
  %444 = ptrtoint ptr %phy_err to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %phy_err, align 4
  %conv912 = zext i32 %445 to i64
  %arrayidx914 = getelementptr i64, ptr %data, i32 70
  %446 = ptrtoint ptr %arrayidx914 to i32
  call void @__asan_store8_noabort(i32 %446)
  store i64 %conv912, ptr %arrayidx914, align 8
  %mic_err = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2, i32 5
  %447 = ptrtoint ptr %mic_err to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %mic_err, align 4
  %conv921 = zext i32 %448 to i64
  %arrayidx923 = getelementptr i64, ptr %data, i32 71
  %449 = ptrtoint ptr %arrayidx923 to i32
  call void @__asan_store8_noabort(i32 %449)
  store i64 %conv921, ptr %arrayidx923, align 8
  %pre_delim_crc_err = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2, i32 6
  %450 = ptrtoint ptr %pre_delim_crc_err to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %pre_delim_crc_err, align 4
  %conv930 = zext i32 %451 to i64
  %arrayidx932 = getelementptr i64, ptr %data, i32 72
  %452 = ptrtoint ptr %arrayidx932 to i32
  call void @__asan_store8_noabort(i32 %452)
  store i64 %conv930, ptr %arrayidx932, align 8
  %post_delim_crc_err = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2, i32 7
  %453 = ptrtoint ptr %post_delim_crc_err to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %post_delim_crc_err, align 4
  %conv939 = zext i32 %454 to i64
  %arrayidx941 = getelementptr i64, ptr %data, i32 73
  %455 = ptrtoint ptr %arrayidx941 to i32
  call void @__asan_store8_noabort(i32 %455)
  store i64 %conv939, ptr %arrayidx941, align 8
  %decrypt_busy_err = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2, i32 8
  %456 = ptrtoint ptr %decrypt_busy_err to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %decrypt_busy_err, align 4
  %conv948 = zext i32 %457 to i64
  %arrayidx950 = getelementptr i64, ptr %data, i32 74
  %458 = ptrtoint ptr %arrayidx950 to i32
  call void @__asan_store8_noabort(i32 %458)
  store i64 %conv948, ptr %arrayidx950, align 8
  %arrayidx957 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2, i32 9, i32 5
  %459 = ptrtoint ptr %arrayidx957 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %arrayidx957, align 4
  %conv958 = zext i32 %460 to i64
  %arrayidx960 = getelementptr i64, ptr %data, i32 75
  %461 = ptrtoint ptr %arrayidx960 to i32
  call void @__asan_store8_noabort(i32 %461)
  store i64 %conv958, ptr %arrayidx960, align 8
  %arrayidx968 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2, i32 9, i32 17
  %462 = ptrtoint ptr %arrayidx968 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %arrayidx968, align 4
  %conv969 = zext i32 %463 to i64
  %arrayidx971 = getelementptr i64, ptr %data, i32 76
  %464 = ptrtoint ptr %arrayidx971 to i32
  call void @__asan_store8_noabort(i32 %464)
  store i64 %conv969, ptr %arrayidx971, align 8
  %arrayidx979 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2, i32 9, i32 25
  %465 = ptrtoint ptr %arrayidx979 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %arrayidx979, align 4
  %conv980 = zext i32 %466 to i64
  %arrayidx982 = getelementptr i64, ptr %data, i32 77
  %467 = ptrtoint ptr %arrayidx982 to i32
  call void @__asan_store8_noabort(i32 %467)
  store i64 %conv980, ptr %arrayidx982, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_deinit_debug(ptr noundef %sc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %spec_priv = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58
  tail call void @ath9k_cmn_spectral_deinit_debug(ptr noundef %spec_priv) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_spectral_deinit_debug(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_init_debug(ptr noundef %ah) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 58
  %6 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfsdir, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %7) #14
  %debug = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %debug, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 384, ptr noundef nonnull %call1, ptr noundef %1, ptr noundef nonnull @fops_debug) #14
  tail call void @ath9k_dfs_init_debug(ptr noundef %1) #14
  tail call void @ath9k_tx99_init_debug(ptr noundef %1) #14
  %spec_priv = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 58
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debug, align 4
  tail call void @ath9k_cmn_spectral_init_debug(ptr noundef %spec_priv, ptr noundef %10) #14
  %dev = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debug, align 4
  tail call void @debugfs_create_devm_seqfile(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef %14, ptr noundef nonnull @read_file_dma) #14
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debug, align 4
  tail call void @debugfs_create_devm_seqfile(ptr noundef %16, ptr noundef nonnull @.str.4, ptr noundef %18, ptr noundef nonnull @read_file_interrupt) #14
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %debug, align 4
  tail call void @debugfs_create_devm_seqfile(ptr noundef %20, ptr noundef nonnull @.str.5, ptr noundef %22, ptr noundef nonnull @read_file_xmit) #14
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %debug, align 4
  tail call void @debugfs_create_devm_seqfile(ptr noundef %24, ptr noundef nonnull @.str.6, ptr noundef %26, ptr noundef nonnull @read_file_queues) #14
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %debug, align 4
  tail call void @debugfs_create_devm_seqfile(ptr noundef %28, ptr noundef nonnull @.str.7, ptr noundef %30, ptr noundef nonnull @read_file_misc) #14
  %31 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %debug, align 4
  %call25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %32, ptr noundef %1, ptr noundef nonnull @fops_reset) #14
  %33 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %debug, align 4
  %rxstats = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 2
  tail call void @ath9k_cmn_debug_recv(ptr noundef %34, ptr noundef %rxstats) #14
  %35 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debug, align 4
  tail call void @ath9k_cmn_debug_phy_err(ptr noundef %36, ptr noundef %rxstats) #14
  %37 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debug, align 4
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %38, ptr noundef %rxchainmask) #14
  %39 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %debug, align 4
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %40, ptr noundef %txchainmask) #14
  %41 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %debug, align 4
  %call40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef %42, ptr noundef %1, ptr noundef nonnull @fops_ani) #14
  %43 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %debug, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sc_ah, align 4
  %enable_paprd = getelementptr inbounds %struct.ath_hw, ptr %46, i32 0, i32 5, i32 9
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.12, i16 noundef zeroext 384, ptr noundef %44, ptr noundef %enable_paprd) #14
  %47 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %debug, align 4
  %call45 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 384, ptr noundef %48, ptr noundef %1, ptr noundef nonnull @fops_regidx) #14
  %49 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %debug, align 4
  %call48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef %50, ptr noundef %1, ptr noundef nonnull @fops_regval) #14
  %51 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %debug, align 4
  %cwm_ignore_extcca = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 2
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.15, i16 noundef zeroext 384, ptr noundef %52, ptr noundef %cwm_ignore_extcca) #14
  %53 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %debug, align 4
  %call54 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %54, ptr noundef %1, ptr noundef nonnull @fops_regdump) #14
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %57 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %debug, align 4
  tail call void @debugfs_create_devm_seqfile(ptr noundef %56, ptr noundef nonnull @.str.17, ptr noundef %58, ptr noundef nonnull @read_file_dump_nfcal) #14
  %59 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %debug, align 4
  %61 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_cmn_debug_base_eeprom(ptr noundef %60, ptr noundef %62) #14
  %63 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %debug, align 4
  %65 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_cmn_debug_modal_eeprom(ptr noundef %64, ptr noundef %66) #14
  %67 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %debug, align 4
  %69 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sc_ah, align 4
  %gpio_mask = getelementptr inbounds %struct.ath_hw, ptr %70, i32 0, i32 81
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.18, i16 noundef zeroext 384, ptr noundef %68, ptr noundef %gpio_mask) #14
  %71 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %debug, align 4
  %73 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sc_ah, align 4
  %gpio_val = getelementptr inbounds %struct.ath_hw, ptr %74, i32 0, i32 82
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.19, i16 noundef zeroext 384, ptr noundef %72, ptr noundef %gpio_val) #14
  %75 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %debug, align 4
  %call72 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 256, ptr noundef %76, ptr noundef %1, ptr noundef nonnull @fops_antenna_diversity) #14
  %77 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %debug, align 4
  %call75 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 384, ptr noundef %78, ptr noundef %1, ptr noundef nonnull @fops_bt_ant_diversity) #14
  %79 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %debug, align 4
  %call78 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef %80, ptr noundef %1, ptr noundef nonnull @fops_btcoex) #14
  %81 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %debug, align 4
  %call81 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 384, ptr noundef %82, ptr noundef %1, ptr noundef nonnull @fops_wow) #14
  %83 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %debug, align 4
  %call84 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef %84, ptr noundef %1, ptr noundef nonnull @fops_ackto) #14
  %85 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %debug, align 4
  %call87 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 384, ptr noundef %86, ptr noundef %1, ptr noundef nonnull @fops_tpc) #14
  %87 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %debug, align 4
  %call90 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 384, ptr noundef %88, ptr noundef %1, ptr noundef nonnull @fops_nf_override) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_dfs_init_debug(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_tx99_init_debug(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_spectral_init_debug(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_dma(ptr noundef %file, ptr nocapture noundef readnone %data) #3 align 64 {
if.end.7:
  %val = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val) #14
  %8 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 1
  %9 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 2
  %10 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 3
  %11 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 4
  %12 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 5
  %13 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 6
  %14 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 7
  tail call void @ath9k_ps_wakeup(ptr noundef %5) #14
  %ops = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 24
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.ath_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write, align 4
  tail call void %18(ptr noundef %7, i32 noundef 33024, i32 noundef 88) #14
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.31) #14
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.32) #14
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call6 = tail call i32 %22(ptr noundef %7, i32 noundef 224) #14
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call6, ptr %val, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %call6) #14
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call6.1 = tail call i32 %27(ptr noundef %7, i32 noundef 228) #14
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call6.1, ptr %8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef %call6.1) #14
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call6.2 = tail call i32 %32(ptr noundef %7, i32 noundef 232) #14
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call6.2, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef 2, i32 noundef %call6.2) #14
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call6.3 = tail call i32 %37(ptr noundef %7, i32 noundef 236) #14
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call6.3, ptr %10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef 3, i32 noundef %call6.3) #14
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.32) #14
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call6.4 = tail call i32 %42(ptr noundef %7, i32 noundef 240) #14
  %43 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call6.4, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef %call6.4) #14
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call6.5 = tail call i32 %47(ptr noundef %7, i32 noundef 244) #14
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call6.5, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef 5, i32 noundef %call6.5) #14
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call6.6 = tail call i32 %52(ptr noundef %7, i32 noundef 248) #14
  %53 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call6.6, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef 6, i32 noundef %call6.6) #14
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %call6.7 = tail call i32 %57(ptr noundef %7, i32 noundef 252) #14
  %58 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call6.7, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef 7, i32 noundef %call6.7) #14
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.34) #14
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.35) #14
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %9, align 4
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %if.end.7
  %dcuBase.0135 = phi ptr [ %11, %if.end.7 ], [ %dcuBase.1, %for.body11.for.body11_crit_edge ]
  %qcuBase.0134 = phi ptr [ %val, %if.end.7 ], [ %spec.select126, %for.body11.for.body11_crit_edge ]
  %dcuOffset.0133 = phi i32 [ 0, %if.end.7 ], [ %add35, %for.body11.for.body11_crit_edge ]
  %qcuOffset.0132 = phi i32 [ 0, %if.end.7 ], [ %add34, %for.body11.for.body11_crit_edge ]
  %i.1131 = phi i32 [ 0, %if.end.7 ], [ %inc33, %for.body11.for.body11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.1131)
  %cmp12 = icmp eq i32 %i.1131, 8
  %spec.select = select i1 %cmp12, i32 0, i32 %qcuOffset.0132
  %spec.select126.idx = zext i1 %cmp12 to i32
  %spec.select126 = getelementptr i32, ptr %qcuBase.0134, i32 %spec.select126.idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1131)
  %cmp15 = icmp eq i32 %i.1131, 6
  %dcuOffset.1 = select i1 %cmp15, i32 0, i32 %dcuOffset.0133
  %dcuBase.1.idx = zext i1 %cmp15 to i32
  %dcuBase.1 = getelementptr i32, ptr %dcuBase.0135, i32 %dcuBase.1.idx
  %61 = ptrtoint ptr %spec.select126 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %spec.select126, align 4
  %shl = shl i32 7, %spec.select
  %and = and i32 %62, %shl
  %shr = lshr i32 %and, %spec.select
  %shl19 = shl i32 8, %spec.select
  %and20 = and i32 %62, %shl19
  %add21 = add i32 %spec.select, 3
  %shr22 = lshr i32 %and20, %add21
  %mul24 = mul nuw nsw i32 %i.1131, 3
  %shl25 = shl i32 7, %mul24
  %and26 = and i32 %60, %shl25
  %shr28 = lshr i32 %and26, %mul24
  %63 = ptrtoint ptr %dcuBase.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dcuBase.1, align 4
  %shl29 = shl i32 31, %dcuOffset.1
  %and30 = and i32 %64, %shl29
  %shr31 = lshr i32 %and30, %dcuOffset.1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.36, i32 noundef %i.1131, i32 noundef %shr, i32 noundef %shr22, i32 noundef %shr28, i32 noundef %shr31) #14
  %inc33 = add nuw nsw i32 %i.1131, 1
  %add34 = add i32 %spec.select, 4
  %add35 = add i32 %dcuOffset.1, 5
  %exitcond.not = icmp eq i32 %inc33, 10
  br i1 %exitcond.not, label %for.end36, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11

for.end36:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.32) #14
  %65 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %10, align 4
  %and38 = lshr i32 %66, 18
  %shr39 = and i32 %and38, 15
  %and41 = lshr i32 %66, 22
  %shr42 = and i32 %and41, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.37, i32 noundef %shr39, i32 noundef %shr42) #14
  %and44 = lshr i32 %66, 26
  %shr45 = and i32 %and44, 7
  %67 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %13, align 4
  %and47 = and i32 %68, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, i32 noundef %shr45, i32 noundef %and47) #14
  %69 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %12, align 4
  %and49 = lshr i32 %70, 25
  %shr50 = and i32 %and49, 3
  %and52 = lshr i32 %70, 27
  %shr53 = and i32 %and52, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.39, i32 noundef %shr50, i32 noundef %shr53) #14
  %and55 = lshr i32 %68, 2
  %shr56 = and i32 %and55, 255
  %and58 = lshr i32 %68, 10
  %shr59 = and i32 %and58, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.40, i32 noundef %shr56, i32 noundef %shr59) #14
  %and61 = lshr i32 %68, 11
  %shr62 = and i32 %and61, 1
  %and64 = lshr i32 %68, 12
  %shr65 = and i32 %and64, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.41, i32 noundef %shr62, i32 noundef %shr65) #14
  %and67 = lshr i32 %68, 13
  %shr68 = and i32 %and67, 15
  %and70 = lshr i32 %68, 17
  %shr71 = and i32 %and70, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.42, i32 noundef %shr68, i32 noundef %shr71) #14
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %call75 = tail call i32 %74(ptr noundef %7, i32 noundef 32876) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.43, i32 noundef %call75) #14
  %75 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %call79 = tail call i32 %78(ptr noundef %7, i32 noundef 8) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.44, i32 noundef %call79) #14
  tail call void @ath9k_ps_restore(ptr noundef %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_interrupt(ptr noundef %file, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body13, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rxlp = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %rxlp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxlp, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %11) #14
  %rxhp = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 3
  %12 = ptrtoint ptr %rxhp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxhp, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.47, i32 noundef %13) #14
  %bb_watchdog = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 21
  br label %do.body19

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rxok = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 1
  br label %do.body19

do.body19:                                        ; preds = %do.body13, %do.body
  %bb_watchdog.sink = phi ptr [ %bb_watchdog, %do.body ], [ %rxok, %do.body13 ]
  %.str.48.sink = phi ptr [ @.str.48, %do.body ], [ @.str.49, %do.body13 ]
  %14 = ptrtoint ptr %bb_watchdog.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bb_watchdog.sink, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull %.str.48.sink, i32 noundef %15) #14
  %stats21 = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2
  %rxeol = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 4
  %16 = ptrtoint ptr %rxeol to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rxeol, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.50, i32 noundef %17) #14
  %rxorn = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 5
  %18 = ptrtoint ptr %rxorn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rxorn, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.51, i32 noundef %19) #14
  %txok = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 6
  %20 = ptrtoint ptr %txok to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txok, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.52, i32 noundef %21) #14
  %txurn = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 8
  %22 = ptrtoint ptr %txurn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %txurn, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.53, i32 noundef %23) #14
  %mib = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 9
  %24 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mib, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.54, i32 noundef %25) #14
  %rxphyerr = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 10
  %26 = ptrtoint ptr %rxphyerr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rxphyerr, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.55, i32 noundef %27) #14
  %rx_keycache_miss = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 11
  %28 = ptrtoint ptr %rx_keycache_miss to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_keycache_miss, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.56, i32 noundef %29) #14
  %swba = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 12
  %30 = ptrtoint ptr %swba to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %swba, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.57, i32 noundef %31) #14
  %bmiss = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 13
  %32 = ptrtoint ptr %bmiss to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bmiss, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.58, i32 noundef %33) #14
  %bnr = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 14
  %34 = ptrtoint ptr %bnr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bnr, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.59, i32 noundef %35) #14
  %cst = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 15
  %36 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cst, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, i32 noundef %37) #14
  %gtt = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 16
  %38 = ptrtoint ptr %gtt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gtt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.61, i32 noundef %39) #14
  %tim = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 17
  %40 = ptrtoint ptr %tim to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tim, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.62, i32 noundef %41) #14
  %cabend = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 18
  %42 = ptrtoint ptr %cabend to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cabend, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.63, i32 noundef %43) #14
  %dtimsync = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 19
  %44 = ptrtoint ptr %dtimsync to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dtimsync, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.64, i32 noundef %45) #14
  %dtim = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 20
  %46 = ptrtoint ptr %dtim to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dtim, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.65, i32 noundef %47) #14
  %tsfoor = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 22
  %48 = ptrtoint ptr %tsfoor to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tsfoor, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.66, i32 noundef %49) #14
  %mci = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 23
  %50 = ptrtoint ptr %mci to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mci, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.67, i32 noundef %51) #14
  %gen_timer = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 24
  %52 = ptrtoint ptr %gen_timer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gen_timer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.68, i32 noundef %53) #14
  %54 = ptrtoint ptr %stats21 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stats21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.69, i32 noundef %55) #14
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.70) #14
  %sync_cause_all = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 25
  %56 = ptrtoint ptr %sync_cause_all to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sync_cause_all, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.71, i32 noundef %57) #14
  %sync_rtc_irq = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 26
  %58 = ptrtoint ptr %sync_rtc_irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sync_rtc_irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.72, i32 noundef %59) #14
  %sync_mac_irq = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 27
  %60 = ptrtoint ptr %sync_mac_irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sync_mac_irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.73, i32 noundef %61) #14
  %eeprom_illegal_access = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 28
  %62 = ptrtoint ptr %eeprom_illegal_access to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %eeprom_illegal_access, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.74, i32 noundef %63) #14
  %apb_timeout = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 29
  %64 = ptrtoint ptr %apb_timeout to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %apb_timeout, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.75, i32 noundef %65) #14
  %pci_mode_conflict = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 30
  %66 = ptrtoint ptr %pci_mode_conflict to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pci_mode_conflict, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.76, i32 noundef %67) #14
  %host1_fatal = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 31
  %68 = ptrtoint ptr %host1_fatal to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %host1_fatal, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.77, i32 noundef %69) #14
  %host1_perr = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 32
  %70 = ptrtoint ptr %host1_perr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %host1_perr, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.78, i32 noundef %71) #14
  %trcv_fifo_perr = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 33
  %72 = ptrtoint ptr %trcv_fifo_perr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %trcv_fifo_perr, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.79, i32 noundef %73) #14
  %radm_cpl_ep = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 34
  %74 = ptrtoint ptr %radm_cpl_ep to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %radm_cpl_ep, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.80, i32 noundef %75) #14
  %radm_cpl_dllp_abort = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 35
  %76 = ptrtoint ptr %radm_cpl_dllp_abort to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %radm_cpl_dllp_abort, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.81, i32 noundef %77) #14
  %radm_cpl_tlp_abort = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 36
  %78 = ptrtoint ptr %radm_cpl_tlp_abort to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %radm_cpl_tlp_abort, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.82, i32 noundef %79) #14
  %radm_cpl_ecrc_err = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 37
  %80 = ptrtoint ptr %radm_cpl_ecrc_err to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %radm_cpl_ecrc_err, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.83, i32 noundef %81) #14
  %radm_cpl_timeout = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 38
  %82 = ptrtoint ptr %radm_cpl_timeout to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %radm_cpl_timeout, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.84, i32 noundef %83) #14
  %local_timeout = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 39
  %84 = ptrtoint ptr %local_timeout to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %local_timeout, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.85, i32 noundef %85) #14
  %pm_access = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 40
  %86 = ptrtoint ptr %pm_access to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pm_access, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.86, i32 noundef %87) #14
  %mac_awake = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 41
  %88 = ptrtoint ptr %mac_awake to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mac_awake, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.87, i32 noundef %89) #14
  %mac_asleep = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 42
  %90 = ptrtoint ptr %mac_asleep to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mac_asleep, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.88, i32 noundef %91) #14
  %mac_sleep_access = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 0, i32 43
  %92 = ptrtoint ptr %mac_sleep_access to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mac_sleep_access, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.89, i32 noundef %93) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_xmit(ptr noundef %file, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #14
  %txq_map = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 35, i32 5
  %arrayidx = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 35, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %axq_qnum, align 4
  %queued = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %9, i32 2
  %10 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queued, align 4
  %arrayidx7 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 35, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum8 = getelementptr inbounds %struct.ath_txq, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %axq_qnum8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %axq_qnum8, align 4
  %queued10 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %15, i32 2
  %16 = ptrtoint ptr %queued10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %queued10, align 4
  %arrayidx16 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 35, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum17 = getelementptr inbounds %struct.ath_txq, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %axq_qnum17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %axq_qnum17, align 4
  %queued19 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %21, i32 2
  %22 = ptrtoint ptr %queued19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %queued19, align 4
  %24 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %txq_map, align 4
  %axq_qnum26 = getelementptr inbounds %struct.ath_txq, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %axq_qnum26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %axq_qnum26, align 4
  %queued28 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %27, i32 2
  %28 = ptrtoint ptr %queued28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %queued28, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef %11, i32 noundef %17, i32 noundef %23, i32 noundef %29) #14
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %axq_qnum36 = getelementptr inbounds %struct.ath_txq, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %axq_qnum36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %axq_qnum36, align 4
  %completed = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %33, i32 3
  %34 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %completed, align 4
  %36 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum44 = getelementptr inbounds %struct.ath_txq, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %axq_qnum44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %axq_qnum44, align 4
  %completed46 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %39, i32 3
  %40 = ptrtoint ptr %completed46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %completed46, align 4
  %42 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum53 = getelementptr inbounds %struct.ath_txq, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %axq_qnum53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %axq_qnum53, align 4
  %completed55 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %45, i32 3
  %46 = ptrtoint ptr %completed55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %completed55, align 4
  %48 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %txq_map, align 4
  %axq_qnum62 = getelementptr inbounds %struct.ath_txq, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %axq_qnum62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %axq_qnum62, align 4
  %completed64 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %51, i32 3
  %52 = ptrtoint ptr %completed64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %completed64, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.97, i32 noundef %35, i32 noundef %41, i32 noundef %47, i32 noundef %53) #14
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %axq_qnum74 = getelementptr inbounds %struct.ath_txq, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %axq_qnum74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %axq_qnum74, align 4
  %xretries = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %57, i32 4
  %58 = ptrtoint ptr %xretries to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %xretries, align 4
  %60 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum82 = getelementptr inbounds %struct.ath_txq, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %axq_qnum82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %axq_qnum82, align 4
  %xretries84 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %63, i32 4
  %64 = ptrtoint ptr %xretries84 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %xretries84, align 4
  %66 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum91 = getelementptr inbounds %struct.ath_txq, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %axq_qnum91 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %axq_qnum91, align 4
  %xretries93 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %69, i32 4
  %70 = ptrtoint ptr %xretries93 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %xretries93, align 4
  %72 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %txq_map, align 4
  %axq_qnum100 = getelementptr inbounds %struct.ath_txq, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %axq_qnum100 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %axq_qnum100, align 4
  %xretries102 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %75, i32 4
  %76 = ptrtoint ptr %xretries102 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %xretries102, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.98, i32 noundef %59, i32 noundef %65, i32 noundef %71, i32 noundef %77) #14
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx, align 4
  %axq_qnum112 = getelementptr inbounds %struct.ath_txq, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %axq_qnum112 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %axq_qnum112, align 4
  %a_aggr = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %81, i32 5
  %82 = ptrtoint ptr %a_aggr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %a_aggr, align 4
  %84 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum120 = getelementptr inbounds %struct.ath_txq, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %axq_qnum120 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %axq_qnum120, align 4
  %a_aggr122 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %87, i32 5
  %88 = ptrtoint ptr %a_aggr122 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %a_aggr122, align 4
  %90 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum129 = getelementptr inbounds %struct.ath_txq, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %axq_qnum129 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %axq_qnum129, align 4
  %a_aggr131 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %93, i32 5
  %94 = ptrtoint ptr %a_aggr131 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %a_aggr131, align 4
  %96 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %txq_map, align 4
  %axq_qnum138 = getelementptr inbounds %struct.ath_txq, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %axq_qnum138 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %axq_qnum138, align 4
  %a_aggr140 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %99, i32 5
  %100 = ptrtoint ptr %a_aggr140 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %a_aggr140, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.99, i32 noundef %83, i32 noundef %89, i32 noundef %95, i32 noundef %101) #14
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx, align 4
  %axq_qnum150 = getelementptr inbounds %struct.ath_txq, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %axq_qnum150 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %axq_qnum150, align 4
  %a_queued_hw = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %105, i32 6
  %106 = ptrtoint ptr %a_queued_hw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %a_queued_hw, align 4
  %108 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum158 = getelementptr inbounds %struct.ath_txq, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %axq_qnum158 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %axq_qnum158, align 4
  %a_queued_hw160 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %111, i32 6
  %112 = ptrtoint ptr %a_queued_hw160 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %a_queued_hw160, align 4
  %114 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum167 = getelementptr inbounds %struct.ath_txq, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %axq_qnum167 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %axq_qnum167, align 4
  %a_queued_hw169 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %117, i32 6
  %118 = ptrtoint ptr %a_queued_hw169 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %a_queued_hw169, align 4
  %120 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %txq_map, align 4
  %axq_qnum176 = getelementptr inbounds %struct.ath_txq, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %axq_qnum176 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %axq_qnum176, align 4
  %a_queued_hw178 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %123, i32 6
  %124 = ptrtoint ptr %a_queued_hw178 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %a_queued_hw178, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.100, i32 noundef %107, i32 noundef %113, i32 noundef %119, i32 noundef %125) #14
  %126 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx, align 4
  %axq_qnum188 = getelementptr inbounds %struct.ath_txq, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %axq_qnum188 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %axq_qnum188, align 4
  %a_completed = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %129, i32 7
  %130 = ptrtoint ptr %a_completed to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %a_completed, align 4
  %132 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum196 = getelementptr inbounds %struct.ath_txq, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %axq_qnum196 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %axq_qnum196, align 4
  %a_completed198 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %135, i32 7
  %136 = ptrtoint ptr %a_completed198 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %a_completed198, align 4
  %138 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum205 = getelementptr inbounds %struct.ath_txq, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %axq_qnum205 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %axq_qnum205, align 4
  %a_completed207 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %141, i32 7
  %142 = ptrtoint ptr %a_completed207 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %a_completed207, align 4
  %144 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %txq_map, align 4
  %axq_qnum214 = getelementptr inbounds %struct.ath_txq, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %axq_qnum214 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %axq_qnum214, align 4
  %a_completed216 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %147, i32 7
  %148 = ptrtoint ptr %a_completed216 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %a_completed216, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.101, i32 noundef %131, i32 noundef %137, i32 noundef %143, i32 noundef %149) #14
  %150 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx, align 4
  %axq_qnum226 = getelementptr inbounds %struct.ath_txq, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %axq_qnum226 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %axq_qnum226, align 4
  %a_retries = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %153, i32 8
  %154 = ptrtoint ptr %a_retries to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %a_retries, align 4
  %156 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum234 = getelementptr inbounds %struct.ath_txq, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %axq_qnum234 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %axq_qnum234, align 4
  %a_retries236 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %159, i32 8
  %160 = ptrtoint ptr %a_retries236 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %a_retries236, align 4
  %162 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum243 = getelementptr inbounds %struct.ath_txq, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %axq_qnum243 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %axq_qnum243, align 4
  %a_retries245 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %165, i32 8
  %166 = ptrtoint ptr %a_retries245 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %a_retries245, align 4
  %168 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %txq_map, align 4
  %axq_qnum252 = getelementptr inbounds %struct.ath_txq, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %axq_qnum252 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %axq_qnum252, align 4
  %a_retries254 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %171, i32 8
  %172 = ptrtoint ptr %a_retries254 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %a_retries254, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.102, i32 noundef %155, i32 noundef %161, i32 noundef %167, i32 noundef %173) #14
  %174 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx, align 4
  %axq_qnum264 = getelementptr inbounds %struct.ath_txq, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %axq_qnum264 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %axq_qnum264, align 4
  %a_xretries = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %177, i32 9
  %178 = ptrtoint ptr %a_xretries to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %a_xretries, align 4
  %180 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum272 = getelementptr inbounds %struct.ath_txq, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %axq_qnum272 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %axq_qnum272, align 4
  %a_xretries274 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %183, i32 9
  %184 = ptrtoint ptr %a_xretries274 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %a_xretries274, align 4
  %186 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum281 = getelementptr inbounds %struct.ath_txq, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %axq_qnum281 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %axq_qnum281, align 4
  %a_xretries283 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %189, i32 9
  %190 = ptrtoint ptr %a_xretries283 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %a_xretries283, align 4
  %192 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %txq_map, align 4
  %axq_qnum290 = getelementptr inbounds %struct.ath_txq, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %axq_qnum290 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %axq_qnum290, align 4
  %a_xretries292 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %195, i32 9
  %196 = ptrtoint ptr %a_xretries292 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %a_xretries292, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.103, i32 noundef %179, i32 noundef %185, i32 noundef %191, i32 noundef %197) #14
  %198 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx, align 4
  %axq_qnum302 = getelementptr inbounds %struct.ath_txq, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %axq_qnum302 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %axq_qnum302, align 4
  %txerr_filtered = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %201, i32 10
  %202 = ptrtoint ptr %txerr_filtered to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %txerr_filtered, align 4
  %204 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum310 = getelementptr inbounds %struct.ath_txq, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %axq_qnum310 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %axq_qnum310, align 4
  %txerr_filtered312 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %207, i32 10
  %208 = ptrtoint ptr %txerr_filtered312 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %txerr_filtered312, align 4
  %210 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum319 = getelementptr inbounds %struct.ath_txq, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %axq_qnum319 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %axq_qnum319, align 4
  %txerr_filtered321 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %213, i32 10
  %214 = ptrtoint ptr %txerr_filtered321 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %txerr_filtered321, align 4
  %216 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %txq_map, align 4
  %axq_qnum328 = getelementptr inbounds %struct.ath_txq, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %axq_qnum328 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %axq_qnum328, align 4
  %txerr_filtered330 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %219, i32 10
  %220 = ptrtoint ptr %txerr_filtered330 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %txerr_filtered330, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.104, i32 noundef %203, i32 noundef %209, i32 noundef %215, i32 noundef %221) #14
  %222 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx, align 4
  %axq_qnum340 = getelementptr inbounds %struct.ath_txq, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %axq_qnum340 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %axq_qnum340, align 4
  %fifo_underrun = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %225, i32 11
  %226 = ptrtoint ptr %fifo_underrun to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %fifo_underrun, align 4
  %228 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum348 = getelementptr inbounds %struct.ath_txq, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %axq_qnum348 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %axq_qnum348, align 4
  %fifo_underrun350 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %231, i32 11
  %232 = ptrtoint ptr %fifo_underrun350 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %fifo_underrun350, align 4
  %234 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum357 = getelementptr inbounds %struct.ath_txq, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %axq_qnum357 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %axq_qnum357, align 4
  %fifo_underrun359 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %237, i32 11
  %238 = ptrtoint ptr %fifo_underrun359 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %fifo_underrun359, align 4
  %240 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %txq_map, align 4
  %axq_qnum366 = getelementptr inbounds %struct.ath_txq, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %axq_qnum366 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %axq_qnum366, align 4
  %fifo_underrun368 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %243, i32 11
  %244 = ptrtoint ptr %fifo_underrun368 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %fifo_underrun368, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.105, i32 noundef %227, i32 noundef %233, i32 noundef %239, i32 noundef %245) #14
  %246 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx, align 4
  %axq_qnum378 = getelementptr inbounds %struct.ath_txq, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %axq_qnum378 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %axq_qnum378, align 4
  %xtxop = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %249, i32 12
  %250 = ptrtoint ptr %xtxop to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %xtxop, align 4
  %252 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum386 = getelementptr inbounds %struct.ath_txq, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %axq_qnum386 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %axq_qnum386, align 4
  %xtxop388 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %255, i32 12
  %256 = ptrtoint ptr %xtxop388 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %xtxop388, align 4
  %258 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum395 = getelementptr inbounds %struct.ath_txq, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %axq_qnum395 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %axq_qnum395, align 4
  %xtxop397 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %261, i32 12
  %262 = ptrtoint ptr %xtxop397 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %xtxop397, align 4
  %264 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %txq_map, align 4
  %axq_qnum404 = getelementptr inbounds %struct.ath_txq, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %axq_qnum404 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %axq_qnum404, align 4
  %xtxop406 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %267, i32 12
  %268 = ptrtoint ptr %xtxop406 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %xtxop406, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.106, i32 noundef %251, i32 noundef %257, i32 noundef %263, i32 noundef %269) #14
  %270 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx, align 4
  %axq_qnum416 = getelementptr inbounds %struct.ath_txq, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %axq_qnum416 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %axq_qnum416, align 4
  %timer_exp = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %273, i32 13
  %274 = ptrtoint ptr %timer_exp to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %timer_exp, align 4
  %276 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum424 = getelementptr inbounds %struct.ath_txq, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %axq_qnum424 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %axq_qnum424, align 4
  %timer_exp426 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %279, i32 13
  %280 = ptrtoint ptr %timer_exp426 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %timer_exp426, align 4
  %282 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum433 = getelementptr inbounds %struct.ath_txq, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %axq_qnum433 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %axq_qnum433, align 4
  %timer_exp435 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %285, i32 13
  %286 = ptrtoint ptr %timer_exp435 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %timer_exp435, align 4
  %288 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %txq_map, align 4
  %axq_qnum442 = getelementptr inbounds %struct.ath_txq, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %axq_qnum442 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %axq_qnum442, align 4
  %timer_exp444 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %291, i32 13
  %292 = ptrtoint ptr %timer_exp444 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %timer_exp444, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.107, i32 noundef %275, i32 noundef %281, i32 noundef %287, i32 noundef %293) #14
  %294 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %arrayidx, align 4
  %axq_qnum454 = getelementptr inbounds %struct.ath_txq, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %axq_qnum454 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %axq_qnum454, align 4
  %desc_cfg_err = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %297, i32 14
  %298 = ptrtoint ptr %desc_cfg_err to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %desc_cfg_err, align 4
  %300 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum462 = getelementptr inbounds %struct.ath_txq, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %axq_qnum462 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %axq_qnum462, align 4
  %desc_cfg_err464 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %303, i32 14
  %304 = ptrtoint ptr %desc_cfg_err464 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %desc_cfg_err464, align 4
  %306 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum471 = getelementptr inbounds %struct.ath_txq, ptr %307, i32 0, i32 1
  %308 = ptrtoint ptr %axq_qnum471 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %axq_qnum471, align 4
  %desc_cfg_err473 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %309, i32 14
  %310 = ptrtoint ptr %desc_cfg_err473 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %desc_cfg_err473, align 4
  %312 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %txq_map, align 4
  %axq_qnum480 = getelementptr inbounds %struct.ath_txq, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %axq_qnum480 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %axq_qnum480, align 4
  %desc_cfg_err482 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %315, i32 14
  %316 = ptrtoint ptr %desc_cfg_err482 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %desc_cfg_err482, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.108, i32 noundef %299, i32 noundef %305, i32 noundef %311, i32 noundef %317) #14
  %318 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %arrayidx, align 4
  %axq_qnum492 = getelementptr inbounds %struct.ath_txq, ptr %319, i32 0, i32 1
  %320 = ptrtoint ptr %axq_qnum492 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %axq_qnum492, align 4
  %data_underrun = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %321, i32 15
  %322 = ptrtoint ptr %data_underrun to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %data_underrun, align 4
  %324 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum500 = getelementptr inbounds %struct.ath_txq, ptr %325, i32 0, i32 1
  %326 = ptrtoint ptr %axq_qnum500 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %axq_qnum500, align 4
  %data_underrun502 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %327, i32 15
  %328 = ptrtoint ptr %data_underrun502 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %data_underrun502, align 4
  %330 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum509 = getelementptr inbounds %struct.ath_txq, ptr %331, i32 0, i32 1
  %332 = ptrtoint ptr %axq_qnum509 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %axq_qnum509, align 4
  %data_underrun511 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %333, i32 15
  %334 = ptrtoint ptr %data_underrun511 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %data_underrun511, align 4
  %336 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %txq_map, align 4
  %axq_qnum518 = getelementptr inbounds %struct.ath_txq, ptr %337, i32 0, i32 1
  %338 = ptrtoint ptr %axq_qnum518 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %axq_qnum518, align 4
  %data_underrun520 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %339, i32 15
  %340 = ptrtoint ptr %data_underrun520 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %data_underrun520, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.109, i32 noundef %323, i32 noundef %329, i32 noundef %335, i32 noundef %341) #14
  %342 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %arrayidx, align 4
  %axq_qnum530 = getelementptr inbounds %struct.ath_txq, ptr %343, i32 0, i32 1
  %344 = ptrtoint ptr %axq_qnum530 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %axq_qnum530, align 4
  %delim_underrun = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %345, i32 16
  %346 = ptrtoint ptr %delim_underrun to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %delim_underrun, align 4
  %348 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum538 = getelementptr inbounds %struct.ath_txq, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %axq_qnum538 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %axq_qnum538, align 4
  %delim_underrun540 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %351, i32 16
  %352 = ptrtoint ptr %delim_underrun540 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %delim_underrun540, align 4
  %354 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum547 = getelementptr inbounds %struct.ath_txq, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %axq_qnum547 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %axq_qnum547, align 4
  %delim_underrun549 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %357, i32 16
  %358 = ptrtoint ptr %delim_underrun549 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %delim_underrun549, align 4
  %360 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %txq_map, align 4
  %axq_qnum556 = getelementptr inbounds %struct.ath_txq, ptr %361, i32 0, i32 1
  %362 = ptrtoint ptr %axq_qnum556 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %axq_qnum556, align 4
  %delim_underrun558 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %363, i32 16
  %364 = ptrtoint ptr %delim_underrun558 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %delim_underrun558, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.110, i32 noundef %347, i32 noundef %353, i32 noundef %359, i32 noundef %365) #14
  %366 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %arrayidx, align 4
  %axq_qnum568 = getelementptr inbounds %struct.ath_txq, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %axq_qnum568 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %axq_qnum568, align 4
  %arrayidx569 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %369
  %370 = ptrtoint ptr %arrayidx569 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx569, align 4
  %372 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum576 = getelementptr inbounds %struct.ath_txq, ptr %373, i32 0, i32 1
  %374 = ptrtoint ptr %axq_qnum576 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %axq_qnum576, align 4
  %arrayidx577 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %375
  %376 = ptrtoint ptr %arrayidx577 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx577, align 4
  %378 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum585 = getelementptr inbounds %struct.ath_txq, ptr %379, i32 0, i32 1
  %380 = ptrtoint ptr %axq_qnum585 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %axq_qnum585, align 4
  %arrayidx586 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %381
  %382 = ptrtoint ptr %arrayidx586 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %arrayidx586, align 4
  %384 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %txq_map, align 4
  %axq_qnum594 = getelementptr inbounds %struct.ath_txq, ptr %385, i32 0, i32 1
  %386 = ptrtoint ptr %axq_qnum594 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %axq_qnum594, align 4
  %arrayidx595 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %387
  %388 = ptrtoint ptr %arrayidx595 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %arrayidx595, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.111, i32 noundef %371, i32 noundef %377, i32 noundef %383, i32 noundef %389) #14
  %390 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %arrayidx, align 4
  %axq_qnum606 = getelementptr inbounds %struct.ath_txq, ptr %391, i32 0, i32 1
  %392 = ptrtoint ptr %axq_qnum606 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %axq_qnum606, align 4
  %tx_bytes_all = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %393, i32 1
  %394 = ptrtoint ptr %tx_bytes_all to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %tx_bytes_all, align 4
  %396 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum614 = getelementptr inbounds %struct.ath_txq, ptr %397, i32 0, i32 1
  %398 = ptrtoint ptr %axq_qnum614 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %axq_qnum614, align 4
  %tx_bytes_all616 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %399, i32 1
  %400 = ptrtoint ptr %tx_bytes_all616 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %tx_bytes_all616, align 4
  %402 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum623 = getelementptr inbounds %struct.ath_txq, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %axq_qnum623 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %axq_qnum623, align 4
  %tx_bytes_all625 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %405, i32 1
  %406 = ptrtoint ptr %tx_bytes_all625 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %tx_bytes_all625, align 4
  %408 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %txq_map, align 4
  %axq_qnum632 = getelementptr inbounds %struct.ath_txq, ptr %409, i32 0, i32 1
  %410 = ptrtoint ptr %axq_qnum632 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %axq_qnum632, align 4
  %tx_bytes_all634 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %411, i32 1
  %412 = ptrtoint ptr %tx_bytes_all634 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %tx_bytes_all634, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.112, i32 noundef %395, i32 noundef %401, i32 noundef %407, i32 noundef %413) #14
  %414 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %arrayidx, align 4
  %axq_qnum644 = getelementptr inbounds %struct.ath_txq, ptr %415, i32 0, i32 1
  %416 = ptrtoint ptr %axq_qnum644 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %axq_qnum644, align 4
  %puttxbuf = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %417, i32 17
  %418 = ptrtoint ptr %puttxbuf to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %puttxbuf, align 4
  %420 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum652 = getelementptr inbounds %struct.ath_txq, ptr %421, i32 0, i32 1
  %422 = ptrtoint ptr %axq_qnum652 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %axq_qnum652, align 4
  %puttxbuf654 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %423, i32 17
  %424 = ptrtoint ptr %puttxbuf654 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %puttxbuf654, align 4
  %426 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum661 = getelementptr inbounds %struct.ath_txq, ptr %427, i32 0, i32 1
  %428 = ptrtoint ptr %axq_qnum661 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %axq_qnum661, align 4
  %puttxbuf663 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %429, i32 17
  %430 = ptrtoint ptr %puttxbuf663 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %puttxbuf663, align 4
  %432 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %txq_map, align 4
  %axq_qnum670 = getelementptr inbounds %struct.ath_txq, ptr %433, i32 0, i32 1
  %434 = ptrtoint ptr %axq_qnum670 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %axq_qnum670, align 4
  %puttxbuf672 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %435, i32 17
  %436 = ptrtoint ptr %puttxbuf672 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %puttxbuf672, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.113, i32 noundef %419, i32 noundef %425, i32 noundef %431, i32 noundef %437) #14
  %438 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %arrayidx, align 4
  %axq_qnum682 = getelementptr inbounds %struct.ath_txq, ptr %439, i32 0, i32 1
  %440 = ptrtoint ptr %axq_qnum682 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %axq_qnum682, align 4
  %txstart = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %441, i32 18
  %442 = ptrtoint ptr %txstart to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %txstart, align 4
  %444 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum690 = getelementptr inbounds %struct.ath_txq, ptr %445, i32 0, i32 1
  %446 = ptrtoint ptr %axq_qnum690 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %axq_qnum690, align 4
  %txstart692 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %447, i32 18
  %448 = ptrtoint ptr %txstart692 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %txstart692, align 4
  %450 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum699 = getelementptr inbounds %struct.ath_txq, ptr %451, i32 0, i32 1
  %452 = ptrtoint ptr %axq_qnum699 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %axq_qnum699, align 4
  %txstart701 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %453, i32 18
  %454 = ptrtoint ptr %txstart701 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %txstart701, align 4
  %456 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %txq_map, align 4
  %axq_qnum708 = getelementptr inbounds %struct.ath_txq, ptr %457, i32 0, i32 1
  %458 = ptrtoint ptr %axq_qnum708 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %axq_qnum708, align 4
  %txstart710 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %459, i32 18
  %460 = ptrtoint ptr %txstart710 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %txstart710, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.114, i32 noundef %443, i32 noundef %449, i32 noundef %455, i32 noundef %461) #14
  %462 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %arrayidx, align 4
  %axq_qnum720 = getelementptr inbounds %struct.ath_txq, ptr %463, i32 0, i32 1
  %464 = ptrtoint ptr %axq_qnum720 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %axq_qnum720, align 4
  %txprocdesc = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %465, i32 19
  %466 = ptrtoint ptr %txprocdesc to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %txprocdesc, align 4
  %468 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum728 = getelementptr inbounds %struct.ath_txq, ptr %469, i32 0, i32 1
  %470 = ptrtoint ptr %axq_qnum728 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %axq_qnum728, align 4
  %txprocdesc730 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %471, i32 19
  %472 = ptrtoint ptr %txprocdesc730 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %txprocdesc730, align 4
  %474 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum737 = getelementptr inbounds %struct.ath_txq, ptr %475, i32 0, i32 1
  %476 = ptrtoint ptr %axq_qnum737 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %axq_qnum737, align 4
  %txprocdesc739 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %477, i32 19
  %478 = ptrtoint ptr %txprocdesc739 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %txprocdesc739, align 4
  %480 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %txq_map, align 4
  %axq_qnum746 = getelementptr inbounds %struct.ath_txq, ptr %481, i32 0, i32 1
  %482 = ptrtoint ptr %axq_qnum746 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %axq_qnum746, align 4
  %txprocdesc748 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %483, i32 19
  %484 = ptrtoint ptr %txprocdesc748 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %txprocdesc748, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.115, i32 noundef %467, i32 noundef %473, i32 noundef %479, i32 noundef %485) #14
  %486 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %arrayidx, align 4
  %axq_qnum758 = getelementptr inbounds %struct.ath_txq, ptr %487, i32 0, i32 1
  %488 = ptrtoint ptr %axq_qnum758 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %axq_qnum758, align 4
  %txfailed = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %489, i32 20
  %490 = ptrtoint ptr %txfailed to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %txfailed, align 4
  %492 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %arrayidx7, align 4
  %axq_qnum766 = getelementptr inbounds %struct.ath_txq, ptr %493, i32 0, i32 1
  %494 = ptrtoint ptr %axq_qnum766 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %axq_qnum766, align 4
  %txfailed768 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %495, i32 20
  %496 = ptrtoint ptr %txfailed768 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %txfailed768, align 4
  %498 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %arrayidx16, align 4
  %axq_qnum775 = getelementptr inbounds %struct.ath_txq, ptr %499, i32 0, i32 1
  %500 = ptrtoint ptr %axq_qnum775 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %axq_qnum775, align 4
  %txfailed777 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %501, i32 20
  %502 = ptrtoint ptr %txfailed777 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %txfailed777, align 4
  %504 = ptrtoint ptr %txq_map to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %txq_map, align 4
  %axq_qnum784 = getelementptr inbounds %struct.ath_txq, ptr %505, i32 0, i32 1
  %506 = ptrtoint ptr %axq_qnum784 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %axq_qnum784, align 4
  %txfailed786 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 44, i32 2, i32 1, i32 %507, i32 20
  %508 = ptrtoint ptr %txfailed786 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %txfailed786, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.116, i32 noundef %491, i32 noundef %497, i32 noundef %503, i32 noundef %509) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_queues(ptr noundef %file, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %arrayidx = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 35, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.94) #14
  %axq_lock.i.i = getelementptr inbounds %struct.ath_txq, ptr %7, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.i) #14
  %axq_qnum.i = getelementptr inbounds %struct.ath_txq, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %axq_qnum.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %axq_qnum.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef %9) #14
  %axq_depth.i = getelementptr inbounds %struct.ath_txq, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %axq_depth.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %axq_depth.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef %11) #14
  %axq_ampdu_depth.i = getelementptr inbounds %struct.ath_txq, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %axq_ampdu_depth.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %axq_ampdu_depth.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.123, i32 noundef %13) #14
  %pending_frames.i = getelementptr inbounds %struct.ath_txq, ptr %7, i32 0, i32 11
  %14 = ptrtoint ptr %pending_frames.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pending_frames.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef %15) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.i) #14
  %arrayidx.1 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 35, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.93) #14
  %axq_lock.i.i.1 = getelementptr inbounds %struct.ath_txq, ptr %17, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.i.1) #14
  %axq_qnum.i.1 = getelementptr inbounds %struct.ath_txq, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %axq_qnum.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %axq_qnum.i.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef %19) #14
  %axq_depth.i.1 = getelementptr inbounds %struct.ath_txq, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %axq_depth.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %axq_depth.i.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef %21) #14
  %axq_ampdu_depth.i.1 = getelementptr inbounds %struct.ath_txq, ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %axq_ampdu_depth.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %axq_ampdu_depth.i.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.123, i32 noundef %23) #14
  %pending_frames.i.1 = getelementptr inbounds %struct.ath_txq, ptr %17, i32 0, i32 11
  %24 = ptrtoint ptr %pending_frames.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pending_frames.i.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef %25) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.i.1) #14
  %arrayidx.2 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 35, i32 5, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.91) #14
  %axq_lock.i.i.2 = getelementptr inbounds %struct.ath_txq, ptr %27, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.i.2) #14
  %axq_qnum.i.2 = getelementptr inbounds %struct.ath_txq, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %axq_qnum.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %axq_qnum.i.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef %29) #14
  %axq_depth.i.2 = getelementptr inbounds %struct.ath_txq, ptr %27, i32 0, i32 5
  %30 = ptrtoint ptr %axq_depth.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %axq_depth.i.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef %31) #14
  %axq_ampdu_depth.i.2 = getelementptr inbounds %struct.ath_txq, ptr %27, i32 0, i32 6
  %32 = ptrtoint ptr %axq_ampdu_depth.i.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %axq_ampdu_depth.i.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.123, i32 noundef %33) #14
  %pending_frames.i.2 = getelementptr inbounds %struct.ath_txq, ptr %27, i32 0, i32 11
  %34 = ptrtoint ptr %pending_frames.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pending_frames.i.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef %35) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.i.2) #14
  %arrayidx.3 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 35, i32 5, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.92) #14
  %axq_lock.i.i.3 = getelementptr inbounds %struct.ath_txq, ptr %37, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.i.3) #14
  %axq_qnum.i.3 = getelementptr inbounds %struct.ath_txq, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %axq_qnum.i.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %axq_qnum.i.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef %39) #14
  %axq_depth.i.3 = getelementptr inbounds %struct.ath_txq, ptr %37, i32 0, i32 5
  %40 = ptrtoint ptr %axq_depth.i.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %axq_depth.i.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef %41) #14
  %axq_ampdu_depth.i.3 = getelementptr inbounds %struct.ath_txq, ptr %37, i32 0, i32 6
  %42 = ptrtoint ptr %axq_ampdu_depth.i.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %axq_ampdu_depth.i.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.123, i32 noundef %43) #14
  %pending_frames.i.3 = getelementptr inbounds %struct.ath_txq, ptr %37, i32 0, i32 11
  %44 = ptrtoint ptr %pending_frames.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pending_frames.i.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef %45) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.i.3) #14
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.118) #14
  %cabq = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 36, i32 7
  %46 = ptrtoint ptr %cabq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cabq, align 4
  %axq_lock.i.i12 = getelementptr inbounds %struct.ath_txq, ptr %47, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.i12) #14
  %axq_qnum.i13 = getelementptr inbounds %struct.ath_txq, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %axq_qnum.i13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %axq_qnum.i13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef %49) #14
  %axq_depth.i14 = getelementptr inbounds %struct.ath_txq, ptr %47, i32 0, i32 5
  %50 = ptrtoint ptr %axq_depth.i14 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %axq_depth.i14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef %51) #14
  %axq_ampdu_depth.i15 = getelementptr inbounds %struct.ath_txq, ptr %47, i32 0, i32 6
  %52 = ptrtoint ptr %axq_ampdu_depth.i15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %axq_ampdu_depth.i15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.123, i32 noundef %53) #14
  %pending_frames.i16 = getelementptr inbounds %struct.ath_txq, ptr %47, i32 0, i32 11
  %54 = ptrtoint ptr %pending_frames.i16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pending_frames.i16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef %55) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.i12) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_misc(ptr noundef %file, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  %iter_data = alloca %struct.ath9k_vif_iter_data, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %iter_data) #14
  %8 = call ptr @memset(ptr %iter_data, i32 255, i32 48)
  %curbssid = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.126, ptr noundef %curbssid) #14
  %bssidmask = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.127, ptr noundef %bssidmask) #14
  %9 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc_ah, align 4
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %10, i32 0, i32 28
  %11 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opmode, align 4
  %call4 = tail call ptr @ath_opmode_to_string(i32 noundef %12) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.128, ptr noundef %call4) #14
  tail call void @ath9k_ps_wakeup(ptr noundef %5) #14
  %13 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc_ah, align 4
  %call6 = tail call i32 @ath9k_hw_getrxfilter(ptr noundef %14) #14
  tail call void @ath9k_ps_restore(ptr noundef %5) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.129, i32 noundef %call6) #14
  %and = and i32 %call6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.130) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and7 = and i32 %call6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.131) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %and11 = and i32 %call6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.132) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %and15 = and i32 %call6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.133) #14
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %and19 = and i32 %call6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.134) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %and23 = and i32 %call6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.135) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %and27 = and i32 %call6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end30_crit_edge, label %if.then29

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.136) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %and31 = and i32 %call6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %if.then33

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.137) #14
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %and35 = and i32 %call6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.138) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34.if.end38_crit_edge
  %and39 = and i32 %call6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end42_crit_edge, label %if.then41

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.139) #14
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end38.if.end42_crit_edge
  %and43 = and i32 %call6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end46_crit_edge, label %if.then45

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.140) #14
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42.if.end46_crit_edge
  %and47 = and i32 %call6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end50_crit_edge, label %if.then49

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.141) #14
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46.if.end50_crit_edge
  %and51 = and i32 %call6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end54_crit_edge, label %if.then53

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.142) #14
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50.if.end54_crit_edge
  %and55 = and i32 %call6, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.143) #14
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.32) #14
  %15 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sc_ah, align 4
  %imask = getelementptr inbounds %struct.ath_hw, ptr %16, i32 0, i32 36
  %17 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %imask, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.144, i32 noundef %18) #14
  %and60 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end58.if.end63_crit_edge, label %if.then62

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.145) #14
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end58.if.end63_crit_edge
  %and64 = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end67_crit_edge, label %if.then66

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.146) #14
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end63.if.end67_crit_edge
  %and68 = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end71_crit_edge, label %if.then70

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.147) #14
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end67.if.end71_crit_edge
  %and72 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end79_crit_edge, label %if.then74

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.148) #14
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.149) #14
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end71.if.end79_crit_edge
  %and80 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end83_crit_edge, label %if.then82

if.end79.if.end83_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.150) #14
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end79.if.end83_crit_edge
  %and84 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end87_crit_edge, label %if.then86

if.end83.if.end87_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.151) #14
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end83.if.end87_crit_edge
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.32) #14
  %chanctx = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 38
  %arrayidx89 = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 38, i32 1
  %cmp.not163 = icmp ugt ptr %chanctx, %arrayidx89
  br i1 %cmp.not163, label %if.end87.for.end_crit_edge, label %for.body.lr.ph

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end87
  %naps = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 5
  %nstations = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 7
  %nmeshes = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 6
  %nadhocs = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 8
  %nocbs = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 9
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 39
  %nbcnvifs = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc.for.body_crit_edge ]
  %ctx.0164 = phi ptr [ %chanctx, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %vifs = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.0164, i32 0, i32 1
  %19 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %vifs, align 4
  %cmp.i.not = icmp eq ptr %20, %vifs
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %if.end93

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end93:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath9k_calculate_iter_data(ptr noundef %5, ptr noundef %ctx.0164, ptr noundef nonnull %iter_data) #14
  %inc = add i32 %i.0165, 1
  %assigned = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.0164, i32 0, i32 16
  %21 = ptrtoint ptr %assigned to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %assigned, align 1, !range !488
  %23 = zext i8 %22 to i32
  %24 = ptrtoint ptr %naps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %naps, align 4
  %26 = ptrtoint ptr %nstations to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nstations, align 4
  %28 = ptrtoint ptr %nmeshes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nmeshes, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.152, i32 noundef %i.0165, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #14
  %30 = ptrtoint ptr %nadhocs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nadhocs, align 4
  %32 = ptrtoint ptr %nocbs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nocbs, align 4
  %34 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur_chan, align 8
  %nvifs = getelementptr inbounds %struct.ath_chanctx, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %nvifs, align 2
  %conv95 = sext i16 %37 to i32
  %38 = ptrtoint ptr %nbcnvifs to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nbcnvifs, align 8
  %conv96 = sext i16 %39 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.153, i32 noundef %31, i32 noundef %33, i32 noundef %conv95, i32 noundef %conv96) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end93, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %i.0165, %for.body.for.inc_crit_edge ], [ %inc, %if.end93 ]
  %incdec.ptr = getelementptr %struct.ath_chanctx, ptr %ctx.0164, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %arrayidx89
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end87.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %iter_data) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_debug_recv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_debug_phy_err(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_dump_nfcal(ptr noundef %file, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 39
  %8 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_chan, align 8
  %nfCalHist = getelementptr inbounds %struct.ath_chanctx, ptr %9, i32 0, i32 6, i32 13
  %hw2 = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw2, align 4
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 75
  %12 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rxchainmask, align 1
  %shl = shl i8 %13, 3
  %or = or i8 %shl, %13
  %noise = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 30
  %14 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %noise, align 4
  %conv7 = sext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.189, i32 noundef %conv7) #14
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.190) #14
  %conv9 = zext i8 %or to i32
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %11, i32 0, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc27.for.body_crit_edge, %entry
  %i.053 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27.for.body_crit_edge ]
  %shl10 = shl nuw nsw i32 1, %i.053
  %and = and i32 %shl10, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc27_crit_edge, label %lor.lhs.false

for.body.for.inc27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27

lor.lhs.false:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.053)
  %cmp11 = icmp ugt i32 %i.053, 2
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc27_crit_edge

land.lhs.true.for.inc27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %arrayidx = getelementptr %struct.ath9k_nfcal_hist, ptr %nfCalHist, i32 %i.053
  %invalidNFcount = getelementptr %struct.ath9k_nfcal_hist, ptr %nfCalHist, i32 %i.053, i32 3
  %18 = ptrtoint ptr %invalidNFcount to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %invalidNFcount, align 2
  %sub = sub i8 5, %19
  %privNF = getelementptr %struct.ath9k_nfcal_hist, ptr %nfCalHist, i32 %i.053, i32 2
  %20 = ptrtoint ptr %privNF to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %privNF, align 2
  %conv17 = sext i16 %21 to i32
  %conv18 = zext i8 %sub to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.191, i32 noundef %i.053, i32 noundef %conv17, i32 noundef %conv18) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %cmp2151.not = icmp eq i8 %19, 5
  br i1 %cmp2151.not, label %if.end.for.end_crit_edge, label %for.body23.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body23.preheader:                             ; preds = %if.end
  %umax = call i32 @llvm.umax.i32(i32 %conv18, i32 1)
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body23.preheader
  %j.052 = phi i32 [ %inc, %for.body23.for.body23_crit_edge ], [ 0, %for.body23.preheader ]
  %arrayidx25 = getelementptr [5 x i16], ptr %arrayidx, i32 0, i32 %j.052
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx25, align 2
  %conv26 = sext i16 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.192, i32 noundef %conv26) #14
  %inc = add nuw nsw i32 %j.052, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body23.for.end_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body23

for.body23.for.end_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body23.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.32) #14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end, %land.lhs.true.for.inc27_crit_edge, %for.body.for.inc27_crit_edge
  %inc28 = add nuw nsw i32 %i.053, 1
  %exitcond55.not = icmp eq i32 %inc28, 6
  br i1 %exitcond55.not, label %for.end29, label %for.inc27.for.body_crit_edge

for.inc27.for.body_crit_edge:                     ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end29:                                        ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_debug_base_eeprom(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_debug_modal_eeprom(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_debug(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.27, i32 noundef %6)
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call1) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_debug(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %mask = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #14
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mask, align 4, !annotation !489
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #17, !srcloc !490
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !491

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #14
  %8 = call i32 @llvm.read_register.i32(metadata !478) #14
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !492
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !491

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %debug_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %debug_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end6 ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_wakeup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_restore(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath_opmode_to_string(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_getrxfilter(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_calculate_iter_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_reset(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !489
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %7 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %8 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %7, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %7, i32 -1226833920) #17, !srcloc !490
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !491

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %7) #14
  %10 = call i32 @llvm.read_register.i32(metadata !478) #14
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !492
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %7) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %7, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %7, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !491

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %7, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %7
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp8.not = icmp eq i32 %16, 1
  br i1 %cmp8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %3, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %op_flags, align 4
  %and1.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool12.not = icmp eq i32 %and1.i, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath9k_queue_reset(ptr noundef %3, i32 noundef 0) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -16, %if.then13 ], [ %count, %if.end15 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_file_reset(ptr nocapture noundef readonly %inode, ptr noundef %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %f, ptr noundef nonnull @read_file_reset, ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_queue_reset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_reset(ptr noundef %file, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %arrayidx2 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 0
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.154, i32 noundef %3) #14
  %arrayidx2.1 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.155, i32 noundef %5) #14
  %arrayidx2.2 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.156, i32 noundef %7) #14
  %arrayidx2.3 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 3
  %8 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.157, i32 noundef %9) #14
  %arrayidx2.4 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 4
  %10 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.158, i32 noundef %11) #14
  %arrayidx2.5 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 5
  %12 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.159, i32 noundef %13) #14
  %arrayidx2.6 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 6
  %14 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.160, i32 noundef %15) #14
  %arrayidx2.7 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 7
  %16 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.161, i32 noundef %17) #14
  %arrayidx2.8 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 8
  %18 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.162, i32 noundef %19) #14
  %arrayidx2.9 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 9
  %20 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2.9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.163, i32 noundef %21) #14
  %arrayidx2.10 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 10
  %22 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2.10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.164, i32 noundef %23) #14
  %arrayidx2.11 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 11
  %24 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2.11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.165, i32 noundef %25) #14
  %arrayidx2.12 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 12
  %26 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.166, i32 noundef %27) #14
  %arrayidx2.13 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 5, i32 13
  %28 = ptrtoint ptr %arrayidx2.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.167, i32 noundef %29) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_ani(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  %ani_info = alloca [14 x %struct.anon.142], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %ani_info) #14
  %4 = ptrtoint ptr %ani_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.169, ptr %ani_info, align 4
  %val = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 0, i32 1
  %stats = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33
  %ast_ani_reset = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 10
  %5 = ptrtoint ptr %ast_ani_reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ast_ani_reset, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  %arrayinit.element = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.170, ptr %arrayinit.element, align 4
  %val4 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 1, i32 1
  %ofdmNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 71, i32 1
  %9 = ptrtoint ptr %ofdmNoiseImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ofdmNoiseImmunityLevel, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %val4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %val4, align 4
  %arrayinit.element5 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 2
  %12 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.171, ptr %arrayinit.element5, align 4
  %val7 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 2, i32 1
  %cckNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 71, i32 2
  %13 = ptrtoint ptr %cckNoiseImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cckNoiseImmunityLevel, align 2
  %conv9 = zext i8 %14 to i32
  %15 = ptrtoint ptr %val7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv9, ptr %val7, align 4
  %arrayinit.element10 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 3
  %16 = ptrtoint ptr %arrayinit.element10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.172, ptr %arrayinit.element10, align 4
  %val12 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 3, i32 1
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stats, align 4
  %19 = ptrtoint ptr %val12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val12, align 4
  %arrayinit.element14 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 4
  %20 = ptrtoint ptr %arrayinit.element14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.173, ptr %arrayinit.element14, align 4
  %val16 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 4, i32 1
  %ast_ani_spurdown = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 1
  %21 = ptrtoint ptr %ast_ani_spurdown to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ast_ani_spurdown, align 4
  %23 = ptrtoint ptr %val16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val16, align 4
  %arrayinit.element18 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 5
  %24 = ptrtoint ptr %arrayinit.element18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.174, ptr %arrayinit.element18, align 4
  %val20 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 5, i32 1
  %ast_ani_ofdmon = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 2
  %25 = ptrtoint ptr %ast_ani_ofdmon to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ast_ani_ofdmon, align 4
  %27 = ptrtoint ptr %val20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val20, align 4
  %arrayinit.element22 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 6
  %28 = ptrtoint ptr %arrayinit.element22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.175, ptr %arrayinit.element22, align 4
  %val24 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 6, i32 1
  %ast_ani_ofdmoff = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 3
  %29 = ptrtoint ptr %ast_ani_ofdmoff to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ast_ani_ofdmoff, align 4
  %31 = ptrtoint ptr %val24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %val24, align 4
  %arrayinit.element26 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 7
  %32 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.176, ptr %arrayinit.element26, align 4
  %val28 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 7, i32 1
  %ast_ani_ccklow = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 5
  %33 = ptrtoint ptr %ast_ani_ccklow to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ast_ani_ccklow, align 4
  %35 = ptrtoint ptr %val28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %val28, align 4
  %arrayinit.element30 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 8
  %36 = ptrtoint ptr %arrayinit.element30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.177, ptr %arrayinit.element30, align 4
  %val32 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 8, i32 1
  %ast_ani_cckhigh = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 4
  %37 = ptrtoint ptr %ast_ani_cckhigh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ast_ani_cckhigh, align 4
  %39 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val32, align 4
  %arrayinit.element34 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 9
  %40 = ptrtoint ptr %arrayinit.element34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.178, ptr %arrayinit.element34, align 4
  %val36 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 9, i32 1
  %ast_ani_stepup = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 6
  %41 = ptrtoint ptr %ast_ani_stepup to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ast_ani_stepup, align 4
  %43 = ptrtoint ptr %val36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %val36, align 4
  %arrayinit.element38 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 10
  %44 = ptrtoint ptr %arrayinit.element38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.179, ptr %arrayinit.element38, align 4
  %val40 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 10, i32 1
  %ast_ani_stepdown = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 7
  %45 = ptrtoint ptr %ast_ani_stepdown to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ast_ani_stepdown, align 4
  %47 = ptrtoint ptr %val40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %val40, align 4
  %arrayinit.element42 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 11
  %48 = ptrtoint ptr %arrayinit.element42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.180, ptr %arrayinit.element42, align 4
  %val44 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 11, i32 1
  %ast_ani_lneg_or_lzero = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 11
  %49 = ptrtoint ptr %ast_ani_lneg_or_lzero to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ast_ani_lneg_or_lzero, align 4
  %51 = ptrtoint ptr %val44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val44, align 4
  %arrayinit.element46 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 12
  %52 = ptrtoint ptr %arrayinit.element46 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.181, ptr %arrayinit.element46, align 4
  %val48 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 12, i32 1
  %ast_ani_ofdmerrs = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 8
  %53 = ptrtoint ptr %ast_ani_ofdmerrs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ast_ani_ofdmerrs, align 4
  %55 = ptrtoint ptr %val48 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %val48, align 4
  %arrayinit.element50 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 13
  %56 = ptrtoint ptr %arrayinit.element50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.182, ptr %arrayinit.element50, align 4
  %val52 = getelementptr inbounds %struct.anon.142, ptr %ani_info, i32 13, i32 1
  %ast_ani_cckerrs = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 9
  %57 = ptrtoint ptr %ast_ani_cckerrs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ast_ani_cckerrs, align 4
  %59 = ptrtoint ptr %val52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %val52, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 1024) #18
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %disable_ani = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 28
  %61 = ptrtoint ptr %disable_ani to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %disable_ani, align 1, !range !488
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not = icmp eq i8 %62, 0
  %cond = select i1 %tobool.not, ptr @.str.186, ptr @.str.185
  %call57 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1024, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, ptr noundef nonnull %cond) #14
  %63 = ptrtoint ptr %disable_ani to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %disable_ani, align 1, !range !488
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool59.not = icmp eq i8 %64, 0
  br i1 %tobool59.not, label %if.end.for.body_crit_edge, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0114 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %len.0113 = phi i32 [ %add70, %for.body.for.body_crit_edge ], [ %call57, %if.end.for.body_crit_edge ]
  %add.ptr64 = getelementptr i8, ptr %call7.i.i, i32 %len.0113
  %sub65 = sub i32 1024, %len.0113
  %arrayidx = getelementptr [14 x %struct.anon.142], ptr %ani_info, i32 0, i32 %i.0114
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 4
  %val68 = getelementptr [14 x %struct.anon.142], ptr %ani_info, i32 0, i32 %i.0114, i32 1
  %67 = ptrtoint ptr %val68 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val68, align 4
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr64, i32 noundef %sub65, ptr noundef nonnull @.str.187, ptr noundef %66, i32 noundef %68) #14
  %add70 = add i32 %call69, %len.0113
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.body.exit_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

exit:                                             ; preds = %for.body.exit_crit_edge, %if.end.exit_crit_edge
  %len.1 = phi i32 [ %call57, %if.end.exit_crit_edge ], [ %add70, %for.body.exit_crit_edge ]
  %69 = tail call i32 @llvm.umin.i32(i32 %len.1, i32 1024)
  %call75 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %69) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call75, %exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %ani_info) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_ani(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %ani = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ani) #14
  %4 = ptrtoint ptr %ani to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ani, align 4, !annotation !489
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #17, !srcloc !490
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !491

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #14
  %8 = call i32 @llvm.read_register.i32(metadata !478) #14
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !492
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !491

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %ani) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %13 = ptrtoint ptr %ani to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ani, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp7 = icmp ugt i32 %14, 1
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  %disable_ani = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 28
  %frombool = zext i1 %tobool10.not to i8
  %15 = ptrtoint ptr %disable_ani to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %disable_ani, align 1
  br i1 %tobool10.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %op_flags) #14
  call void @ath_stop_ani(ptr noundef %1) #14
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath_check_ani(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then13, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %count, %if.else ], [ %count, %if.then13 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ani) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_stop_ani(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_check_ani(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_regidx(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %regidx = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 1
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %regidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regidx, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.27, i32 noundef %4)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_regidx(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %regidx = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regidx) #14
  %2 = ptrtoint ptr %regidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regidx, align 4, !annotation !489
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #17, !srcloc !490
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !491

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #14
  %6 = call i32 @llvm.read_register.i32(metadata !478) #14
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !492
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !491

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %regidx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %regidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regidx, align 4
  %regidx6 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 1
  %13 = ptrtoint ptr %regidx6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %regidx6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end5 ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regidx) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_regval(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  tail call void @ath9k_ps_wakeup(ptr noundef %1) #14
  %ops = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %regidx = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 1
  %9 = ptrtoint ptr %regidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regidx, align 4
  %call1 = tail call i32 %8(ptr noundef %3, i32 noundef %10) #14
  tail call void @ath9k_ps_restore(ptr noundef %1) #14
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.27, i32 noundef %call1)
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call2) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_regval(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %regval = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #14
  %4 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %regval, align 4, !annotation !489
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #17, !srcloc !490
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !491

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #14
  %8 = call i32 @llvm.read_register.i32(metadata !478) #14
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !492
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !491

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %regval) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath9k_ps_wakeup(ptr noundef %1) #14
  %ops = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 24
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.ath_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write, align 4
  %17 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regval, align 4
  %regidx = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 1
  %19 = ptrtoint ptr %regidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regidx, align 4
  call void %16(ptr noundef %3, i32 noundef %18, i32 noundef %20) #14
  call void @ath9k_ps_restore(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end5 ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_debugfs_read_buf(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #19
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %1, i32 noundef %call) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_file_regdump(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %5)
  %cmp = icmp ugt i32 %5, 447
  %add = select i1 %cmp, i32 8705, i32 11585
  %mul = mul nuw nsw i32 %add, 20
  %add1 = or i32 %mul, 1
  %call = tail call noalias ptr @vmalloc(i32 noundef %add1) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ath9k_ps_wakeup(ptr noundef %1) #14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %j.040 = phi i32 [ 0, %if.end ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.039 = phi i32 [ 0, %if.end ], [ %inc14, %for.inc.for.body_crit_edge ]
  %len.038 = phi i32 [ 0, %if.end ], [ %len.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.reg_hole], ptr @open_file_regdump.reg_hole_list, i32 0, i32 %j.040
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %i.039, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shl)
  %cmp3 = icmp eq i32 %7, %shl
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %end = getelementptr [6 x %struct.reg_hole], ptr @open_file_regdump.reg_hole_list, i32 0, i32 %j.040, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  %shr = lshr i32 %9, 2
  %inc = add i32 %j.040, 1
  br label %for.inc

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %call, i32 %len.038
  %sub = sub i32 %add1, %len.038
  %10 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_ah, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call11 = tail call i32 %13(ptr noundef %11, i32 noundef %shl) #14
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.188, i32 noundef %shl, i32 noundef %call11) #14
  %add13 = add i32 %call12, %len.038
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %if.then4
  %len.1 = phi i32 [ %len.038, %if.then4 ], [ %add13, %if.end6 ]
  %i.1 = phi i32 [ %shr, %if.then4 ], [ %i.039, %if.end6 ]
  %j.1 = phi i32 [ %inc, %if.then4 ], [ %j.040, %if.end6 ]
  %inc14 = add nuw i32 %i.1, 1
  %cmp2 = icmp ult i32 %inc14, %add
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ath9k_ps_restore(ptr noundef %1) #14
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_debugfs_release_buf(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @vfree(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_antenna_diversity(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  %div_ant_conf = alloca %struct.ath_hw_antcomb_conf, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %ant_stats = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4
  %arrayidx4 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %div_ant_conf) #14
  %4 = call ptr @memset(ptr %div_ant_conf, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1024) #18
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 4
  %and = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1024, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.198) #14
  br label %exit

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ath9k_ps_wakeup(ptr noundef %1) #14
  %antdiv_comb_conf_get.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 63, i32 8
  %8 = ptrtoint ptr %antdiv_comb_conf_get.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %antdiv_comb_conf_get.i, align 4
  call void %9(ptr noundef %3, ptr noundef nonnull %div_ant_conf) #14
  %10 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %div_ant_conf, align 4
  %idxprom = zext i8 %11 to i32
  %arrayidx11 = getelementptr [4 x ptr], ptr @read_file_antenna_diversity.lna_conf_str, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11, align 4
  %call12 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1024, ptr noundef nonnull @.str.199, ptr noundef %13) #14
  %add.ptr14 = getelementptr i8, ptr %call7.i.i, i32 %call12
  %sub15 = sub i32 1024, %call12
  %alt_lna_conf = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 1
  %14 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %alt_lna_conf, align 1
  %idxprom16 = zext i8 %15 to i32
  %arrayidx17 = getelementptr [4 x ptr], ptr @read_file_antenna_diversity.lna_conf_str, i32 0, i32 %idxprom16
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx17, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.200, ptr noundef %17) #14
  %add19 = add i32 %call18, %call12
  %add.ptr20 = getelementptr i8, ptr %call7.i.i, i32 %add19
  %sub21 = sub i32 1024, %add19
  %rssi_avg = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %rssi_avg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rssi_avg, align 4
  %call22 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.201, i32 noundef %19) #14
  %add23 = add i32 %call22, %add19
  %add.ptr24 = getelementptr i8, ptr %call7.i.i, i32 %add23
  %sub25 = sub i32 1024, %add23
  %rssi_avg26 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 1, i32 1
  %20 = ptrtoint ptr %rssi_avg26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rssi_avg26, align 4
  %call27 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.202, i32 noundef %21) #14
  %add28 = add i32 %call27, %add23
  call void @ath9k_ps_restore(ptr noundef %1) #14
  %add.ptr29 = getelementptr i8, ptr %call7.i.i, i32 %add28
  %sub30 = sub i32 1024, %add28
  %call31 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.203) #14
  %add32 = add i32 %call31, %add28
  %add.ptr33 = getelementptr i8, ptr %call7.i.i, i32 %add32
  %sub34 = sub i32 1024, %add32
  %call35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.204) #14
  %add36 = add i32 %add32, %call35
  %add.ptr37 = getelementptr i8, ptr %call7.i.i, i32 %add36
  %sub38 = sub i32 1024, %add36
  %call39 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.207) #14
  %add40 = add i32 %add36, %call39
  %add.ptr41 = getelementptr i8, ptr %call7.i.i, i32 %add40
  %sub42 = sub i32 1024, %add40
  %22 = ptrtoint ptr %ant_stats to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ant_stats, align 4
  %24 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4, align 4
  %call44 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr41, i32 noundef %sub42, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.209, i32 noundef %23, i32 noundef %25) #14
  %add45 = add i32 %call44, %add40
  %add.ptr46 = getelementptr i8, ptr %call7.i.i, i32 %add45
  %sub47 = sub i32 1024, %add45
  %lna_recv_cnt = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 0, i32 2
  %arrayidx48 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx48, align 4
  %lna_recv_cnt49 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 1, i32 2
  %arrayidx50 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 1, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx50, align 4
  %call51 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.195, i32 noundef %27, i32 noundef %29) #14
  %add52 = add i32 %call51, %add45
  %add.ptr53 = getelementptr i8, ptr %call7.i.i, i32 %add52
  %sub54 = sub i32 1024, %add52
  %arrayidx56 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx56, align 4
  %arrayidx58 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 1, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx58, align 4
  %call59 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.194, i32 noundef %31, i32 noundef %33) #14
  %add60 = add i32 %call59, %add52
  %add.ptr61 = getelementptr i8, ptr %call7.i.i, i32 %add60
  %sub62 = sub i32 1024, %add60
  %arrayidx64 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx64, align 4
  %arrayidx66 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 1, i32 2, i32 3
  %36 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx66, align 4
  %call67 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr61, i32 noundef %sub62, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.210, i32 noundef %35, i32 noundef %37) #14
  %add68 = add i32 %call67, %add60
  %add.ptr69 = getelementptr i8, ptr %call7.i.i, i32 %add68
  %sub70 = sub i32 1024, %add68
  %38 = ptrtoint ptr %lna_recv_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lna_recv_cnt, align 4
  %40 = ptrtoint ptr %lna_recv_cnt49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lna_recv_cnt49, align 4
  %call75 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69, i32 noundef %sub70, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.211, i32 noundef %39, i32 noundef %41) #14
  %add76 = add i32 %call75, %add68
  %add.ptr77 = getelementptr i8, ptr %call7.i.i, i32 %add76
  %sub78 = sub i32 1024, %add76
  %call79 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77, i32 noundef %sub78, ptr noundef nonnull @.str.212) #14
  %add80 = add i32 %add76, %call79
  %add.ptr81 = getelementptr i8, ptr %call7.i.i, i32 %add80
  %sub82 = sub i32 1024, %add80
  %call83 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr81, i32 noundef %sub82, ptr noundef nonnull @.str.213) #14
  %add84 = add i32 %add80, %call83
  %add.ptr85 = getelementptr i8, ptr %call7.i.i, i32 %add84
  %sub86 = sub i32 1024, %add84
  %call87 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr85, i32 noundef %sub86, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.207) #14
  %add88 = add i32 %add84, %call87
  %add.ptr89 = getelementptr i8, ptr %call7.i.i, i32 %add88
  %sub90 = sub i32 1024, %add88
  %lna_attempt_cnt = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 0, i32 3
  %arrayidx91 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx91, align 4
  %lna_attempt_cnt92 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 1, i32 3
  %arrayidx93 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 1, i32 3, i32 2
  %44 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx93, align 4
  %call94 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89, i32 noundef %sub90, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.195, i32 noundef %43, i32 noundef %45) #14
  %add95 = add i32 %call94, %add88
  %add.ptr96 = getelementptr i8, ptr %call7.i.i, i32 %add95
  %sub97 = sub i32 1024, %add95
  %arrayidx99 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx99, align 4
  %arrayidx101 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 1, i32 3, i32 1
  %48 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx101, align 4
  %call102 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.194, i32 noundef %47, i32 noundef %49) #14
  %add103 = add i32 %call102, %add95
  %add.ptr104 = getelementptr i8, ptr %call7.i.i, i32 %add103
  %sub105 = sub i32 1024, %add103
  %arrayidx107 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 0, i32 3, i32 3
  %50 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx107, align 4
  %arrayidx109 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 4, i32 1, i32 3, i32 3
  %52 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx109, align 4
  %call110 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr104, i32 noundef %sub105, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.210, i32 noundef %51, i32 noundef %53) #14
  %add111 = add i32 %call110, %add103
  %add.ptr112 = getelementptr i8, ptr %call7.i.i, i32 %add111
  %sub113 = sub i32 1024, %add111
  %54 = ptrtoint ptr %lna_attempt_cnt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lna_attempt_cnt, align 4
  %56 = ptrtoint ptr %lna_attempt_cnt92 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lna_attempt_cnt92, align 4
  %call118 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112, i32 noundef %sub113, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.211, i32 noundef %55, i32 noundef %57) #14
  %add119 = add i32 %call118, %add111
  br label %exit

exit:                                             ; preds = %if.end8, %if.then6
  %len.0 = phi i32 [ %add119, %if.end8 ], [ %call7, %if.then6 ]
  %58 = call i32 @llvm.umin.i32(i32 %len.0, i32 1024)
  %call123 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %58) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call123, %exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %div_ant_conf) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_bt_ant_diversity(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %bt_ant_diversity = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 29
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %5 = ptrtoint ptr %bt_ant_diversity to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bt_ant_diversity, align 2, !range !488
  %7 = zext i8 %6 to i32
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.214, i32 noundef %7)
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call1) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_bt_ant_diversity(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %bt_ant_diversity = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %caps = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_ant_diversity) #14
  %4 = ptrtoint ptr %bt_ant_diversity to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bt_ant_diversity, align 4, !annotation !489
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #17, !srcloc !490
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !491

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #14
  %8 = call i32 @llvm.read_register.i32(metadata !478) #14
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !492
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !491

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps, align 4
  %and = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %bt_ant_diversity) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %bt_ant_diversity to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bt_ant_diversity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11 = icmp ne i32 %16, 0
  %bt_ant_diversity13 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 29
  %frombool = zext i1 %tobool11 to i8
  %17 = ptrtoint ptr %bt_ant_diversity13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %bt_ant_diversity13, align 2
  call void @ath9k_ps_wakeup(ptr noundef %1) #14
  %18 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc_ah, align 4
  %set_bt_ant_diversity.i = getelementptr inbounds %struct.ath_hw, ptr %19, i32 0, i32 63, i32 16
  %20 = ptrtoint ptr %set_bt_ant_diversity.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_bt_ant_diversity.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end10.ath9k_hw_set_bt_ant_diversity.exit_crit_edge, label %if.then.i40

if.end10.ath9k_hw_set_bt_ant_diversity.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath9k_hw_set_bt_ant_diversity.exit

if.then.i40:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %bt_ant_diversity13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bt_ant_diversity13, align 2, !range !488
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool16 = icmp ne i8 %23, 0
  call void %21(ptr noundef %19, i1 noundef zeroext %tobool16) #14
  br label %ath9k_hw_set_bt_ant_diversity.exit

ath9k_hw_set_bt_ant_diversity.exit:               ; preds = %if.then.i40, %if.end10.ath9k_hw_set_bt_ant_diversity.exit_crit_edge
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug_mask, align 4
  %and17 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %ath9k_hw_set_bt_ant_diversity.exit.do.end_crit_edge, label %if.then19

ath9k_hw_set_bt_ant_diversity.exit.do.end_crit_edge: ; preds = %ath9k_hw_set_bt_ant_diversity.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then19:                                        ; preds = %ath9k_hw_set_bt_ant_diversity.exit
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %bt_ant_diversity13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bt_ant_diversity13, align 2, !range !488
  %28 = zext i8 %27 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.215, ptr noundef %common.i, ptr noundef nonnull @.str.216, i32 noundef %28) #14
  br label %do.end

do.end:                                           ; preds = %if.then19, %ath9k_hw_set_bt_ant_diversity.exit.do.end_crit_edge
  call void @ath9k_ps_restore(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end5.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %do.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_ant_diversity) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_btcoex(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1500) #18
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc_ah, align 4
  %btcoex_enabled = getelementptr inbounds %struct.ath_hw, ptr %4, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %btcoex_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %btcoex_enabled, align 4, !range !488
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1500, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.217) #14
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 @ath9k_dump_btcoex(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef 1500) #14
  br label %exit

exit:                                             ; preds = %if.end4, %if.then2
  %len.0 = phi i32 [ %call5, %if.end4 ], [ %call3, %if.then2 ]
  %call6 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %len.0) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_dump_btcoex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_wow(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %force_wow = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 64
  %3 = ptrtoint ptr %force_wow to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %force_wow, align 8, !range !488
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool2.not, ptr @.str.185, ptr @.str.186
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull @.str.218, ptr noundef nonnull %cond) #14
  %5 = tail call i32 @llvm.umin.i32(i32 %call3, i32 32)
  %call6 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %5) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_wow(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !489
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #17, !srcloc !490
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !491

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #14
  %6 = call i32 @llvm.read_register.i32(metadata !478) #14
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !492
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !491

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp6.not = icmp eq i32 %12, 1
  br i1 %cmp6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %force_wow = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 64
  %13 = ptrtoint ptr %force_wow to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %force_wow, align 8, !range !488
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %force_wow to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %force_wow, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  call void @ath9k_init_wow(ptr noundef %17) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %count, %if.then10 ], [ %count, %if.end8.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_init_wow(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_ackto(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %dynack = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 136
  %ackto = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 136, i32 1
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %5 = ptrtoint ptr %ackto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ackto, align 4
  %7 = ptrtoint ptr %dynack to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dynack, align 4, !range !488
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool.not, i32 83, i32 65
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.219, i32 noundef %6, i32 noundef %cond)
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_tpc(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 32) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tpc_enabled = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 137
  %5 = ptrtoint ptr %tpc_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tpc_enabled, align 4, !range !488
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool2.not, ptr @.str.185, ptr @.str.186
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull @.str.197, ptr noundef nonnull %cond) #14
  %7 = tail call i32 @llvm.umin.i32(i32 %call3, i32 32)
  %call6 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %7) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_tpc(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !489
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #17, !srcloc !490
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !491

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #14
  %8 = call i32 @llvm.read_register.i32(metadata !478) #14
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !492
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !491

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp6 = icmp ugt i32 %14, 1
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9 = icmp ne i32 %14, 0
  %tpc_enabled12 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 137
  %15 = ptrtoint ptr %tpc_enabled12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tpc_enabled12, align 4, !range !488
  %17 = zext i1 %tobool9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %17)
  %cmp15.not = icmp eq i8 %16, %17
  br i1 %cmp15.not, label %if.end8.cleanup_crit_edge, label %if.then17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %tpc_enabled12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %tpc_enabled12, align 4
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  call void @ath9k_set_txpower(ptr noundef %1, ptr noundef null) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %count, %if.then17 ], [ %count, %if.end8.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_set_txpower(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_nf_override(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %nf_override = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 25
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %5 = ptrtoint ptr %nf_override to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nf_override, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.220, i32 5)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = sext i16 %6 to i32
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.214, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.0 = phi i32 [ 4, %if.then ], [ %call5, %if.else ]
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %len.0) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_nf_override(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !489
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #17, !srcloc !490
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !491

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #14
  %8 = call i32 @llvm.read_register.i32(metadata !478) #14
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !492
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !493
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !491

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.221, ptr noundef nonnull dereferenceable(3) %buf, i32 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call.i = call i32 @_kstrtol(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.else.if.end10_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.then4
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %16 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %16)
  %17 = icmp ult i32 %16, -121
  br i1 %17, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %conv = trunc i32 %15 to i16
  %nf_override = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 25
  %18 = ptrtoint ptr %nf_override to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %nf_override, align 4
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %curchan, align 4
  %tobool17.not = icmp eq ptr %20, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.then18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath9k_ps_wakeup(ptr noundef %1) #14
  %21 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %curchan, align 4
  %call20 = call i32 @ath9k_hw_loadnf(ptr noundef %3, ptr noundef %22) #14
  call void @ath9k_ps_restore(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %count, %if.then18 ], [ %count, %if.end16.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_loadnf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 235)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 235)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476}
!llvm.named.register.sp = !{!478}
!llvm.module.flags = !{!479, !480, !481, !482, !483, !484, !485, !486}
!llvm.ident = !{!487}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1408, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1421, i32 45}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1427, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1435, i32 39}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1437, i32 39}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1439, i32 39}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1441, i32 39}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1443, i32 39}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1445, i32 22}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1451, i32 20}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1453, i32 20}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1455, i32 22}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1457, i32 22}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1459, i32 22}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1461, i32 22}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1463, i32 22}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1466, i32 22}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1468, i32 39}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1475, i32 21}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1477, i32 21}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1479, i32 22}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1482, i32 22}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1484, i32 22}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1489, i32 22}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1493, i32 22}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1496, i32 22}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1498, i32 22}
!54 = !{ptr @ath9k_gstrings_stats, !55, !"ath9k_gstrings_stats", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1295, i32 19}
!56 = !{ptr @fops_debug, !57, !"fops_debug", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 119, i32 37}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 94, i32 21}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!62 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 420, i32 17}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 424, i32 19}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 427, i32 20}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 430, i32 17}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 431, i32 17}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 444, i32 20}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 453, i32 19}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 455, i32 19}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 457, i32 19}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 459, i32 19}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 461, i32 19}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 463, i32 19}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 466, i32 19}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 467, i32 19}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 539, i32 3}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 540, i32 3}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 541, i32 3}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 543, i32 3}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 545, i32 2}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 546, i32 2}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 547, i32 2}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 548, i32 2}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 549, i32 2}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 550, i32 2}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 551, i32 2}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 552, i32 2}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 553, i32 2}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 554, i32 2}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 555, i32 2}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 556, i32 2}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 557, i32 2}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 558, i32 2}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 559, i32 2}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 560, i32 2}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 561, i32 2}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 562, i32 2}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 563, i32 2}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 564, i32 2}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 566, i32 17}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 568, i32 2}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 569, i32 2}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 570, i32 2}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 571, i32 2}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 572, i32 2}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 573, i32 2}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 574, i32 2}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 575, i32 2}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 576, i32 2}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 577, i32 2}
!166 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 578, i32 2}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 579, i32 2}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 580, i32 2}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 581, i32 2}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 582, i32 2}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 583, i32 2}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 584, i32 2}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 585, i32 2}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 586, i32 2}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 596, i32 19}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 596, i32 44}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 596, i32 50}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 596, i32 56}
!192 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 596, i32 62}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 598, i32 2}
!196 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 599, i32 2}
!199 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 600, i32 2}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 601, i32 2}
!203 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 602, i32 2}
!205 = !{ptr @.str.101, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 603, i32 2}
!207 = !{ptr @.str.102, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 604, i32 2}
!209 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 605, i32 2}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 606, i32 2}
!213 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 607, i32 2}
!215 = !{ptr @.str.106, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 608, i32 2}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 609, i32 2}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 610, i32 2}
!221 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 611, i32 2}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 612, i32 2}
!225 = !{ptr @.str.111, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 613, i32 2}
!227 = !{ptr @.str.112, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 614, i32 2}
!229 = !{ptr @.str.113, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 615, i32 2}
!231 = !{ptr @.str.114, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 616, i32 2}
!233 = !{ptr @.str.115, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 617, i32 2}
!235 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 618, i32 2}
!237 = distinct !{null, !238, !"qname", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 642, i32 21}
!239 = !{ptr @.str.117, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 648, i32 20}
!241 = !{ptr @.str.118, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 652, i32 17}
!243 = !{ptr @.str.119, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 628, i32 19}
!245 = !{ptr @.str.120, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 628, i32 30}
!247 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 629, i32 19}
!249 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 629, i32 31}
!251 = !{ptr @.str.123, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 630, i32 31}
!253 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 631, i32 19}
!255 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 631, i32 32}
!257 = !{ptr @.str.126, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 668, i32 19}
!259 = !{ptr @.str.127, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 669, i32 19}
!261 = !{ptr @.str.128, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 670, i32 19}
!263 = !{ptr @.str.129, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 677, i32 19}
!265 = !{ptr @.str.130, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 680, i32 18}
!267 = !{ptr @.str.131, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 682, i32 18}
!269 = !{ptr @.str.132, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 684, i32 18}
!271 = !{ptr @.str.133, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 686, i32 18}
!273 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 688, i32 18}
!275 = !{ptr @.str.135, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 690, i32 18}
!277 = !{ptr @.str.136, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 692, i32 18}
!279 = !{ptr @.str.137, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 694, i32 18}
!281 = !{ptr @.str.138, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 696, i32 18}
!283 = !{ptr @.str.139, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 698, i32 18}
!285 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 700, i32 18}
!287 = !{ptr @.str.141, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 702, i32 18}
!289 = !{ptr @.str.142, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 704, i32 18}
!291 = !{ptr @.str.143, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 706, i32 18}
!293 = !{ptr @.str.144, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 712, i32 19}
!295 = !{ptr @.str.145, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 715, i32 18}
!297 = !{ptr @.str.146, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 717, i32 18}
!299 = !{ptr @.str.147, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 719, i32 18}
!301 = !{ptr @.str.148, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 721, i32 18}
!303 = !{ptr @.str.149, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 723, i32 18}
!305 = !{ptr @.str.150, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 725, i32 18}
!307 = !{ptr @.str.151, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 727, i32 18}
!309 = !{ptr @.str.152, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 738, i32 7}
!311 = !{ptr @.str.153, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 742, i32 20}
!313 = !{ptr @fops_reset, !314, !"fops_reset", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 822, i32 37}
!315 = !{ptr @.str.154, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 754, i32 23}
!317 = !{ptr @.str.155, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 755, i32 26}
!319 = !{ptr @.str.156, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 756, i32 30}
!321 = !{ptr @.str.157, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 757, i32 28}
!323 = !{ptr @.str.158, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 758, i32 27}
!325 = !{ptr @.str.159, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 759, i32 25}
!327 = !{ptr @.str.160, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 760, i32 26}
!329 = !{ptr @.str.161, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 761, i32 27}
!331 = !{ptr @.str.162, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 762, i32 27}
!333 = !{ptr @.str.163, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 763, i32 31}
!335 = !{ptr @.str.164, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 764, i32 22}
!337 = !{ptr @.str.165, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 765, i32 30}
!339 = !{ptr @.str.166, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 766, i32 26}
!341 = !{ptr @.str.167, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 767, i32 26}
!343 = distinct !{null, !344, !"reset_cause", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 753, i32 28}
!345 = !{ptr @.str.168, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 775, i32 20}
!347 = !{ptr @fops_ani, !348, !"fops_ani", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 220, i32 37}
!349 = !{ptr @.str.169, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 147, i32 5}
!351 = !{ptr @.str.170, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 148, i32 5}
!353 = !{ptr @.str.171, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 149, i32 5}
!355 = !{ptr @.str.172, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 150, i32 5}
!357 = !{ptr @.str.173, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 151, i32 5}
!359 = !{ptr @.str.174, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 152, i32 5}
!361 = !{ptr @.str.175, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 153, i32 5}
!363 = !{ptr @.str.176, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 154, i32 5}
!365 = !{ptr @.str.177, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 155, i32 5}
!367 = !{ptr @.str.178, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 156, i32 5}
!369 = !{ptr @.str.179, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 157, i32 5}
!371 = !{ptr @.str.180, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 158, i32 5}
!373 = !{ptr @.str.181, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 159, i32 5}
!375 = !{ptr @.str.182, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 160, i32 5}
!377 = !{ptr @.str.183, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 167, i32 42}
!379 = !{ptr @.str.184, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 167, i32 56}
!381 = !{ptr @.str.185, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 168, i32 27}
!383 = !{ptr @.str.186, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 168, i32 40}
!385 = !{ptr @.str.187, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 174, i32 43}
!387 = !{ptr @fops_regidx, !388, !"fops_regidx", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 904, i32 37}
!389 = !{ptr @fops_regval, !390, !"fops_regval", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 951, i32 37}
!391 = !{ptr @fops_regdump, !392, !"fops_regdump", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1005, i32 37}
!393 = !{ptr @open_file_regdump.reg_hole_list, !394, !"reg_hole_list", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 971, i32 4}
!395 = !{ptr @.str.188, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 996, i32 4}
!397 = !{ptr @.str.189, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1025, i32 19}
!399 = !{ptr @.str.190, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1026, i32 17}
!401 = !{ptr @.str.191, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1033, i32 20}
!403 = !{ptr @.str.192, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1035, i32 21}
!405 = !{ptr @fops_antenna_diversity, !406, !"fops_antenna_diversity", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 397, i32 37}
!407 = !{ptr @.str.193, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 314, i32 3}
!409 = !{ptr @.str.194, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 314, i32 22}
!411 = !{ptr @.str.195, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 314, i32 30}
!413 = !{ptr @.str.196, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 314, i32 38}
!415 = !{ptr @read_file_antenna_diversity.lna_conf_str, !416, !"lna_conf_str", i1 false, i1 false}
!416 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 313, i32 21}
!417 = !{ptr @.str.197, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 322, i32 43}
!419 = !{ptr @.str.198, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 323, i32 6}
!421 = !{ptr @.str.199, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 329, i32 42}
!423 = !{ptr @.str.200, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 331, i32 42}
!425 = !{ptr @.str.201, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 333, i32 42}
!427 = !{ptr @.str.202, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 335, i32 42}
!429 = !{ptr @.str.203, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 339, i32 42}
!431 = !{ptr @.str.204, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 340, i32 42}
!433 = !{ptr @.str.205, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 342, i32 42}
!435 = !{ptr @.str.206, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 343, i32 5}
!437 = !{ptr @.str.207, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 343, i32 13}
!439 = !{ptr @.str.208, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 344, i32 42}
!441 = !{ptr @.str.209, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 345, i32 5}
!443 = !{ptr @.str.210, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 357, i32 5}
!445 = !{ptr @.str.211, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 361, i32 5}
!447 = !{ptr @.str.212, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 365, i32 42}
!449 = !{ptr @.str.213, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 366, i32 42}
!451 = !{ptr @fops_bt_ant_diversity, !452, !"fops_bt_ant_diversity", i1 false, i1 false}
!452 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 275, i32 37}
!453 = !{ptr @.str.214, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 239, i32 21}
!455 = !{ptr @.str.215, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 268, i32 2}
!457 = !{ptr @.str.216, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @fops_btcoex, !459, !"fops_btcoex", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1069, i32 37}
!460 = !{ptr @.str.217, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1057, i32 5}
!462 = !{ptr @fops_wow, !463, !"fops_wow", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1153, i32 37}
!464 = !{ptr @.str.218, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1114, i32 42}
!466 = !{ptr @fops_ackto, !467, !"fops_ackto", i1 false, i1 false}
!467 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1092, i32 37}
!468 = !{ptr @.str.219, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1086, i32 21}
!470 = !{ptr @fops_tpc, !471, !"fops_tpc", i1 false, i1 false}
!471 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1222, i32 37}
!472 = !{ptr @fops_nf_override, !473, !"fops_nf_override", i1 false, i1 false}
!473 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1284, i32 37}
!474 = !{ptr @.str.220, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1240, i32 22}
!476 = !{ptr @.str.221, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/net/wireless/ath/ath9k/debug.c", i32 1262, i32 14}
!478 = !{!"sp"}
!479 = !{i32 1, !"wchar_size", i32 2}
!480 = !{i32 1, !"min_enum_size", i32 4}
!481 = !{i32 8, !"branch-target-enforcement", i32 0}
!482 = !{i32 8, !"sign-return-address", i32 0}
!483 = !{i32 8, !"sign-return-address-all", i32 0}
!484 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!485 = !{i32 7, !"uwtable", i32 1}
!486 = !{i32 7, !"frame-pointer", i32 2}
!487 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!488 = !{i8 0, i8 2}
!489 = !{!"auto-init"}
!490 = !{i64 2152826155, i64 2152826180}
!491 = !{!"branch_weights", i32 2000, i32 1}
!492 = !{i64 5334218}
!493 = !{i64 5334415}
!494 = !{i64 2152819648}
