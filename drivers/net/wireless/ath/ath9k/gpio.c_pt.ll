; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/gpio.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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

@ath9k_led_blink = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ath9k-%s\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Starting btcoex timers\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Stopping btcoex timers\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath9k/gpio.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ath9k-led\00", [22 x i8] zeroinitializer }, align 32
@ath_init_btcoex_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&btcoex->period_timer)\00", [40 x i8] zeroinitializer }, align 32
@ath_init_btcoex_timer.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&btcoex->no_stomp_timer)\00", [38 x i8] zeroinitializer }, align 32
@ath_init_btcoex_timer.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&btcoex->btcoex_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BT scan detected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BT priority traffic detected\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%20s : %10d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Total BT profiles\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MGMT\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SCO\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A2DP\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HID\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAN\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACL\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BDR\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Aggr. Limit\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Stomp Type\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BTCoex Period (msec)\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Duty Cycle\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BT Wait time\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Concurrent Tx\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Concurrent RSSI cnt\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BT Weights: \00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x \00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WLAN Weights: \00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Tx Priorities: \00", [16 x i8] zeroinitializer }, align 32
@switch.table.ath_init_leds = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 10, i32 1, i32 6, i32 4, i32 4], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 88, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 305, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 330, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 445, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 44, i32 45 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 287, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 288, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 290, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 156, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 161, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 461, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 462, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 463, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 464, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 465, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 466, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 467, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 468, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 469, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 470, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 471, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 472, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 473, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 474, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 475, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 477, i32 42 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 479, i32 43 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 481, i32 42 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 482, i32 42 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath9k/gpio.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 487, i32 42 }
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"switch.table.ath_init_leds\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ath_init_btcoex_timer.__key, ptr @.str.6, ptr @ath_init_btcoex_timer.__key.7, ptr @.str.8, ptr @ath_init_btcoex_timer.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @switch.table.ath_init_leds], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_init_btcoex_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_init_btcoex_timer.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_init_btcoex_timer.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath_init_leds to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_deinit_leds(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %led_registered = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 41
  %0 = ptrtoint ptr %led_registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %led_registered, align 8, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %led_cdev = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 43
  %sc_ah.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah.i, align 4
  %led_active_high.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 5, i32 25
  %4 = ptrtoint ptr %led_active_high.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %led_active_high.i, align 4, !range !74
  %6 = xor i8 %5, 1
  %7 = zext i8 %6 to i32
  %led_pin.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 80
  %8 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %led_pin.i, align 4
  tail call void @ath9k_hw_set_gpio(ptr noundef %3, i32 noundef %9, i32 noundef %7) #5
  tail call void @led_classdev_unregister(ptr noundef %led_cdev) #5
  %10 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_ah.i, align 4
  %led_pin = getelementptr inbounds %struct.ath_hw, ptr %11, i32 0, i32 80
  %12 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %led_pin, align 4
  tail call void @ath9k_hw_gpio_free(ptr noundef %11, i32 noundef %13) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath_led_brightness(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 0
  %sc_ah = getelementptr i8, ptr %led_cdev, i32 -7688
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %led_active_high = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 5, i32 25
  %2 = ptrtoint ptr %led_active_high to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %led_active_high, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %spec.select = xor i1 %cmp, %tobool.not
  %val.0 = zext i1 %spec.select to i32
  %led_pin = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 80
  %4 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %led_pin, align 4
  tail call void @ath9k_hw_set_gpio(ptr noundef %1, i32 noundef %5, i32 noundef %val.0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_gpio_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_init_leds(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %3)
  %cmp = icmp eq i32 %3, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %led_pin.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 80
  %4 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %led_pin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.ath_fill_led_pin.exit_crit_edge

if.end.ath_fill_led_pin.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_fill_led_pin.exit

if.then.i:                                        ; preds = %if.end
  %6 = add i32 %3, -384
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %8 = icmp ult i32 %7, 6
  br i1 %8, label %switch.lookup, label %if.then.i.if.end29.sink.split.i_crit_edge

if.then.i.if.end29.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.sink.split.i

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ath_init_leds, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end29.sink.split.i

if.end29.sink.split.i:                            ; preds = %switch.lookup, %if.then.i.if.end29.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 1, %if.then.i.if.end29.sink.split.i_crit_edge ]
  %10 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink.i, ptr %led_pin.i, align 4
  br label %ath_fill_led_pin.exit

ath_fill_led_pin.exit:                            ; preds = %if.end29.sink.split.i, %if.end.ath_fill_led_pin.exit_crit_edge
  %11 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %led_pin.i, align 4
  tail call void @ath9k_hw_gpio_request_out(ptr noundef %1, i32 noundef %12, ptr noundef nonnull @.str.5, i32 noundef 0) #5
  %13 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %led_pin.i, align 4
  %led_active_high.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 5, i32 25
  %15 = ptrtoint ptr %led_active_high.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %led_active_high.i, align 4, !range !74
  %17 = xor i8 %16, 1
  %18 = zext i8 %17 to i32
  tail call void @ath9k_hw_set_gpio(ptr noundef %1, i32 noundef %14, i32 noundef %18) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath9k_led_blink to i32))
  %19 = load i32, ptr @ath9k_led_blink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.then1, label %ath_fill_led_pin.exit.if.end2_crit_edge

ath_fill_led_pin.exit.if.end2_crit_edge:          ; preds = %ath_fill_led_pin.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then1:                                         ; preds = %ath_fill_led_pin.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc, align 8
  %call.i = tail call ptr @__ieee80211_get_radio_led_name(ptr noundef %21) #5
  %default_trigger = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 43, i32 14
  %22 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %default_trigger, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %ath_fill_led_pin.exit.if.end2_crit_edge
  %led_name = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 42
  %23 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sc, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end2.wiphy_name.exit_crit_edge

