; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/init.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.ieee80211_tpt_blink = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ath_ps_ops = type { ptr, ptr }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ath_softc = type { ptr, ptr, ptr, [38 x %struct.survey_info], %struct.spinlock, %struct.tasklet_struct, %struct.tasklet_struct, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.ath_chanctx_sched, %struct.ath_offchannel, ptr, %struct.completion, %struct.timespec64, i32, i8, i32, i16, i8, i8, i16, i32, %struct.ath_rx, %struct.ath_tx, %struct.ath_beacon, %struct.cfg80211_chan_def, [2 x %struct.ath_chanctx], ptr, %struct.spinlock, i8, [32 x i8], %struct.led_classdev, %struct.ath9k_debug, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.ath_btcoex, %struct.ath_mci_coex, %struct.work_struct, %struct.ath_descdma, %struct.ath_ant_comb, i8, i8, ptr, i64, i32, %struct.ath_spec_scan_priv, ptr, ptr, i8, i16, i32, i8, i32, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%struct.atomic_t = type { i32 }
%union.anon.129 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.ath_tx = type { i32, %struct.spinlock, %struct.list_head, [10 x %struct.ath_txq], %struct.ath_descdma, [4 x ptr], ptr, [4 x [4 x [32 x i16]]] }
%struct.ath_txq = type { i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, i32, i8, [8 x %struct.list_head], i8, i8, i32, %struct.sk_buff_head }
%struct.ath_beacon = type { i32, i32, i32, [8 x ptr], i32, i32, %struct.ath_descdma, ptr, %struct.list_head, i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.ath_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, [4 x %struct.ieee80211_tx_rate], %struct.ath_buf_state }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ath_buf_state = type { i8, i8, i8, i8, i16, i32 }
%struct.ath_rxbuf = type { %struct.list_head, ptr, ptr, i32, i32 }
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
%struct.ath9k_platform_data = type { ptr, [2048 x i16], ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, i8 }
%struct.ath_bus_ops = type { i32, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.dfs_pattern_detector = type { ptr, ptr, ptr, ptr, i32, i8, i64, ptr, ptr, %struct.list_head }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ath9k_eeprom_ctx = type { %struct.completion, ptr }

@__UNIQUE_ID_author358 = internal constant [36 x i8] c"ath9k.author=Atheros Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_description359 = internal constant [66 x i8] c"ath9k.description=Support for Atheros 802.11n wireless LAN cards.\00", section ".modinfo", align 1
@__UNIQUE_ID_file360 = internal constant [48 x i8] c"ath9k.file=drivers/net/wireless/ath/ath9k/ath9k\00", section ".modinfo", align 1
@__UNIQUE_ID_license361 = internal constant [27 x i8] c"ath9k.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [12 x i8] c"ath9k.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@ath9k_debug = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype362 = internal constant [26 x i8] c"ath9k.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug363 = internal constant [32 x i8] c"ath9k.parm=debug:Debugging mask\00", section ".modinfo", align 1
@__param_str_nohwcrypt = internal constant [16 x i8] c"ath9k.nohwcrypt\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ath9k_modparam_nohwcrypt = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nohwcrypt = internal constant %struct.kernel_param { ptr @__param_str_nohwcrypt, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_modparam_nohwcrypt } }, section "__param", align 4
@__UNIQUE_ID_nohwcrypttype364 = internal constant [29 x i8] c"ath9k.parmtype=nohwcrypt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nohwcrypt365 = internal constant [49 x i8] c"ath9k.parm=nohwcrypt:Disable hardware encryption\00", section ".modinfo", align 1
@__param_str_blink = internal constant [12 x i8] c"ath9k.blink\00", align 1
@ath9k_led_blink = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_blink = internal constant %struct.kernel_param { ptr @__param_str_blink, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_led_blink } }, section "__param", align 4
@__UNIQUE_ID_blinktype366 = internal constant [25 x i8] c"ath9k.parmtype=blink:int\00", section ".modinfo", align 1
@__UNIQUE_ID_blink367 = internal constant [46 x i8] c"ath9k.parm=blink:Enable LED blink on activity\00", section ".modinfo", align 1
@__param_str_led_active_high = internal constant [22 x i8] c"ath9k.led_active_high\00", align 1
@ath9k_led_active_high = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_led_active_high = internal constant %struct.kernel_param { ptr @__param_str_led_active_high, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_led_active_high } }, section "__param", align 4
@__UNIQUE_ID_led_active_hightype368 = internal constant [35 x i8] c"ath9k.parmtype=led_active_high:int\00", section ".modinfo", align 1
@__UNIQUE_ID_led_active_high369 = internal constant [47 x i8] c"ath9k.parm=led_active_high:Invert LED polarity\00", section ".modinfo", align 1
@__param_str_btcoex_enable = internal constant [20 x i8] c"ath9k.btcoex_enable\00", align 1
@ath9k_btcoex_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_btcoex_enable = internal constant %struct.kernel_param { ptr @__param_str_btcoex_enable, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_btcoex_enable } }, section "__param", align 4
@__UNIQUE_ID_btcoex_enabletype370 = internal constant [33 x i8] c"ath9k.parmtype=btcoex_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_btcoex_enable371 = internal constant [52 x i8] c"ath9k.parm=btcoex_enable:Enable wifi-BT coexistence\00", section ".modinfo", align 1
@__param_str_bt_ant_diversity = internal constant [23 x i8] c"ath9k.bt_ant_diversity\00", align 1
@ath9k_bt_ant_diversity = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bt_ant_diversity = internal constant %struct.kernel_param { ptr @__param_str_bt_ant_diversity, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_bt_ant_diversity } }, section "__param", align 4
@__UNIQUE_ID_bt_ant_diversitytype372 = internal constant [36 x i8] c"ath9k.parmtype=bt_ant_diversity:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bt_ant_diversity373 = internal constant [64 x i8] c"ath9k.parm=bt_ant_diversity:Enable WLAN/BT RX antenna diversity\00", section ".modinfo", align 1
@__param_str_ps_enable = internal constant [16 x i8] c"ath9k.ps_enable\00", align 1
@ath9k_ps_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ps_enable = internal constant %struct.kernel_param { ptr @__param_str_ps_enable, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_ps_enable } }, section "__param", align 4
@__UNIQUE_ID_ps_enabletype374 = internal constant [29 x i8] c"ath9k.parmtype=ps_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ps_enable375 = internal constant [43 x i8] c"ath9k.parm=ps_enable:Enable WLAN PowerSave\00", section ".modinfo", align 1
@__param_str_use_chanctx = internal constant [18 x i8] c"ath9k.use_chanctx\00", align 1
@ath9k_use_chanctx = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_use_chanctx = internal constant %struct.kernel_param { ptr @__param_str_use_chanctx, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_use_chanctx } }, section "__param", align 4
@__UNIQUE_ID_use_chanctxtype376 = internal constant [31 x i8] c"ath9k.parmtype=use_chanctx:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_chanctx377 = internal constant [62 x i8] c"ath9k.parm=use_chanctx:Enable channel context for concurrency\00", section ".modinfo", align 1
@__param_str_use_msi = internal constant [14 x i8] c"ath9k.use_msi\00", align 1
@ath9k_use_msi = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_use_msi = internal constant %struct.kernel_param { ptr @__param_str_use_msi, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_use_msi } }, section "__param", align 4
@__UNIQUE_ID_use_msitype378 = internal constant [27 x i8] c"ath9k.parmtype=use_msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_msi379 = internal constant [55 x i8] c"ath9k.parm=use_msi:Use MSI instead of INTx if possible\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s DMA: %u buffers %u desc/buf\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ath_desc not DWORD aligned\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s DMA map: %p (%u) -> %llx (%u)\0A\00", [62 x i8] zeroinitializer }, align 32
@ath9k_tpt_blink = internal constant { [10 x %struct.ieee80211_tpt_blink], [48 x i8] } { [10 x %struct.ieee80211_tpt_blink] [%struct.ieee80211_tpt_blink { i32 0, i32 334 }, %struct.ieee80211_tpt_blink { i32 1024, i32 260 }, %struct.ieee80211_tpt_blink { i32 5120, i32 220 }, %struct.ieee80211_tpt_blink { i32 10240, i32 190 }, %struct.ieee80211_tpt_blink { i32 20480, i32 170 }, %struct.ieee80211_tpt_blink { i32 51200, i32 150 }, %struct.ieee80211_tpt_blink { i32 71680, i32 130 }, %struct.ieee80211_tpt_blink { i32 102400, i32 110 }, %struct.ieee80211_tpt_blink { i32 204800, i32 80 }, %struct.ieee80211_tpt_blink { i32 307200, i32 50 }], [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to create debugfs files\0A\00", [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ath9k__380_1204_ath9k_init6 = internal global ptr @ath9k_init, section ".initcall6.init", align 4
@is_ath9k_unloaded = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@ath9k_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016ath9k: %s: Driver unloaded\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ath9k_exit\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath9k/init.c\00", [58 x i8] zeroinitializer }, align 32
@ath9k_exit._entry_ptr = internal global ptr @ath9k_exit._entry, section ".printk_index", align 4
@__exitcall_ath9k_exit = internal global ptr @ath9k_exit, section ".exitcall.exit", align 4
@ath9k_init_softc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sc->tx_wait\00", [19 x i8] zeroinitializer }, align 32
@ath9k_ps_ops = internal constant { %struct.ath_ps_ops, [24 x i8] } { %struct.ath_ps_ops { ptr @ath9k_op_ps_wakeup, ptr @ath9k_op_ps_restore }, [24 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&common->cc_lock\00", [47 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sc->intr_lock\00", [17 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sc->sc_serial_rw\00", [46 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sc->sc_pm_lock\00", [16 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sc->chan_lock\00", [17 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&sc->mutex\00", [21 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&sc->sleep_timer)\00", [45 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&sc->hw_reset_work)\00", [58 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&sc->paprd_work)\00", [61 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&sc->hw_pll_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&sc->hw_pll_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&sc->hw_check_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@ath9k_init_softc.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&sc->hw_check_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Set parameters for %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CUS198\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CUS230\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CUS217 card detected\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CUS252 card detected\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WB335 1-ANT card detected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WB335 2-ANT card detected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Killer Wireless card detected\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Set BT/WLAN RX diversity capability\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Enable WAR for ASPM D3/L1\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Disable PLL PowerSave\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EEPROM request failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to load EEPROM file %s\0A\00", [33 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"parsing configuration from OF node\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qca,no-eeprom\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ath9k-eeprom-%s-%s.bin\00", [41 x i8] zeroinitializer }, align 32
@ath_bus_type_strings = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"calibration\00", [20 x i8] zeroinitializer }, align 32
@ath9k_init_misc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&common->ani.timer)\00", [43 x i8] zeroinitializer }, align 32
@if_comb_multi = internal constant { [1 x %struct.ieee80211_iface_combination], [44 x i8] } { [1 x %struct.ieee80211_iface_combination] [%struct.ieee80211_iface_combination { ptr @if_limits_multi, i32 2, i16 3, i8 3, i8 1, i8 0, i8 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Use channel contexts\0A\00", [42 x i8] zeroinitializer }, align 32
@if_limits_multi = internal constant { [3 x %struct.ieee80211_iface_limit], [20 x i8] } { [3 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 2, i16 780 }, %struct.ieee80211_iface_limit { i16 1, i16 2 }, %struct.ieee80211_iface_limit { i16 1, i16 1024 }], [20 x i8] zeroinitializer }, align 32
@ath9k_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.8, i32 1184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ath9k: No PCI devices found, driver not installed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ath9k_init\00", [21 x i8] zeroinitializer }, align 32
@ath9k_init._entry_ptr = internal global ptr @ath9k_init._entry, section ".printk_index", align 4
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ath9k\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967294]
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"ath9k_debug\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 43, i32 21 }
@___asan_gen_.68 = private unnamed_addr constant [25 x i8] c"ath9k_modparam_nohwcrypt\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 47, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"ath9k_led_blink\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 51, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"ath9k_led_active_high\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 55, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"ath9k_btcoex_enable\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 59, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [23 x i8] c"ath9k_bt_ant_diversity\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 63, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"ath9k_ps_enable\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 67, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"ath9k_use_chanctx\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 73, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"ath9k_use_msi\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 79, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 291, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 303, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 335, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"ath9k_tpt_blink\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 86, i32 41 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1106, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"is_ath9k_unloaded\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 83, i32 6 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1211, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 731, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"ath9k_ps_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 162, i32 32 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 777, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 778, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 779, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 780, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 781, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 782, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 786, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 787, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 788, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 789, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 790, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 470, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 476, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 479, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 482, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 485, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 488, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 503, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 508, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 520, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 551, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 559, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 87, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 678, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 680, i32 32 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 683, i32 6 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 580, i32 38 }
@___asan_gen_.275 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 428, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [14 x i8] c"if_comb_multi\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 898, i32 49 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 946, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [16 x i8] c"if_limits_multi\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 889, i32 43 }
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1184, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath9k/init.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 37, i32 25 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author358, ptr @__UNIQUE_ID_blink367, ptr @__UNIQUE_ID_blinktype366, ptr @__UNIQUE_ID_bt_ant_diversity373, ptr @__UNIQUE_ID_bt_ant_diversitytype372, ptr @__UNIQUE_ID_btcoex_enable371, ptr @__UNIQUE_ID_btcoex_enabletype370, ptr @__UNIQUE_ID_debug363, ptr @__UNIQUE_ID_debugtype362, ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_led_active_high369, ptr @__UNIQUE_ID_led_active_hightype368, ptr @__UNIQUE_ID_license361, ptr @__UNIQUE_ID_nohwcrypt365, ptr @__UNIQUE_ID_nohwcrypttype364, ptr @__UNIQUE_ID_ps_enable375, ptr @__UNIQUE_ID_ps_enabletype374, ptr @__UNIQUE_ID_use_chanctx377, ptr @__UNIQUE_ID_use_chanctxtype376, ptr @__UNIQUE_ID_use_msi379, ptr @__UNIQUE_ID_use_msitype378, ptr @__exitcall_ath9k_exit, ptr @__initcall__kmod_ath9k__380_1204_ath9k_init6, ptr @__param_blink, ptr @__param_bt_ant_diversity, ptr @__param_btcoex_enable, ptr @__param_debug, ptr @__param_led_active_high, ptr @__param_nohwcrypt, ptr @__param_ps_enable, ptr @__param_use_chanctx, ptr @__param_use_msi, ptr @ath9k_exit, ptr @ath9k_exit._entry, ptr @ath9k_exit._entry_ptr, ptr @ath9k_init._entry, ptr @ath9k_init._entry_ptr, ptr @ath9k_debug, ptr @ath9k_modparam_nohwcrypt, ptr @ath9k_led_blink, ptr @ath9k_led_active_high, ptr @ath9k_btcoex_enable, ptr @ath9k_bt_ant_diversity, ptr @ath9k_ps_enable, ptr @ath9k_use_chanctx, ptr @ath9k_use_msi, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ath9k_tpt_blink, ptr @.str.5, ptr @is_ath9k_unloaded, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ath9k_init_softc.__key, ptr @.str.9, ptr @ath9k_ps_ops, ptr @ath9k_init_softc.__key.10, ptr @.str.11, ptr @ath9k_init_softc.__key.12, ptr @.str.13, ptr @ath9k_init_softc.__key.14, ptr @.str.15, ptr @ath9k_init_softc.__key.16, ptr @.str.17, ptr @ath9k_init_softc.__key.18, ptr @.str.19, ptr @ath9k_init_softc.__key.20, ptr @.str.21, ptr @ath9k_init_softc.__key.22, ptr @.str.23, ptr @ath9k_init_softc.__key.24, ptr @.str.25, ptr @ath9k_init_softc.__key.26, ptr @.str.27, ptr @ath9k_init_softc.__key.28, ptr @.str.29, ptr @ath9k_init_softc.__key.30, ptr @.str.31, ptr @ath9k_init_softc.__key.32, ptr @.str.33, ptr @ath9k_init_softc.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @init_completion.__key, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @ath9k_init_misc.__key, ptr @.str.55, ptr @if_comb_multi, ptr @.str.56, ptr @if_limits_multi, ptr @.str.57, ptr @.str.58, ptr @.str.64], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_modparam_nohwcrypt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_led_blink to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_led_active_high to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_btcoex_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_bt_ant_diversity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_ps_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_use_chanctx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_use_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_tpt_blink to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_ath9k_unloaded to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_ps_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_softc.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_misc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_comb_multi to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_limits_multi to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_descdma_setup(ptr nocapture noundef readonly %sc, ptr noundef %dd, ptr noundef %head, ptr noundef %name, i32 noundef %nbuf, i32 noundef %ndesc, i1 noundef zeroext %is_tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %nbuf, i32 noundef %ndesc) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head, ptr %prev.i, align 4
  br i1 %is_tx, label %if.end4, label %do.end.if.end23_crit_edge

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end4:                                          ; preds = %do.end
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  %tx_desc_len = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 6, i32 13
  %8 = ptrtoint ptr %tx_desc_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_desc_len, align 1
  %conv = zext i8 %9 to i32
  %rem = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end4.if.end23_crit_edge, label %if.then6

if.end4.if.end23_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.3) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/init.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #6, !srcloc !220
  unreachable

if.end23:                                         ; preds = %if.end4.if.end23_crit_edge, %do.end.if.end23_crit_edge
  %desc_len.0308 = phi i32 [ %conv, %if.end4.if.end23_crit_edge ], [ 100, %do.end.if.end23_crit_edge ]
  %mul = mul i32 %desc_len.0308, %ndesc
  %mul24 = mul i32 %mul, %nbuf
  %dd_desc_len = getelementptr inbounds %struct.ath_descdma, ptr %dd, i32 0, i32 2
  %10 = ptrtoint ptr %dd_desc_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul24, ptr %dd_desc_len, align 4
  %11 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sc_ah, align 4
  %caps26 = getelementptr inbounds %struct.ath_hw, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %caps26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %caps26, align 4
  %and27 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp ne i32 %and27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul24)
  %tobool31.not311 = icmp ult i32 %mul24, 4096
  %or.cond = select i1 %tobool28.not, i1 true, i1 %tobool31.not311
  br i1 %or.cond, label %if.end23.if.end35_crit_edge, label %while.body.lr.ph

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

while.body.lr.ph:                                 ; preds = %if.end23
  %15 = ptrtoint ptr %dd_desc_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %dd_desc_len.promoted = load i32, ptr %dd_desc_len, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %16 = phi i32 [ %dd_desc_len.promoted, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %ndesc_skipped.0.in312 = phi i32 [ %mul24, %while.body.lr.ph ], [ %mul32, %while.body.while.body_crit_edge ]
  %ndesc_skipped.0 = lshr i32 %ndesc_skipped.0.in312, 12
  %mul32 = mul nuw nsw i32 %ndesc_skipped.0, %desc_len.0308
  %add = add i32 %16, %mul32
  %tobool31.not = icmp ult i32 %mul32, 4096
  br i1 %tobool31.not, label %while.cond.if.end35.loopexit_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.if.end35.loopexit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dd_desc_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %dd_desc_len, align 4
  br label %if.end35

if.end35:                                         ; preds = %while.cond.if.end35.loopexit_crit_edge, %if.end23.if.end35_crit_edge
  %dev = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %dd_desc_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dd_desc_len, align 4
  %dd_desc_paddr = getelementptr inbounds %struct.ath_descdma, ptr %dd, i32 0, i32 1
  %call.i = tail call ptr @dmam_alloc_attrs(ptr noundef %19, i32 noundef %21, ptr noundef %dd_desc_paddr, i32 noundef 3264, i32 noundef 0) #6
  %22 = ptrtoint ptr %dd to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %dd, align 4
  %tobool39.not = icmp eq ptr %call.i, null
  br i1 %tobool39.not, label %if.end35.cleanup198_crit_edge, label %if.end41

if.end35.cleanup198_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198

if.end41:                                         ; preds = %if.end35
  %23 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_mask, align 4
  %and45 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end41.do.end55_crit_edge, label %if.then47

if.end41.do.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %dd_desc_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dd_desc_len, align 4
  %27 = ptrtoint ptr %dd_desc_paddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dd_desc_paddr, align 4
  %conv50 = zext i32 %28 to i64
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef nonnull %call.i, i32 noundef %26, i64 noundef %conv50, i32 noundef %26) #6
  br label %do.end55

do.end55:                                         ; preds = %if.then47, %if.end41.do.end55_crit_edge
  br i1 %is_tx, label %if.then57, label %if.else118

if.then57:                                        ; preds = %do.end55
  %mul58 = mul i32 %nbuf, 56
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %call.i297 = tail call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef %mul58, i32 noundef 3520) #6
  %tobool61.not = icmp eq ptr %call.i297, null
  br i1 %tobool61.not, label %if.then57.cleanup198_crit_edge, label %for.cond.preheader

