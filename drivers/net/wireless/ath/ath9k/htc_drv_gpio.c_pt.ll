; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/htc_drv_gpio.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.124, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.124 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.123, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wb193\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/ath/ath9k/htc_drv_gpio.c\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ath9k-led\00", [22 x i8] zeroinitializer }, align 32
@ath9k_htc_led_blink = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ath9k_htc-%s\00", [19 x i8] zeroinitializer }, align 32
@ath9k_init_leds.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&priv->led_work)\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Starting btcoex work\0A\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ath_htc_init_btcoex_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&priv->coex_period_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@ath_htc_init_btcoex_work.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&priv->coex_period_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@ath_htc_init_btcoex_work.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&priv->duty_cycle_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@ath_htc_init_btcoex_work.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&priv->duty_cycle_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to set BTCOEX parameters\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BT scan detected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BT priority traffic detected\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"time slice work for bt and wlan\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 320, i64 384]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 196, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 214, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 265, i32 7 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 291, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 299, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 139, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 126, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 127, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 78, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 44, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 49, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [49 x i8] c"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 106, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ath9k_init_leds.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ath_htc_init_btcoex_work.__key, ptr @.str.7, ptr @ath_htc_init_btcoex_work.__key.8, ptr @.str.9, ptr @ath_htc_init_btcoex_work.__key.10, ptr @.str.11, ptr @ath_htc_init_btcoex_work.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_leds.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_htc_init_btcoex_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_htc_init_btcoex_work.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_htc_init_btcoex_work.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_htc_init_btcoex_work.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_start_btcoex(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  %btcoex_hw.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72
  %2 = ptrtoint ptr %btcoex_hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %btcoex_hw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @ath9k_hw_btcoex_set_weight(ptr noundef %1, i32 noundef 65365, i32 noundef 43176, i32 noundef 0) #4
  tail call void @ath9k_hw_btcoex_enable(ptr noundef %1) #4
  %4 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah1, align 4
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.ath_htc_resume_btcoex_work.exit_crit_edge, label %if.then.i

if.then.ath_htc_resume_btcoex_work.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath_htc_resume_btcoex_work.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.5, ptr noundef %common.i.i, ptr noundef nonnull @.str.6) #4
  br label %ath_htc_resume_btcoex_work.exit

