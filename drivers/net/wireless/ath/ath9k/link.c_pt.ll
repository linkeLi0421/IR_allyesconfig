; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/link.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/link.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.ath_txq = type { i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, i32, i8, [8 x %struct.list_head], i8, i8, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
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

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"HW hang detected, schedule chip reset\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Skipping PAPRD calibration\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Sending PAPRD training frame on chain %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PAPRD not yet done on chain %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PAPRD curve on chain %d needs to be re-trained\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PAPRD create curve failed on chain %d\0A\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Calibration @%lu finished: %s %s %s, caldone: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ani\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Starting ANI\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Stopping ANI\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tx hung, resetting the chip\0A\00", [35 x i8] zeroinitializer }, align 32
@ath_hw_pll_rx_hang_check.count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PLL WAR, resetting the chip\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PAPRD TX failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Timeout waiting for paprd training on TX chain %d\0A\00", [45 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to activate PAPRD\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Activating PAPRD\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 83, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 230, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 260, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 266, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 273, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 278, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 389, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 436, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 445, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 49, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 99, i32 13 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 105, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 196, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 205, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 87, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 156, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath9k/link.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 168, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ath_hw_pll_rx_hang_check.count, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_hw_pll_rx_hang_check.count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_hw_check_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12364
  %sc_ah.i = getelementptr i8, ptr %work, i32 -9520
  %0 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah.i, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void @ath9k_ps_wakeup(ptr noundef %add.ptr) #4
  %2 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah.i, align 4
  %call2.i = tail call zeroext i1 @ath9k_hw_check_alive(ptr noundef %3) #4
  br i1 %call2.i, label %lor.lhs.false, label %do.body.i

do.body.i:                                        ; preds = %entry
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.ath_hw_check.exit_crit_edge, label %if.then4.i

do.body.i.ath_hw_check.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath_hw_check.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.1) #4
  br label %ath_hw_check.exit

ath_hw_check.exit:                                ; preds = %if.then4.i, %do.body.i.ath_hw_check.exit_crit_edge
  tail call void @ath9k_queue_reset(ptr noundef %add.ptr, i32 noundef 8) #4
  tail call void @ath9k_ps_restore(ptr noundef %add.ptr) #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void @ath9k_ps_restore(ptr noundef %add.ptr) #4
  %tx99_state.i = getelementptr i8, ptr %work, i32 684
  %6 = ptrtoint ptr %tx99_state.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx99_state.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.body.preheader.i, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.preheader.i:                             ; preds = %lor.lhs.false
  %arrayidx.i = getelementptr i8, ptr %work, i32 -5356
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %axq_lock.i.i = getelementptr inbounds %struct.ath_txq, ptr %9, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.i) #4
  %axq_depth.i = getelementptr inbounds %struct.ath_txq, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %axq_depth.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %axq_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %for.body.preheader.i.if.end7.i_crit_edge, label %if.then2.i

for.body.preheader.i.if.end7.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

if.then2.i:                                       ; preds = %for.body.preheader.i
  %axq_tx_inprogress.i = getelementptr inbounds %struct.ath_txq, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %axq_tx_inprogress.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %axq_tx_inprogress.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i6 = icmp eq i8 %13, 0
  br i1 %tobool3.not.i6, label %if.end5.i, label %if.then2.i.if.then4.i10_crit_edge

if.then2.i.if.then4.i10_crit_edge:                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4.i10

if.then4.i10:                                     ; preds = %if.then2.3.i.if.then4.i10_crit_edge, %if.then2.2.i.if.then4.i10_crit_edge, %if.then2.1.i.if.then4.i10_crit_edge, %if.then2.i.if.then4.i10_crit_edge
  %axq_lock.i.lcssa.i = phi ptr [ %axq_lock.i.i, %if.then2.i.if.then4.i10_crit_edge ], [ %axq_lock.i.1.i, %if.then2.1.i.if.then4.i10_crit_edge ], [ %axq_lock.i.2.i, %if.then2.2.i.if.then4.i10_crit_edge ], [ %axq_lock.i.3.i, %if.then2.3.i.if.then4.i10_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.lcssa.i) #4
  %14 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc_ah.i, align 4
  %debug_mask.i8 = getelementptr inbounds %struct.ath_hw, ptr %15, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %debug_mask.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_mask.i8, align 4
  %and.i9 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool8.not.i = icmp eq i32 %and.i9, 0
  br i1 %tobool8.not.i, label %if.then4.i10.ath_tx_complete_check.exit_crit_edge, label %if.then9.i

if.then4.i10.ath_tx_complete_check.exit_crit_edge: ; preds = %if.then4.i10
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath_tx_complete_check.exit

if.end5.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %axq_tx_inprogress.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %axq_tx_inprogress.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end5.i, %for.body.preheader.i.if.end7.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.i) #4
  %arrayidx.1.i = getelementptr i8, ptr %work, i32 -5352
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1.i, align 4
  %axq_lock.i.1.i = getelementptr inbounds %struct.ath_txq, ptr %20, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.1.i) #4
  %axq_depth.1.i = getelementptr inbounds %struct.ath_txq, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %axq_depth.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %axq_depth.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not.1.i = icmp eq i32 %22, 0
  br i1 %tobool1.not.1.i, label %if.end7.i.if.end7.1.i_crit_edge, label %if.then2.1.i

if.end7.i.if.end7.1.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.1.i

if.then2.1.i:                                     ; preds = %if.end7.i
  %axq_tx_inprogress.1.i = getelementptr inbounds %struct.ath_txq, ptr %20, i32 0, i32 7
  %23 = ptrtoint ptr %axq_tx_inprogress.1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %axq_tx_inprogress.1.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool3.not.1.i = icmp eq i8 %24, 0
  br i1 %tobool3.not.1.i, label %if.end5.1.i, label %if.then2.1.i.if.then4.i10_crit_edge