if.then57.cleanup198_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198

for.cond.preheader:                               ; preds = %if.then57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbuf)
  %cmp64329 = icmp sgt i32 %nbuf, 0
  br i1 %cmp64329, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup198_crit_edge

for.cond.preheader.cleanup198_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %bf.0332 = phi ptr [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ], [ %call.i297, %for.cond.preheader.for.body_crit_edge ]
  %i.0331 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ds.0330 = phi ptr [ %add.ptr117, %list_add_tail.exit.for.body_crit_edge ], [ %call.i, %for.cond.preheader.for.body_crit_edge ]
  %bf_desc = getelementptr inbounds %struct.ath_buf, ptr %bf.0332, i32 0, i32 4
  %31 = ptrtoint ptr %bf_desc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ds.0330, ptr %bf_desc, align 4
  %32 = ptrtoint ptr %dd_desc_paddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dd_desc_paddr, align 4
  %34 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dd, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ds.0330 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %35 to i32
  %sub.ptr.sub = add i32 %33, %sub.ptr.lhs.cast
  %add68 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %bf_daddr = getelementptr inbounds %struct.ath_buf, ptr %bf.0332, i32 0, i32 5
  %36 = ptrtoint ptr %bf_daddr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add68, ptr %bf_daddr, align 4
  %37 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sc_ah, align 4
  %caps70 = getelementptr inbounds %struct.ath_hw, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %caps70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caps70, align 4
  %and72 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %while.cond75.preheader, label %for.body.if.end115_crit_edge

for.body.if.end115_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

while.cond75.preheader:                           ; preds = %for.body
  %41 = ptrtoint ptr %bf_daddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf_daddr.promoted = load i32, ptr %bf_daddr, align 4
  %and77324 = and i32 %bf_daddr.promoted, 3968
  call void @__sanitizer_cov_trace_const_cmp4(i32 3968, i32 %and77324)
  %cmp78325 = icmp eq i32 %and77324, 3968
  br i1 %cmp78325, label %do.body82.lr.ph, label %while.cond75.preheader.if.end115_crit_edge

while.cond75.preheader.if.end115_crit_edge:       ; preds = %while.cond75.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

do.body82.lr.ph:                                  ; preds = %while.cond75.preheader
  %42 = ptrtoint ptr %dd_desc_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dd_desc_len, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 %43
  %sub.ptr.sub111 = sub i32 %33, %sub.ptr.rhs.cast
  %44 = ptrtoint ptr %bf_desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf_desc.promoted = load ptr, ptr %bf_desc, align 4
  br label %do.body82

do.body82:                                        ; preds = %do.end103.do.body82_crit_edge, %do.body82.lr.ph
  %add.ptr105328 = phi ptr [ %bf_desc.promoted, %do.body82.lr.ph ], [ %add.ptr105, %do.end103.do.body82_crit_edge ]
  %ds.1326 = phi ptr [ %ds.0330, %do.body82.lr.ph ], [ %add.ptr105, %do.end103.do.body82_crit_edge ]
  %cmp86.not = icmp ult ptr %add.ptr105328, %add.ptr
  br i1 %cmp86.not, label %do.end103, label %do.body95, !prof !221

do.body95:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/init.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 362, 0\0A.popsection", ""() #6, !srcloc !222
  unreachable

do.end103:                                        ; preds = %do.body82
  %add.ptr105 = getelementptr i8, ptr %ds.1326, i32 %mul
  %45 = ptrtoint ptr %bf_desc to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr105, ptr %bf_desc, align 4
  %sub.ptr.lhs.cast109 = ptrtoint ptr %add.ptr105 to i32
  %add112 = add i32 %sub.ptr.sub111, %sub.ptr.lhs.cast109
  %46 = ptrtoint ptr %bf_daddr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add112, ptr %bf_daddr, align 4
  %and77 = and i32 %add112, 3968
  %cmp78 = icmp eq i32 %and77, 3968
  br i1 %cmp78, label %do.end103.do.body82_crit_edge, label %do.end103.if.end115_crit_edge

do.end103.if.end115_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

do.end103.do.body82_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body82

if.end115:                                        ; preds = %do.end103.if.end115_crit_edge, %while.cond75.preheader.if.end115_crit_edge, %for.body.if.end115_crit_edge
  %ds.2 = phi ptr [ %ds.0330, %for.body.if.end115_crit_edge ], [ %ds.0330, %while.cond75.preheader.if.end115_crit_edge ], [ %add.ptr105, %do.end103.if.end115_crit_edge ]
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bf.0332, ptr noundef %48, ptr noundef %head) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end115.list_add_tail.exit_crit_edge

if.end115.list_add_tail.exit_crit_edge:           ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %bf.0332, ptr %prev.i, align 4
  %50 = ptrtoint ptr %bf.0332 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %head, ptr %bf.0332, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %bf.0332, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %bf.0332, ptr %48, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end115.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0331, 1
  %incdec.ptr = getelementptr %struct.ath_buf, ptr %bf.0332, i32 1
  %add.ptr117 = getelementptr i8, ptr %ds.2, i32 %mul
  %exitcond335.not = icmp eq i32 %inc, %nbuf
  br i1 %exitcond335.not, label %list_add_tail.exit.cleanup198_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_add_tail.exit.cleanup198_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198

if.else118:                                       ; preds = %do.end55
  %mul120 = mul i32 %nbuf, 24
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %call.i299 = tail call noalias ptr @devm_kmalloc(ptr noundef %54, i32 noundef %mul120, i32 noundef 3520) #6
  %tobool123.not = icmp eq ptr %call.i299, null
  br i1 %tobool123.not, label %if.else118.cleanup198_crit_edge, label %for.cond126.preheader

if.else118.cleanup198_crit_edge:                  ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198

for.cond126.preheader:                            ; preds = %if.else118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbuf)
  %cmp127318 = icmp sgt i32 %nbuf, 0
  br i1 %cmp127318, label %for.cond126.preheader.for.body129_crit_edge, label %for.cond126.preheader.cleanup198_crit_edge

for.cond126.preheader.cleanup198_crit_edge:       ; preds = %for.cond126.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198

for.cond126.preheader.for.body129_crit_edge:      ; preds = %for.cond126.preheader
  br label %for.body129

for.body129:                                      ; preds = %list_add_tail.exit304.for.body129_crit_edge, %for.cond126.preheader.for.body129_crit_edge
  %bf119.0321 = phi ptr [ %incdec.ptr190, %list_add_tail.exit304.for.body129_crit_edge ], [ %call.i299, %for.cond126.preheader.for.body129_crit_edge ]
  %i.1320 = phi i32 [ %inc189, %list_add_tail.exit304.for.body129_crit_edge ], [ 0, %for.cond126.preheader.for.body129_crit_edge ]
  %ds.3319 = phi ptr [ %add.ptr192, %list_add_tail.exit304.for.body129_crit_edge ], [ %call.i, %for.cond126.preheader.for.body129_crit_edge ]
  %bf_desc130 = getelementptr inbounds %struct.ath_rxbuf, ptr %bf119.0321, i32 0, i32 2
  %55 = ptrtoint ptr %bf_desc130 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ds.3319, ptr %bf_desc130, align 4
  %56 = ptrtoint ptr %dd_desc_paddr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dd_desc_paddr, align 4
  %58 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dd, align 4
  %sub.ptr.lhs.cast133 = ptrtoint ptr %ds.3319 to i32
  %sub.ptr.rhs.cast134 = ptrtoint ptr %59 to i32
  %sub.ptr.sub135 = add i32 %57, %sub.ptr.lhs.cast133
  %add136 = sub i32 %sub.ptr.sub135, %sub.ptr.rhs.cast134
  %bf_daddr137 = getelementptr inbounds %struct.ath_rxbuf, ptr %bf119.0321, i32 0, i32 3
  %60 = ptrtoint ptr %bf_daddr137 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add136, ptr %bf_daddr137, align 4
  %61 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sc_ah, align 4
  %caps139 = getelementptr inbounds %struct.ath_hw, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %caps139 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %caps139, align 4
  %and141 = and i32 %64, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %while.cond144.preheader, label %for.body129.if.end186_crit_edge

for.body129.if.end186_crit_edge:                  ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

while.cond144.preheader:                          ; preds = %for.body129
  %65 = ptrtoint ptr %bf_daddr137 to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf_daddr137.promoted = load i32, ptr %bf_daddr137, align 4
  %and146314 = and i32 %bf_daddr137.promoted, 3968
  call void @__sanitizer_cov_trace_const_cmp4(i32 3968, i32 %and146314)
  %cmp147315 = icmp eq i32 %and146314, 3968
  br i1 %cmp147315, label %do.body152.lr.ph, label %while.cond144.preheader.if.end186_crit_edge

while.cond144.preheader.if.end186_crit_edge:      ; preds = %while.cond144.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

do.body152.lr.ph:                                 ; preds = %while.cond144.preheader
  %66 = ptrtoint ptr %dd_desc_len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dd_desc_len, align 4
  %add.ptr156 = getelementptr i8, ptr %59, i32 %67
  %sub.ptr.sub182 = sub i32 %57, %sub.ptr.rhs.cast134
  %68 = ptrtoint ptr %bf_desc130 to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf_desc130.promoted = load ptr, ptr %bf_desc130, align 4
  br label %do.body152

do.body152:                                       ; preds = %do.end174.do.body152_crit_edge, %do.body152.lr.ph
  %add.ptr176317 = phi ptr [ %bf_desc130.promoted, %do.body152.lr.ph ], [ %add.ptr176, %do.end174.do.body152_crit_edge ]
  %ds.4316 = phi ptr [ %ds.3319, %do.body152.lr.ph ], [ %add.ptr176, %do.end174.do.body152_crit_edge ]
  %cmp157.not = icmp ult ptr %add.ptr176317, %add.ptr156
  br i1 %cmp157.not, label %do.end174, label %do.body166, !prof !221

do.body166:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/init.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 393, 0\0A.popsection", ""() #6, !srcloc !223
  unreachable

do.end174:                                        ; preds = %do.body152
  %add.ptr176 = getelementptr i8, ptr %ds.4316, i32 %mul
  %69 = ptrtoint ptr %bf_desc130 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr176, ptr %bf_desc130, align 4
  %sub.ptr.lhs.cast180 = ptrtoint ptr %add.ptr176 to i32
  %add183 = add i32 %sub.ptr.sub182, %sub.ptr.lhs.cast180
  %70 = ptrtoint ptr %bf_daddr137 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add183, ptr %bf_daddr137, align 4
  %and146 = and i32 %add183, 3968
  %cmp147 = icmp eq i32 %and146, 3968
  br i1 %cmp147, label %do.end174.do.body152_crit_edge, label %do.end174.if.end186_crit_edge

do.end174.if.end186_crit_edge:                    ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

do.end174.do.body152_crit_edge:                   ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body152

if.end186:                                        ; preds = %do.end174.if.end186_crit_edge, %while.cond144.preheader.if.end186_crit_edge, %for.body129.if.end186_crit_edge
  %ds.5 = phi ptr [ %ds.3319, %for.body129.if.end186_crit_edge ], [ %ds.3319, %while.cond144.preheader.if.end186_crit_edge ], [ %add.ptr176, %do.end174.if.end186_crit_edge ]
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i, align 4
  %call.i.i301 = tail call zeroext i1 @__list_add_valid(ptr noundef %bf119.0321, ptr noundef %72, ptr noundef %head) #6
  br i1 %call.i.i301, label %if.end.i.i303, label %if.end186.list_add_tail.exit304_crit_edge

if.end186.list_add_tail.exit304_crit_edge:        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit304