if.end2.wiphy_name.exit_crit_edge:                ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end2.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end2.wiphy_name.exit_crit_edge ]
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %led_name, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i)
  %led_cdev8 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 43
  %31 = ptrtoint ptr %led_cdev8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %led_name, ptr %led_cdev8, align 4
  %brightness_set = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 43, i32 5
  %32 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ath_led_brightness, ptr %brightness_set, align 4
  %33 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sc, align 8
  %wiphy11 = getelementptr inbounds %struct.ieee80211_hw, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wiphy11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wiphy11, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %36, i32 0, i32 56, i32 1
  %37 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i, align 8
  %call.i29 = tail call i32 @led_classdev_register_ext(ptr noundef %38, ptr noundef %led_cdev8, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp15 = icmp slt i32 %call.i29, 0
  br i1 %cmp15, label %wiphy_name.exit.cleanup_crit_edge, label %if.end17

wiphy_name.exit.cleanup_crit_edge:                ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %led_registered = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 41
  %39 = ptrtoint ptr %led_registered to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %led_registered, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %wiphy_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_rfkill_poll_state(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah.i, align 4
  tail call void @ath9k_ps_wakeup(ptr noundef %1) #5
  %rfkill_gpio.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %rfkill_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rfkill_gpio.i, align 4
  %call.i = tail call i32 @ath9k_hw_gpio_get(ptr noundef %3, i32 noundef %5) #5
  %rfkill_polarity.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %rfkill_polarity.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rfkill_polarity.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %7)
  %cmp.i = icmp eq i32 %call.i, %7
  tail call void @ath9k_ps_restore(ptr noundef %1) #5
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %9, i1 noundef zeroext %cmp.i, i32 noundef 1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_start_rfkill_poll(ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  tail call void @wiphy_rfkill_start_polling(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_btcoex_timer_resume(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %btcoex_hw.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72
  %2 = ptrtoint ptr %btcoex_hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %btcoex_hw.i, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %and = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then5

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.2) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  %no_stomp_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 2
  %call8 = tail call i32 @del_timer_sync(ptr noundef %no_stomp_timer) #5
  %bt_priority_cnt = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 3
  %7 = ptrtoint ptr %bt_priority_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bt_priority_cnt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %bt_priority_time = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 4
  %9 = ptrtoint ptr %bt_priority_time to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bt_priority_time, align 4
  %op_flags = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %op_flags) #5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %op_flags) #5
  %period_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %call10 = tail call i32 @mod_timer(ptr noundef %period_timer, i32 noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_btcoex_timer_pause(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %btcoex_hw.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72
  %2 = ptrtoint ptr %btcoex_hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %btcoex_hw.i, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %and = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then5

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.3) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  %period_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 1
  %call8 = tail call i32 @del_timer_sync(ptr noundef %period_timer) #5
  %no_stomp_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 2
  %call9 = tail call i32 @del_timer_sync(ptr noundef %no_stomp_timer) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_btcoex_stop_gen_timer(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %no_stomp_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 2
  %call = tail call i32 @del_timer_sync(ptr noundef %no_stomp_timer) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @ath9k_btcoex_aggr_limit(ptr noundef %sc, i32 noundef %max_4ms_framelen) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %aggr_limit4 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 2
  %4 = ptrtoint ptr %aggr_limit4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %aggr_limit4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool5.not = icmp eq i16 %5, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %5 to i32
  %mul = mul i32 %conv, %max_4ms_framelen
  %shr = lshr i32 %mul, 4
  %conv8 = trunc i32 %shr to i16
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %op_flags = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 5
  %6 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %op_flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool9.not = icmp eq i32 %and1.i, 0
  br i1 %tobool9.not, label %if.else.if.end14_crit_edge, label %if.then10

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %mul11 = mul i32 %max_4ms_framelen, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 524280, i32 %mul11)
  %cmp = icmp ult i32 %mul11, 524280
  %div21 = lshr i32 %mul11, 3
  %phi.cast = trunc i32 %div21 to i16
  %cond = select i1 %cmp, i16 %phi.cast, i16 -1
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.else.if.end14_crit_edge, %if.then
  %aggr_limit.0 = phi i16 [ %conv8, %if.then ], [ %cond, %if.then10 ], [ 0, %if.else.if.end14_crit_edge ]
  ret i16 %aggr_limit.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_btcoex_handle_interrupt(ptr noundef %sc, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %status, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath_mci_intr(ptr noundef %sc) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_mci_intr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_start_btcoex(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %enabled = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %btcoex_hw.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72
  %4 = ptrtoint ptr %btcoex_hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %btcoex_hw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 4
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_hw_btcoex_set_weight(ptr noundef %1, i32 noundef 65365, i32 noundef 43176, i32 noundef 0) #5
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_hw_btcoex_set_weight(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2) #5
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  tail call void @ath9k_hw_btcoex_enable(ptr noundef %1) #5
  tail call void @ath9k_btcoex_timer_resume(ptr noundef %sc)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_set_weight(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_stop_btcoex(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %enabled = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %btcoex_hw.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72
  %4 = ptrtoint ptr %btcoex_hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %btcoex_hw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch.i = icmp eq i32 %6, 2
  br i1 %switch.i, label %do.body.i, label %if.end.ath9k_btcoex_timer_pause.exit_crit_edge

if.end.ath9k_btcoex_timer_pause.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_btcoex_timer_pause.exit

do.body.i:                                        ; preds = %if.end
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then5.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i, ptr noundef nonnull @.str.3) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i.do.end.i_crit_edge
  %period_timer.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 1
  %call8.i = tail call i32 @del_timer_sync(ptr noundef %period_timer.i) #5
  %no_stomp_timer.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 2
  %call9.i = tail call i32 @del_timer_sync(ptr noundef %no_stomp_timer.i) #5
  br label %ath9k_btcoex_timer_pause.exit

ath9k_btcoex_timer_pause.exit:                    ; preds = %do.end.i, %if.end.ath9k_btcoex_timer_pause.exit_crit_edge
  tail call void @ath9k_hw_btcoex_disable(ptr noundef %1) #5
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps, align 4
  %and = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %ath9k_btcoex_timer_pause.exit.cleanup_crit_edge, label %if.then2

ath9k_btcoex_timer_pause.exit.cleanup_crit_edge:  ; preds = %ath9k_btcoex_timer_pause.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %ath9k_btcoex_timer_pause.exit
  call void @__sanitizer_cov_trace_pc() #7
  %mci = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13
  tail call void @ath_mci_flush_profile(ptr noundef %mci) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %ath9k_btcoex_timer_pause.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_mci_flush_profile(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_deinit_btcoex(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %btcoex_enabled.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %btcoex_enabled.i, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %ath9k_hw_mci_is_enabled.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

ath9k_hw_mci_is_enabled.exit:                     ; preds = %entry
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.i.not, label %ath9k_hw_mci_is_enabled.exit.if.else_crit_edge, label %if.then

ath9k_hw_mci_is_enabled.exit.if.else_crit_edge:   ; preds = %ath9k_hw_mci_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %ath9k_hw_mci_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath_mci_cleanup(ptr noundef %sc) #5
  br label %if.end5

if.else:                                          ; preds = %ath9k_hw_mci_is_enabled.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %btcoex_hw.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72
  %6 = ptrtoint ptr %btcoex_hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %btcoex_hw.i, align 4
  %call1.off = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.off)
  %switch = icmp ult i32 %call1.off, 2
  br i1 %switch, label %if.then3, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_hw_btcoex_deinit(ptr noundef %1) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.else.if.end5_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_mci_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_init_btcoex(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_btcoex_init_scheme(ptr noundef %1) #5
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %btcoex_hw.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 72
  %4 = ptrtoint ptr %btcoex_hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %btcoex_hw.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_hw_btcoex_init_2wire(ptr noundef %3) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_hw_btcoex_init_3wire(ptr noundef %3) #5
  %btcoex1.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48
  %btcoex_period.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 8
  %7 = ptrtoint ptr %btcoex_period.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 45, ptr %btcoex_period.i, align 4
  %btcoex_no_stomp.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 7
  %8 = ptrtoint ptr %btcoex_no_stomp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20, ptr %btcoex_no_stomp.i, align 4
  %btscan_no_stomp.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 9
  %9 = ptrtoint ptr %btscan_no_stomp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %btscan_no_stomp.i, align 4
  %bt_stomp_type.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 6
  %10 = ptrtoint ptr %bt_stomp_type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %bt_stomp_type.i, align 4
  %period_timer.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 1
  tail call void @init_timer_key(ptr noundef %period_timer.i, ptr noundef nonnull @ath_btcoex_period_timer, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @ath_init_btcoex_timer.__key) #5
  %no_stomp_timer.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 2
  tail call void @init_timer_key(ptr noundef %no_stomp_timer.i, ptr noundef nonnull @ath_btcoex_no_stomp_timer, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @ath_init_btcoex_timer.__key.7) #5
  tail call void @__raw_spin_lock_init(ptr noundef %btcoex1.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @ath_init_btcoex_timer.__key.9, i16 noundef signext 3) #5
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc_ah, align 4
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %axq_qnum, align 4
  tail call void @ath9k_hw_init_btcoex_hw(ptr noundef %14, i32 noundef %16) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %btcoex1.i41 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48
  %btcoex_period.i42 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 8
  %17 = ptrtoint ptr %btcoex_period.i42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 45, ptr %btcoex_period.i42, align 4
  %btcoex_no_stomp.i43 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 7
  %18 = ptrtoint ptr %btcoex_no_stomp.i43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 20, ptr %btcoex_no_stomp.i43, align 4
  %btscan_no_stomp.i44 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 9
  %19 = ptrtoint ptr %btscan_no_stomp.i44 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %btscan_no_stomp.i44, align 4
  %bt_stomp_type.i45 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 6
  %20 = ptrtoint ptr %bt_stomp_type.i45 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %bt_stomp_type.i45, align 4
  %period_timer.i46 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 1
  tail call void @init_timer_key(ptr noundef %period_timer.i46, ptr noundef nonnull @ath_btcoex_period_timer, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @ath_init_btcoex_timer.__key) #5
  %no_stomp_timer.i47 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 2
  tail call void @init_timer_key(ptr noundef %no_stomp_timer.i47, ptr noundef nonnull @ath_btcoex_no_stomp_timer, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @ath_init_btcoex_timer.__key.7) #5
  tail call void @__raw_spin_lock_init(ptr noundef %btcoex1.i41, ptr noundef nonnull @.str.10, ptr noundef nonnull @ath_init_btcoex_timer.__key.9, i16 noundef signext 3) #5
  %duty_cycle = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 10
  %21 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 55, ptr %duty_cycle, align 4
  %mci = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13
  %22 = ptrtoint ptr %mci to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %mci, ptr %mci, align 4
  %prev.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mci, ptr %prev.i, align 4
  tail call void @ath9k_hw_btcoex_init_mci(ptr noundef %1) #5
  %call8 = tail call i32 @ath_mci_setup(ptr noundef %sc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %sw.bb6.sw.epilog_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 445, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb6.sw.epilog_crit_edge, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call8, %sw.bb6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_init_scheme(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_init_2wire(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_init_3wire(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_init_btcoex_hw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_init_mci(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_mci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_dump_btcoex(ptr nocapture noundef readonly %sc, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %btcoex_enabled.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %btcoex_enabled.i, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %ath9k_hw_mci_is_enabled.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

ath9k_hw_mci_is_enabled.exit:                     ; preds = %entry
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.i.not, label %ath9k_hw_mci_is_enabled.exit.if.else_crit_edge, label %if.then

ath9k_hw_mci_is_enabled.exit.if.else_crit_edge:   ; preds = %ath9k_hw_mci_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %ath9k_hw_mci_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  %num_other_acl.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 8
  %6 = ptrtoint ptr %num_other_acl.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_other_acl.i, align 1
  %conv.i = zext i8 %7 to i32
  %num_a2dp.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 5
  %8 = ptrtoint ptr %num_a2dp.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_a2dp.i, align 4
  %conv4.i = zext i8 %9 to i32
  %add.i = add nuw nsw i32 %conv4.i, %conv.i
  %num_hid.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 6
  %10 = ptrtoint ptr %num_hid.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_hid.i, align 1
  %conv5.i = zext i8 %11 to i32
  %add6.i = add nuw nsw i32 %add.i, %conv5.i
  %num_pan.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 7
  %12 = ptrtoint ptr %num_pan.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_pan.i, align 2
  %conv7.i = zext i8 %13 to i32
  %add8.i = add nuw nsw i32 %add6.i, %conv7.i
  %num_sco.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 4
  %14 = ptrtoint ptr %num_sco.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_sco.i, align 1
  %conv9.i = zext i8 %15 to i32
  %add10.i = add nuw nsw i32 %add8.i, %conv9.i
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %add10.i) #5
  %add.ptr13.i = getelementptr i8, ptr %buf, i32 %call.i
  %sub14.i = sub i32 %size, %call.i
  %num_mgmt.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 3
  %16 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_mgmt.i, align 2
  %conv15.i = zext i8 %17 to i32
  %call16.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13.i, i32 noundef %sub14.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef %conv15.i) #5
  %add17.i = add i32 %call16.i, %call.i
  %add.ptr21.i = getelementptr i8, ptr %buf, i32 %add17.i
  %sub22.i = sub i32 %size, %add17.i
  %18 = ptrtoint ptr %num_sco.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_sco.i, align 1
  %conv24.i = zext i8 %19 to i32
  %call25.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21.i, i32 noundef %sub22.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, i32 noundef %conv24.i) #5
  %add26.i = add i32 %call25.i, %add17.i
  %add.ptr30.i = getelementptr i8, ptr %buf, i32 %add26.i
  %sub31.i = sub i32 %size, %add26.i
  %20 = ptrtoint ptr %num_a2dp.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_a2dp.i, align 4
  %conv33.i = zext i8 %21 to i32
  %call34.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30.i, i32 noundef %sub31.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.17, i32 noundef %conv33.i) #5
  %add35.i = add i32 %call34.i, %add26.i
  %add.ptr39.i = getelementptr i8, ptr %buf, i32 %add35.i
  %sub40.i = sub i32 %size, %add35.i
  %22 = ptrtoint ptr %num_hid.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_hid.i, align 1
  %conv42.i = zext i8 %23 to i32
  %call43.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39.i, i32 noundef %sub40.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18, i32 noundef %conv42.i) #5
  %add44.i = add i32 %call43.i, %add35.i
  %add.ptr48.i = getelementptr i8, ptr %buf, i32 %add44.i
  %sub49.i = sub i32 %size, %add44.i
  %24 = ptrtoint ptr %num_pan.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_pan.i, align 2
  %conv51.i = zext i8 %25 to i32
  %call52.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr48.i, i32 noundef %sub49.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.19, i32 noundef %conv51.i) #5
  %add53.i = add i32 %call52.i, %add44.i
  %add.ptr57.i = getelementptr i8, ptr %buf, i32 %add53.i
  %sub58.i = sub i32 %size, %add53.i
  %26 = ptrtoint ptr %num_other_acl.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_other_acl.i, align 1
  %conv60.i = zext i8 %27 to i32
  %call61.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57.i, i32 noundef %sub58.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.20, i32 noundef %conv60.i) #5
  %add62.i = add i32 %call61.i, %add53.i
  %add.ptr66.i = getelementptr i8, ptr %buf, i32 %add62.i
  %sub67.i = sub i32 %size, %add62.i
  %num_bdr.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 9
  %28 = ptrtoint ptr %num_bdr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_bdr.i, align 4
  %conv68.i = zext i8 %29 to i32
  %call69.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66.i, i32 noundef %sub67.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.21, i32 noundef %conv68.i) #5
  %add70.i = add i32 %call69.i, %add62.i
  %add.ptr74.i = getelementptr i8, ptr %buf, i32 %add70.i
  %sub75.i = sub i32 %size, %add70.i
  %aggr_limit.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 2
  %30 = ptrtoint ptr %aggr_limit.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %aggr_limit.i, align 4
  %conv76.i = zext i16 %31 to i32
  %call77.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr74.i, i32 noundef %sub75.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22, i32 noundef %conv76.i) #5
  %add78.i = add i32 %call77.i, %add70.i
  %add.ptr82.i = getelementptr i8, ptr %buf, i32 %add78.i
  %sub83.i = sub i32 %size, %add78.i
  %bt_stomp_type.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 6
  %32 = ptrtoint ptr %bt_stomp_type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bt_stomp_type.i, align 4
  %call84.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr82.i, i32 noundef %sub83.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.23, i32 noundef %33) #5
  %add85.i = add i32 %call84.i, %add78.i
  %add.ptr89.i = getelementptr i8, ptr %buf, i32 %add85.i
  %sub90.i = sub i32 %size, %add85.i
  %btcoex_period.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 8
  %34 = ptrtoint ptr %btcoex_period.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %btcoex_period.i, align 4
  %call91.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89.i, i32 noundef %sub90.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.24, i32 noundef %35) #5
  %add92.i = add i32 %call91.i, %add85.i
  %add.ptr96.i = getelementptr i8, ptr %buf, i32 %add92.i
  %sub97.i = sub i32 %size, %add92.i
  %duty_cycle.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 10
  %36 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %duty_cycle.i, align 4
  %call98.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96.i, i32 noundef %sub97.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.25, i32 noundef %37) #5
  %add99.i = add i32 %call98.i, %add92.i
  %add.ptr103.i = getelementptr i8, ptr %buf, i32 %add99.i
  %sub104.i = sub i32 %size, %add99.i
  %bt_wait_time.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 11
  %38 = ptrtoint ptr %bt_wait_time.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bt_wait_time.i, align 4
  %call105.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr103.i, i32 noundef %sub104.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.26, i32 noundef %39) #5
  %add106.i = add i32 %call105.i, %add99.i
  %add.ptr110.i = getelementptr i8, ptr %buf, i32 %add106.i
  %sub111.i = sub i32 %size, %add106.i
  %concur_tx.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 1, i32 27
  %40 = ptrtoint ptr %concur_tx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %concur_tx.i, align 1, !range !74
  %42 = zext i8 %41 to i32
  %call114.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr110.i, i32 noundef %sub111.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.27, i32 noundef %42) #5
  %add115.i = add i32 %call114.i, %add106.i
  %add.ptr119.i = getelementptr i8, ptr %buf, i32 %add115.i
  %sub120.i = sub i32 %size, %add115.i
  %rssi_count.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 12
  %43 = ptrtoint ptr %rssi_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rssi_count.i, align 4
  %call121.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr119.i, i32 noundef %sub120.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i32 noundef %44) #5
  %add122.i = add i32 %call121.i, %add115.i
  %add.ptr125.i = getelementptr i8, ptr %buf, i32 %add122.i
  %sub126.i = sub i32 %size, %add122.i
  %call127.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr125.i, i32 noundef %sub126.i, ptr noundef nonnull @.str.29) #5
  %add128.i = add i32 %add122.i, %call127.i
  %add.ptr130.i = getelementptr i8, ptr %buf, i32 %add128.i
  %sub131.i = sub i32 %size, %add128.i
  %arrayidx.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 11, i32 0
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %call132.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr130.i, i32 noundef %sub131.i, ptr noundef nonnull @.str.30, i32 noundef %46) #5
  %add133.i = add i32 %call132.i, %add128.i
  %add.ptr130.1.i = getelementptr i8, ptr %buf, i32 %add133.i
  %sub131.1.i = sub i32 %size, %add133.i
  %arrayidx.1.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 11, i32 1
  %47 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.1.i, align 4
  %call132.1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr130.1.i, i32 noundef %sub131.1.i, ptr noundef nonnull @.str.30, i32 noundef %48) #5
  %add133.1.i = add i32 %call132.1.i, %add133.i
  %add.ptr130.2.i = getelementptr i8, ptr %buf, i32 %add133.1.i
  %sub131.2.i = sub i32 %size, %add133.1.i
  %arrayidx.2.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 11, i32 2
  %49 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.2.i, align 4
  %call132.2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr130.2.i, i32 noundef %sub131.2.i, ptr noundef nonnull @.str.30, i32 noundef %50) #5
  %add133.2.i = add i32 %call132.2.i, %add133.1.i
  %add.ptr130.3.i = getelementptr i8, ptr %buf, i32 %add133.2.i
  %sub131.3.i = sub i32 %size, %add133.2.i
  %arrayidx.3.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 11, i32 3
  %51 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.3.i, align 4
  %call132.3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr130.3.i, i32 noundef %sub131.3.i, ptr noundef nonnull @.str.30, i32 noundef %52) #5
  %add133.3.i = add i32 %call132.3.i, %add133.2.i
  %add.ptr134.i = getelementptr i8, ptr %buf, i32 %add133.3.i
  %sub135.i = sub i32 %size, %add133.3.i
  %call136.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr134.i, i32 noundef %sub135.i, ptr noundef nonnull @.str.31) #5
  %add137.i = add i32 %call136.i, %add133.3.i
  %add.ptr138.i = getelementptr i8, ptr %buf, i32 %add137.i
  %sub139.i = sub i32 %size, %add137.i
  %call140.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr138.i, i32 noundef %sub139.i, ptr noundef nonnull @.str.32) #5
  %add141.i = add i32 %add137.i, %call140.i
  %add.ptr146.i = getelementptr i8, ptr %buf, i32 %add141.i
  %sub147.i = sub i32 %size, %add141.i
  %arrayidx148.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 12, i32 0
  %53 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx148.i, align 4
  %call149.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr146.i, i32 noundef %sub147.i, ptr noundef nonnull @.str.30, i32 noundef %54) #5
  %add150.i = add i32 %call149.i, %add141.i
  %add.ptr146.1.i = getelementptr i8, ptr %buf, i32 %add150.i
  %sub147.1.i = sub i32 %size, %add150.i
  %arrayidx148.1.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 12, i32 1
  %55 = ptrtoint ptr %arrayidx148.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx148.1.i, align 4
  %call149.1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr146.1.i, i32 noundef %sub147.1.i, ptr noundef nonnull @.str.30, i32 noundef %56) #5
  %add150.1.i = add i32 %call149.1.i, %add150.i
  %add.ptr146.2.i = getelementptr i8, ptr %buf, i32 %add150.1.i
  %sub147.2.i = sub i32 %size, %add150.1.i
  %arrayidx148.2.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 12, i32 2
  %57 = ptrtoint ptr %arrayidx148.2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx148.2.i, align 4
  %call149.2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr146.2.i, i32 noundef %sub147.2.i, ptr noundef nonnull @.str.30, i32 noundef %58) #5
  %add150.2.i = add i32 %call149.2.i, %add150.1.i
  %add.ptr146.3.i = getelementptr i8, ptr %buf, i32 %add150.2.i
  %sub147.3.i = sub i32 %size, %add150.2.i
  %arrayidx148.3.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 12, i32 3
  %59 = ptrtoint ptr %arrayidx148.3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx148.3.i, align 4
  %call149.3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr146.3.i, i32 noundef %sub147.3.i, ptr noundef nonnull @.str.30, i32 noundef %60) #5
  %add150.3.i = add i32 %call149.3.i, %add150.2.i
  %add.ptr154.i = getelementptr i8, ptr %buf, i32 %add150.3.i
  %sub155.i = sub i32 %size, %add150.3.i
  %call156.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr154.i, i32 noundef %sub155.i, ptr noundef nonnull @.str.31) #5
  %add157.i = add i32 %call156.i, %add150.3.i
  %add.ptr158.i = getelementptr i8, ptr %buf, i32 %add157.i
  %sub159.i = sub i32 %size, %add157.i
  %call160.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr158.i, i32 noundef %sub159.i, ptr noundef nonnull @.str.33) #5
  %add161.i = add i32 %add157.i, %call160.i
  %add.ptr166.i = getelementptr i8, ptr %buf, i32 %add161.i
  %sub167.i = sub i32 %size, %add161.i
  %arrayidx168.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 13, i32 0
  %61 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx168.i, align 1
  %conv169.i = zext i8 %62 to i32
  %call170.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr166.i, i32 noundef %sub167.i, ptr noundef nonnull @.str.30, i32 noundef %conv169.i) #5
  %add171.i = add i32 %call170.i, %add161.i
  %add.ptr166.1.i = getelementptr i8, ptr %buf, i32 %add171.i
  %sub167.1.i = sub i32 %size, %add171.i
  %arrayidx168.1.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 13, i32 1
  %63 = ptrtoint ptr %arrayidx168.1.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx168.1.i, align 1
  %conv169.1.i = zext i8 %64 to i32
  %call170.1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr166.1.i, i32 noundef %sub167.1.i, ptr noundef nonnull @.str.30, i32 noundef %conv169.1.i) #5
  %add171.1.i = add i32 %call170.1.i, %add171.i
  %add.ptr166.2.i = getelementptr i8, ptr %buf, i32 %add171.1.i
  %sub167.2.i = sub i32 %size, %add171.1.i
  %arrayidx168.2.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 13, i32 2
  %65 = ptrtoint ptr %arrayidx168.2.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx168.2.i, align 1
  %conv169.2.i = zext i8 %66 to i32
  %call170.2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr166.2.i, i32 noundef %sub167.2.i, ptr noundef nonnull @.str.30, i32 noundef %conv169.2.i) #5
  %add171.2.i = add i32 %call170.2.i, %add171.1.i
  %add.ptr166.3.i = getelementptr i8, ptr %buf, i32 %add171.2.i
  %sub167.3.i = sub i32 %size, %add171.2.i
  %arrayidx168.3.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 13, i32 3
  %67 = ptrtoint ptr %arrayidx168.3.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx168.3.i, align 1
  %conv169.3.i = zext i8 %68 to i32
  %call170.3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr166.3.i, i32 noundef %sub167.3.i, ptr noundef nonnull @.str.30, i32 noundef %conv169.3.i) #5
  %add171.3.i = add i32 %call170.3.i, %add171.2.i
  %add.ptr166.4.i = getelementptr i8, ptr %buf, i32 %add171.3.i
  %sub167.4.i = sub i32 %size, %add171.3.i
  %arrayidx168.4.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 72, i32 13, i32 4
  %69 = ptrtoint ptr %arrayidx168.4.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx168.4.i, align 1
  %conv169.4.i = zext i8 %70 to i32
  %call170.4.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr166.4.i, i32 noundef %sub167.4.i, ptr noundef nonnull @.str.30, i32 noundef %conv169.4.i) #5
  %add171.4.i = add i32 %call170.4.i, %add171.3.i
  %add.ptr175.i = getelementptr i8, ptr %buf, i32 %add171.4.i
  %sub176.i = sub i32 %size, %add171.4.i
  %call177.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr175.i, i32 noundef %sub176.i, ptr noundef nonnull @.str.31) #5
  %add178.i = add i32 %call177.i, %add171.4.i
  br label %return