if.then2.1.i.if.then4.i10_crit_edge:              ; preds = %if.then2.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4.i10

if.end5.1.i:                                      ; preds = %if.then2.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %axq_tx_inprogress.1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %axq_tx_inprogress.1.i, align 4
  br label %if.end7.1.i

if.end7.1.i:                                      ; preds = %if.end5.1.i, %if.end7.i.if.end7.1.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.1.i) #4
  %arrayidx.2.i = getelementptr i8, ptr %work, i32 -5348
  %26 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.2.i, align 4
  %axq_lock.i.2.i = getelementptr inbounds %struct.ath_txq, ptr %27, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.2.i) #4
  %axq_depth.2.i = getelementptr inbounds %struct.ath_txq, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %axq_depth.2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %axq_depth.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool1.not.2.i = icmp eq i32 %29, 0
  br i1 %tobool1.not.2.i, label %if.end7.1.i.if.end7.2.i_crit_edge, label %if.then2.2.i

if.end7.1.i.if.end7.2.i_crit_edge:                ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.2.i

if.then2.2.i:                                     ; preds = %if.end7.1.i
  %axq_tx_inprogress.2.i = getelementptr inbounds %struct.ath_txq, ptr %27, i32 0, i32 7
  %30 = ptrtoint ptr %axq_tx_inprogress.2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %axq_tx_inprogress.2.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool3.not.2.i = icmp eq i8 %31, 0
  br i1 %tobool3.not.2.i, label %if.end5.2.i, label %if.then2.2.i.if.then4.i10_crit_edge

if.then2.2.i.if.then4.i10_crit_edge:              ; preds = %if.then2.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4.i10

if.end5.2.i:                                      ; preds = %if.then2.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %axq_tx_inprogress.2.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %axq_tx_inprogress.2.i, align 4
  br label %if.end7.2.i

if.end7.2.i:                                      ; preds = %if.end5.2.i, %if.end7.1.i.if.end7.2.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.2.i) #4
  %arrayidx.3.i = getelementptr i8, ptr %work, i32 -5344
  %33 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.3.i, align 4
  %axq_lock.i.3.i = getelementptr inbounds %struct.ath_txq, ptr %34, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.3.i) #4
  %axq_depth.3.i = getelementptr inbounds %struct.ath_txq, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %axq_depth.3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %axq_depth.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool1.not.3.i = icmp eq i32 %36, 0
  br i1 %tobool1.not.3.i, label %if.end7.2.i.if.end7.3.i_crit_edge, label %if.then2.3.i

if.end7.2.i.if.end7.3.i_crit_edge:                ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.3.i

if.then2.3.i:                                     ; preds = %if.end7.2.i
  %axq_tx_inprogress.3.i = getelementptr inbounds %struct.ath_txq, ptr %34, i32 0, i32 7
  %37 = ptrtoint ptr %axq_tx_inprogress.3.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %axq_tx_inprogress.3.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool3.not.3.i = icmp eq i8 %38, 0
  br i1 %tobool3.not.3.i, label %if.end5.3.i, label %if.then2.3.i.if.then4.i10_crit_edge

if.then2.3.i.if.then4.i10_crit_edge:              ; preds = %if.then2.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4.i10

if.end5.3.i:                                      ; preds = %if.then2.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %axq_tx_inprogress.3.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %axq_tx_inprogress.3.i, align 4
  br label %if.end7.3.i

if.end7.3.i:                                      ; preds = %if.end5.3.i, %if.end7.2.i.if.end7.3.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.3.i) #4
  br label %if.end

if.then9.i:                                       ; preds = %if.then4.i10
  call void @__sanitizer_cov_trace_pc() #6
  %common.i.i11 = getelementptr inbounds %struct.ath_hw, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i11, ptr noundef nonnull @.str.16) #4
  br label %ath_tx_complete_check.exit

ath_tx_complete_check.exit:                       ; preds = %if.then9.i, %if.then4.i10.ath_tx_complete_check.exit_crit_edge
  tail call void @ath9k_queue_reset(ptr noundef %add.ptr, i32 noundef 6) #4
  br label %cleanup

if.end:                                           ; preds = %if.end7.3.i, %lor.lhs.false.if.end_crit_edge
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %41, ptr noundef %work, i32 noundef 100) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ath_tx_complete_check.exit, %ath_hw_check.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath_hw_check(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void @ath9k_ps_wakeup(ptr noundef %sc) #4
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %call2 = tail call zeroext i1 @ath9k_hw_check_alive(ptr noundef %3) #4
  br i1 %call2, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end_crit_edge, label %if.then4

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body.do.end_crit_edge
  tail call void @ath9k_queue_reset(ptr noundef %sc, i32 noundef 8) #4
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry.if.end5_crit_edge
  tail call void @ath9k_ps_restore(ptr noundef %sc) #4
  ret i1 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_check_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_queue_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_hw_pll_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12464
  %sc_ah = getelementptr i8, ptr %work, i32 -9620
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %op_flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx99_state = getelementptr i8, ptr %work, i32 584
  %5 = ptrtoint ptr %tx99_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tx99_state, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @ath9k_ps_wakeup(ptr noundef %add.ptr) #4
  %7 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc_ah, align 4
  %call6 = tail call i32 @ar9003_get_pll_sqsum_dvc(ptr noundef %8) #4
  tail call void @ath9k_ps_restore(ptr noundef %add.ptr) #4
  %9 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %10, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %call6)
  %cmp.i = icmp ugt i32 %call6, 262143
  br i1 %cmp.i, label %if.then.i, label %ath_hw_pll_rx_hang_check.exit

