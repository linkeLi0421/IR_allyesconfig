; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/wow.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/wow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.cfg80211_pkt_pattern = type { ptr, ptr, i32, i32 }
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

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Device not present\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ath/ath9k/wow.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"None of the WoW triggers enabled\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WoW for multivif is not yet supported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Multi-channel WOW is not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"None of the STA vifs are associated\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No valid WoW triggers\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to add disassoc/deauth pattern: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to add user pattern: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Suspend with WoW triggers: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Resume with WoW status: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WoW wakeup source is %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@ath9k_wowlan_support = internal constant { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 6, i32 14, i32 256, i32 1, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@ath9k_wowlan_support_legacy = internal constant { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 6, i32 6, i32 256, i32 1, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 181, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 186, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 187, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 193, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 200, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 208, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 215, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 233, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 241, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 272, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 301, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 323, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"ath9k_wowlan_support\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 26, i32 42 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"ath9k_wowlan_support_legacy\00", align 1
@___asan_gen_.68 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath9k/wow.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 19, i32 42 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ath9k_wowlan_support, ptr @ath9k_wowlan_support_legacy], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_wowlan_support to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_wowlan_support_legacy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_suspend(ptr nocapture noundef readonly %hw, ptr noundef readonly %wowlan) local_unnamed_addr #0 align 64 {
entry:
  %dis_deauth_pattern.i = alloca [256 x i8], align 1
  %dis_deauth_mask.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void @ath9k_deinit_channel_context(ptr noundef %1) #3
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %op_flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #3
  br label %fail_wow

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %wowlan, null
  br i1 %tobool2.not, label %do.end, label %if.end27, !prof !41

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 186, i32 noundef 9, ptr noundef null) #3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3) #3
  br label %fail_wow

if.end27:                                         ; preds = %if.end
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_chan, align 8
  %nvifs = getelementptr inbounds %struct.ath_chanctx, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nvifs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp = icmp sgt i16 %9, 1
  br i1 %cmp, label %do.body30, label %if.end36

do.body30:                                        ; preds = %if.end27
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 4
  %and = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %do.body30.fail_wow_crit_edge, label %if.then32

do.body30.fail_wow_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail_wow

if.then32:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.5) #3
  br label %fail_wow

if.end36:                                         ; preds = %if.end27
  %call37 = tail call zeroext i1 @ath9k_is_chanctx_enabled() #3
  br i1 %call37, label %if.then38, label %if.end36.if.end52_crit_edge

if.end36.if.end52_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then38:                                        ; preds = %if.end36
  %12 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %op_flags, align 4
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool41.not = icmp eq i32 %14, 0
  br i1 %tobool41.not, label %if.then38.if.end52_crit_edge, label %do.body43

if.then38.if.end52_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

do.body43:                                        ; preds = %if.then38
  %debug_mask44 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %debug_mask44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_mask44, align 4
  %and45 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body43.fail_wow_crit_edge, label %if.then47

do.body43.fail_wow_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail_wow

if.then47:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.6) #3
  br label %fail_wow

if.end52:                                         ; preds = %if.then38.if.end52_crit_edge, %if.end36.if.end52_crit_edge
  %17 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %op_flags, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool55.not = icmp eq i32 %19, 0
  br i1 %tobool55.not, label %do.body57, label %if.end65

do.body57:                                        ; preds = %if.end52
  %debug_mask58 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %debug_mask58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_mask58, align 4
  %and59 = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body57.fail_wow_crit_edge, label %if.then61

do.body57.fail_wow_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail_wow

if.then61:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.7) #3
  br label %fail_wow

if.end65:                                         ; preds = %if.end52
  %disconnect.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 1
  %22 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %disconnect.i, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %spec.select.i = select i1 %tobool.not.i, i8 0, i8 12
  %magic_pkt.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 2
  %24 = ptrtoint ptr %magic_pkt.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %magic_pkt.i, align 2, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool2.not.i = icmp eq i8 %25, 0
  %26 = or i8 %spec.select.i, 2
  %wow_triggers.1.i = select i1 %tobool2.not.i, i8 %spec.select.i, i8 %26
  %n_patterns.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 9
  %27 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_patterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool8.not.i = icmp ne i32 %28, 0
  %29 = zext i1 %tobool8.not.i to i8
  %wow_triggers.2.i = or i8 %wow_triggers.1.i, %29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wow_triggers.2.i)
  %tobool67.not = icmp eq i8 %wow_triggers.2.i, 0
  br i1 %tobool67.not, label %do.body69, label %if.end77