if.end.i.i303:                                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %bf119.0321, ptr %prev.i, align 4
  %74 = ptrtoint ptr %bf119.0321 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %head, ptr %bf119.0321, align 4
  %prev3.i.i302 = getelementptr inbounds %struct.list_head, ptr %bf119.0321, i32 0, i32 1
  %75 = ptrtoint ptr %prev3.i.i302 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i302, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %bf119.0321, ptr %72, align 4
  br label %list_add_tail.exit304

list_add_tail.exit304:                            ; preds = %if.end.i.i303, %if.end186.list_add_tail.exit304_crit_edge
  %inc189 = add nuw nsw i32 %i.1320, 1
  %incdec.ptr190 = getelementptr %struct.ath_rxbuf, ptr %bf119.0321, i32 1
  %add.ptr192 = getelementptr i8, ptr %ds.5, i32 %mul
  %exitcond.not = icmp eq i32 %inc189, %nbuf
  br i1 %exitcond.not, label %list_add_tail.exit304.cleanup198_crit_edge, label %list_add_tail.exit304.for.body129_crit_edge

list_add_tail.exit304.for.body129_crit_edge:      ; preds = %list_add_tail.exit304
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body129

list_add_tail.exit304.cleanup198_crit_edge:       ; preds = %list_add_tail.exit304
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198

cleanup198:                                       ; preds = %list_add_tail.exit304.cleanup198_crit_edge, %for.cond126.preheader.cleanup198_crit_edge, %if.else118.cleanup198_crit_edge, %list_add_tail.exit.cleanup198_crit_edge, %for.cond.preheader.cleanup198_crit_edge, %if.then57.cleanup198_crit_edge, %if.end35.cleanup198_crit_edge
  %retval.2 = phi i32 [ -12, %if.end35.cleanup198_crit_edge ], [ -12, %if.then57.cleanup198_crit_edge ], [ -12, %if.else118.cleanup198_crit_edge ], [ 0, %for.cond126.preheader.cleanup198_crit_edge ], [ 0, %for.cond.preheader.cleanup198_crit_edge ], [ 0, %list_add_tail.exit.cleanup198_crit_edge ], [ 0, %list_add_tail.exit304.cleanup198_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_init_device(i16 noundef zeroext %devid, ptr noundef %sc, ptr noundef %bus_ops) local_unnamed_addr #0 align 64 {
entry:
  %len.i.i = alloca i32, align 4
  %eeprom_name.i.i = alloca [100 x i8], align 1
  %csz.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csz.i) #6
  %2 = ptrtoint ptr %csz.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %csz.i, align 4
  %dev.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 8992, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.ath9k_init_softc.exit.thread_crit_edge, label %if.end.i

entry.ath9k_init_softc.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_init_softc.exit.thread

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dev2.i, align 4
  %8 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc, align 8
  %hw3.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hw3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %hw3.i, align 4
  %devid4.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %devid4.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %devid, ptr %devid4.i, align 4
  %ah_flags.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 24
  %12 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ah_flags.i, align 4
  %or.i = or i32 %13, 1
  store i32 %or.i, ptr %ah_flags.i, align 4
  %led_pin.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 80
  %14 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %led_pin.i, align 4
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ath9k_ioread32, ptr %call.i.i, align 4
  %multi_read.i = getelementptr inbounds %struct.ath_ops, ptr %call.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %multi_read.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ath9k_multi_ioread32, ptr %multi_read.i, align 4
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %call.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ath9k_iowrite32, ptr %write.i, align 4
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %call.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %rmw.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ath9k_reg_rmw, ptr %rmw.i, align 4
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 6
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %op_flags.i) #6
  %sc_ah.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %19 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %sc_ah.i, align 4
  %call9.i = tail call ptr @dfs_pattern_detector_init(ptr noundef %common.i.i, i32 noundef 0) #6
  %dfs_detector.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 55
  %20 = ptrtoint ptr %dfs_detector.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i, ptr %dfs_detector.i, align 8
  %tx99_power.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 62
  %21 = ptrtoint ptr %tx99_power.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 64, ptr %tx99_power.i, align 2
  %tx_wait.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %tx_wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @ath9k_init_softc.__key) #6
  %chanctx.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 38
  %cur_chan.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %22 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %chanctx.i, ptr %cur_chan.i, align 8
  %call10.i = tail call zeroext i1 @ath9k_is_chanctx_enabled() #6
  br i1 %call10.i, label %if.end.i.if.end13.i_crit_edge, label %if.then11.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_chan.i, align 8
  %hw_queue_base.i = getelementptr inbounds %struct.ath_chanctx, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %hw_queue_base.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %hw_queue_base.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end.i.if.end13.i_crit_edge
  %ops.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 24
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %ops.i, align 4
  %bus_ops15.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 25
  %27 = ptrtoint ptr %bus_ops15.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bus_ops, ptr %bus_ops15.i, align 4
  %ps_ops.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 26
  %28 = ptrtoint ptr %ps_ops.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ath9k_ps_ops, ptr %ps_ops.i, align 4
  %29 = ptrtoint ptr %common.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %common.i.i, align 4
  %30 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sc, align 8
  %hw18.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %hw18.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %hw18.i, align 4
  %priv.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %sc, ptr %priv.i, align 4
  %34 = load i32, ptr @ath9k_debug, align 4
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %debug_mask.i, align 4
  %36 = load i32, ptr @ath9k_btcoex_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i = icmp eq i32 %36, 1
  %btcoex_enabled.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 27
  %frombool.i = zext i1 %cmp.i to i8
  %37 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool.i, ptr %btcoex_enabled.i, align 4
  %disable_ani.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 28
  %38 = ptrtoint ptr %disable_ani.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %disable_ani.i, align 1
  %39 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sc_ah.i, align 4
  %caps.i.i = getelementptr inbounds %struct.ath_hw, ptr %40, i32 0, i32 6
  %common.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %40, i32 0, i32 3
  %bus_ops.i.i = getelementptr inbounds %struct.ath_hw, ptr %40, i32 0, i32 3, i32 25
  %41 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus_ops.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not.i.i = icmp eq i32 %44, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end13.i.ath9k_init_pcoem_platform.exit.i_crit_edge

if.end13.i.ath9k_init_pcoem_platform.exit.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_init_pcoem_platform.exit.i

if.end.i.i:                                       ; preds = %if.end13.i
  %driver_data.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 26
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %driver_data.i.i, align 8
  %and.i.i = and i32 %46, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %if.then1.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %xlna_gpio.i.i = getelementptr inbounds %struct.ath_hw, ptr %40, i32 0, i32 5, i32 19
  %47 = ptrtoint ptr %xlna_gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 9, ptr %xlna_gpio.i.i, align 4
  %xatten_margin_cfg.i.i = getelementptr inbounds %struct.ath_hw, ptr %40, i32 0, i32 5, i32 21
  %48 = ptrtoint ptr %xatten_margin_cfg.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %xatten_margin_cfg.i.i, align 4
  %alt_mingainidx.i.i = getelementptr inbounds %struct.ath_hw, ptr %40, i32 0, i32 5, i32 22
  %49 = ptrtoint ptr %alt_mingainidx.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %alt_mingainidx.i.i, align 1
  %ant_ctrl_comm2g_switch_enable.i.i = getelementptr inbounds %struct.ath_hw, ptr %40, i32 0, i32 5, i32 20
  %50 = ptrtoint ptr %ant_ctrl_comm2g_switch_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 768904, ptr %ant_ctrl_comm2g_switch_enable.i.i, align 4
  %low_rssi_thresh.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 25
  %51 = ptrtoint ptr %low_rssi_thresh.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 20, ptr %low_rssi_thresh.i.i, align 4
  %fast_div_bias.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 26
  %52 = ptrtoint ptr %fast_div_bias.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %fast_div_bias.i.i, align 4
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %driver_data.i.i, align 8
  %and7.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %cond.i.i = select i1 %tobool8.not.i.i, ptr @.str.39, ptr @.str.38
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.36, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond.i.i) #6
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end9.i.i_crit_edge
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %driver_data.i.i, align 8
  %and11.i.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end9.i.i.if.end14.i.i_crit_edge, label %if.then13.i.i

if.end9.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.36, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.40) #6
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then13.i.i, %if.end9.i.i.if.end14.i.i_crit_edge
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %driver_data.i.i, align 8
  %and16.i.i = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end14.i.i.if.end19.i.i_crit_edge, label %if.then18.i.i

if.end14.i.i.if.end19.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.36, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.41) #6
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then18.i.i, %if.end14.i.i.if.end19.i.i_crit_edge
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %driver_data.i.i, align 8
  %and21.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end19.i.i.if.end24.i.i_crit_edge, label %if.then23.i.i

if.end19.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i.i

if.then23.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.36, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.42) #6
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then23.i.i, %if.end19.i.i.if.end24.i.i_crit_edge
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %driver_data.i.i, align 8
  %and26.i.i = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end24.i.i.if.end29.i.i_crit_edge, label %if.then28.i.i

if.end24.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i.i

if.then28.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.36, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.43) #6
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then28.i.i, %if.end24.i.i.if.end29.i.i_crit_edge
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %driver_data.i.i, align 8
  %and31.i.i = and i32 %64, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end29.i.i.if.end34.i.i_crit_edge, label %if.then33.i.i

if.end29.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i.i

if.then33.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.36, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.44) #6
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then33.i.i, %if.end29.i.i.if.end34.i.i_crit_edge
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %driver_data.i.i, align 8
  %and36.i.i = and i32 %66, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp ne i32 %and36.i.i, 0
  %and40.i.i = and i32 %66, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  %or.cond.i.i = and i1 %tobool37.not.i.i, %tobool41.not.i.i
  br i1 %or.cond.i.i, label %if.then42.i.i, label %if.end34.i.i.if.end45.i.i_crit_edge

if.end34.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i.i

if.then42.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %caps.i.i, align 4
  %and43.i.i = and i32 %68, -1025
  store i32 %and43.i.i, ptr %caps.i.i, align 4
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then42.i.i, %if.end34.i.i.if.end45.i.i_crit_edge
  %69 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %driver_data.i.i, align 8
  %and47.i.i = and i32 %70, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end45.i.i.if.end51.i.i_crit_edge, label %if.then49.i.i

if.end45.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i.i

if.then49.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %caps.i.i, align 4
  %or.i.i = or i32 %72, 131072
  store i32 %or.i.i, ptr %caps.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.36, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.45) #6
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then49.i.i, %if.end45.i.i.if.end51.i.i_crit_edge
  %73 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %driver_data.i.i, align 8
  %and53.i.i = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.end51.i.i.if.end57.i.i_crit_edge, label %if.then55.i.i

if.end51.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i.i

if.then55.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_waen.i.i = getelementptr inbounds %struct.ath_hw, ptr %40, i32 0, i32 5, i32 3
  %75 = ptrtoint ptr %pcie_waen.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4212539, ptr %pcie_waen.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.36, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.46) #6
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then55.i.i, %if.end51.i.i.if.end57.i.i_crit_edge
  %pll_pwrsave.i.i = getelementptr inbounds %struct.ath_hw, ptr %40, i32 0, i32 5, i32 23
  %76 = ptrtoint ptr %pll_pwrsave.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %pll_pwrsave.i.i, align 2
  %77 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %driver_data.i.i, align 8
  %and60.i.i = and i32 %78, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  br i1 %tobool61.not.i.i, label %if.end57.i.i.if.end65.i.i_crit_edge, label %if.then62.i.i

if.end57.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i.i

if.then62.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %pll_pwrsave.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %pll_pwrsave.i.i, align 2
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.36, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.47) #6
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.then62.i.i, %if.end57.i.i.if.end65.i.i_crit_edge
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %driver_data.i.i, align 8
  %and67.i.i = and i32 %81, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i.i)
  %tobool68.not.i.i = icmp eq i32 %and67.i.i, 0
  br i1 %tobool68.not.i.i, label %if.end65.i.i.ath9k_init_pcoem_platform.exit.i_crit_edge, label %if.then69.i.i

if.end65.i.i.ath9k_init_pcoem_platform.exit.i_crit_edge: ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_init_pcoem_platform.exit.i

if.then69.i.i:                                    ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %led_active_high.i.i = getelementptr inbounds %struct.ath_hw, ptr %40, i32 0, i32 5, i32 25
  %82 = ptrtoint ptr %led_active_high.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %led_active_high.i.i, align 4
  br label %ath9k_init_pcoem_platform.exit.i

ath9k_init_pcoem_platform.exit.i:                 ; preds = %if.then69.i.i, %if.end65.i.i.ath9k_init_pcoem_platform.exit.i_crit_edge, %if.end13.i.ath9k_init_pcoem_platform.exit.i_crit_edge
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %platform_data.i.i, align 8
  %87 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sc_ah.i, align 4
  %tobool.not.i291.i = icmp eq ptr %86, null
  br i1 %tobool.not.i291.i, label %ath9k_init_pcoem_platform.exit.i.if.end22.i_crit_edge, label %if.end.i292.i

ath9k_init_pcoem_platform.exit.i.if.end22.i_crit_edge: ; preds = %ath9k_init_pcoem_platform.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.end.i292.i:                                    ; preds = %ath9k_init_pcoem_platform.exit.i
  %use_eeprom.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 17
  %89 = ptrtoint ptr %use_eeprom.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %use_eeprom.i.i, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool1.not.i.i = icmp eq i8 %90, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i292.i.if.end20.i.i_crit_edge

if.end.i292.i.if.end20.i.i_crit_edge:             ; preds = %if.end.i292.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.then2.i.i:                                     ; preds = %if.end.i292.i
  %ah_flags.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 24
  %91 = ptrtoint ptr %ah_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ah_flags.i.i, align 4
  %and.i293.i = and i32 %92, -2
  store i32 %and.i293.i, ptr %ah_flags.i.i, align 4
  %gpio_mask.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 4
  %93 = ptrtoint ptr %gpio_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %gpio_mask.i.i, align 4
  %gpio_mask3.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 81
  %95 = ptrtoint ptr %gpio_mask3.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %gpio_mask3.i.i, align 4
  %gpio_val.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 5
  %96 = ptrtoint ptr %gpio_val.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %gpio_val.i.i, align 4
  %gpio_val4.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 82
  %98 = ptrtoint ptr %gpio_val4.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %gpio_val4.i.i, align 4
  %led_pin.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 3
  %99 = ptrtoint ptr %led_pin.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %led_pin.i.i, align 4
  %led_pin5.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 80
  %101 = ptrtoint ptr %led_pin5.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %led_pin5.i.i, align 4
  %is_clk_25mhz.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 10
  %102 = ptrtoint ptr %is_clk_25mhz.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %is_clk_25mhz.i.i, align 1, !range !224
  %is_clk_25mhz7.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 128
  %104 = ptrtoint ptr %is_clk_25mhz7.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %is_clk_25mhz7.i.i, align 4
  %get_mac_revision.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 15
  %105 = ptrtoint ptr %get_mac_revision.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %get_mac_revision.i.i, align 4
  %get_mac_revision8.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 129
  %107 = ptrtoint ptr %get_mac_revision8.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %get_mac_revision8.i.i, align 4
  %external_reset.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 16
  %108 = ptrtoint ptr %external_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %external_reset.i.i, align 4
  %external_reset9.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 130
  %110 = ptrtoint ptr %external_reset9.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %external_reset9.i.i, align 4
  %disable_2ghz.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 12
  %111 = ptrtoint ptr %disable_2ghz.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %disable_2ghz.i.i, align 1, !range !224
  %disable_2ghz11.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 131
  %113 = ptrtoint ptr %disable_2ghz11.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %disable_2ghz11.i.i, align 4
  %disable_5ghz.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 13
  %114 = ptrtoint ptr %disable_5ghz.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %disable_5ghz.i.i, align 4, !range !224
  %disable_5ghz14.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 132
  %116 = ptrtoint ptr %disable_5ghz14.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %disable_5ghz14.i.i, align 1
  %endian_check.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 9
  %117 = ptrtoint ptr %endian_check.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %endian_check.i.i, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool16.not.i.i = icmp eq i8 %118, 0
  br i1 %tobool16.not.i.i, label %if.then17.i.i, label %if.then2.i.i.if.end20.i.i_crit_edge