if.then.i:                                        ; preds = %if.end4
  %11 = load i32, ptr @ath_hw_pll_rx_hang_check.count, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr @ath_hw_pll_rx_hang_check.count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp1.i = icmp eq i32 %inc.i, 3
  br i1 %cmp1.i, label %do.body.i, label %if.then.i.if.end9_crit_edge

if.then.i.if.end9_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

do.body.i:                                        ; preds = %if.then.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %10, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.ath_hw_pll_rx_hang_check.exit.thread21_crit_edge, label %if.then3.i

do.body.i.ath_hw_pll_rx_hang_check.exit.thread21_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath_hw_pll_rx_hang_check.exit.thread21

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.17) #4
  br label %ath_hw_pll_rx_hang_check.exit.thread21

ath_hw_pll_rx_hang_check.exit.thread21:           ; preds = %if.then3.i, %do.body.i.ath_hw_pll_rx_hang_check.exit.thread21_crit_edge
  tail call void @ath9k_queue_reset(ptr noundef %add.ptr, i32 noundef 7) #4
  store i32 0, ptr @ath_hw_pll_rx_hang_check.count, align 4
  br label %cleanup

ath_hw_pll_rx_hang_check.exit:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @ath_hw_pll_rx_hang_check.count, align 4
  br label %if.end9

if.end9:                                          ; preds = %ath_hw_pll_rx_hang_check.exit, %if.then.i.if.end9_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %15, ptr noundef %work, i32 noundef 10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %ath_hw_pll_rx_hang_check.exit.thread21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ar9003_get_pll_sqsum_dvc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_paprd_calibrate(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %txctl.i = alloca %struct.ath_tx_control, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3080
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %sc_ah = getelementptr i8, ptr %work, i32 -236
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %caldata2 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %caldata2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caldata2, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cal_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cal_flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false5

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %cal_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %cal_flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end11, label %lor.lhs.false5.do.body_crit_edge

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false5.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.cleanup_crit_edge, label %if.then10

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2) #4
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false5
  tail call void @ath9k_ps_wakeup(ptr noundef %add.ptr) #4
  %call12 = tail call i32 @ar9003_paprd_init_table(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.fail_paprd_crit_edge, label %if.end14

if.end11.fail_paprd_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_paprd

if.end14:                                         ; preds = %if.end11
  %call.i = tail call ptr @__alloc_skb(i32 noundef 1800, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end14.fail_paprd_crit_edge, label %if.end18

if.end14.fail_paprd_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_paprd

if.end18:                                         ; preds = %if.end14
  %call19 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1800) #4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 1800)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 18432, ptr %17, align 2
  %duration_id = getelementptr inbounds %struct.ieee80211_hdr, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %duration_id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2560, ptr %duration_id, align 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %17, i32 0, i32 2
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy, align 8
  %perm_addr = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %addr1, ptr %perm_addr, i32 6)
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %17, i32 0, i32 3
  %23 = load ptr, ptr %wiphy, align 8
  %perm_addr24 = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %addr2, ptr %perm_addr24, i32 6)
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %17, i32 0, i32 4
  %25 = load ptr, ptr %wiphy, align 8
  %perm_addr28 = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 1
  %26 = call ptr @memcpy(ptr %addr3, ptr %perm_addr28, i32 6)
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 74
  %debug_mask38 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %27 = getelementptr inbounds i8, ptr %txctl.i, i32 4
  %arrayidx.i = getelementptr i8, ptr %work, i32 3936
  %cur_chandef.i = getelementptr i8, ptr %work, i32 5052
  %band3.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 8
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 9
  %arrayidx17.i = getelementptr %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 11
  %paprd_complete.i = getelementptr i8, ptr %work, i32 88
  %wait.i.i = getelementptr i8, ptr %work, i32 92
  %paprd.i = getelementptr inbounds %struct.ath_tx_control, ptr %txctl.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end18
  %chain.0178 = phi i32 [ 0, %if.end18 ], [ %inc, %for.inc.for.body_crit_edge ]
  %chain_ok.0177 = phi i32 [ 0, %if.end18 ], [ %chain_ok.1, %for.inc.for.body_crit_edge ]
  %29 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %txchainmask, align 4
  %conv32 = zext i8 %30 to i32
  %shl = shl nuw nsw i32 1, %chain.0178
  %and33 = and i32 %shl, %conv32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.body.for.inc_crit_edge, label %if.end36

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end36:                                         ; preds = %for.body
  call void @ar9003_paprd_setup_gain_table(ptr noundef %3, i32 noundef %chain.0178) #4
  %31 = ptrtoint ptr %debug_mask38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_mask38, align 4
  %and39 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end36.do.end44_crit_edge, label %if.then41

if.end36.do.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3, i32 noundef %chain.0178) #4
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %if.end36.do.end44_crit_edge
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %35 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txctl.i) #4
  %37 = call ptr @memset(ptr %27, i32 0, i32 12)
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %40 = ptrtoint ptr %txctl.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %txctl.i, align 4
  %41 = call ptr @memset(ptr %cb.i.i, i32 0, i32 48)
  %42 = ptrtoint ptr %cur_chandef.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur_chandef.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %bf.shl.i = shl i32 %45, 29
  %46 = ptrtoint ptr %band3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %bf.shl.i, ptr %band3.i, align 4
  %47 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %cb.i.i, align 8
  %48 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %28, align 8
  %49 = ptrtoint ptr %count.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 2056, ptr %count.i, align 1
  %50 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %arrayidx17.i, align 1
  %51 = ptrtoint ptr %paprd_complete.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %paprd_complete.i, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #4
  %conv.i = trunc i32 %shl to i8
  %52 = ptrtoint ptr %paprd.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i, ptr %paprd.i, align 4
  %call19.i = call i32 @ath_tx_start(ptr noundef %34, ptr noundef nonnull %call.i, ptr noundef nonnull %txctl.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp.not.i = icmp eq i32 %call19.i, 0
  br i1 %cmp.not.i, label %if.end22.i, label %do.body.i

do.body.i:                                        ; preds = %do.end44
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %36, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then21.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.then21.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %common.i.i.le173 = getelementptr inbounds %struct.ath_hw, ptr %36, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i.le173, ptr noundef nonnull @.str.18) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then21.i, %do.body.i.do.end.i_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #4
  br label %ath_paprd_send_frame.exit.thread