do.body69:                                        ; preds = %if.end65
  %debug_mask70 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %debug_mask70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_mask70, align 4
  %and71 = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body69.fail_wow_crit_edge, label %if.then73

do.body69.fail_wow_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail_wow

if.then73:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.8) #3
  br label %fail_wow

if.end77:                                         ; preds = %if.end65
  tail call void @ath_cancel_work(ptr noundef %1) #3
  tail call void @ath_stop_ani(ptr noundef %1) #3
  tail call void @ath9k_ps_wakeup(ptr noundef %1) #3
  tail call void @ath9k_stop_btcoex(ptr noundef %1) #3
  %32 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %dis_deauth_pattern.i) #3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %dis_deauth_mask.i) #3
  %34 = getelementptr inbounds i8, ptr %dis_deauth_pattern.i, i32 1
  %35 = call ptr @memset(ptr %34, i32 0, i32 255)
  %36 = getelementptr inbounds i8, ptr %dis_deauth_mask.i, i32 32
  %37 = call ptr @memset(ptr %36, i32 0, i32 224)
  %38 = getelementptr inbounds i8, ptr %dis_deauth_mask.i, i32 3
  %39 = call ptr @memset(ptr %38, i32 255, i32 29)
  %40 = ptrtoint ptr %dis_deauth_pattern.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -96, ptr %dis_deauth_pattern.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %dis_deauth_pattern.i, i32 10
  %curbssid.i = getelementptr inbounds %struct.ath_hw, ptr %33, i32 0, i32 3, i32 10
  %41 = call ptr @memcpy(ptr %add.ptr.i, ptr %curbssid.i, i32 6)
  %add.ptr9.i = getelementptr inbounds i8, ptr %dis_deauth_pattern.i, i32 16
  %42 = call ptr @memcpy(ptr %add.ptr9.i, ptr %curbssid.i, i32 6)
  %43 = ptrtoint ptr %dis_deauth_mask.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -2, ptr %dis_deauth_mask.i, align 1
  %arrayidx13.i = getelementptr inbounds [256 x i8], ptr %dis_deauth_mask.i, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %arrayidx13.i, align 1
  %arrayidx14.i = getelementptr inbounds [256 x i8], ptr %dis_deauth_mask.i, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -64, ptr %arrayidx14.i, align 1
  %call17.i = call i32 @ath9k_hw_wow_apply_pattern(ptr noundef %33, ptr noundef nonnull %dis_deauth_pattern.i, ptr noundef nonnull %dis_deauth_mask.i, i32 noundef 0, i32 noundef 16) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i161 = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i161, label %ath9k_wow_add_disassoc_deauth_pattern.exit, label %ath9k_wow_add_disassoc_deauth_pattern.exit.thread

ath9k_wow_add_disassoc_deauth_pattern.exit.thread: ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %dis_deauth_mask.i) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %dis_deauth_pattern.i) #3
  br label %if.then80

ath9k_wow_add_disassoc_deauth_pattern.exit:       ; preds = %if.end77
  %46 = ptrtoint ptr %dis_deauth_pattern.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -64, ptr %dis_deauth_pattern.i, align 1
  %call22.i = call i32 @ath9k_hw_wow_apply_pattern(ptr noundef %33, ptr noundef nonnull %dis_deauth_pattern.i, ptr noundef nonnull %dis_deauth_mask.i, i32 noundef 1, i32 noundef 16) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %dis_deauth_mask.i) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %dis_deauth_pattern.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool79.not = icmp eq i32 %call22.i, 0
  br i1 %tobool79.not, label %if.end81, label %ath9k_wow_add_disassoc_deauth_pattern.exit.if.then80_crit_edge

ath9k_wow_add_disassoc_deauth_pattern.exit.if.then80_crit_edge: ; preds = %ath9k_wow_add_disassoc_deauth_pattern.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then80

if.then80:                                        ; preds = %ath9k_wow_add_disassoc_deauth_pattern.exit.if.then80_crit_edge, %ath9k_wow_add_disassoc_deauth_pattern.exit.thread
  %ret.0.i164 = phi i32 [ %call17.i, %ath9k_wow_add_disassoc_deauth_pattern.exit.thread ], [ %call22.i, %ath9k_wow_add_disassoc_deauth_pattern.exit.if.then80_crit_edge ]
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.9, i32 noundef %ret.0.i164) #3
  br label %fail_wow

if.end81:                                         ; preds = %ath9k_wow_add_disassoc_deauth_pattern.exit
  %conv82 = zext i8 %wow_triggers.2.i to i32
  %and83 = and i32 %conv82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end81.if.end90_crit_edge, label %if.then85

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end90