if.then2.i.i.if.end20.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.then17.i.i:                                    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i294.i = or i32 %and.i293.i, 8
  %119 = ptrtoint ptr %ah_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or.i294.i, ptr %ah_flags.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then17.i.i, %if.then2.i.i.if.end20.i.i_crit_edge, %if.end.i292.i.if.end20.i.i_crit_edge
  %120 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %86, align 4
  %tobool21.not.i.i = icmp eq ptr %121, null
  br i1 %tobool21.not.i.i, label %if.end20.i.i.if.end28.i.i_crit_edge, label %if.then22.i.i

if.end20.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i.i

if.then22.i.i:                                    ; preds = %if.end20.i.i
  %call24.i.i = tail call fastcc i32 @ath9k_eeprom_request(ptr noundef %sc, ptr noundef nonnull %121) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.then22.i.i.if.end28.i.i_crit_edge, label %if.then22.i.i.ath9k_init_softc.exit.thread_crit_edge

if.then22.i.i.ath9k_init_softc.exit.thread_crit_edge: ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_init_softc.exit.thread

if.then22.i.i.if.end28.i.i_crit_edge:             ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then22.i.i.if.end28.i.i_crit_edge, %if.end20.i.i.if.end28.i.i_crit_edge
  %led_active_high.i295.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 14
  %122 = ptrtoint ptr %led_active_high.i295.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %led_active_high.i295.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool29.not.i.i = icmp eq i8 %123, 0
  br i1 %tobool29.not.i.i, label %if.end28.i.i.if.end32.i.i_crit_edge, label %if.then30.i.i

if.end28.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i.i

if.then30.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %led_active_high31.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 5, i32 25
  %124 = ptrtoint ptr %led_active_high31.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %led_active_high31.i.i, align 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then30.i.i, %if.end28.i.i.if.end32.i.i_crit_edge
  %tx_gain_buffalo.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 11
  %125 = ptrtoint ptr %tx_gain_buffalo.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %tx_gain_buffalo.i.i, align 2, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool33.not.i.i = icmp eq i8 %126, 0
  br i1 %tobool33.not.i.i, label %if.end32.i.i.if.end37.i.i_crit_edge, label %if.then34.i.i

if.end32.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.then34.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_gain_buffalo36.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 5, i32 24
  %127 = ptrtoint ptr %tx_gain_buffalo36.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %tx_gain_buffalo36.i.i, align 1
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then34.i.i, %if.end32.i.i.if.end37.i.i_crit_edge
  %macaddr.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %86, i32 0, i32 2
  %128 = ptrtoint ptr %macaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %macaddr.i.i, align 4
  %tobool38.not.i.i = icmp eq ptr %129, null
  br i1 %tobool38.not.i.i, label %if.end37.i.i.if.end22.i_crit_edge, label %if.then39.i.i

if.end37.i.i.if.end22.i_crit_edge:                ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then39.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %macaddr40.i.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 3, i32 9
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %132 = ptrtoint ptr %macaddr40.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %macaddr40.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %129, i32 4
  %133 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.ath_hw, ptr %88, i32 0, i32 3, i32 9, i32 4
  %135 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %add.ptr1.i.i.i, align 2
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then39.i.i, %if.end37.i.i.if.end22.i_crit_edge, %ath9k_init_pcoem_platform.exit.i.if.end22.i_crit_edge
  %136 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %137, i32 0, i32 27
  %138 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %of_node.i.i, align 8
  %140 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sc_ah.i, align 4
  %common.i.i298.i = getelementptr inbounds %struct.ath_hw, ptr %141, i32 0, i32 3
  %bus_ops.i299.i = getelementptr inbounds %struct.ath_hw, ptr %141, i32 0, i32 3, i32 25
  %142 = ptrtoint ptr %bus_ops.i299.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bus_ops.i299.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %eeprom_name.i.i) #6
  %146 = call ptr @memset(ptr %eeprom_name.i.i, i32 255, i32 100)
  %call1.i.i = tail call zeroext i1 @of_device_is_available(ptr noundef %139) #6
  br i1 %call1.i.i, label %do.body.i.i, label %if.end22.i.if.end26.i_crit_edge

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

do.body.i.i:                                      ; preds = %if.end22.i
  %debug_mask.i.i = getelementptr inbounds %struct.ath_hw, ptr %141, i32 0, i32 3, i32 3
  %147 = ptrtoint ptr %debug_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %debug_mask.i.i, align 4
  %and.i300.i = and i32 %148, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i300.i)
  %tobool.not.i301.i = icmp eq i32 %and.i300.i, 0
  br i1 %tobool.not.i301.i, label %do.body.i.i.do.end.i.i_crit_edge, label %if.then2.i302.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.then2.i302.i:                                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i298.i, ptr noundef nonnull @.str.51) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then2.i302.i, %do.body.i.i.do.end.i.i_crit_edge
  %call.i.i.i = tail call ptr @of_find_property(ptr noundef %139, ptr noundef nonnull @.str.52, ptr noundef null) #6
  %tobool.i.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.i.not.i.i, label %do.end.i.i.if.end17.i.i_crit_edge, label %if.then5.i.i

do.end.i.i.if.end17.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i.i

if.then5.i.i:                                     ; preds = %do.end.i.i
  %arrayidx.i.i.i = getelementptr [0 x ptr], ptr @ath_bus_type_strings, i32 0, i32 %145
  %149 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i.i.i, align 4
  %dev7.i.i = getelementptr inbounds %struct.ath_hw, ptr %141, i32 0, i32 1
  %151 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev7.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %152, i32 0, i32 3
  %153 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %154, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then5.i.i.dev_name.exit.i.i_crit_edge

if.then5.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %152, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then5.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %156, %if.end.i.i.i ], [ %154, %if.then5.i.i.dev_name.exit.i.i_crit_edge ]
  %call9.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %eeprom_name.i.i, i32 noundef 100, ptr noundef nonnull @.str.53, ptr noundef %150, ptr noundef %retval.0.i.i.i) #6
  %call11.i.i = call fastcc i32 @ath9k_eeprom_request(ptr noundef %sc, ptr noundef nonnull %eeprom_name.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i303.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i303.i, label %if.end14.i306.i, label %ath9k_of_init.exit.i

if.end14.i306.i:                                  ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ah_flags.i304.i = getelementptr inbounds %struct.ath_hw, ptr %141, i32 0, i32 24
  %157 = ptrtoint ptr %ah_flags.i304.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ah_flags.i304.i, align 4
  %and15.i.i = and i32 %158, -10
  %or.i305.i = or i32 %and15.i.i, 8
  store i32 %or.i305.i, ptr %ah_flags.i304.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.end14.i306.i, %do.end.i.i.if.end17.i.i_crit_edge
  %macaddr.i307.i = getelementptr inbounds %struct.ath_hw, ptr %141, i32 0, i32 3, i32 9
  %call19.i.i = call i32 @of_get_mac_address(ptr noundef %139, ptr noundef %macaddr.i307.i) #6
  br label %if.end26.i

ath9k_of_init.exit.i:                             ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %eeprom_name.i.i) #6
  br label %ath9k_init_softc.exit.thread

if.end26.i:                                       ; preds = %if.end17.i.i, %if.end22.i.if.end26.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %eeprom_name.i.i) #6
  %159 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %sc_ah.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #6
  %161 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -1, ptr %len.i.i, align 4, !annotation !225
  %162 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev.i, align 4
  %call.i311.i = call ptr @devm_nvmem_cell_get(ptr noundef %163, ptr noundef nonnull @.str.54) #6
  %cmp.i.i.i = icmp ugt ptr %call.i311.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end5.i.i

if.then.i.i:                                      ; preds = %if.end26.i
  %164 = ptrtoint ptr %call.i311.i to i32
  %165 = zext i32 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values)
  switch i32 %164, label %if.then.i.i.ath9k_init_softc.exit_crit_edge [
    i32 -2, label %if.then.i.i.ath9k_nvmem_request_eeprom.exit.thread.i_crit_edge
    i32 -95, label %if.then.i.i.ath9k_nvmem_request_eeprom.exit.thread.i_crit_edge90
  ]

if.then.i.i.ath9k_nvmem_request_eeprom.exit.thread.i_crit_edge90: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_nvmem_request_eeprom.exit.thread.i

if.then.i.i.ath9k_nvmem_request_eeprom.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_nvmem_request_eeprom.exit.thread.i

if.then.i.i.ath9k_init_softc.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_init_softc.exit

if.end5.i.i:                                      ; preds = %if.end26.i
  %call6.i.i = call ptr @nvmem_cell_read(ptr noundef %call.i311.i, ptr noundef nonnull %len.i.i) #6
  %cmp.i44.i.i = icmp ugt ptr %call6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i.i, label %if.then8.i.i, label %if.end10.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %call6.i.i to i32
  br label %ath9k_init_softc.exit

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %167 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %168)
  %cmp13.i.i = icmp ult i32 %168, 512
  %169 = and i32 %168, -16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %170 = icmp ne i32 %169, 0
  %171 = or i1 %cmp13.i.i, %170
  br i1 %171, label %if.then16.i.i, label %if.end17.i315.i

if.then16.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %call6.i.i) #6
  br label %ath9k_nvmem_request_eeprom.exit.thread331.i

if.end17.i315.i:                                  ; preds = %if.end10.i.i
  %172 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev.i, align 4
  %call19.i313.i = call ptr @devm_kmemdup(ptr noundef %173, ptr noundef %call6.i.i, i32 noundef %168, i32 noundef 3264) #6
  %nvmem_blob.i.i = getelementptr inbounds %struct.ath_hw, ptr %160, i32 0, i32 134
  %174 = ptrtoint ptr %nvmem_blob.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call19.i313.i, ptr %nvmem_blob.i.i, align 4
  call void @kfree(ptr noundef %call6.i.i) #6
  %175 = ptrtoint ptr %nvmem_blob.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %nvmem_blob.i.i, align 4
  %tobool.not.i314.i = icmp eq ptr %176, null
  br i1 %tobool.not.i314.i, label %if.end17.i315.i.ath9k_nvmem_request_eeprom.exit.thread331.i_crit_edge, label %if.end22.i.i

if.end17.i315.i.ath9k_nvmem_request_eeprom.exit.thread331.i_crit_edge: ; preds = %if.end17.i315.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_nvmem_request_eeprom.exit.thread331.i

if.end22.i.i:                                     ; preds = %if.end17.i315.i
  call void @__sanitizer_cov_trace_pc() #8
  %177 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %len.i.i, align 4
  %nvmem_blob_len.i.i = getelementptr inbounds %struct.ath_hw, ptr %160, i32 0, i32 135
  %179 = ptrtoint ptr %nvmem_blob_len.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %nvmem_blob_len.i.i, align 4
  %ah_flags.i316.i = getelementptr inbounds %struct.ath_hw, ptr %160, i32 0, i32 24
  %180 = ptrtoint ptr %ah_flags.i316.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %ah_flags.i316.i, align 4
  %and23.i.i = and i32 %181, -10
  %or.i317.i = or i32 %and23.i.i, 8
  store i32 %or.i317.i, ptr %ah_flags.i316.i, align 4
  br label %ath9k_nvmem_request_eeprom.exit.thread.i

ath9k_nvmem_request_eeprom.exit.thread.i:         ; preds = %if.end22.i.i, %if.then.i.i.ath9k_nvmem_request_eeprom.exit.thread.i_crit_edge, %if.then.i.i.ath9k_nvmem_request_eeprom.exit.thread.i_crit_edge90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #6
  %182 = load i32, ptr @ath9k_led_active_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %182)
  %cmp31.not.i = icmp eq i32 %182, -1
  br i1 %cmp31.not.i, label %ath9k_nvmem_request_eeprom.exit.thread.i.if.end35.i_crit_edge, label %if.then32.i

ath9k_nvmem_request_eeprom.exit.thread.i.if.end35.i_crit_edge: ; preds = %ath9k_nvmem_request_eeprom.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