if.else:                                          ; preds = %ath9k_hw_mci_is_enabled.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %bt_stomp_type.i7 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 6
  %71 = ptrtoint ptr %bt_stomp_type.i7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bt_stomp_type.i7, align 4
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.23, i32 noundef %72) #5
  %add.ptr3.i = getelementptr i8, ptr %buf, i32 %call.i8
  %sub4.i = sub i32 %size, %call.i8
  %btcoex_period.i9 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 8
  %73 = ptrtoint ptr %btcoex_period.i9 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %btcoex_period.i9, align 4
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.i, i32 noundef %sub4.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.24, i32 noundef %74) #5
  %add6.i10 = add i32 %call5.i, %call.i8
  %add.ptr10.i = getelementptr i8, ptr %buf, i32 %add6.i10
  %sub11.i = sub i32 %size, %add6.i10
  %duty_cycle.i11 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 10
  %75 = ptrtoint ptr %duty_cycle.i11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %duty_cycle.i11, align 4
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.i, i32 noundef %sub11.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.25, i32 noundef %76) #5
  %add13.i = add i32 %call12.i, %add6.i10
  %add.ptr17.i = getelementptr i8, ptr %buf, i32 %add13.i
  %sub18.i = sub i32 %size, %add13.i
  %bt_wait_time.i12 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 11
  %77 = ptrtoint ptr %bt_wait_time.i12 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bt_wait_time.i12, align 4
  %call19.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17.i, i32 noundef %sub18.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.26, i32 noundef %78) #5
  %add20.i = add i32 %call19.i, %add13.i
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %add178.i, %if.then ], [ %add20.i, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_gpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_gpio_request_out(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_radio_led_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_gpio_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath_btcoex_period_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -12656
  %sc_ah = getelementptr i8, ptr %t, i32 -9812
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %btcoex1 = getelementptr i8, ptr %t, i32 -44
  %sc_pm_lock = getelementptr i8, ptr %t, i32 -9756
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #5
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %power_mode = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp8 = icmp eq i32 %5, 2
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %btcoex_period = getelementptr i8, ptr %t, i32 116
  %6 = ptrtoint ptr %btcoex_period to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %btcoex_period, align 4
  %bt_wait_time = getelementptr i8, ptr %t, i32 128
  %8 = ptrtoint ptr %bt_wait_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bt_wait_time, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %bt_wait_time, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call4) #5
  br label %skip_hw_wakeup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call4) #5
  tail call void @ath9k_ps_wakeup(ptr noundef %add.ptr) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %btcoex1) #5
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps, align 4
  %and = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then12:                                        ; preds = %if.end
  tail call void @ath9k_mci_update_rssi(ptr noundef %add.ptr) #5
  %12 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_ah, align 4
  %bt_wait_time.i = getelementptr i8, ptr %t, i32 128
  %14 = ptrtoint ptr %bt_wait_time.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bt_wait_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %15)
  %cmp.i88 = icmp ugt i32 %15, 100
  br i1 %cmp.i88, label %if.then.i89, label %if.then12.if.end13_crit_edge

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then.i89:                                      ; preds = %if.then12
  %call.i = tail call i32 @ar9003_mci_state(ptr noundef %13, i32 noundef 22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i89.if.end.i90_crit_edge, label %land.lhs.true.i

if.then.i89.if.end.i90_crit_edge:                 ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i90

land.lhs.true.i:                                  ; preds = %if.then.i89
  %num_pan.i = getelementptr i8, ptr %t, i32 154
  %16 = ptrtoint ptr %num_pan.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_pan.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not.i = icmp eq i8 %17, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then6.i_crit_edge

land.lhs.true.i.if.then6.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %num_other_acl.i = getelementptr i8, ptr %t, i32 155
  %18 = ptrtoint ptr %num_other_acl.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_other_acl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not.i = icmp eq i8 %19, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.if.end.i90_crit_edge, label %lor.lhs.false.i.if.then6.i_crit_edge

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6.i

lor.lhs.false.i.if.end.i90_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i90

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %land.lhs.true.i.if.then6.i_crit_edge
  %num_pkts.i = getelementptr i8, ptr %t, i32 -7912
  %20 = ptrtoint ptr %num_pkts.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_pkts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp7.i = icmp ult i32 %21, 5
  %conv9.i = zext i1 %cmp7.i to i8
  br label %if.end.i90

if.end.i90:                                       ; preds = %if.then6.i, %lor.lhs.false.i.if.end.i90_crit_edge, %if.then.i89.if.end.i90_crit_edge
  %.sink.i = phi i8 [ %conv9.i, %if.then6.i ], [ 0, %lor.lhs.false.i.if.end.i90_crit_edge ], [ 0, %if.then.i89.if.end.i90_crit_edge ]
  %stomp_ftp13.i = getelementptr inbounds %struct.ath_hw, ptr %13, i32 0, i32 72, i32 1, i32 26
  %22 = ptrtoint ptr %stomp_ftp13.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink.i, ptr %stomp_ftp13.i, align 2
  %23 = ptrtoint ptr %bt_wait_time.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bt_wait_time.i, align 4
  %num_pkts16.i = getelementptr i8, ptr %t, i32 -7912
  %24 = ptrtoint ptr %num_pkts16.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %num_pkts16.i, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end.i90, %if.then12.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %25 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caps, align 4
  %and16 = and i32 %26, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then18:                                        ; preds = %if.end13
  %27 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sc_ah, align 4
  %btpriority_gpio.i = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 72, i32 6
  %29 = ptrtoint ptr %btpriority_gpio.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %btpriority_gpio.i, align 1
  %conv.i = zext i8 %30 to i32
  %call.i92 = tail call i32 @ath9k_hw_gpio_get(ptr noundef %28, i32 noundef %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i93, label %if.then18.if.end.i96_crit_edge, label %if.then.i94

if.then18.if.end.i96_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i96

if.then.i94:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %bt_priority_cnt.i = getelementptr i8, ptr %t, i32 96
  %31 = ptrtoint ptr %bt_priority_cnt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bt_priority_cnt.i, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %bt_priority_cnt.i, align 4
  br label %if.end.i96

if.end.i96:                                       ; preds = %if.then.i94, %if.then18.if.end.i96_crit_edge
  %bt_priority_time.i = getelementptr i8, ptr %t, i32 100
  %33 = ptrtoint ptr %bt_priority_time.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bt_priority_time.i, align 4
  %add.i = add i32 %34, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i95 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i95, label %if.then5.i, label %if.end.i96.if.end19_crit_edge

if.end.i96.if.end19_crit_edge:                    ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then5.i:                                       ; preds = %if.end.i96
  %op_flags.i = getelementptr i8, ptr %t, i32 104
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %op_flags.i) #5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %op_flags.i) #5
  %bt_priority_cnt7.i = getelementptr i8, ptr %t, i32 96
  %36 = ptrtoint ptr %bt_priority_cnt7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bt_priority_cnt7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %37)
  %cmp8.i = icmp ugt i32 %37, 14
  br i1 %cmp8.i, label %do.body.i, label %if.else.i97