if.end22.i:                                       ; preds = %do.end44
  %call25.i = call i32 @wait_for_completion_timeout(ptr noundef %paprd_complete.i, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %do.body28.i, label %if.end47

do.body28.i:                                      ; preds = %if.end22.i
  %debug_mask29.i = getelementptr inbounds %struct.ath_hw, ptr %36, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %debug_mask29.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %debug_mask29.i, align 4
  %and30.i = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %do.body28.i.ath_paprd_send_frame.exit.thread_crit_edge, label %if.then32.i

do.body28.i.ath_paprd_send_frame.exit.thread_crit_edge: ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath_paprd_send_frame.exit.thread

if.then32.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  %common.i.i.le = getelementptr inbounds %struct.ath_hw, ptr %36, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i.le, ptr noundef nonnull @.str.19, i32 noundef %chain.0178) #4
  br label %ath_paprd_send_frame.exit.thread

ath_paprd_send_frame.exit.thread:                 ; preds = %if.then32.i, %do.body28.i.ath_paprd_send_frame.exit.thread_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txctl.i) #4
  br label %fail_paprd

if.end47:                                         ; preds = %if.end22.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txctl.i) #4
  %call48 = call zeroext i1 @ar9003_paprd_is_done(ptr noundef %3) #4
  br i1 %call48, label %if.end58, label %do.body50

do.body50:                                        ; preds = %if.end47
  %57 = ptrtoint ptr %debug_mask38 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %debug_mask38, align 4
  %and52 = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body50.for.end.thread_crit_edge, label %do.body50.for.end.thread.sink.split_crit_edge

do.body50.for.end.thread.sink.split_crit_edge:    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread.sink.split

do.body50.for.end.thread_crit_edge:               ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

if.end58:                                         ; preds = %if.end47
  %call59 = call i32 @ar9003_paprd_create_curve(ptr noundef %3, ptr noundef nonnull %5, i32 noundef %chain.0178) #4
  %59 = zext i32 %call59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call59, label %do.body73 [
    i32 -115, label %do.body63
    i32 0, label %if.end58.for.inc_crit_edge
  ]

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.body63:                                        ; preds = %if.end58
  %60 = ptrtoint ptr %debug_mask38 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %debug_mask38, align 4
  %and65 = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body63.for.end.thread_crit_edge, label %do.body63.for.end.thread.sink.split_crit_edge

do.body63.for.end.thread.sink.split_crit_edge:    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread.sink.split

do.body63.for.end.thread_crit_edge:               ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

do.body73:                                        ; preds = %if.end58
  %62 = ptrtoint ptr %debug_mask38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debug_mask38, align 4
  %and75 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body73.for.end.thread_crit_edge, label %do.body73.for.end.thread.sink.split_crit_edge

do.body73.for.end.thread.sink.split_crit_edge:    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread.sink.split

do.body73.for.end.thread_crit_edge:               ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.inc:                                          ; preds = %if.end58.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %chain_ok.1 = phi i32 [ %chain_ok.0177, %for.body.for.inc_crit_edge ], [ 1, %if.end58.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %chain.0178, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end.thread.sink.split:                        ; preds = %do.body73.for.end.thread.sink.split_crit_edge, %do.body63.for.end.thread.sink.split_crit_edge, %do.body50.for.end.thread.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str.4, %do.body50.for.end.thread.sink.split_crit_edge ], [ @.str.5, %do.body63.for.end.thread.sink.split_crit_edge ], [ @.str.6, %do.body73.for.end.thread.sink.split_crit_edge ]
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull %.str.5.sink, i32 noundef %chain.0178) #4
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.thread.sink.split, %do.body73.for.end.thread_crit_edge, %do.body63.for.end.thread_crit_edge, %do.body50.for.end.thread_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %fail_paprd

for.end:                                          ; preds = %for.inc
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain_ok.1)
  %tobool83.not = icmp eq i32 %chain_ok.1, 0
  br i1 %tobool83.not, label %for.end.fail_paprd_crit_edge, label %if.then84

for.end.fail_paprd_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_paprd

if.then84:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @_set_bit(i32 noundef 2, ptr noundef %cal_flags) #4
  call fastcc void @ath_paprd_activate(ptr noundef %add.ptr)
  br label %fail_paprd

fail_paprd:                                       ; preds = %if.then84, %for.end.fail_paprd_crit_edge, %for.end.thread, %ath_paprd_send_frame.exit.thread, %if.end14.fail_paprd_crit_edge, %if.end11.fail_paprd_crit_edge
  call void @ath9k_ps_restore(ptr noundef %add.ptr) #4
  br label %cleanup