if.then85:                                        ; preds = %if.end81
  %call86 = call fastcc i32 @ath9k_wow_add_pattern(ptr noundef %1, ptr noundef nonnull %wowlan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then85.if.end90_crit_edge, label %if.then88

if.then85.if.end90_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end90

if.then88:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.10, i32 noundef %call86) #3
  br label %fail_wow

if.end90:                                         ; preds = %if.then85.if.end90_crit_edge, %if.end81.if.end90_crit_edge
  %sc_pcu_lock = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %sc_pcu_lock) #3
  %imask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 36
  %47 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %imask, align 4
  %wow_intr_before_sleep = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 63
  %49 = ptrtoint ptr %wow_intr_before_sleep to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %wow_intr_before_sleep, align 4
  %50 = load i32, ptr %imask, align 4
  %and92 = and i32 %50, 2147483647
  store i32 %and92, ptr %imask, align 4
  call void @ath9k_hw_disable_interrupts(ptr noundef %3) #3
  %51 = ptrtoint ptr %imask to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -2147221504, ptr %imask, align 4
  call void @ath9k_hw_set_interrupts(ptr noundef %3) #3
  call void @ath9k_hw_enable_interrupts(ptr noundef %3) #3
  call void @_raw_spin_unlock_bh(ptr noundef %sc_pcu_lock) #3
  %irq = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 9
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  call void @synchronize_irq(i32 noundef %53) #3
  %intr_tq = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 5
  call void @tasklet_kill(ptr noundef %intr_tq) #3
  call void @ath9k_hw_wow_enable(ptr noundef %3, i32 noundef %conv82) #3
  call void @ath9k_ps_restore(ptr noundef %1) #3
  %debug_mask97 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %debug_mask97 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %debug_mask97, align 4
  %and98 = and i32 %55, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end90.do.end104_crit_edge, label %if.then100

if.end90.do.end104_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end104

if.then100:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.11, i32 noundef %conv82) #3
  br label %do.end104

do.end104:                                        ; preds = %if.then100, %if.end90.do.end104_crit_edge
  call void @_set_bit(i32 noundef 7, ptr noundef %op_flags) #3
  br label %fail_wow