do.body.i:                                        ; preds = %if.then5.i
  %38 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sc_ah, align 4
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %39, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %41, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then14.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %39, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i, ptr noundef nonnull @.str.11) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body.i.do.end.i_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %op_flags.i) #5
  br label %if.end38.sink.split.i

if.else.i97:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp21.i = icmp ugt i32 %37, 2
  br i1 %cmp21.i, label %do.body24.i, label %if.else.i97.if.end38.i_crit_edge

if.else.i97.if.end38.i_crit_edge:                 ; preds = %if.else.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

do.body24.i:                                      ; preds = %if.else.i97
  %42 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sc_ah, align 4
  %debug_mask27.i = getelementptr inbounds %struct.ath_hw, ptr %43, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %debug_mask27.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug_mask27.i, align 4
  %and28.i = and i32 %45, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.body24.i.if.end38.sink.split.i_crit_edge, label %if.then30.i

do.body24.i.if.end38.sink.split.i_crit_edge:      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.sink.split.i

if.then30.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  %common.i59.i = getelementptr inbounds %struct.ath_hw, ptr %43, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i59.i, ptr noundef nonnull @.str.12) #5
  br label %if.end38.sink.split.i

if.end38.sink.split.i:                            ; preds = %if.then30.i, %do.body24.i.if.end38.sink.split.i_crit_edge, %do.end.i
  %.sink.i98 = phi i32 [ 1, %do.end.i ], [ 0, %if.then30.i ], [ 0, %do.body24.i.if.end38.sink.split.i_crit_edge ]
  tail call void @_set_bit(i32 noundef %.sink.i98, ptr noundef %op_flags.i) #5
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end38.sink.split.i, %if.else.i97.if.end38.i_crit_edge
  %46 = ptrtoint ptr %bt_priority_cnt7.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %bt_priority_cnt7.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %48 = ptrtoint ptr %bt_priority_time.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %bt_priority_time.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end38.i, %if.end.i96.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  %bt_stomp_type = getelementptr i8, ptr %t, i32 108
  %49 = ptrtoint ptr %bt_stomp_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bt_stomp_type, align 4
  %btcoex_no_stomp = getelementptr i8, ptr %t, i32 112
  %51 = ptrtoint ptr %btcoex_no_stomp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %btcoex_no_stomp, align 4
  %53 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %caps, align 4
  %and22 = and i32 %54, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end19
  %op_flags = getelementptr i8, ptr %t, i32 104
  %55 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %op_flags, align 4
  %57 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool26.not = icmp eq i32 %57, 0
  br i1 %tobool26.not, label %if.then24.if.end35_crit_edge, label %if.then27