cleanup:                                          ; preds = %fail_paprd, %if.then10, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ar9003_paprd_init_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_paprd_setup_gain_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ar9003_paprd_is_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ar9003_paprd_create_curve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_paprd_activate(ptr nocapture noundef readonly %sc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %caldata1 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %caldata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caldata1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cal_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cal_flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %if.end6

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_mask, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.21) #4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  tail call void @ar9003_paprd_enable(ptr noundef %1, i1 noundef zeroext false) #4
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 74
  %9 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %txchainmask, align 4
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %if.end6.for.inc_crit_edge, label %if.end10

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ar9003_paprd_populate_single_table(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 0) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.end6.for.inc_crit_edge
  %12 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %txchainmask, align 4
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not.1 = icmp eq i8 %14, 0
  br i1 %tobool8.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end10.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.end10.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ar9003_paprd_populate_single_table(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end10.1, %for.inc.for.inc.1_crit_edge
  %15 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %txchainmask, align 4
  %17 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.2 = icmp eq i8 %17, 0
  br i1 %tobool8.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end10.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.end10.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ar9003_paprd_populate_single_table(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end10.2, %for.inc.1.for.inc.2_crit_edge
  %debug_mask12 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %debug_mask12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask12, align 4
  %and13 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.inc.2.do.end18_crit_edge, label %if.then15

for.inc.2.do.end18_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end18

if.then15:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.22) #4
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %for.inc.2.do.end18_crit_edge
  tail call void @ar9003_paprd_enable(ptr noundef %1, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then5, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_ani_calibrate(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -44
  %priv = getelementptr i8, ptr %t, i32 -40
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %4) #4
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 31
  %5 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caldata, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %cal_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %cal_flags, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %long_cal_interval.0 = phi i32 [ 30000, %if.else ], [ 1000, %land.lhs.true.if.end_crit_edge ]
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 28
  %10 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp eq i32 %11, 3
  %cond = select i1 %cmp, i32 100, i32 1000
  %12 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_ah, align 4
  %power_mode = getelementptr inbounds %struct.ath_hw, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5.not = icmp eq i32 %15, 0
  %ani_skip_count21 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 70
  br i1 %cmp5.not, label %if.end20, label %if.then6

if.then6:                                         ; preds = %if.end
  %16 = ptrtoint ptr %ani_skip_count21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ani_skip_count21, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %ani_skip_count21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc)
  %cmp7 = icmp ugt i32 %inc, 9
  br i1 %cmp7, label %do.body9, label %if.then6.set_timer_crit_edge

if.then6.set_timer_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_timer

do.body9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 11
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #4
  %ps_flags = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 29
  %18 = ptrtoint ptr %ps_flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ps_flags, align 4
  %20 = or i16 %19, 32
  store i16 %20, ptr %ps_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call13) #4
  br label %set_timer

if.end20:                                         ; preds = %if.end
  %21 = ptrtoint ptr %ani_skip_count21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ani_skip_count21, align 4
  %sc_pm_lock29 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 11
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock29) #4
  %ps_flags36 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 29
  %22 = ptrtoint ptr %ps_flags36 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ps_flags36, align 4
  %24 = and i16 %23, -33
  store i16 %24, ptr %ps_flags36, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock29, i32 noundef %call31) #4
  tail call void @ath9k_ps_wakeup(ptr noundef %1) #4
  %ani = getelementptr i8, ptr %t, i32 -20
  %longcal_timer = getelementptr i8, ptr %t, i32 -16
  %25 = ptrtoint ptr %longcal_timer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %longcal_timer, align 4
  %sub = sub i32 %call, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %long_cal_interval.0)
  %cmp40.not = icmp ult i32 %sub, %long_cal_interval.0
  br i1 %cmp40.not, label %if.end20.if.end45_crit_edge, label %if.then42

if.end20.if.end45_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then42:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %longcal_timer to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call, ptr %longcal_timer, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end20.if.end45_crit_edge
  %28 = xor i1 %cmp40.not, true
  %29 = ptrtoint ptr %ani to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ani, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool47.not = icmp eq i8 %30, 0
  br i1 %tobool47.not, label %if.then48, label %if.else58

if.then48:                                        ; preds = %if.end45
  %shortcal_timer = getelementptr i8, ptr %t, i32 -12
  %31 = ptrtoint ptr %shortcal_timer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %shortcal_timer, align 4
  %sub50 = sub i32 %call, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub50, i32 %cond)
  %cmp51.not = icmp ult i32 %sub50, %cond
  br i1 %cmp51.not, label %if.then48.if.end76_crit_edge, label %if.then53

if.then48.if.end76_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.then53:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %shortcal_timer to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call, ptr %shortcal_timer, align 4
  %resetcal_timer = getelementptr i8, ptr %t, i32 -8
  br label %if.end76.sink.split

if.else58:                                        ; preds = %if.end45
  %resetcal_timer60 = getelementptr i8, ptr %t, i32 -8
  %34 = ptrtoint ptr %resetcal_timer60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resetcal_timer60, align 4
  %sub61 = sub i32 %call, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199999, i32 %sub61)
  %cmp62 = icmp ugt i32 %sub61, 1199999
  br i1 %cmp62, label %if.then64, label %if.else58.if.end76_crit_edge

if.else58.if.end76_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.then64:                                        ; preds = %if.else58
  %call65 = tail call zeroext i1 @ath9k_hw_reset_calvalid(ptr noundef %3) #4
  %frombool = zext i1 %call65 to i8
  %36 = ptrtoint ptr %ani to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool, ptr %ani, align 4
  br i1 %call65, label %if.then64.if.end76.sink.split_crit_edge, label %if.then64.if.end76_crit_edge

if.then64.if.end76_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.then64.if.end76.sink.split_crit_edge:          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76.sink.split