ath_htc_resume_btcoex_work.exit:                  ; preds = %if.then.i, %if.then.ath_htc_resume_btcoex_work.exit_crit_edge
  %btcoex1.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 58
  %8 = ptrtoint ptr %btcoex1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %btcoex1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %bt_priority_time.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 58, i32 1
  %10 = ptrtoint ptr %bt_priority_time.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bt_priority_time.i, align 4
  %op_flags.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 32
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %op_flags.i) #4
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %op_flags.i) #4
  %hw.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i, align 4
  %coex_period_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 59
  tail call void @ieee80211_queue_delayed_work(ptr noundef %12, ptr noundef %coex_period_work.i, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %ath_htc_resume_btcoex_work.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_set_weight(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_stop_btcoex(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  %enabled = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %btcoex_hw = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72
  %4 = ptrtoint ptr %btcoex_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %btcoex_hw, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %land.lhs.true.if.end_crit_edge [
    i32 0, label %land.lhs.true.if.end5_crit_edge
    i32 2, label %if.then4
  ]

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %coex_period_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 59
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %coex_period_work.i) #4
  %duty_cycle_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 60
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %duty_cycle_work.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true.if.end_crit_edge
  tail call void @ath9k_hw_btcoex_disable(ptr noundef %1) #4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_init_btcoex(ptr noundef %priv, ptr noundef readonly %product) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  %btcoex_enabled = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %btcoex_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %btcoex_enabled, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %btcoex_hw = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72
  %4 = ptrtoint ptr %btcoex_hw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %btcoex_hw, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %product, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @strncmp(ptr noundef nonnull %product, ptr noundef nonnull dereferenceable(6) @.str, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then4, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %btcoex_hw5 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72
  %5 = ptrtoint ptr %btcoex_hw5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %btcoex_hw5, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %6 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah1, align 4
  %btcoex_hw.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 72
  %8 = ptrtoint ptr %btcoex_hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %btcoex_hw.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %9, label %do.end [
    i32 0, label %if.end7.cleanup_crit_edge
    i32 2, label %sw.bb
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %btactive_gpio = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 72, i32 5
  %11 = ptrtoint ptr %btactive_gpio to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 7, ptr %btactive_gpio, align 2
  %12 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah1, align 4
  %btpriority_gpio = getelementptr inbounds %struct.ath_hw, ptr %13, i32 0, i32 72, i32 6
  %14 = ptrtoint ptr %btpriority_gpio to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %btpriority_gpio, align 1
  %15 = load ptr, ptr %ah1, align 4
  %wlanactive_gpio = getelementptr inbounds %struct.ath_hw, ptr %15, i32 0, i32 72, i32 4
  %16 = ptrtoint ptr %wlanactive_gpio to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %wlanactive_gpio, align 1
  %bt_stomp_type = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 58, i32 2
  %17 = ptrtoint ptr %bt_stomp_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %bt_stomp_type, align 4
  %18 = load ptr, ptr %ah1, align 4
  tail call void @ath9k_hw_btcoex_init_3wire(ptr noundef %18) #4
  %btcoex_period.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 58, i32 4
  %19 = ptrtoint ptr %btcoex_period.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 45, ptr %btcoex_period.i, align 4
  %btcoex_no_stomp.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 58, i32 3
  %20 = ptrtoint ptr %btcoex_no_stomp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 20, ptr %btcoex_no_stomp.i, align 4
  %btscan_no_stomp.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 58, i32 5
  %21 = ptrtoint ptr %btscan_no_stomp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %btscan_no_stomp.i, align 4
  %coex_period_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 59
  tail call void @__init_work(ptr noundef %coex_period_work.i, i32 noundef 0) #4
  %22 = ptrtoint ptr %coex_period_work.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %coex_period_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 59, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @ath_htc_init_btcoex_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry13.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 59, i32 0, i32 1
  %23 = ptrtoint ptr %entry13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry13.i, ptr %entry13.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 59, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry13.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 59, i32 0, i32 2
  %25 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ath_btcoex_period_work, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 59, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @ath_htc_init_btcoex_work.__key.8) #4
  %duty_cycle_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 60
  tail call void @__init_work(ptr noundef %duty_cycle_work.i, i32 noundef 0) #4
  %26 = ptrtoint ptr %duty_cycle_work.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %duty_cycle_work.i, align 4
  %lockdep_map32.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 60, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map32.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @ath_htc_init_btcoex_work.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry35.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 60, i32 0, i32 1
  %27 = ptrtoint ptr %entry35.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry35.i, ptr %entry35.i, align 4
  %prev.i64.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 60, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i64.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry35.i, ptr %prev.i64.i, align 4
  %func38.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 60, i32 0, i32 2
  %29 = ptrtoint ptr %func38.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ath_btcoex_duty_cycle_work, ptr %func38.i, align 4
  %timer43.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 60, i32 1
  tail call void @init_timer_key(ptr noundef %timer43.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @ath_htc_init_btcoex_work.__key.12) #4
  %arrayidx = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 57, i32 2
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ah1, align 4
  tail call void @ath9k_hw_init_btcoex_hw(ptr noundef %33, i32 noundef %31) #4
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 214, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb, %if.end7.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_init_3wire(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_init_btcoex_hw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_led_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr i8, ptr %work, i32 -2364
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %led_pin = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 80
  %2 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led_pin, align 4
  %brightness = getelementptr i8, ptr %work, i32 -440
  %4 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %conv = zext i1 %cmp to i32
  tail call void @ath9k_hw_set_gpio(ptr noundef %1, i32 noundef %3, i32 noundef %conv) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_gpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_deinit_leds(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %led_registered = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 52
  %0 = ptrtoint ptr %led_registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %led_registered, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %led_cdev = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 54
  %brightness1.i = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 51
  %2 = ptrtoint ptr %brightness1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %brightness1.i, align 4
  %hw.i = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 4
  %led_work.i = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 55
  tail call void @ieee80211_queue_work(ptr noundef %4, ptr noundef %led_work.i) #4
  tail call void @led_classdev_unregister(ptr noundef %led_cdev) #4
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %led_work.i) #4
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ah, align 4
  %led_pin = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 80
  %7 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %led_pin, align 4
  tail call void @ath9k_hw_gpio_free(ptr noundef %6, i32 noundef %8) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_led_brightness(ptr noundef %led_cdev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness1 = getelementptr i8, ptr %led_cdev, i32 -40
  %0 = ptrtoint ptr %brightness1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %brightness, ptr %brightness1, align 4
  %hw = getelementptr i8, ptr %led_cdev, i32 -1968
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %led_work = getelementptr i8, ptr %led_cdev, i32 400
  tail call void @ieee80211_queue_work(ptr noundef %2, ptr noundef %led_work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_gpio_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_configure_leds(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %led_pin = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 80
  %2 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led_pin, align 4
  tail call void @ath9k_hw_gpio_request_out(ptr noundef %1, i32 noundef %3, ptr noundef nonnull @.str.2, i32 noundef 0) #4
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %led_pin4 = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 80
  %6 = ptrtoint ptr %led_pin4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %led_pin4, align 4
  tail call void @ath9k_hw_set_gpio(ptr noundef %5, i32 noundef %7, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_gpio_request_out(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_init_leds(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %3, label %if.else9 [
    i32 384, label %if.then
    i32 320, label %if.then6
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %led_pin = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 80
  %5 = ptrtoint ptr %led_pin to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %led_pin, align 4
  br label %if.end24

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %led_pin8 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 80
  %6 = ptrtoint ptr %led_pin8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 15, ptr %led_pin8, align 4
  br label %if.end24

if.else9:                                         ; preds = %entry
  %usbdev = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usbdev, align 4
  %.off = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %led_pin19 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 80
  br i1 %switch, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %led_pin19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %led_pin19, align 4
  br label %if.end24

if.else20:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %led_pin19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %led_pin19, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then17, %if.then6, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath9k_htc_led_blink to i32))
  %11 = load i32, ptr @ath9k_htc_led_blink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then25, label %if.end24.if.end26_crit_edge

if.end24.if.end26_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then25:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %call.i = tail call ptr @__ieee80211_get_radio_led_name(ptr noundef %13) #4
  %default_trigger = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 54, i32 14
  %14 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %default_trigger, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end24.if.end26_crit_edge
  %15 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ah, align 4
  %led_pin.i = getelementptr inbounds %struct.ath_hw, ptr %16, i32 0, i32 80
  %17 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %led_pin.i, align 4
  tail call void @ath9k_hw_gpio_request_out(ptr noundef %16, i32 noundef %18, ptr noundef nonnull @.str.2, i32 noundef 0) #4
  %19 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ah, align 4
  %led_pin4.i = getelementptr inbounds %struct.ath_hw, ptr %20, i32 0, i32 80
  %21 = ptrtoint ptr %led_pin4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %led_pin4.i, align 4
  tail call void @ath9k_hw_set_gpio(ptr noundef %20, i32 noundef %22, i32 noundef 1) #4
  %led_name = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 53
  %hw27 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %23 = ptrtoint ptr %hw27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw27, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end26.wiphy_name.exit_crit_edge

if.end26.wiphy_name.exit_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end26.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end26.wiphy_name.exit_crit_edge ]
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %led_name, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i)
  %led_cdev32 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 54
  %31 = ptrtoint ptr %led_cdev32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %led_name, ptr %led_cdev32, align 4
  %brightness_set = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 54, i32 5
  %32 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ath9k_led_brightness, ptr %brightness_set, align 4
  %33 = ptrtoint ptr %hw27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw27, align 4
  %wiphy35 = getelementptr inbounds %struct.ieee80211_hw, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wiphy35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wiphy35, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %36, i32 0, i32 56, i32 1
  %37 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i, align 8
  %call.i71 = tail call i32 @led_classdev_register_ext(ptr noundef %38, ptr noundef %led_cdev32, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp39 = icmp slt i32 %call.i71, 0
  br i1 %cmp39, label %wiphy_name.exit.cleanup_crit_edge, label %do.body

wiphy_name.exit.cleanup_crit_edge:                ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %led_work = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 55
  tail call void @__init_work(ptr noundef %led_work, i32 noundef 0) #4
  %39 = ptrtoint ptr %led_work to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %led_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 55, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @ath9k_init_leds.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry45 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 55, i32 1
  %40 = ptrtoint ptr %entry45 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry45, ptr %entry45, align 4
  %prev.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 55, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry45, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 55, i32 2
  %42 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @ath9k_led_work, ptr %func, align 4
  %led_registered = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 52
  %43 = ptrtoint ptr %led_registered to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %led_registered, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %wiphy_name.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_rfkill_poll_state(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  tail call void @ath9k_htc_ps_wakeup(ptr noundef %1) #4
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah.i, align 4
  %rfkill_gpio.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %rfkill_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rfkill_gpio.i, align 4
  %call.i = tail call i32 @ath9k_hw_gpio_get(ptr noundef %3, i32 noundef %5) #4
  %6 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah.i, align 4
  %rfkill_polarity.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %rfkill_polarity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rfkill_polarity.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %9)
  %cmp.i = icmp eq i32 %call.i, %9
  tail call void @ath9k_htc_ps_restore(ptr noundef %1) #4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %11, i1 noundef zeroext %cmp.i, i32 noundef 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_start_rfkill_poll(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  tail call void @wiphy_rfkill_start_polling(ptr noundef %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath_btcoex_period_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2460
  %ah = getelementptr i8, ptr %work, i32 -2452
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %btcoex1.i = getelementptr i8, ptr %work, i32 -24
  %btpriority_gpio.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 6
  %2 = ptrtoint ptr %btpriority_gpio.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %btpriority_gpio.i, align 1
  %conv.i = zext i8 %3 to i32
  %call.i = tail call i32 @ath9k_hw_gpio_get(ptr noundef %1, i32 noundef %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i53_crit_edge, label %if.then.i51

entry.if.end.i53_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i53

if.then.i51:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %btcoex1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %btcoex1.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %btcoex1.i, align 4
  br label %if.end.i53

if.end.i53:                                       ; preds = %if.then.i51, %entry.if.end.i53_crit_edge
  %bt_priority_time.i = getelementptr i8, ptr %work, i32 -20
  %6 = ptrtoint ptr %bt_priority_time.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bt_priority_time.i, align 4
  %add.i = add i32 %7, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i52 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i52, label %if.then5.i, label %if.end.i53.ath_detect_bt_priority.exit_crit_edge

if.end.i53.ath_detect_bt_priority.exit_crit_edge: ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath_detect_bt_priority.exit

if.then5.i:                                       ; preds = %if.end.i53
  %op_flags.i = getelementptr i8, ptr %work, i32 -2376
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %op_flags.i) #4
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %op_flags.i) #4
  %9 = ptrtoint ptr %btcoex1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %btcoex1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %10)
  %cmp8.i = icmp ugt i32 %10, 14
  br i1 %cmp8.i, label %do.body.i, label %if.else.i54

do.body.i:                                        ; preds = %if.then5.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then13.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.5, ptr noundef %common.i, ptr noundef nonnull @.str.16) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then13.i, %do.body.i.do.end.i_crit_edge
  tail call void @_set_bit(i32 noundef 3, ptr noundef %op_flags.i) #4
  br label %if.end34.sink.split.i

if.else.i54:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp19.i = icmp ugt i32 %10, 2
  br i1 %cmp19.i, label %do.body22.i, label %if.else.i54.if.end34.i_crit_edge

if.else.i54.if.end34.i_crit_edge:                 ; preds = %if.else.i54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

do.body22.i:                                      ; preds = %if.else.i54
  %debug_mask24.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %debug_mask24.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_mask24.i, align 4
  %and25.i = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %do.body22.i.if.end34.sink.split.i_crit_edge, label %if.then27.i

do.body22.i.if.end34.sink.split.i_crit_edge:      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.sink.split.i

if.then27.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.5, ptr noundef %common.i, ptr noundef nonnull @.str.17) #4
  br label %if.end34.sink.split.i

if.end34.sink.split.i:                            ; preds = %if.then27.i, %do.body22.i.if.end34.sink.split.i_crit_edge, %do.end.i
  %.sink.i = phi i32 [ 4, %do.end.i ], [ 3, %if.then27.i ], [ 3, %do.body22.i.if.end34.sink.split.i_crit_edge ]
  tail call void @_set_bit(i32 noundef %.sink.i, ptr noundef %op_flags.i) #4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end34.sink.split.i, %if.else.i54.if.end34.i_crit_edge
  %15 = ptrtoint ptr %btcoex1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %btcoex1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %17 = ptrtoint ptr %bt_priority_time.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %bt_priority_time.i, align 4
  br label %ath_detect_bt_priority.exit

ath_detect_bt_priority.exit:                      ; preds = %if.end34.i, %if.end.i53.ath_detect_bt_priority.exit_crit_edge
  %op_flags = getelementptr i8, ptr %work, i32 -2376
  %18 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %op_flags, align 4
  %20 = trunc i32 %19 to i8
  %21 = lshr i8 %20, 3
  %conv = and i8 %21, 1
  %call3 = tail call i32 @ath9k_htc_update_cap_target(ptr noundef %add.ptr, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %ath_detect_bt_priority.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.14, ptr noundef %common.i, ptr noundef nonnull @.str.15) #4
  br label %cleanup

if.end:                                           ; preds = %ath_detect_bt_priority.exit
  %22 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ah, align 4
  %24 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %op_flags, align 4
  %26 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool7.not = icmp eq i32 %26, 0
  br i1 %tobool7.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %bt_stomp_type = getelementptr i8, ptr %work, i32 -16
  %27 = ptrtoint ptr %bt_stomp_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bt_stomp_type, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  tail call void @ath9k_hw_btcoex_bt_stomp(ptr noundef %23, i32 noundef %cond) #4
  %29 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ah, align 4
  tail call void @ath9k_hw_btcoex_enable(ptr noundef %30) #4
  %31 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %op_flags, align 4
  %hw = getelementptr i8, ptr %work, i32 -2456
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %duty_cycle_work = getelementptr i8, ptr %work, i32 100
  %35 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool11.not = icmp eq i32 %35, 0
  %cond15.in.v = select i1 %tobool11.not, i32 -12, i32 -4
  %cond15.in = getelementptr i8, ptr %work, i32 %cond15.in.v
  %36 = ptrtoint ptr %cond15.in to i32
  call void @__asan_load4_noabort(i32 %36)
  %cond15 = load i32, ptr %cond15.in, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond15) #4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %34, ptr noundef %duty_cycle_work, i32 noundef %call2.i) #4
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %btcoex_period = getelementptr i8, ptr %work, i32 -8
  %39 = ptrtoint ptr %btcoex_period to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %btcoex_period, align 4
  %call2.i47 = tail call i32 @__msecs_to_jiffies(i32 noundef %40) #4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %38, ptr noundef %work, i32 noundef %call2.i47) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath_btcoex_duty_cycle_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah1 = getelementptr i8, ptr %work, i32 -2552
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.5, ptr noundef %common.i, ptr noundef nonnull @.str.18) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %bt_stomp_type = getelementptr i8, ptr %work, i32 -116
  %4 = ptrtoint ptr %bt_stomp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bt_stomp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %do.end.if.end10.sink.split_crit_edge, label %lor.lhs.false

do.end.if.end10.sink.split_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.sink.split

lor.lhs.false:                                    ; preds = %do.end
  %op_flags = getelementptr i8, ptr %work, i32 -2476
  %6 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %op_flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.else, label %lor.lhs.false.if.end10.sink.split_crit_edge

lor.lhs.false.if.end10.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.sink.split

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp eq i32 %5, 0
  br i1 %cmp7, label %if.else.if.end10.sink.split_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.else.if.end10.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.else.if.end10.sink.split_crit_edge, %lor.lhs.false.if.end10.sink.split_crit_edge, %do.end.if.end10.sink.split_crit_edge
  %.sink = phi i32 [ 2, %lor.lhs.false.if.end10.sink.split_crit_edge ], [ 2, %do.end.if.end10.sink.split_crit_edge ], [ 1, %if.else.if.end10.sink.split_crit_edge ]
  tail call void @ath9k_hw_btcoex_bt_stomp(ptr noundef %1, i32 noundef %.sink) #4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else.if.end10_crit_edge
  %9 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah1, align 4
  tail call void @ath9k_hw_btcoex_enable(ptr noundef %10) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_update_cap_target(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_bt_stomp(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_gpio_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_radio_led_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_ps_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_ps_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 196, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 214, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 265, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 291, i32 3}
!8 = !{ptr @ath9k_init_leds.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 299, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 139, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ath_htc_init_btcoex_work.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 126, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ath_htc_init_btcoex_work.__key.8, !15, !"__key", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ath_htc_init_btcoex_work.__key.10, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 127, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ath_htc_init_btcoex_work.__key.12, !20, !"__key", i1 false, i1 false}
!23 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 78, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 44, i32 4}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 49, i32 4}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_gpio.c", i32 106, i32 2}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i8 0, i8 2}