if.then24.if.end35_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %btscan_no_stomp = getelementptr i8, ptr %t, i32 120
  %58 = ptrtoint ptr %btscan_no_stomp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %btscan_no_stomp, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end19
  %stomp_audio = getelementptr i8, ptr %t, i32 160
  %60 = ptrtoint ptr %stomp_audio to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %stomp_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %61)
  %cmp30 = icmp ugt i8 %61, 4
  br i1 %cmp30, label %if.then32, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %stomp_audio to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %stomp_audio, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.else.if.end35_crit_edge, %if.then27, %if.then24.if.end35_crit_edge
  %stomp_type.0 = phi i32 [ 4, %if.then32 ], [ %50, %if.else.if.end35_crit_edge ], [ 0, %if.then27 ], [ %50, %if.then24.if.end35_crit_edge ]
  %timer_period.0 = phi i32 [ %52, %if.then32 ], [ %52, %if.else.if.end35_crit_edge ], [ %59, %if.then27 ], [ %52, %if.then24.if.end35_crit_edge ]
  tail call void @ath9k_hw_btcoex_bt_stomp(ptr noundef %1, i32 noundef %stomp_type.0) #5
  tail call void @ath9k_hw_btcoex_enable(ptr noundef %1) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %btcoex1) #5
  %btcoex_period37 = getelementptr i8, ptr %t, i32 116
  %63 = ptrtoint ptr %btcoex_period37 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %btcoex_period37, align 4
  %65 = ptrtoint ptr %btcoex_no_stomp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %btcoex_no_stomp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp39.not = icmp eq i32 %64, %66
  br i1 %cmp39.not, label %if.end35.if.end45_crit_edge, label %if.then41

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %no_stomp_timer = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timer_period.0) #5
  %add43 = add i32 %call2.i, %67
  %call44 = tail call i32 @mod_timer(ptr noundef %no_stomp_timer, i32 noundef %add43) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end35.if.end45_crit_edge
  tail call void @ath9k_ps_restore(ptr noundef %add.ptr) #5
  br label %skip_hw_wakeup