if.end76.sink.split:                              ; preds = %if.then64.if.end76.sink.split_crit_edge, %if.then53
  %resetcal_timer60.sink = phi ptr [ %resetcal_timer, %if.then53 ], [ %resetcal_timer60, %if.then64.if.end76.sink.split_crit_edge ]
  %37 = ptrtoint ptr %resetcal_timer60.sink to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call, ptr %resetcal_timer60.sink, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end76.sink.split, %if.then64.if.end76_crit_edge, %if.else58.if.end76_crit_edge, %if.then48.if.end76_crit_edge
  %shortcal.0.off0 = phi i1 [ false, %if.then64.if.end76_crit_edge ], [ false, %if.else58.if.end76_crit_edge ], [ false, %if.then48.if.end76_crit_edge ], [ %tobool47.not, %if.end76.sink.split ]
  %checkani_timer = getelementptr i8, ptr %t, i32 -4
  %38 = ptrtoint ptr %checkani_timer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %checkani_timer, align 4
  %sub78 = sub i32 %call, %39
  %ani_poll_interval = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 5, i32 14
  %40 = ptrtoint ptr %ani_poll_interval to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ani_poll_interval, align 4
  %conv79 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub78, i32 %conv79)
  %cmp80.not = icmp ult i32 %sub78, %conv79
  br i1 %cmp80.not, label %if.end76.if.end103_crit_edge, label %if.then82

if.end76.if.end103_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103

if.then82:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %checkani_timer to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call, ptr %checkani_timer, align 4
  %cc_lock = getelementptr i8, ptr %t, i32 136
  %call96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cc_lock) #4
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 8
  %43 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %curchan, align 4
  tail call void @ath9k_hw_ani_monitor(ptr noundef %3, ptr noundef %44) #4
  %call101 = tail call i32 @ath_update_survey_stats(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cc_lock, i32 noundef %call96) #4
  br label %if.end103

if.end103:                                        ; preds = %if.then82, %if.end76.if.end103_crit_edge
  %brmerge = or i1 %shortcal.0.off0, %28
  br i1 %brmerge, label %if.then108, label %if.end103.do.body123_crit_edge

if.end103.do.body123_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body123

if.then108:                                       ; preds = %if.end103
  %curchan109 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 8
  %45 = ptrtoint ptr %curchan109 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %curchan109, align 4
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 75
  %47 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rxchainmask, align 1
  %calibrate.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 63, i32 3
  %49 = ptrtoint ptr %calibrate.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %calibrate.i, align 4
  %call1.i = tail call i32 %50(ptr noundef %3, ptr noundef %46, i8 noundef zeroext %48, i1 noundef zeroext %28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp112 = icmp slt i32 %call1.i, 0
  br i1 %cmp112, label %if.then114, label %if.end117

if.then114:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %ani to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %ani, align 4
  tail call void @ath9k_queue_reset(ptr noundef %1, i32 noundef 11) #4
  br label %cleanup183

if.end117:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool118 = icmp ne i32 %call1.i, 0
  %frombool121 = zext i1 %tobool118 to i8
  %52 = ptrtoint ptr %ani to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %frombool121, ptr %ani, align 4
  br label %do.body123

do.body123:                                       ; preds = %if.end117, %if.end103.do.body123_crit_edge
  %debug_mask = getelementptr i8, ptr %t, i32 -32
  %53 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug_mask, align 4
  %and124 = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %do.body123.do.end143_crit_edge, label %if.then126

do.body123.do.end143_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end143

if.then126:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %cond129 = select i1 %cmp40.not, ptr @.str.9, ptr @.str.8
  %cond132 = select i1 %shortcal.0.off0, ptr @.str.10, ptr @.str.9
  %cond135 = select i1 %cmp80.not, ptr @.str.9, ptr @.str.11
  %56 = ptrtoint ptr %ani to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ani, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool138.not = icmp eq i8 %57, 0
  %cond140 = select i1 %tobool138.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.7, i32 noundef %55, ptr noundef nonnull %cond129, ptr noundef nonnull %cond132, ptr noundef nonnull %cond135, ptr noundef nonnull %cond140) #4
  br label %do.end143

do.end143:                                        ; preds = %if.then126, %do.body123.do.end143_crit_edge
  tail call void @ath9k_ps_restore(ptr noundef %1) #4
  br label %set_timer

set_timer:                                        ; preds = %do.end143, %do.body9, %if.then6.set_timer_crit_edge
  %ani_poll_interval145 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 5, i32 14
  %58 = ptrtoint ptr %ani_poll_interval145 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ani_poll_interval145, align 4
  %ani151 = getelementptr i8, ptr %t, i32 -20
  %60 = ptrtoint ptr %ani151 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ani151, align 4, !range !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool153.not = icmp eq i8 %61, 0
  %63 = tail call i16 @llvm.umin.i16(i16 %59, i16 30000)
  %cond150 = zext i16 %63 to i32
  %64 = tail call i32 @llvm.umin.i32(i32 %cond, i32 %cond150)
  %cal_interval.0 = select i1 %tobool153.not, i32 %64, i32 %cond150
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cal_interval.0) #4
  %add = add i32 %call2.i, %62
  %call165 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #4
  %call166 = tail call zeroext i1 @ar9003_is_paprd_enabled(ptr noundef %3) #4
  br i1 %call166, label %land.lhs.true168, label %set_timer.cleanup183_crit_edge

set_timer.cleanup183_crit_edge:                   ; preds = %set_timer
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup183

land.lhs.true168:                                 ; preds = %set_timer
  %65 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %caldata, align 4
  %tobool170.not = icmp eq ptr %66, null
  br i1 %tobool170.not, label %land.lhs.true168.cleanup183_crit_edge, label %if.then171

land.lhs.true168.cleanup183_crit_edge:            ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup183

if.then171:                                       ; preds = %land.lhs.true168
  %cal_flags173 = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %cal_flags173 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %cal_flags173, align 4
  %69 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool175.not = icmp eq i32 %69, 0
  br i1 %tobool175.not, label %if.then176, label %if.else177