ath9k_nvmem_request_eeprom.exit.thread331.i:      ; preds = %if.end17.i315.i.ath9k_nvmem_request_eeprom.exit.thread331.i_crit_edge, %if.then16.i.i
  %retval.0.i318.ph.i = phi i32 [ -12, %if.end17.i315.i.ath9k_nvmem_request_eeprom.exit.thread331.i_crit_edge ], [ -22, %if.then16.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #6
  br label %ath9k_init_softc.exit.thread

if.then32.i:                                      ; preds = %ath9k_nvmem_request_eeprom.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp33.i = icmp eq i32 %182, 1
  %led_active_high.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 5, i32 25
  %frombool34.i = zext i1 %cmp33.i to i8
  %183 = ptrtoint ptr %led_active_high.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %frombool34.i, ptr %led_active_high.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %ath9k_nvmem_request_eeprom.exit.thread.i.if.end35.i_crit_edge
  %184 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %btcoex_enabled.i, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool37.not.i = icmp eq i8 %185, 0
  br i1 %tobool37.not.i, label %land.lhs.true.i, label %if.end35.i.do.body43.i_crit_edge

if.end35.i.do.body43.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43.i

land.lhs.true.i:                                  ; preds = %if.end35.i
  %186 = load i32, ptr @ath9k_bt_ant_diversity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool38.not.i = icmp eq i32 %186, 0
  br i1 %tobool38.not.i, label %land.lhs.true.i.do.body43.i_crit_edge, label %land.lhs.true39.i

land.lhs.true.i.do.body43.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43.i

land.lhs.true39.i:                                ; preds = %land.lhs.true.i
  %187 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %188, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool40.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true39.i.do.body43.i_crit_edge, label %if.then41.i

land.lhs.true39.i.do.body43.i_crit_edge:          ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43.i

if.then41.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #8
  %bt_ant_diversity.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 29
  %189 = ptrtoint ptr %bt_ant_diversity.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 1, ptr %bt_ant_diversity.i, align 2
  br label %do.body43.i

do.body43.i:                                      ; preds = %if.then41.i, %land.lhs.true39.i.do.body43.i_crit_edge, %land.lhs.true.i.do.body43.i_crit_edge, %if.end35.i.do.body43.i_crit_edge
  %cc_lock.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 19
  call void @__raw_spin_lock_init(ptr noundef %cc_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @ath9k_init_softc.__key.10, i16 noundef signext 3) #6
  %intr_lock.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %intr_lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @ath9k_init_softc.__key.12, i16 noundef signext 3) #6
  %sc_serial_rw.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %sc_serial_rw.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @ath9k_init_softc.__key.14, i16 noundef signext 3) #6
  %sc_pm_lock.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %sc_pm_lock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @ath9k_init_softc.__key.16, i16 noundef signext 3) #6
  %chan_lock.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  call void @__raw_spin_lock_init(ptr noundef %chan_lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @ath9k_init_softc.__key.18, i16 noundef signext 3) #6
  %mutex.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 13
  call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @ath9k_init_softc.__key.20) #6
  %intr_tq.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 5
  call void @tasklet_setup(ptr noundef %intr_tq.i, ptr noundef nonnull @ath9k_tasklet) #6
  %bcon_tasklet.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 6
  call void @tasklet_setup(ptr noundef %bcon_tasklet.i, ptr noundef nonnull @ath9k_beacon_tasklet) #6
  %sleep_timer.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 47
  call void @init_timer_key(ptr noundef %sleep_timer.i, ptr noundef nonnull @ath_ps_full_sleep, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @ath9k_init_softc.__key.22) #6
  %hw_reset_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 15
  call void @__init_work(ptr noundef %hw_reset_work.i, i32 noundef 0) #6
  %190 = ptrtoint ptr %hw_reset_work.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -64, ptr %hw_reset_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 15, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @ath9k_init_softc.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry73.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 15, i32 1
  %191 = ptrtoint ptr %entry73.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %entry73.i, ptr %entry73.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 15, i32 1, i32 1
  %192 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %entry73.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 15, i32 2
  %193 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @ath_reset_work, ptr %func.i, align 4
  %paprd_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 14
  call void @__init_work(ptr noundef %paprd_work.i, i32 noundef 0) #6
  %194 = ptrtoint ptr %paprd_work.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 -64, ptr %paprd_work.i, align 8
  %lockdep_map83.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 14, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map83.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @ath9k_init_softc.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry85.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 14, i32 1
  %195 = ptrtoint ptr %entry85.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile ptr %entry85.i, ptr %entry85.i, align 4
  %prev.i319.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 14, i32 1, i32 1
  %196 = ptrtoint ptr %prev.i319.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %entry85.i, ptr %prev.i319.i, align 4
  %func87.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 14, i32 2
  %197 = ptrtoint ptr %func87.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @ath_paprd_calibrate, ptr %func87.i, align 4
  %hw_pll_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 46
  call void @__init_work(ptr noundef %hw_pll_work.i, i32 noundef 0) #6
  %198 = ptrtoint ptr %hw_pll_work.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 -64, ptr %hw_pll_work.i, align 8
  %lockdep_map99.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 46, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map99.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @ath9k_init_softc.__key.28, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry102.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 46, i32 0, i32 1
  %199 = ptrtoint ptr %entry102.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %entry102.i, ptr %entry102.i, align 4
  %prev.i320.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 46, i32 0, i32 1, i32 1
  %200 = ptrtoint ptr %prev.i320.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %entry102.i, ptr %prev.i320.i, align 4
  %func105.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 46, i32 0, i32 2
  %201 = ptrtoint ptr %func105.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @ath_hw_pll_work, ptr %func105.i, align 4
  %timer.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 46, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.31, ptr noundef nonnull @ath9k_init_softc.__key.30) #6
  %hw_check_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 45
  call void @__init_work(ptr noundef %hw_check_work.i, i32 noundef 0) #6
  %202 = ptrtoint ptr %hw_check_work.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 -64, ptr %hw_check_work.i, align 4
  %lockdep_map124.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 45, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map124.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @ath9k_init_softc.__key.32, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry127.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 45, i32 0, i32 1
  %203 = ptrtoint ptr %entry127.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile ptr %entry127.i, ptr %entry127.i, align 4
  %prev.i321.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 45, i32 0, i32 1, i32 1
  %204 = ptrtoint ptr %prev.i321.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %entry127.i, ptr %prev.i321.i, align 4
  %func130.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 45, i32 0, i32 2
  %205 = ptrtoint ptr %func130.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr @ath_hw_check_work, ptr %func130.i, align 4
  %timer135.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 45, i32 1
  call void @init_timer_key(ptr noundef %timer135.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.35, ptr noundef nonnull @ath9k_init_softc.__key.34) #6
  call void @ath9k_init_channel_context(ptr noundef %sc) #6
  %206 = ptrtoint ptr %bus_ops15.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %bus_ops15.i, align 4
  %read_cachesize.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %read_cachesize.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %read_cachesize.i.i, align 4
  call void %209(ptr noundef %common.i.i, ptr noundef nonnull %csz.i) #6
  %210 = ptrtoint ptr %csz.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %csz.i, align 4
  %.tr.i = trunc i32 %211 to i16
  %conv.i = shl i16 %.tr.i, 2
  %cachelsz.i = getelementptr inbounds %struct.ath_hw, ptr %call.i.i, i32 0, i32 3, i32 7
  %212 = ptrtoint ptr %cachelsz.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv.i, ptr %cachelsz.i, align 4
  %call140.i = call i32 @ath9k_hw_init(ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %if.end143.i, label %do.body43.i.err_hw.i_crit_edge

do.body43.i.err_hw.i_crit_edge:                   ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw.i

if.end143.i:                                      ; preds = %do.body43.i
  %213 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sc_ah.i, align 4
  %call.i83 = call i32 @ath9k_hw_beaconq_setup(ptr noundef %214) #6
  %beaconq.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 1
  %215 = ptrtoint ptr %beaconq.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %call.i83, ptr %beaconq.i, align 4
  %call1.i = call ptr @ath_txq_setup(ptr noundef %sc, i32 noundef 3, i32 noundef 0) #6
  %cabq.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 7
  %216 = ptrtoint ptr %cabq.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call1.i, ptr %cabq.i, align 4
  %call3.i = call i32 @ath_cabq_update(ptr noundef %sc) #6
  %call4.i = call ptr @ath_txq_setup(ptr noundef %sc, i32 noundef 4, i32 noundef 0) #6
  %uapsdq.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 6
  %217 = ptrtoint ptr %uapsdq.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call4.i, ptr %uapsdq.i, align 4
  %call5.i = call ptr @ath_txq_setup(ptr noundef %sc, i32 noundef 1, i32 noundef 0) #6
  %arrayidx.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 0
  %218 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call5.i, ptr %arrayidx.i, align 4
  %219 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %call5.i, align 4
  %call5.1.i = call ptr @ath_txq_setup(ptr noundef %sc, i32 noundef 1, i32 noundef 1) #6
  %arrayidx.1.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 1
  %220 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call5.1.i, ptr %arrayidx.1.i, align 4
  %221 = ptrtoint ptr %call5.1.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 1, ptr %call5.1.i, align 4
  %call5.2.i = call ptr @ath_txq_setup(ptr noundef %sc, i32 noundef 1, i32 noundef 2) #6
  %arrayidx.2.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 2
  %222 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %call5.2.i, ptr %arrayidx.2.i, align 4
  %223 = ptrtoint ptr %call5.2.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 2, ptr %call5.2.i, align 4
  %call5.3.i = call ptr @ath_txq_setup(ptr noundef %sc, i32 noundef 1, i32 noundef 3) #6
  %arrayidx.3.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 3
  %224 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call5.3.i, ptr %arrayidx.3.i, align 4
  %225 = ptrtoint ptr %call5.3.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 3, ptr %call5.3.i, align 4
  %call148.i = call i32 @ath9k_init_btcoex(ptr noundef %sc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i)
  %tobool149.not.i = icmp eq i32 %call148.i, 0
  br i1 %tobool149.not.i, label %if.end151.i, label %if.end143.i.err_btcoex.i_crit_edge

if.end143.i.err_btcoex.i_crit_edge:               ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_btcoex.i

if.end151.i:                                      ; preds = %if.end143.i
  %call152.i = call i32 @ath9k_cmn_init_channels_rates(ptr noundef %common.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152.i)
  %tobool153.not.i = icmp eq i32 %call152.i, 0
  br i1 %tobool153.not.i, label %if.end155.i, label %if.end151.i.err_btcoex.i_crit_edge

if.end151.i.err_btcoex.i_crit_edge:               ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_btcoex.i

if.end155.i:                                      ; preds = %if.end151.i
  %call156.i = call i32 @ath9k_init_p2p(ptr noundef %sc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %tobool157.not.i = icmp eq i32 %call156.i, 0
  br i1 %tobool157.not.i, label %if.end159.i, label %if.end155.i.err_btcoex.i_crit_edge

if.end155.i.err_btcoex.i_crit_edge:               ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_btcoex.i

if.end159.i:                                      ; preds = %if.end155.i
  %226 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %sc_ah.i, align 4
  call void @ath9k_cmn_init_crypto(ptr noundef %227) #6
  call fastcc void @ath9k_init_misc(ptr noundef %sc) #6
  call void @ath_chanctx_init(ptr noundef %sc) #6
  call void @ath9k_offchannel_init(ptr noundef %sc) #6
  %228 = ptrtoint ptr %bus_ops15.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %bus_ops15.i, align 4
  %aspm_init.i = getelementptr inbounds %struct.ath_bus_ops, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %aspm_init.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %aspm_init.i, align 4
  %tobool162.not.i = icmp eq ptr %231, null
  br i1 %tobool162.not.i, label %if.end159.i.ath9k_init_softc.exit.thread87_crit_edge, label %if.then163.i

if.end159.i.ath9k_init_softc.exit.thread87_crit_edge: ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_init_softc.exit.thread87

if.then163.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %231(ptr noundef %common.i.i) #6
  br label %ath9k_init_softc.exit.thread87

err_btcoex.i:                                     ; preds = %if.end155.i.err_btcoex.i_crit_edge, %if.end151.i.err_btcoex.i_crit_edge, %if.end143.i.err_btcoex.i_crit_edge
  %ret.0.i = phi i32 [ %call148.i, %if.end143.i.err_btcoex.i_crit_edge ], [ %call152.i, %if.end151.i.err_btcoex.i_crit_edge ], [ %call156.i, %if.end155.i.err_btcoex.i_crit_edge ]
  %tx.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35
  %232 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %tx.i, align 4
  %and170.i = and i32 %233, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i)
  %tobool171.not.i = icmp eq i32 %and170.i, 0
  br i1 %tobool171.not.i, label %err_btcoex.i.for.inc.i_crit_edge, label %if.then172.i

err_btcoex.i.for.inc.i_crit_edge:                 ; preds = %err_btcoex.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then172.i:                                     ; preds = %err_btcoex.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx174.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 0
  call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx174.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then172.i, %err_btcoex.i.for.inc.i_crit_edge
  %234 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %tx.i, align 4
  %and170.1.i = and i32 %235, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.1.i)
  %tobool171.not.1.i = icmp eq i32 %and170.1.i, 0
  br i1 %tobool171.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then172.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then172.1.i:                                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx174.1.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 1
  call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx174.1.i) #6
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then172.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %236 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %tx.i, align 4
  %and170.2.i = and i32 %237, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.2.i)
  %tobool171.not.2.i = icmp eq i32 %and170.2.i, 0
  br i1 %tobool171.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then172.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then172.2.i:                                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx174.2.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 2
  call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx174.2.i) #6
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then172.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %238 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %tx.i, align 4
  %and170.3.i = and i32 %239, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.3.i)
  %tobool171.not.3.i = icmp eq i32 %and170.3.i, 0
  br i1 %tobool171.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then172.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.then172.3.i:                                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx174.3.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 3
  call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx174.3.i) #6
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then172.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %240 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %tx.i, align 4
  %and170.4.i = and i32 %241, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.4.i)
  %tobool171.not.4.i = icmp eq i32 %and170.4.i, 0
  br i1 %tobool171.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then172.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

if.then172.4.i:                                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx174.4.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 4
  call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx174.4.i) #6
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then172.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %242 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %tx.i, align 4
  %and170.5.i = and i32 %243, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.5.i)
  %tobool171.not.5.i = icmp eq i32 %and170.5.i, 0
  br i1 %tobool171.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then172.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

if.then172.5.i:                                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx174.5.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 5
  call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx174.5.i) #6
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then172.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %244 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %tx.i, align 4
  %and170.6.i = and i32 %245, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.6.i)
  %tobool171.not.6.i = icmp eq i32 %and170.6.i, 0
  br i1 %tobool171.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then172.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6.i

if.then172.6.i:                                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx174.6.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 6
  call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx174.6.i) #6
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then172.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %246 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %tx.i, align 4
  %and170.7.i = and i32 %247, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.7.i)
  %tobool171.not.7.i = icmp eq i32 %and170.7.i, 0
  br i1 %tobool171.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %if.then172.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7.i

if.then172.7.i:                                   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx174.7.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 7
  call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx174.7.i) #6
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then172.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %248 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %tx.i, align 4
  %and170.8.i = and i32 %249, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.8.i)
  %tobool171.not.8.i = icmp eq i32 %and170.8.i, 0
  br i1 %tobool171.not.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge, label %if.then172.8.i

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.8.i

if.then172.8.i:                                   ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx174.8.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 8
  call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx174.8.i) #6
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %if.then172.8.i, %for.inc.7.i.for.inc.8.i_crit_edge
  %250 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %tx.i, align 4
  %and170.9.i = and i32 %251, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.9.i)
  %tobool171.not.9.i = icmp eq i32 %and170.9.i, 0
  br i1 %tobool171.not.9.i, label %for.inc.8.i.for.inc.9.i_crit_edge, label %if.then172.9.i

for.inc.8.i.for.inc.9.i_crit_edge:                ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.9.i

if.then172.9.i:                                   ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx174.9.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 9
  call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx174.9.i) #6
  br label %for.inc.9.i

for.inc.9.i:                                      ; preds = %if.then172.9.i, %for.inc.8.i.for.inc.9.i_crit_edge
  call void @ath9k_hw_deinit(ptr noundef nonnull %call.i.i) #6
  br label %err_hw.i

err_hw.i:                                         ; preds = %for.inc.9.i, %do.body43.i.err_hw.i_crit_edge
  %ret.2.i = phi i32 [ %call140.i, %do.body43.i.err_hw.i_crit_edge ], [ %ret.0.i, %for.inc.9.i ]
  %252 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %sc_ah.i, align 4
  %eeprom_blob.i.i = getelementptr inbounds %struct.ath_hw, ptr %253, i32 0, i32 133
  %254 = ptrtoint ptr %eeprom_blob.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %eeprom_blob.i.i, align 4
  call void @release_firmware(ptr noundef %255) #6
  %tx99_skb.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 60
  %256 = ptrtoint ptr %tx99_skb.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %tx99_skb.i, align 4
  call void @__dev_kfree_skb_any(ptr noundef %257, i32 noundef 1) #6
  br label %ath9k_init_softc.exit.thread

ath9k_init_softc.exit.thread:                     ; preds = %err_hw.i, %ath9k_nvmem_request_eeprom.exit.thread331.i, %ath9k_of_init.exit.i, %if.then22.i.i.ath9k_init_softc.exit.thread_crit_edge, %entry.ath9k_init_softc.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.i318.ph.i, %ath9k_nvmem_request_eeprom.exit.thread331.i ], [ %call24.i.i, %if.then22.i.i.ath9k_init_softc.exit.thread_crit_edge ], [ %call11.i.i, %ath9k_of_init.exit.i ], [ -12, %entry.ath9k_init_softc.exit.thread_crit_edge ], [ %ret.2.i, %err_hw.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csz.i) #6
  br label %cleanup

ath9k_init_softc.exit.thread87:                   ; preds = %if.then163.i, %if.end159.i.ath9k_init_softc.exit.thread87_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csz.i) #6
  %258 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %sc_ah.i, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %259, i32 0, i32 3
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %260 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %flags.i.i, align 4
  %or.i.i159.i = or i32 %261, 172065366
  store i32 %or.i.i159.i, ptr %flags.i.i, align 4
  %262 = load i32, ptr @ath9k_ps_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool.not.i70 = icmp eq i32 %262, 0
  br i1 %tobool.not.i70, label %ath9k_init_softc.exit.thread87.if.end.i73_crit_edge, label %if.then.i

ath9k_init_softc.exit.thread87.if.end.i73_crit_edge: ; preds = %ath9k_init_softc.exit.thread87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i73

ath9k_init_softc.exit:                            ; preds = %if.then8.i.i, %if.then.i.i.ath9k_init_softc.exit_crit_edge
  %retval.0.i318.i = phi i32 [ %166, %if.then8.i.i ], [ %164, %if.then.i.i.ath9k_init_softc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csz.i) #6
  br label %cleanup

if.then.i:                                        ; preds = %ath9k_init_softc.exit.thread87
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i161.i = or i32 %261, 172065622
  %263 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %or.i.i161.i, ptr %flags.i.i, align 4
  br label %if.end.i73

if.end.i73:                                       ; preds = %if.then.i, %ath9k_init_softc.exit.thread87.if.end.i73_crit_edge
  %264 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %sc_ah.i, align 4
  %caps.i71 = getelementptr inbounds %struct.ath_hw, ptr %265, i32 0, i32 6
  %266 = ptrtoint ptr %caps.i71 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %caps.i71, align 4
  %and.i72 = and i32 %267, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool2.not.i = icmp eq i32 %and.i72, 0
  br i1 %tobool2.not.i, label %if.end.i73.if.end7.i_crit_edge, label %if.then3.i

if.end.i73.if.end7.i_crit_edge:                   ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i73
  %268 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %flags.i.i, align 4
  %or.i.i163.i = or i32 %269, 128
  store i32 %or.i.i163.i, ptr %flags.i.i, align 4
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %259, i32 0, i32 4, i32 3
  %270 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %271)
  %cmp.i74 = icmp ugt i32 %271, 127
  br i1 %cmp.i74, label %if.then4.i, label %if.then3.i.if.end7.i_crit_edge

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %radiotap_mcs_details.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 21
  %272 = ptrtoint ptr %radiotap_mcs_details.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %radiotap_mcs_details.i, align 2
  %274 = or i8 %273, 32
  store i8 %274, ptr %radiotap_mcs_details.i, align 2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.then3.i.if.end7.i_crit_edge, %if.end.i73.if.end7.i_crit_edge
  %275 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %sc_ah.i, align 4
  %macVersion10.i = getelementptr inbounds %struct.ath_hw, ptr %276, i32 0, i32 4, i32 3
  %277 = ptrtoint ptr %macVersion10.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %macVersion10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %278)
  %cmp11.i = icmp ugt i32 %278, 63
  br i1 %cmp11.i, label %if.end7.i.if.then14.i_crit_edge, label %lor.lhs.false.i