fail_wow:                                         ; preds = %do.end104, %if.then88, %if.then80, %if.then73, %do.body69.fail_wow_crit_edge, %if.then61, %do.body57.fail_wow_crit_edge, %if.then47, %do.body43.fail_wow_crit_edge, %if.then32, %do.body30.fail_wow_crit_edge, %do.end, %if.then
  %ret.1 = phi i32 [ -19, %if.then ], [ -22, %do.end ], [ %ret.0.i164, %if.then80 ], [ %call86, %if.then88 ], [ 0, %do.end104 ], [ 1, %if.then32 ], [ 1, %do.body30.fail_wow_crit_edge ], [ 1, %if.then47 ], [ 1, %do.body43.fail_wow_crit_edge ], [ 1, %if.then61 ], [ 1, %do.body57.fail_wow_crit_edge ], [ 1, %if.then73 ], [ 1, %do.body69.fail_wow_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_deinit_channel_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_is_chanctx_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_cancel_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_stop_ani(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_stop_btcoex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath9k_wow_add_pattern(ptr nocapture noundef readonly %sc, ptr nocapture noundef readonly %wowlan) unnamed_addr #0 align 64 {
entry:
  %wow_pattern = alloca [256 x i8], align 1
  %wow_mask = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %patterns1 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 7
  %2 = ptrtoint ptr %patterns1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %patterns1, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %wow_pattern) #3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %wow_mask) #3
  %n_patterns = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 9
  %4 = ptrtoint ptr %n_patterns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_patterns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp33 = icmp sgt i32 %5, 0
  br i1 %cmp33, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i8 %i.034, 1
  %conv = sext i8 %inc to i32
  %6 = ptrtoint ptr %n_patterns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_patterns, align 4
  %cmp = icmp sgt i32 %7, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %conv35 = phi i32 [ %conv, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.034 = phi i8 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfg80211_pkt_pattern, ptr %3, i32 %conv35
  %pattern_len = getelementptr %struct.cfg80211_pkt_pattern, ptr %3, i32 %conv35, i32 2
  %8 = ptrtoint ptr %pattern_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pattern_len, align 4
  %sub = add i32 %9, 7
  %div = sdiv i32 %sub, 8
  %10 = call ptr @memset(ptr %wow_pattern, i32 0, i32 256)
  %11 = call ptr @memset(ptr %wow_mask, i32 0, i32 256)
  %pattern = getelementptr %struct.cfg80211_pkt_pattern, ptr %3, i32 %conv35, i32 1
  %12 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pattern, align 4
  %14 = load i32, ptr %pattern_len, align 4
  %15 = call ptr @memcpy(ptr %wow_pattern, ptr %13, i32 %14)
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = call ptr @memcpy(ptr %wow_mask, ptr %17, i32 %div)
  %add16 = add nsw i32 %conv35, 2
  %19 = load i32, ptr %pattern_len, align 4
  %call = call i32 @ath9k_hw_wow_apply_pattern(ptr noundef %1, ptr noundef nonnull %wow_pattern, ptr noundef nonnull %wow_mask, i32 noundef %add16, i32 noundef %19) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %wow_mask) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %wow_pattern) #3
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_disable_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_enable_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_wow_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_resume(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  tail call void @ath9k_ps_wakeup(ptr noundef %1) #3
  %sc_pcu_lock = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %sc_pcu_lock) #3
  tail call void @ath9k_hw_disable_interrupts(ptr noundef %3) #3
  %wow_intr_before_sleep = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 63
  %4 = ptrtoint ptr %wow_intr_before_sleep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wow_intr_before_sleep, align 4
  %imask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 36
  %6 = ptrtoint ptr %imask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %imask, align 4
  tail call void @ath9k_hw_set_interrupts(ptr noundef %3) #3
  tail call void @ath9k_hw_enable_interrupts(ptr noundef %3) #3
  tail call void @_raw_spin_unlock_bh(ptr noundef %sc_pcu_lock) #3
  %call2 = tail call i32 @ath9k_hw_wow_wakeup(ptr noundef %3) #3
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_mask, align 4
  %and = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %conv3 = and i32 %call2, 255
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.12, i32 noundef %conv3) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  tail call void @ath_restart_work(ptr noundef %1) #3
  tail call void @ath9k_start_btcoex(ptr noundef %1) #3
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %op_flags) #3
  tail call void @ath9k_ps_restore(ptr noundef %1) #3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_wow_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_restart_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_start_btcoex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_set_wakeup(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %dev = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call1 = tail call i32 @device_set_wakeup_enable(ptr noundef %5, i1 noundef zeroext %enabled) #3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %cond = select i1 %enabled, ptr @.str.14, ptr @.str.15
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_init_wow(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %driver_data = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 8
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %force_wow = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 64
  %6 = ptrtoint ptr %force_wow to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %force_wow, align 8, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end19_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %macVersion, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.then.if.else_crit_edge [
    i32 640, label %land.lhs.true
    i32 704, label %land.lhs.true10
  ]

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %macRev = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %macRev to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %macRev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp3 = icmp ugt i16 %12, 1
  br i1 %cmp3, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true10:                                  ; preds = %if.then
  %macRev12 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %macRev12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %macRev12, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp14 = icmp ugt i16 %14, 1
  br i1 %cmp14, label %land.lhs.true10.if.end_crit_edge, label %land.lhs.true10.if.else_crit_edge

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true10.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %ath9k_wowlan_support_legacy.sink = phi ptr [ @ath9k_wowlan_support_legacy, %if.else ], [ @ath9k_wowlan_support, %land.lhs.true10.if.end_crit_edge ], [ @ath9k_wowlan_support, %land.lhs.true.if.end_crit_edge ]
  %wiphy17 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy17, align 8
  %wowlan18 = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 40
  %17 = ptrtoint ptr %wowlan18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ath9k_wowlan_support_legacy.sink, ptr %wowlan18, align 32
  %dev = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call = tail call i32 @device_init_wakeup(ptr noundef %19, i1 noundef zeroext true) #3
  br label %if.end19

if.end19:                                         ; preds = %if.end, %lor.lhs.false.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_deinit_wow(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %driver_data = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %force_wow = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 64
  %4 = ptrtoint ptr %force_wow to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %force_wow, align 8, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %dev = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call = tail call i32 @device_init_wakeup(ptr noundef %7, i1 noundef zeroext false) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_wow_apply_pattern(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 181, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 186, i32 6}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 187, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 193, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 200, i32 4}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 208, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 215, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 233, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 241, i32 4}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 272, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 301, i32 2}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 323, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ath9k_wowlan_support, !29, !"ath9k_wowlan_support", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 26, i32 42}
!30 = !{ptr @ath9k_wowlan_support_legacy, !31, !"ath9k_wowlan_support_legacy", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/wow.c", i32 19, i32 42}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i8 0, i8 2}