if.then176:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %paprd_work = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 14
  tail call void @ieee80211_queue_work(ptr noundef %71, ptr noundef %paprd_work) #4
  br label %cleanup183

if.else177:                                       ; preds = %if.then171
  %paprd_table_write_done = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 122
  %72 = ptrtoint ptr %paprd_table_write_done to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %paprd_table_write_done, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool178.not = icmp eq i8 %73, 0
  br i1 %tobool178.not, label %if.then179, label %if.else177.cleanup183_crit_edge

if.else177.cleanup183_crit_edge:                  ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup183

if.then179:                                       ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath9k_ps_wakeup(ptr noundef %1) #4
  tail call fastcc void @ath_paprd_activate(ptr noundef %1)
  tail call void @ath9k_ps_restore(ptr noundef %1) #4
  br label %cleanup183

cleanup183:                                       ; preds = %if.then179, %if.else177.cleanup183_crit_edge, %if.then176, %land.lhs.true168.cleanup183_crit_edge, %set_timer.cleanup183_crit_edge, %if.then114
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_reset_calvalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_ani_monitor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_update_survey_stats(ptr nocapture noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curchan, align 4
  %channels = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 7
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %channels to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %cc_survey = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 21
  %clockrate = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 18
  %4 = ptrtoint ptr %clockrate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clockrate, align 4
  %mul = mul i32 %5, 1000
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_mode = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath_hw_cycle_counters_update(ptr noundef %common.i) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %8 = ptrtoint ptr %cc_survey to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cc_survey, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6.not = icmp eq i32 %9, 0
  br i1 %cmp6.not, label %if.end19.thread, label %if.end19

if.end19:                                         ; preds = %if.end5
  %filled = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %sub.ptr.div, i32 8
  %10 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filled, align 8
  %or = or i32 %11, 108
  store i32 %or, ptr %filled, align 8
  %12 = ptrtoint ptr %cc_survey to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cc_survey, align 4
  %div9 = udiv i32 %13, %mul
  %conv = zext i32 %div9 to i64
  %time = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %sub.ptr.div, i32 1
  %14 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %time, align 8
  %add = add i64 %15, %conv
  store i64 %add, ptr %time, align 8
  %rx_busy = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 21, i32 1
  %16 = ptrtoint ptr %rx_busy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_busy, align 4
  %div10 = udiv i32 %17, %mul
  %conv11 = zext i32 %div10 to i64
  %time_busy = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %sub.ptr.div, i32 2
  %18 = ptrtoint ptr %time_busy to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %time_busy, align 8
  %add12 = add i64 %19, %conv11
  store i64 %add12, ptr %time_busy, align 8
  %rx_frame = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 21, i32 2
  %20 = ptrtoint ptr %rx_frame to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_frame, align 4
  %div13 = udiv i32 %21, %mul
  %conv14 = zext i32 %div13 to i64
  %time_rx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %sub.ptr.div, i32 4
  %22 = ptrtoint ptr %time_rx to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %time_rx, align 8
  %add15 = add i64 %23, %conv14
  store i64 %add15, ptr %time_rx, align 8
  %tx_frame = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 21, i32 3
  %24 = ptrtoint ptr %tx_frame to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_frame, align 4
  %div16 = udiv i32 %25, %mul
  %conv17 = zext i32 %div16 to i64
  %time_tx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %sub.ptr.div, i32 5
  %26 = ptrtoint ptr %time_tx to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %time_tx, align 8
  %add18 = add i64 %27, %conv17
  store i64 %add18, ptr %time_tx, align 8
  %.pr = load i32, ptr %cc_survey, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.pr, i32 %mul)
  %cmp21 = icmp ult i32 %.pr, %mul
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19.thread:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp2166.not = icmp eq i32 %mul, 0
  br i1 %cmp2166.not, label %if.end19.thread.if.end33_crit_edge, label %if.end19.thread.cleanup_crit_edge