if.end7.i.if.then14.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.i

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %279 = load i32, ptr @ath9k_modparam_nohwcrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool13.not.i = icmp eq i32 %279, 0
  br i1 %tobool13.not.i, label %lor.lhs.false.i.if.end15.i_crit_edge, label %lor.lhs.false.i.if.then14.i_crit_edge

lor.lhs.false.i.if.then14.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.i

lor.lhs.false.i.if.end15.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then14.i:                                      ; preds = %lor.lhs.false.i.if.then14.i_crit_edge, %if.end7.i.if.then14.i_crit_edge
  %280 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %flags.i.i, align 4
  %or.i.i165.i = or i32 %281, 2048
  store i32 %or.i.i165.i, ptr %flags.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %lor.lhs.false.i.if.end15.i_crit_edge
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %282 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %wiphy.i, align 8
  %features.i = getelementptr inbounds %struct.wiphy, ptr %283, i32 0, i32 13
  %284 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %features.i, align 8
  %or16.i = or i32 %285, 395264
  store i32 %or16.i, ptr %features.i, align 8
  %286 = load ptr, ptr %wiphy.i, align 8
  %flags.i = getelementptr inbounds %struct.wiphy, ptr %286, i32 0, i32 11
  %287 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %flags.i, align 32
  %and18.i = and i32 %288, -17
  store i32 %and18.i, ptr %flags.i, align 32
  %289 = load ptr, ptr %wiphy.i, align 8
  %flags20.i = getelementptr inbounds %struct.wiphy, ptr %289, i32 0, i32 11
  %290 = ptrtoint ptr %flags20.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %flags20.i, align 32
  %or21.i = or i32 %291, 256
  store i32 %or21.i, ptr %flags20.i, align 32
  %292 = load ptr, ptr %wiphy.i, align 8
  %flags23.i = getelementptr inbounds %struct.wiphy, ptr %292, i32 0, i32 11
  %293 = ptrtoint ptr %flags23.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %flags23.i, align 32
  %or24.i = or i32 %294, 32768
  store i32 %or24.i, ptr %flags23.i, align 32
  %295 = load ptr, ptr %wiphy.i, align 8
  %flags26.i = getelementptr inbounds %struct.wiphy, ptr %295, i32 0, i32 11
  %296 = ptrtoint ptr %flags26.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %flags26.i, align 32
  %or27.i = or i32 %297, 2097152
  store i32 %or27.i, ptr %flags26.i, align 32
  %298 = load ptr, ptr %wiphy.i, align 8
  %flags29.i = getelementptr inbounds %struct.wiphy, ptr %298, i32 0, i32 11
  %299 = ptrtoint ptr %flags29.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %flags29.i, align 32
  %or30.i = or i32 %300, 4194304
  store i32 %or30.i, ptr %flags29.i, align 32
  %301 = load ptr, ptr %wiphy.i, align 8
  %flags32.i = getelementptr inbounds %struct.wiphy, ptr %301, i32 0, i32 11
  %302 = ptrtoint ptr %flags32.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %flags32.i, align 32
  %or33.i = or i32 %303, 8388608
  store i32 %or33.i, ptr %flags32.i, align 32
  %304 = load ptr, ptr %wiphy.i, align 8
  %flags35.i = getelementptr inbounds %struct.wiphy, ptr %304, i32 0, i32 11
  %305 = ptrtoint ptr %flags35.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %flags35.i, align 32
  %or36.i = or i32 %306, 16384
  store i32 %or36.i, ptr %flags35.i, align 32
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %307 = ptrtoint ptr %queues.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 4, ptr %queues.i, align 4
  %max_rates.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 14
  %308 = ptrtoint ptr %max_rates.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 4, ptr %max_rates.i, align 1
  %max_listen_interval.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 12
  %309 = ptrtoint ptr %max_listen_interval.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 10, ptr %max_listen_interval.i, align 2
  %max_rate_tries.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 16
  %310 = ptrtoint ptr %max_rate_tries.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 10, ptr %max_rate_tries.i, align 1
  %sta_data_size.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 8
  %311 = ptrtoint ptr %sta_data_size.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 484, ptr %sta_data_size.i, align 8
  %vif_data_size.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 7
  %312 = ptrtoint ptr %vif_data_size.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 616, ptr %vif_data_size.i, align 4
  %txq_data_size.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 10
  %313 = ptrtoint ptr %txq_data_size.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 108, ptr %txq_data_size.i, align 8
  %extra_tx_headroom.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 5
  %314 = ptrtoint ptr %extra_tx_headroom.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 4, ptr %extra_tx_headroom.i, align 4
  %caps37.i = getelementptr inbounds %struct.ath_hw, ptr %259, i32 0, i32 6
  %max_rxchains.i = getelementptr inbounds %struct.ath_hw, ptr %259, i32 0, i32 6, i32 6
  %315 = ptrtoint ptr %max_rxchains.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %max_rxchains.i, align 2
  %conv38.i = zext i8 %316 to i32
  %notmask.i = shl nsw i32 -1, %conv38.i
  %sub.i = xor i32 %notmask.i, -1
  %317 = load ptr, ptr %wiphy.i, align 8
  %available_antennas_rx.i = getelementptr inbounds %struct.wiphy, ptr %317, i32 0, i32 45
  %318 = ptrtoint ptr %available_antennas_rx.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %sub.i, ptr %available_antennas_rx.i, align 16
  %max_txchains.i = getelementptr inbounds %struct.ath_hw, ptr %259, i32 0, i32 6, i32 5
  %319 = ptrtoint ptr %max_txchains.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %max_txchains.i, align 1
  %conv41.i = zext i8 %320 to i32
  %notmask141.i = shl nsw i32 -1, %conv41.i
  %sub43.i = xor i32 %notmask141.i, -1
  %321 = load ptr, ptr %wiphy.i, align 8
  %available_antennas_tx.i = getelementptr inbounds %struct.wiphy, ptr %321, i32 0, i32 44
  %322 = ptrtoint ptr %available_antennas_tx.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %sub43.i, ptr %available_antennas_tx.i, align 4
  %323 = ptrtoint ptr %caps37.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %caps37.i, align 4
  %and47.i = and i32 %324, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end15.i.if.end52.i_crit_edge, label %if.then49.i

if.end15.i.if.end52.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

if.then49.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %325 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %wiphy.i, align 8
  %available_antennas_rx51.i = getelementptr inbounds %struct.wiphy, ptr %326, i32 0, i32 45
  %327 = ptrtoint ptr %available_antennas_rx51.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 3, ptr %available_antennas_rx51.i, align 16
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then49.i, %if.end15.i.if.end52.i_crit_edge
  %328 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %wiphy.i, align 8
  %available_antennas_rx54.i = getelementptr inbounds %struct.wiphy, ptr %329, i32 0, i32 45
  %330 = ptrtoint ptr %available_antennas_rx54.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %available_antennas_rx54.i, align 16
  %conv55.i = trunc i32 %331 to i8
  %ant_rx.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 54
  %332 = ptrtoint ptr %ant_rx.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %conv55.i, ptr %ant_rx.i, align 1
  %333 = load ptr, ptr %wiphy.i, align 8
  %available_antennas_tx57.i = getelementptr inbounds %struct.wiphy, ptr %333, i32 0, i32 44
  %334 = ptrtoint ptr %available_antennas_tx57.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %available_antennas_tx57.i, align 4
  %conv58.i = trunc i32 %335 to i8
  %ant_tx.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 53
  %336 = ptrtoint ptr %ant_tx.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %conv58.i, ptr %ant_tx.i, align 4
  %337 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %sc_ah.i, align 4
  %caps60.i = getelementptr inbounds %struct.ath_hw, ptr %338, i32 0, i32 6
  %339 = ptrtoint ptr %caps60.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %caps60.i, align 4
  %and62.i = and i32 %340, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.end52.i.if.end67.i_crit_edge, label %if.then64.i

if.end52.i.if.end67.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i

if.then64.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  %sbands.i = getelementptr inbounds %struct.ath_hw, ptr %259, i32 0, i32 3, i32 31
  %341 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %wiphy.i, align 8
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %342, i32 0, i32 53
  %343 = ptrtoint ptr %bands.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %sbands.i, ptr %bands.i, align 16
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then64.i, %if.end52.i.if.end67.i_crit_edge
  %344 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %sc_ah.i, align 4
  %caps69.i = getelementptr inbounds %struct.ath_hw, ptr %345, i32 0, i32 6
  %346 = ptrtoint ptr %caps69.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %caps69.i, align 4
  %and71.i = and i32 %347, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.end67.i.if.end79.i_crit_edge, label %if.then73.i

if.end67.i.if.end79.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79.i

if.then73.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx75.i = getelementptr %struct.ath_hw, ptr %259, i32 0, i32 3, i32 31, i32 1
  %348 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %wiphy.i, align 8
  %arrayidx78.i = getelementptr %struct.wiphy, ptr %349, i32 0, i32 53, i32 1
  %350 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %arrayidx75.i, ptr %arrayidx78.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then73.i, %if.end67.i.if.end79.i_crit_edge
  %351 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %sc_ah.i, align 4
  %common.i.i.i75 = getelementptr inbounds %struct.ath_hw, ptr %352, i32 0, i32 3
  %call1.i.i76 = call zeroext i1 @ath9k_is_chanctx_enabled() #6
  br i1 %call1.i.i76, label %if.end.i.i80, label %if.end79.i.ath9k_set_hw_capab.exit_crit_edge

if.end79.i.ath9k_set_hw_capab.exit_crit_edge:     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_set_hw_capab.exit

if.end.i.i80:                                     ; preds = %if.end79.i
  %353 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %flags.i.i, align 4
  %or.i.i.i.i = or i32 %354, 262144
  store i32 %or.i.i.i.i, ptr %flags.i.i, align 4
  %355 = ptrtoint ptr %queues.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 10, ptr %queues.i, align 4
  %offchannel_tx_hw_queue.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 20
  %356 = ptrtoint ptr %offchannel_tx_hw_queue.i.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 9, ptr %offchannel_tx_hw_queue.i.i, align 1
  %357 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %wiphy.i, align 8
  %iface_combinations.i.i = getelementptr inbounds %struct.wiphy, ptr %358, i32 0, i32 5
  %359 = ptrtoint ptr %iface_combinations.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr @if_comb_multi, ptr %iface_combinations.i.i, align 16
  %360 = load ptr, ptr %wiphy.i, align 8
  %n_iface_combinations.i.i = getelementptr inbounds %struct.wiphy, ptr %360, i32 0, i32 6
  %361 = ptrtoint ptr %n_iface_combinations.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 1, ptr %n_iface_combinations.i.i, align 4
  %362 = load ptr, ptr %wiphy.i, align 8
  %max_scan_ssids.i.i = getelementptr inbounds %struct.wiphy, ptr %362, i32 0, i32 18
  %363 = ptrtoint ptr %max_scan_ssids.i.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 -1, ptr %max_scan_ssids.i.i, align 32
  %364 = load ptr, ptr %wiphy.i, align 8
  %max_scan_ie_len.i.i = getelementptr inbounds %struct.wiphy, ptr %364, i32 0, i32 22
  %365 = ptrtoint ptr %max_scan_ie_len.i.i to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 2304, ptr %max_scan_ie_len.i.i, align 4
  %366 = load ptr, ptr %wiphy.i, align 8
  %max_remain_on_channel_duration.i.i = getelementptr inbounds %struct.wiphy, ptr %366, i32 0, i32 42
  %367 = ptrtoint ptr %max_remain_on_channel_duration.i.i to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 10000, ptr %max_remain_on_channel_duration.i.i, align 8
  %chanctx_data_size.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 9
  %368 = ptrtoint ptr %chanctx_data_size.i.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 4, ptr %chanctx_data_size.i.i, align 4
  %extra_beacon_tailroom.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 6
  %369 = ptrtoint ptr %extra_beacon_tailroom.i.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 63, ptr %extra_beacon_tailroom.i.i, align 8
  %debug_mask.i.i77 = getelementptr inbounds %struct.ath_hw, ptr %352, i32 0, i32 3, i32 3
  %370 = ptrtoint ptr %debug_mask.i.i77 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %debug_mask.i.i77, align 4
  %and.i.i78 = and i32 %371, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i78)
  %tobool.not.i.i79 = icmp eq i32 %and.i.i78, 0
  br i1 %tobool.not.i.i79, label %if.end.i.i80.ath9k_set_hw_capab.exit_crit_edge, label %if.then8.i.i81

if.end.i.i80.ath9k_set_hw_capab.exit_crit_edge:   ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_set_hw_capab.exit

if.then8.i.i81:                                   ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i.i75, ptr noundef nonnull @.str.56) #6
  br label %ath9k_set_hw_capab.exit