skip_hw_wakeup:                                   ; preds = %if.end45, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %btcoex_period46 = getelementptr i8, ptr %t, i32 116
  %69 = ptrtoint ptr %btcoex_period46 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %btcoex_period46, align 4
  %call2.i84 = tail call i32 @__msecs_to_jiffies(i32 noundef %70) #5
  %add48 = add i32 %call2.i84, %68
  %call49 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add48) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath_btcoex_no_stomp_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -12704
  %sc_ah = getelementptr i8, ptr %t, i32 -9860
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %btcoex1 = getelementptr i8, ptr %t, i32 -92
  tail call void @ath9k_ps_wakeup(ptr noundef %add.ptr) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %btcoex1) #5
  %bt_stomp_type = getelementptr i8, ptr %t, i32 60
  %2 = ptrtoint ptr %bt_stomp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bt_stomp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.if.end6.sink.split_crit_edge, label %lor.lhs.false

entry.if.end6.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.sink.split

lor.lhs.false:                                    ; preds = %entry
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %op_flags = getelementptr i8, ptr %t, i32 56
  %6 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %op_flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end6.sink.split_crit_edge

land.lhs.true.if.end6.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.sink.split

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %if.else.if.end6.sink.split_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.else.if.end6.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.else.if.end6.sink.split_crit_edge, %land.lhs.true.if.end6.sink.split_crit_edge, %entry.if.end6.sink.split_crit_edge
  %.sink = phi i32 [ 2, %land.lhs.true.if.end6.sink.split_crit_edge ], [ 2, %entry.if.end6.sink.split_crit_edge ], [ 1, %if.else.if.end6.sink.split_crit_edge ]
  tail call void @ath9k_hw_btcoex_bt_stomp(ptr noundef %1, i32 noundef %.sink) #5
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge
  tail call void @ath9k_hw_btcoex_enable(ptr noundef %1) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %btcoex1) #5
  tail call void @ath9k_ps_restore(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_mci_update_rssi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_bt_stomp(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ar9003_mci_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 88, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 305, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 330, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 445, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 44, i32 45}
!11 = !{ptr @ath_init_btcoex_timer.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 287, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ath_init_btcoex_timer.__key.7, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 288, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ath_init_btcoex_timer.__key.9, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 290, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 156, i32 4}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 161, i32 4}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 461, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 462, i32 2}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 463, i32 2}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 464, i32 2}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 465, i32 2}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 466, i32 2}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 467, i32 2}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 468, i32 2}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 469, i32 2}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 470, i32 2}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 471, i32 2}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 472, i32 2}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 473, i32 2}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 474, i32 2}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 475, i32 2}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 477, i32 42}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 479, i32 43}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 481, i32 42}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 482, i32 42}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath9k/gpio.c", i32 487, i32 42}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i8 0, i8 2}