if.end19.thread.cleanup_crit_edge:                ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19.thread.if.end33_crit_edge:               ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp26.not = icmp eq i32 %.pr, 0
  br i1 %cmp26.not, label %if.end24.if.end33_crit_edge, label %if.then28

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %rx_busy29 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 21, i32 1
  %28 = ptrtoint ptr %rx_busy29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_busy29, align 4
  %mul30 = mul i32 %29, 100
  %div32 = udiv i32 %mul30, %.pr
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end24.if.end33_crit_edge, %if.end19.thread.if.end33_crit_edge
  %ret.0 = phi i32 [ %div32, %if.then28 ], [ 0, %if.end24.if.end33_crit_edge ], [ 0, %if.end19.thread.if.end33_crit_edge ]
  %30 = call ptr @memset(ptr %cc_survey, i32 0, i32 16)
  %31 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sc_ah, align 4
  %noisefloor.i = getelementptr %struct.ath_hw, ptr %32, i32 0, i32 7, i32 %sub.ptr.div, i32 3
  %33 = ptrtoint ptr %noisefloor.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %noisefloor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i = icmp eq i16 %34, 0
  br i1 %tobool.not.i, label %if.end33.cleanup_crit_edge, label %if.then.i

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.ath_hw, ptr %32, i32 0, i32 7, i32 %sub.ptr.div
  %filled.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %sub.ptr.div, i32 8
  %35 = ptrtoint ptr %filled.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %filled.i, align 8
  %or.i = or i32 %36, 1
  store i32 %or.i, ptr %filled.i, align 8
  %37 = ptrtoint ptr %noisefloor.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %noisefloor.i, align 4
  %call.i = tail call signext i16 @ath9k_hw_getchan_noise(ptr noundef %32, ptr noundef %arrayidx.i, i16 noundef signext %38) #4
  %conv.i = trunc i16 %call.i to i8
  %noise.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %sub.ptr.div, i32 9
  %39 = ptrtoint ptr %noise.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %noise.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end33.cleanup_crit_edge, %if.end19.thread.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end19.cleanup_crit_edge ], [ %ret.0, %if.end33.cleanup_crit_edge ], [ %ret.0, %if.then.i ], [ -1, %if.end19.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ar9003_is_paprd_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_start_ani(ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %2) #4
  %disable_ani = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 28
  %3 = ptrtoint ptr %disable_ani to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %disable_ani, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %op_flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %8 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_chan, align 8
  %offchannel = getelementptr inbounds %struct.ath_chanctx, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %offchannel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %offchannel, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %longcal_timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 1
  %12 = ptrtoint ptr %longcal_timer to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call1, ptr %longcal_timer, align 4
  %shortcal_timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 2
  %13 = ptrtoint ptr %shortcal_timer to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call1, ptr %shortcal_timer, align 4
  %checkani_timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 4
  %14 = ptrtoint ptr %checkani_timer to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call1, ptr %checkani_timer, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_mask, align 4
  %and = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end.do.end_crit_edge, label %if.then9

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.14) #4
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end.do.end_crit_edge
  %timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %ani_poll_interval = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 5, i32 14
  %18 = ptrtoint ptr %ani_poll_interval to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ani_poll_interval, align 4
  %conv = zext i16 %19 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #4
  %add = add i32 %call2.i, %17
  %call13 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_stop_ani(ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.15) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 5
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_check_ani(ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %2 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_chan, align 8
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opmode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %5, label %entry.if.end25_crit_edge [
    i32 1, label %if.then
    i32 3, label %if.then5
    i32 2, label %if.then17
  ]

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then:                                          ; preds = %entry
  %enable_beacon = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 5, i32 5
  %7 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable_beacon, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then.stop_ani_crit_edge, label %if.then.if.end25_crit_edge

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then.stop_ani_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_ani

if.then5:                                         ; preds = %entry
  %enable_beacon6 = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 5, i32 5
  %9 = ptrtoint ptr %enable_beacon6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_beacon6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %if.then8, label %if.then5.if.end25_crit_edge

if.then5.if.end25_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then8:                                         ; preds = %if.then5
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %11 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %op_flags, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.then8.stop_ani_crit_edge, label %if.then8.if.end25_crit_edge

if.then8.if.end25_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then8.stop_ani_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_ani

if.then17:                                        ; preds = %entry
  %op_flags18 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %op_flags18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %op_flags18, align 4
  %16 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool20.not = icmp eq i32 %16, 0
  br i1 %tobool20.not, label %if.then17.stop_ani_crit_edge, label %if.then17.if.end25_crit_edge

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then17.stop_ani_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_ani

if.end25:                                         ; preds = %if.then17.if.end25_crit_edge, %if.then8.if.end25_crit_edge, %if.then5.if.end25_crit_edge, %if.then.if.end25_crit_edge, %entry.if.end25_crit_edge
  %op_flags26 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %op_flags26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %op_flags26, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not = icmp eq i32 %19, 0
  br i1 %tobool28.not, label %if.then29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %op_flags26) #4
  tail call void @ath_start_ani(ptr noundef %sc)
  br label %cleanup

stop_ani:                                         ; preds = %if.then17.stop_ani_crit_edge, %if.then8.stop_ani_crit_edge, %if.then.stop_ani_crit_edge
  %op_flags32 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %op_flags32) #4
  %20 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_ah, align 4
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %21, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %stop_ani.ath_stop_ani.exit_crit_edge, label %if.then.i

stop_ani.ath_stop_ani.exit_crit_edge:             ; preds = %stop_ani
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath_stop_ani.exit

if.then.i:                                        ; preds = %stop_ani
  call void @__sanitizer_cov_trace_pc() #6
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.15) #4
  br label %ath_stop_ani.exit

ath_stop_ani.exit:                                ; preds = %if.then.i, %stop_ani.ath_stop_ani.exit_crit_edge
  %timer.i = getelementptr inbounds %struct.ath_hw, ptr %21, i32 0, i32 3, i32 6, i32 5
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #4
  br label %cleanup

cleanup:                                          ; preds = %ath_stop_ani.exit, %if.then29, %if.end25.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_update_survey_nf(ptr nocapture noundef %sc, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %noisefloor = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 7, i32 %channel, i32 3
  %2 = ptrtoint ptr %noisefloor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %noisefloor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 7, i32 %channel
  %filled = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %channel, i32 8
  %4 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %filled, align 8
  %or = or i32 %5, 1
  store i32 %or, ptr %filled, align 8
  %6 = ptrtoint ptr %noisefloor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %noisefloor, align 4
  %call = tail call signext i16 @ath9k_hw_getchan_noise(ptr noundef %1, ptr noundef %arrayidx, i16 noundef signext %7) #4
  %conv = trunc i16 %call to i8
  %noise = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %channel, i32 9
  %8 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %noise, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local signext i16 @ath9k_hw_getchan_noise(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_cycle_counters_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_tx_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_paprd_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_paprd_populate_single_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 83, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 230, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 260, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 266, i32 4}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 273, i32 4}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 278, i32 4}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 389, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.13, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 436, i32 2}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 445, i32 2}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 49, i32 2}
!27 = !{ptr @ath_hw_pll_rx_hang_check.count, !28, !"count", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 99, i32 13}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 105, i32 4}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 196, i32 3}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 205, i32 3}
!35 = !{ptr @init_completion.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../include/linux/completion.h", i32 87, i32 2}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 156, i32 3}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/link.c", i32 168, i32 2}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i8 0, i8 2}