ath9k_set_hw_capab.exit:                          ; preds = %if.then8.i.i81, %if.end.i.i80.ath9k_set_hw_capab.exit_crit_edge, %if.end79.i.ath9k_set_hw_capab.exit_crit_edge
  call void @ath9k_init_wow(ptr noundef %1) #6
  call void @ath9k_cmn_reload_chainmask(ptr noundef %259) #6
  %macaddr.i = getelementptr inbounds %struct.ath_hw, ptr %259, i32 0, i32 3, i32 9
  %372 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %373, i32 0, i32 1
  %374 = call ptr @memcpy(ptr %perm_addr.i.i, ptr %macaddr.i, i32 6)
  %375 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i.i = getelementptr %struct.wiphy, ptr %375, i32 0, i32 14, i32 1
  %376 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %arrayidx.i.i, align 1
  %conv1.i.i = or i8 %377, 32
  store i8 %conv1.i.i, ptr %arrayidx.i.i, align 1
  %378 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i167.i = getelementptr %struct.wiphy, ptr %378, i32 0, i32 14, i32 4
  %379 = ptrtoint ptr %arrayidx.i167.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %arrayidx.i167.i, align 1
  %conv1.i168.i = or i8 %380, 2
  store i8 %conv1.i168.i, ptr %arrayidx.i167.i, align 1
  %381 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i169.i = getelementptr %struct.wiphy, ptr %381, i32 0, i32 14, i32 5
  %382 = ptrtoint ptr %arrayidx.i169.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx.i169.i, align 1
  %conv1.i170.i = or i8 %383, 32
  store i8 %conv1.i170.i, ptr %arrayidx.i169.i, align 1
  %384 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i171.i = getelementptr %struct.wiphy, ptr %384, i32 0, i32 14, i32 3
  %385 = ptrtoint ptr %arrayidx.i171.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %arrayidx.i171.i, align 1
  %conv1.i172.i = or i8 %386, -128
  store i8 %conv1.i172.i, ptr %arrayidx.i171.i, align 1
  %regulatory = getelementptr inbounds %struct.ath_hw, ptr %259, i32 0, i32 3, i32 22
  %387 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %sc, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %388, i32 0, i32 1
  %389 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %wiphy, align 8
  %call4 = call i32 @ath_regd_init(ptr noundef %regulatory, ptr noundef %390, ptr noundef nonnull @ath9k_reg_notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %ath9k_set_hw_capab.exit.deinit_crit_edge

ath9k_set_hw_capab.exit.deinit_crit_edge:         ; preds = %ath9k_set_hw_capab.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %deinit

if.end7:                                          ; preds = %ath9k_set_hw_capab.exit
  %call9 = call i32 @ath_tx_init(ptr noundef %sc, i32 noundef 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end11, label %if.end7.deinit_crit_edge

if.end7.deinit_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %deinit

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @ath_rx_init(ptr noundef %sc, i32 noundef 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end11.deinit_crit_edge

if.end11.deinit_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %deinit

if.end15:                                         ; preds = %if.end11
  call fastcc void @ath9k_init_txpower_limits(ptr noundef %sc)
  %391 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %sc, align 8
  %call.i = call ptr @__ieee80211_create_tpt_led_trigger(ptr noundef %392, i32 noundef 1, ptr noundef nonnull @ath9k_tpt_blink, i32 noundef 10) #6
  %default_trigger = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 43, i32 14
  %393 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %call.i, ptr %default_trigger, align 4
  %394 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %wiphy.i, align 8
  call void @wiphy_read_of_freq_limits(ptr noundef %395) #6
  %call19 = call i32 @ieee80211_register_hw(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end15.rx_cleanup_crit_edge

if.end15.rx_cleanup_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_cleanup

if.end22:                                         ; preds = %if.end15
  %call23 = call i32 @ath9k_init_debug(ptr noundef %259) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.5) #6
  br label %unregister

if.end26:                                         ; preds = %if.end22
  %call27 = call zeroext i1 @ath_is_world_regd(ptr noundef %regulatory) #6
  br i1 %call27, label %if.end26.if.end34_crit_edge, label %if.then28

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then28:                                        ; preds = %if.end26
  %396 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %wiphy.i, align 8
  %call30 = call i32 @regulatory_hint(ptr noundef %397, ptr noundef %regulatory) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then28.if.end34_crit_edge, label %debug_cleanup

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.end34:                                         ; preds = %if.then28.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  call void @ath_init_leds(ptr noundef %sc) #6
  call void @ath_start_rfkill_poll(ptr noundef %sc) #6
  br label %cleanup

debug_cleanup:                                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  call void @ath9k_deinit_debug(ptr noundef %sc) #6
  br label %unregister

unregister:                                       ; preds = %debug_cleanup, %if.then25
  %error.0 = phi i32 [ %call23, %if.then25 ], [ %call30, %debug_cleanup ]
  call void @ieee80211_unregister_hw(ptr noundef %1) #6
  br label %rx_cleanup

rx_cleanup:                                       ; preds = %unregister, %if.end15.rx_cleanup_crit_edge
  %error.1 = phi i32 [ %call19, %if.end15.rx_cleanup_crit_edge ], [ %error.0, %unregister ]
  call void @ath_rx_cleanup(ptr noundef %sc) #6
  br label %deinit

deinit:                                           ; preds = %rx_cleanup, %if.end11.deinit_crit_edge, %if.end7.deinit_crit_edge, %ath9k_set_hw_capab.exit.deinit_crit_edge
  %error.2 = phi i32 [ %call4, %ath9k_set_hw_capab.exit.deinit_crit_edge ], [ %call9, %if.end7.deinit_crit_edge ], [ %call12, %if.end11.deinit_crit_edge ], [ %error.1, %rx_cleanup ]
  call fastcc void @ath9k_deinit_softc(ptr noundef %sc)
  br label %cleanup

cleanup:                                          ; preds = %deinit, %if.end34, %ath9k_init_softc.exit, %ath9k_init_softc.exit.thread
  %retval.0 = phi i32 [ %error.2, %deinit ], [ 0, %if.end34 ], [ %retval.0.i318.i, %ath9k_init_softc.exit ], [ %retval.0.i.ph, %ath9k_init_softc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_regd_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_reg_notifier(ptr noundef %wiphy, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #6
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %regulatory.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 22
  tail call void @ath_reg_notifier_apply(ptr noundef %wiphy, ptr noundef %request, ptr noundef %regulatory.i) #6
  %dfs_detector = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 55
  %4 = ptrtoint ptr %dfs_detector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dfs_detector, align 8
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %set_dfs_domain = getelementptr inbounds %struct.dfs_pattern_detector, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %set_dfs_domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_dfs_domain, align 4
  %dfs_region = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 5
  %8 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dfs_region, align 4
  %call4 = tail call zeroext i1 %7(ptr noundef nonnull %5, i32 noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %curchan, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %max_power = getelementptr inbounds %struct.ieee80211_channel, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_power, align 4
  %.tr = trunc i32 %15 to i16
  %conv = shl i16 %.tr, 1
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %16 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_chan, align 8
  %txpower = getelementptr inbounds %struct.ath_chanctx, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %txpower to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %txpower, align 8
  tail call void @ath9k_ps_wakeup(ptr noundef %1) #6
  %19 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur_chan, align 8
  %txpower9 = getelementptr inbounds %struct.ath_chanctx, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %txpower9 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %txpower9, align 8
  %conv10 = zext i16 %22 to i32
  tail call void @ath9k_hw_set_txpowerlimit(ptr noundef %3, i32 noundef %conv10, i1 noundef zeroext false) #6
  %23 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_chan, align 8
  %cur_txpower = getelementptr inbounds %struct.ath_chanctx, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %cur_txpower to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cur_txpower, align 2
  %txpower13 = getelementptr inbounds %struct.ath_chanctx, ptr %24, i32 0, i32 11
  %27 = ptrtoint ptr %txpower13 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %txpower13, align 8
  tail call void @ath9k_cmn_update_txpow(ptr noundef %3, i16 noundef zeroext %26, i16 noundef zeroext %28, ptr noundef %cur_txpower) #6
  tail call void @ath9k_ps_restore(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_tx_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_rx_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_init_txpower_limits(ptr nocapture noundef readonly %sc) unnamed_addr #0 align 64 {
entry:
  %chandef.i14 = alloca %struct.cfg80211_chan_def, align 4
  %chandef.i = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %curchan1 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %curchan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curchan1, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef.i) #6
  %6 = call ptr @memset(ptr %chandef.i, i32 255, i32 28)
  %arrayidx.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 3, i32 31, i32 0
  %n_channels.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 3, i32 31, i32 0, i32 3
  %7 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp14.i = icmp sgt i32 %8, 0
  br i1 %cmp14.i, label %if.then.for.body.i_crit_edge, label %if.then.ath9k_init_band_txpower.exit_crit_edge

if.then.ath9k_init_band_txpower.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_init_band_txpower.exit

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ieee80211_channel, ptr %10, i32 %i.015.i
  %hw_value.i = getelementptr %struct.ieee80211_channel, ptr %10, i32 %i.015.i, i32 3
  %11 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hw_value.i, align 2
  %idxprom.i = zext i16 %12 to i32
  %arrayidx3.i = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 7, i32 %idxprom.i
  %13 = ptrtoint ptr %curchan1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx3.i, ptr %curchan1, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef.i, ptr noundef %arrayidx1.i, i32 noundef 1) #6
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 8
  %call4.i = call ptr @ath9k_cmn_get_channel(ptr noundef %15, ptr noundef %1, ptr noundef nonnull %chandef.i) #6
  call void @ath9k_hw_set_txpowerlimit(ptr noundef %1, i32 noundef 254, i1 noundef zeroext true) #6
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %16 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_channels.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath9k_init_band_txpower.exit_crit_edge

for.body.i.ath9k_init_band_txpower.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_init_band_txpower.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath9k_init_band_txpower.exit:                     ; preds = %for.body.i.ath9k_init_band_txpower.exit_crit_edge, %if.then.ath9k_init_band_txpower.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef.i) #6
  br label %if.end

if.end:                                           ; preds = %ath9k_init_band_txpower.exit, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps, align 4
  %and4 = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %20 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef.i14) #6
  %22 = call ptr @memset(ptr %chandef.i14, i32 255, i32 28)
  %arrayidx.i16 = getelementptr %struct.ath_hw, ptr %21, i32 0, i32 3, i32 31, i32 1
  %n_channels.i17 = getelementptr %struct.ath_hw, ptr %21, i32 0, i32 3, i32 31, i32 1, i32 3
  %23 = ptrtoint ptr %n_channels.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_channels.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp14.i18 = icmp sgt i32 %24, 0
  br i1 %cmp14.i18, label %for.body.lr.ph.i20, label %if.then6.ath9k_init_band_txpower.exit30_crit_edge

if.then6.ath9k_init_band_txpower.exit30_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_init_band_txpower.exit30

for.body.lr.ph.i20:                               ; preds = %if.then6
  %curchan.i19 = getelementptr inbounds %struct.ath_hw, ptr %21, i32 0, i32 8
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.body.i29.for.body.i29_crit_edge, %for.body.lr.ph.i20
  %i.015.i21 = phi i32 [ 0, %for.body.lr.ph.i20 ], [ %inc.i27, %for.body.i29.for.body.i29_crit_edge ]
  %25 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i16, align 4
  %arrayidx1.i22 = getelementptr %struct.ieee80211_channel, ptr %26, i32 %i.015.i21
  %hw_value.i23 = getelementptr %struct.ieee80211_channel, ptr %26, i32 %i.015.i21, i32 3
  %27 = ptrtoint ptr %hw_value.i23 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hw_value.i23, align 2
  %idxprom.i24 = zext i16 %28 to i32
  %arrayidx3.i25 = getelementptr %struct.ath_hw, ptr %21, i32 0, i32 7, i32 %idxprom.i24
  %29 = ptrtoint ptr %curchan.i19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx3.i25, ptr %curchan.i19, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef.i14, ptr noundef %arrayidx1.i22, i32 noundef 1) #6
  %30 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sc, align 8
  %call4.i26 = call ptr @ath9k_cmn_get_channel(ptr noundef %31, ptr noundef %21, ptr noundef nonnull %chandef.i14) #6
  call void @ath9k_hw_set_txpowerlimit(ptr noundef %21, i32 noundef 254, i1 noundef zeroext true) #6
  %inc.i27 = add nuw nsw i32 %i.015.i21, 1
  %32 = ptrtoint ptr %n_channels.i17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_channels.i17, align 4
  %cmp.i28 = icmp slt i32 %inc.i27, %33
  br i1 %cmp.i28, label %for.body.i29.for.body.i29_crit_edge, label %for.body.i29.ath9k_init_band_txpower.exit30_crit_edge

for.body.i29.ath9k_init_band_txpower.exit30_crit_edge: ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_init_band_txpower.exit30

for.body.i29.for.body.i29_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i29

ath9k_init_band_txpower.exit30:                   ; preds = %for.body.i29.ath9k_init_band_txpower.exit30_crit_edge, %if.then6.ath9k_init_band_txpower.exit30_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef.i14) #6
  br label %if.end7

if.end7:                                          ; preds = %ath9k_init_band_txpower.exit30, %if.end.if.end7_crit_edge
  %34 = ptrtoint ptr %curchan1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %3, ptr %curchan1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_read_of_freq_limits(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_init_debug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_is_world_regd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_init_leds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_start_rfkill_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_deinit_debug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_rx_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_deinit_softc(ptr noundef %sc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ath9k_deinit_p2p(ptr noundef %sc) #6
  tail call void @ath9k_deinit_btcoex(ptr noundef %sc) #6
  %tx = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 0
  tail call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx, align 4
  %and.1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 1
  tail call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx.1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx, align 4
  %and.2 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 2
  tail call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx.2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx, align 4
  %and.3 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 3
  tail call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx.3) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx, align 4
  %and.4 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.4 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 4
  tail call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx.4) #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx, align 4
  %and.5 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 5
  tail call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx.5) #6
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %12 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx, align 4
  %and.6 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.6 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 6
  tail call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx.6) #6
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx, align 4
  %and.7 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.7 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 7
  tail call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx.7) #6
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %16 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx, align 4
  %and.8 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.8 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 8
  tail call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx.8) #6
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7.for.inc.8_crit_edge
  %18 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx, align 4
  %and.9 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.9 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 9
  tail call void @ath_tx_cleanupq(ptr noundef %sc, ptr noundef %arrayidx.9) #6
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8.for.inc.9_crit_edge
  %sleep_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 47
  %call = tail call i32 @del_timer_sync(ptr noundef %sleep_timer) #6
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %20 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_deinit(ptr noundef %21) #6
  %dfs_detector = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 55
  %22 = ptrtoint ptr %dfs_detector to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dfs_detector, align 8
  %cmp2.not = icmp eq ptr %23, null
  br i1 %cmp2.not, label %for.inc.9.if.end6_crit_edge, label %if.then3

for.inc.9.if.end6_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  tail call void %25(ptr noundef nonnull %23) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %for.inc.9.if.end6_crit_edge
  %26 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sc_ah, align 4
  %eeprom_blob.i = getelementptr inbounds %struct.ath_hw, ptr %27, i32 0, i32 133
  %28 = ptrtoint ptr %eeprom_blob.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %eeprom_blob.i, align 4
  tail call void @release_firmware(ptr noundef %29) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_deinit_device(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 8
  tail call void @ath9k_ps_wakeup(ptr noundef %sc) #6
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %rfkill.i = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 82
  %6 = ptrtoint ptr %rfkill.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rfkill.i, align 8
  tail call void @rfkill_pause_polling(ptr noundef %7) #6
  tail call void @ath_deinit_leds(ptr noundef %sc) #6
  tail call void @ath9k_ps_restore(ptr noundef %sc) #6
  tail call void @ath9k_deinit_debug(ptr noundef %sc) #6
  tail call void @ath9k_deinit_wow(ptr noundef %1) #6
  tail call void @ieee80211_unregister_hw(ptr noundef %1) #6
  tail call void @ath_rx_cleanup(ptr noundef %sc) #6
  tail call fastcc void @ath9k_deinit_softc(ptr noundef %sc)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_deinit_leds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_deinit_wow(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ath_pci_init() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ath_ahb_init() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath_pci_exit() #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %if.then4 ], [ -19, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  store i8 1, ptr @is_ath9k_unloaded, align 1
  tail call void @ath_ahb_exit() #6
  tail call void @ath_pci_exit() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.64) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_ahb_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_pci_exit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_ioread32(ptr nocapture noundef readonly %hw_priv, i32 noundef %reg_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %serialize_regmode = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 5, i32 10
  %2 = ptrtoint ptr %serialize_regmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %serialize_regmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sc_serial_rw = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_serial_rw) #6
  %mem = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %reg_offset
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !226
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_serial_rw, i32 noundef %call4) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mem9 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %mem9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem9, align 8
  %add.ptr10 = getelementptr i8, ptr %9, i32 %reg_offset
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #6, !srcloc !226
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %7, %if.then ], [ %11, %if.else ]
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_multi_ioread32(ptr nocapture noundef readonly %hw_priv, ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %val, i16 noundef zeroext %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %count to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp6.not = icmp eq i16 %count, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %serialize_regmode.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 5, i32 10
  br label %for.body

for.body:                                         ; preds = %ath9k_ioread32.exit.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ath9k_ioread32.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %addr, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %4 = ptrtoint ptr %serialize_regmode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %serialize_regmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %sc_serial_rw.i = getelementptr inbounds %struct.ath_softc, ptr %3, i32 0, i32 10
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_serial_rw.i) #6
  %mem.i = getelementptr inbounds %struct.ath_softc, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !226
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_serial_rw.i, i32 noundef %call4.i) #6
  br label %ath9k_ioread32.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %mem9.i = getelementptr inbounds %struct.ath_softc, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %mem9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem9.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %11, i32 %1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #6, !srcloc !226
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  br label %ath9k_ioread32.exit

ath9k_ioread32.exit:                              ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %9, %if.then.i ], [ %13, %if.else.i ]
  %arrayidx2 = getelementptr i32, ptr %val, i32 %i.07
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %val.0.i, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %ath9k_ioread32.exit.for.end_crit_edge, label %ath9k_ioread32.exit.for.body_crit_edge

ath9k_ioread32.exit.for.body_crit_edge:           ; preds = %ath9k_ioread32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

ath9k_ioread32.exit.for.end_crit_edge:            ; preds = %ath9k_ioread32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %ath9k_ioread32.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_iowrite32(ptr nocapture noundef readonly %hw_priv, i32 noundef %val, i32 noundef %reg_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %serialize_regmode = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 5, i32 10
  %2 = ptrtoint ptr %serialize_regmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %serialize_regmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sc_serial_rw = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_serial_rw) #6
  %mem = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %reg_offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !229
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_serial_rw, i32 noundef %call4) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mem8 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %mem8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem8, align 8
  %add.ptr9 = getelementptr i8, ptr %8, i32 %reg_offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #6, !srcloc !229
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_reg_rmw(ptr nocapture noundef readonly %hw_priv, i32 noundef %reg_offset, i32 noundef %set, i32 noundef %clr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %serialize_regmode = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 5, i32 10
  %2 = ptrtoint ptr %serialize_regmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %serialize_regmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sc_serial_rw = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_serial_rw) #6
  %mem.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %reg_offset
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !226
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  %neg.i = xor i32 %clr, -1
  %and.i = and i32 %7, %neg.i
  %or.i = or i32 %and.i, %set
  %8 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %9, i32 %reg_offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %10) #6, !srcloc !229
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_serial_rw, i32 noundef %call4) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mem.i17 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %mem.i17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem.i17, align 8
  %add.ptr.i18 = getelementptr i8, ptr %12, i32 %reg_offset
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #6, !srcloc !226
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  %neg.i19 = xor i32 %clr, -1
  %and.i20 = and i32 %14, %neg.i19
  %or.i21 = or i32 %and.i20, %set
  %15 = ptrtoint ptr %mem.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem.i17, align 8
  %add.ptr2.i22 = getelementptr i8, ptr %16, i32 %reg_offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i21) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i22, i32 %17) #6, !srcloc !229
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body1
  %val.0 = phi i32 [ %or.i, %do.body1 ], [ %or.i21, %if.else ]
  ret i32 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dfs_pattern_detector_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_is_chanctx_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_tasklet(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_beacon_tasklet(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_ps_full_sleep(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_reset_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_paprd_calibrate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_pll_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_check_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_init_channel_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_init_btcoex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_cmn_init_channels_rates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_init_p2p(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_init_crypto(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_init_misc(ptr nocapture noundef %sc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 5
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ath_ani_calibrate, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @ath9k_init_misc.__key) #6
  %last_rssi = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 30
  %2 = ptrtoint ptr %last_rssi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 127, ptr %last_rssi, align 4
  %bssidmask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 11
  %3 = call ptr @memset(ptr %bssidmask, i32 255, i32 6)
  %slottime = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 4
  %4 = ptrtoint ptr %slottime to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9, ptr %slottime, align 4
  %uglygep = getelementptr i8, ptr %sc, i32 8064
  %5 = call ptr @memset(ptr %uglygep, i32 0, i32 32)
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps, align 4
  %and = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ant_comb = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52
  %10 = ptrtoint ptr %ant_comb to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 95, ptr %ant_comb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %spec_priv = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58
  %11 = ptrtoint ptr %spec_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %spec_priv, align 4
  %spec_config = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58, i32 3
  %12 = ptrtoint ptr %spec_config to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %spec_config, align 4
  %short_repeat = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58, i32 3, i32 1
  %13 = ptrtoint ptr %short_repeat to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %short_repeat, align 1
  %count9 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58, i32 3, i32 3
  %14 = ptrtoint ptr %count9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %count9, align 1
  %endless = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58, i32 3, i32 2
  %15 = ptrtoint ptr %endless to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %endless, align 2
  %period = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58, i32 3, i32 4
  %16 = ptrtoint ptr %period to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %period, align 4
  %fft_period = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58, i32 3, i32 5
  %17 = ptrtoint ptr %fft_period to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %fft_period, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_chanctx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_offchannel_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_tx_cleanupq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_op_ps_wakeup(ptr nocapture noundef readonly %common) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ath9k_ps_wakeup(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_op_ps_restore(ptr nocapture noundef readonly %common) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ath9k_ps_restore(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath9k_eeprom_request(ptr nocapture noundef readonly %sc, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %ec = alloca %struct.ath9k_eeprom_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %ec) #6
  %0 = getelementptr inbounds i8, ptr %ec, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %4 = ptrtoint ptr %ec to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ec, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %ec, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @init_completion.__key) #6
  %5 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc_ah, align 4
  %ah2 = getelementptr inbounds %struct.ath9k_eeprom_ctx, ptr %ec, i32 0, i32 1
  %7 = ptrtoint ptr %ah2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ah2, align 4
  %dev = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call = call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %name, ptr noundef %9, i32 noundef 3264, ptr noundef nonnull %ec, ptr noundef nonnull @ath9k_eeprom_request_cb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.48) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @wait_for_completion(ptr noundef nonnull %ec) #6
  %eeprom_blob = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 133
  %10 = ptrtoint ptr %eeprom_blob to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eeprom_blob, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %common.i16 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i16, ptr noundef nonnull @.str.49, ptr noundef %name) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ec) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_eeprom_request_cb(ptr noundef %eeprom_blob, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %eeprom_blob, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ah = getelementptr inbounds %struct.ath9k_eeprom_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %eeprom_blob1 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 133
  %2 = ptrtoint ptr %eeprom_blob1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %eeprom_blob, ptr %eeprom_blob1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @complete(ptr noundef %ctx) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_beaconq_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath_txq_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_cabq_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_ani_calibrate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_init_wow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_reload_chainmask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_reg_notifier_apply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_txpowerlimit(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_update_txpow(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath9k_cmn_get_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_create_tpt_led_trigger(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_deinit_p2p(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_deinit_btcoex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_pause_polling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_pci_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_ahb_init() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !58, !60, !62, !64, !66, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !145, !146, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !171, !173, !175, !177, !179, !181, !182, !184, !186, !188, !190, !192, !193, !194, !195, !197, !199, !201, !203, !205, !207, !209}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @__UNIQUE_ID_author358, !1, !"__UNIQUE_ID_author358", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_description359, !3, !"__UNIQUE_ID_description359", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 40, i32 1}
!4 = !{ptr @__UNIQUE_ID_file360, !5, !"__UNIQUE_ID_file360", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 41, i32 1}
!6 = !{ptr @__UNIQUE_ID_license361, !5, !"__UNIQUE_ID_license361", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 44, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype362, !8, !"__UNIQUE_ID_debugtype362", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug363, !11, !"__UNIQUE_ID_debug363", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 45, i32 1}
!12 = !{ptr @__param_nohwcrypt, !13, !"__param_nohwcrypt", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 48, i32 1}
!14 = !{ptr @__UNIQUE_ID_nohwcrypttype364, !13, !"__UNIQUE_ID_nohwcrypttype364", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_nohwcrypt365, !16, !"__UNIQUE_ID_nohwcrypt365", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 49, i32 1}
!17 = !{ptr @__param_blink, !18, !"__param_blink", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 52, i32 1}
!19 = !{ptr @__UNIQUE_ID_blinktype366, !18, !"__UNIQUE_ID_blinktype366", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_blink367, !21, !"__UNIQUE_ID_blink367", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 53, i32 1}
!22 = !{ptr @__param_led_active_high, !23, !"__param_led_active_high", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 56, i32 1}
!24 = !{ptr @__UNIQUE_ID_led_active_hightype368, !23, !"__UNIQUE_ID_led_active_hightype368", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_led_active_high369, !26, !"__UNIQUE_ID_led_active_high369", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 57, i32 1}
!27 = !{ptr @__param_btcoex_enable, !28, !"__param_btcoex_enable", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 60, i32 1}
!29 = !{ptr @__UNIQUE_ID_btcoex_enabletype370, !28, !"__UNIQUE_ID_btcoex_enabletype370", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_btcoex_enable371, !31, !"__UNIQUE_ID_btcoex_enable371", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 61, i32 1}
!32 = !{ptr @__param_bt_ant_diversity, !33, !"__param_bt_ant_diversity", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 64, i32 1}
!34 = !{ptr @__UNIQUE_ID_bt_ant_diversitytype372, !33, !"__UNIQUE_ID_bt_ant_diversitytype372", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_bt_ant_diversity373, !36, !"__UNIQUE_ID_bt_ant_diversity373", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 65, i32 1}
!37 = !{ptr @__param_ps_enable, !38, !"__param_ps_enable", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 68, i32 1}
!39 = !{ptr @__UNIQUE_ID_ps_enabletype374, !38, !"__UNIQUE_ID_ps_enabletype374", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_ps_enable375, !41, !"__UNIQUE_ID_ps_enable375", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 69, i32 1}
!42 = !{ptr @__param_use_chanctx, !43, !"__param_use_chanctx", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 74, i32 1}
!44 = !{ptr @__UNIQUE_ID_use_chanctxtype376, !43, !"__UNIQUE_ID_use_chanctxtype376", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_use_chanctx377, !46, !"__UNIQUE_ID_use_chanctx377", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 75, i32 1}
!47 = !{ptr @__param_use_msi, !48, !"__param_use_msi", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 80, i32 1}
!49 = !{ptr @__UNIQUE_ID_use_msitype378, !48, !"__UNIQUE_ID_use_msitype378", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_use_msi379, !51, !"__UNIQUE_ID_use_msi379", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 81, i32 1}
!52 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 291, i32 2}
!54 = !{ptr @.str.1, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.2, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 303, i32 3}
!57 = !{ptr @.str.3, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.4, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 335, i32 2}
!60 = !{ptr @.str.5, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 1106, i32 3}
!62 = !{ptr @__initcall__kmod_ath9k__380_1204_ath9k_init6, !63, !"__initcall__kmod_ath9k__380_1204_ath9k_init6", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 1204, i32 1}
!64 = !{ptr @.str.6, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 1211, i32 2}
!66 = !{ptr @.str.7, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.8, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ath9k_exit._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @ath9k_exit._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @__exitcall_ath9k_exit, !71, !"__exitcall_ath9k_exit", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 1213, i32 1}
!72 = !{ptr @ath9k_modparam_nohwcrypt, !73, !"ath9k_modparam_nohwcrypt", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 47, i32 5}
!74 = !{ptr @ath9k_led_blink, !75, !"ath9k_led_blink", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 51, i32 5}
!76 = !{ptr @ath9k_btcoex_enable, !77, !"ath9k_btcoex_enable", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 59, i32 12}
!78 = !{ptr @ath9k_bt_ant_diversity, !79, !"ath9k_bt_ant_diversity", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 63, i32 12}
!80 = !{ptr @ath9k_ps_enable, !81, !"ath9k_ps_enable", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 67, i32 12}
!82 = !{ptr @ath9k_use_chanctx, !83, !"ath9k_use_chanctx", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 73, i32 5}
!84 = !{ptr @ath9k_use_msi, !85, !"ath9k_use_msi", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 79, i32 5}
!86 = !{ptr @is_ath9k_unloaded, !87, !"is_ath9k_unloaded", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 83, i32 6}
!88 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!89 = !{ptr @ath9k_debug, !90, !"ath9k_debug", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 43, i32 21}
!91 = !{ptr @__param_str_nohwcrypt, !13, !"__param_str_nohwcrypt", i1 false, i1 false}
!92 = !{ptr @__param_str_blink, !18, !"__param_str_blink", i1 false, i1 false}
!93 = !{ptr @__param_str_led_active_high, !23, !"__param_str_led_active_high", i1 false, i1 false}
!94 = !{ptr @ath9k_led_active_high, !95, !"ath9k_led_active_high", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 55, i32 12}
!96 = !{ptr @__param_str_btcoex_enable, !28, !"__param_str_btcoex_enable", i1 false, i1 false}
!97 = !{ptr @__param_str_bt_ant_diversity, !33, !"__param_str_bt_ant_diversity", i1 false, i1 false}
!98 = !{ptr @__param_str_ps_enable, !38, !"__param_str_ps_enable", i1 false, i1 false}
!99 = !{ptr @__param_str_use_chanctx, !43, !"__param_str_use_chanctx", i1 false, i1 false}
!100 = !{ptr @__param_str_use_msi, !48, !"__param_str_use_msi", i1 false, i1 false}
!101 = !{ptr @ath9k_init_softc.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 731, i32 2}
!103 = !{ptr @.str.9, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ath9k_init_softc.__key.10, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 777, i32 2}
!106 = !{ptr @.str.11, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ath9k_init_softc.__key.12, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 778, i32 2}
!109 = !{ptr @.str.13, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ath9k_init_softc.__key.14, !111, !"__key", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 779, i32 2}
!112 = !{ptr @.str.15, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ath9k_init_softc.__key.16, !114, !"__key", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 780, i32 2}
!115 = !{ptr @.str.17, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ath9k_init_softc.__key.18, !117, !"__key", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 781, i32 2}
!118 = !{ptr @.str.19, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ath9k_init_softc.__key.20, !120, !"__key", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 782, i32 2}
!121 = !{ptr @.str.21, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ath9k_init_softc.__key.22, !123, !"__key", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 786, i32 2}
!124 = !{ptr @.str.23, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ath9k_init_softc.__key.24, !126, !"__key", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 787, i32 2}
!127 = !{ptr @.str.25, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ath9k_init_softc.__key.26, !129, !"__key", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 788, i32 2}
!130 = !{ptr @.str.27, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ath9k_init_softc.__key.28, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 789, i32 2}
!133 = !{ptr @.str.29, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ath9k_init_softc.__key.30, !132, !"__key", i1 false, i1 false}
!135 = !{ptr @.str.31, !132, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ath9k_init_softc.__key.32, !137, !"__key", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 790, i32 2}
!138 = !{ptr @.str.33, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ath9k_init_softc.__key.34, !137, !"__key", i1 false, i1 false}
!140 = !{ptr @.str.35, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ath9k_ps_ops, !142, !"ath9k_ps_ops", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 162, i32 32}
!143 = !{ptr @.str.36, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 470, i32 3}
!145 = !{ptr @.str.37, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.38, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.39, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.40, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 476, i32 3}
!150 = !{ptr @.str.41, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 479, i32 3}
!152 = !{ptr @.str.42, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 482, i32 3}
!154 = !{ptr @.str.43, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 485, i32 3}
!156 = !{ptr @.str.44, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 488, i32 3}
!158 = !{ptr @.str.45, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 503, i32 3}
!160 = !{ptr @.str.46, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 508, i32 3}
!162 = !{ptr @.str.47, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 520, i32 3}
!164 = !{ptr @.str.48, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 551, i32 3}
!166 = !{ptr @.str.49, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 559, i32 3}
!168 = !{ptr @init_completion.__key, !169, !"__key", i1 false, i1 false}
!169 = !{!"../include/linux/completion.h", i32 87, i32 2}
!170 = !{ptr @.str.50, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.51, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 678, i32 2}
!173 = !{ptr @.str.52, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 680, i32 32}
!175 = !{ptr @.str.53, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 683, i32 6}
!177 = !{ptr @.str.54, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 580, i32 38}
!179 = !{ptr @ath9k_init_misc.__key, !180, !"__key", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 428, i32 2}
!181 = !{ptr @.str.55, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.56, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 946, i32 2}
!184 = !{ptr @if_comb_multi, !185, !"if_comb_multi", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 898, i32 49}
!186 = !{ptr @if_limits_multi, !187, !"if_limits_multi", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 889, i32 43}
!188 = !{ptr @ath9k_tpt_blink, !189, !"ath9k_tpt_blink", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 86, i32 41}
!190 = !{ptr @.str.57, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 1184, i32 3}
!192 = !{ptr @.str.58, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @ath9k_init._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @ath9k_init._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = distinct !{null, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 109, i32 12}
!197 = distinct !{null, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 117, i32 12}
!199 = distinct !{null, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 125, i32 12}
!201 = distinct !{null, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 133, i32 12}
!203 = distinct !{null, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 141, i32 12}
!205 = distinct !{null, !206, !"ath9k_quirks", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 106, i32 35}
!207 = !{ptr @.str.64, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 37, i32 25}
!209 = distinct !{null, !210, !"dev_info", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/ath9k/init.c", i32 37, i32 14}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{i64 2158314909, i64 2158315411, i64 2158314946, i64 2158315002, i64 2158315036, i64 2158315060, i64 2158315101, i64 2158315122, i64 2158315150, i64 2158315184}
!221 = !{!"branch_weights", i32 2000, i32 1}
!222 = !{i64 2158317931, i64 2158318433, i64 2158317968, i64 2158318024, i64 2158318058, i64 2158318082, i64 2158318123, i64 2158318144, i64 2158318172, i64 2158318206}
!223 = !{i64 2158320093, i64 2158320595, i64 2158320130, i64 2158320186, i64 2158320220, i64 2158320244, i64 2158320285, i64 2158320306, i64 2158320334, i64 2158320368}
!224 = !{i8 0, i8 2}
!225 = !{!"auto-init"}
!226 = !{i64 6247497}
!227 = !{i64 2153787846}
!228 = !{i64 2153789201}
!229 = !{i64 6247079}
