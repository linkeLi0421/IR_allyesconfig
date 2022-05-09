; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/mci.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/mci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ath_mci_profile = type { %struct.list_head, [1 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.ath_mci_profile_info = type { i8, i8, i8, i8, i8, i8, i16, i8, i8, %struct.list_head }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MCI buffer alloc failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to initialize MCI\0A\00", [38 x i8] zeroinitializer }, align 32
@ath_mci_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&sc->mci_work)\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MCI Initialized\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MCI De-Initialized\0A\00", [44 x i8] zeroinitializer }, align 32
@__const.ath_mci_intr.payload = private unnamed_addr constant [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -256], align 4
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MCI CONT_INFO: (%s) pri = %d pwr = %d dBm\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@__const.ath9k_mci_update_wlan_channels.channelmap = private unnamed_addr constant [4 x i32] [i32 0, i32 -65536, i32 -1, i32 2147483647], align 4
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"WLAN current channel %d mask BT channel %d - %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ath_mci_duty_cycle = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"72<FPUZ_b", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Single SCO, aggregation limit %d 1/4 ms\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Single PAN/FTP bt period %d ms dutycycle %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Multiple attempt/timeout single HID aggregation limit 1.5 ms dutycycle 30%%\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Two BT profiles aggr limit 1.5 ms dutycycle %d%%\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Three or more profiles aggregation limit 1 ms\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MCI State : %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown GPM CAL message\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(MCI) Need to flush BT profiles\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Illegal profile type = %d, state = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"BT_Status_Update: is_link=%d, linkId=%d, state=%d, SEQ=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown GPM COEX message = 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@__const.ath_mci_add_profile.voice_priority = private unnamed_addr constant [9 x i8] c"nnnpnnrtv", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 12]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 446, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 463, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 467, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 468, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 480, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 608, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 677, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"ath_mci_duty_cycle\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 23, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 152, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 162, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 168, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 176, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 181, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 223, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 231, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 378, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 401, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 419, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath9k/mci.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 427, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ath_mci_setup.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ath_mci_duty_cycle, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_mci_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_mci_duty_cycle to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_mci_flush_profile(ptr noundef %mci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aggr_limit = getelementptr inbounds %struct.ath_mci_profile, ptr %mci, i32 0, i32 2
  %0 = ptrtoint ptr %aggr_limit to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %aggr_limit, align 4
  %num_mgmt = getelementptr inbounds %struct.ath_mci_profile, ptr %mci, i32 0, i32 3
  %1 = ptrtoint ptr %num_mgmt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %num_mgmt, align 2
  %2 = ptrtoint ptr %mci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mci, align 4
  %cmp.i.not = icmp eq ptr %3, %mci
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_sco = getelementptr inbounds %struct.ath_mci_profile, ptr %mci, i32 0, i32 4
  %num_pan = getelementptr inbounds %struct.ath_mci_profile, ptr %mci, i32 0, i32 7
  %num_hid = getelementptr inbounds %struct.ath_mci_profile, ptr %mci, i32 0, i32 6
  %num_a2dp = getelementptr inbounds %struct.ath_mci_profile, ptr %mci, i32 0, i32 5
  %num_bdr = getelementptr inbounds %struct.ath_mci_profile, ptr %mci, i32 0, i32 9
  %num_other_acl = getelementptr inbounds %struct.ath_mci_profile, ptr %mci, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.cond.preheader
  %.pn.in48 = phi ptr [ %3, %for.cond.preheader ], [ %.pn51, %do.end.for.body_crit_edge ]
  %info.050 = getelementptr i8, ptr %.pn.in48, i32 -12
  %4 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn51 = load ptr, ptr %.pn.in48, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in48) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in48, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in48, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %info.050 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %info.050, align 4
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %list_del.exit.do.end_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb10
    i8 3, label %sw.bb16
    i8 4, label %sw.bb18
    i8 5, label %list_del.exit.sw.bb20_crit_edge
    i8 6, label %list_del.exit.sw.bb20_crit_edge52
  ]

list_del.exit.sw.bb20_crit_edge52:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20

list_del.exit.sw.bb20_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20

list_del.exit.do.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.bb:                                            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %num_other_acl to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_other_acl, align 1
  %dec = add i8 %17, -1
  store i8 %dec, ptr %num_other_acl, align 1
  br label %do.end

sw.bb10:                                          ; preds = %list_del.exit
  %18 = ptrtoint ptr %num_a2dp to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_a2dp, align 4
  %dec11 = add i8 %19, -1
  store i8 %dec11, ptr %num_a2dp, align 4
  %edr = getelementptr i8, ptr %.pn.in48, i32 -8
  %20 = ptrtoint ptr %edr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %edr, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool12.not = icmp eq i8 %21, 0
  br i1 %tobool12.not, label %if.then13, label %sw.bb10.do.end_crit_edge

sw.bb10.do.end_crit_edge:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %num_bdr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_bdr, align 4
  %dec14 = add i8 %23, -1
  store i8 %dec14, ptr %num_bdr, align 4
  br label %do.end

sw.bb16:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %num_hid to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_hid, align 1
  %dec17 = add i8 %25, -1
  store i8 %dec17, ptr %num_hid, align 1
  br label %do.end

sw.bb18:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %num_pan to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_pan, align 2
  %dec19 = add i8 %27, -1
  store i8 %dec19, ptr %num_pan, align 2
  br label %do.end

sw.bb20:                                          ; preds = %list_del.exit.sw.bb20_crit_edge, %list_del.exit.sw.bb20_crit_edge52
  %28 = ptrtoint ptr %num_sco to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_sco, align 1
  %dec21 = add i8 %29, -1
  store i8 %dec21, ptr %num_sco, align 1
  br label %do.end

do.end:                                           ; preds = %sw.bb20, %sw.bb18, %sw.bb16, %if.then13, %sw.bb10.do.end_crit_edge, %sw.bb, %list_del.exit.do.end_crit_edge
  tail call void @kfree(ptr noundef %info.050) #6
  %cmp.not = icmp eq ptr %.pn51, %mci
  br i1 %cmp.not, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_mci_setup(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %mci_coex = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 49
  %dev = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %bf_paddr = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 49, i32 0, i32 1
  %call.i = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 512, ptr noundef %bf_paddr, i32 noundef 3264, i32 noundef 0) #6
  %4 = ptrtoint ptr %mci_coex to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %mci_coex, align 4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %and = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end4:                                          ; preds = %entry
  %7 = call ptr @memset(ptr %call.i, i32 254, i32 512)
  %bf_len = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 49, i32 0, i32 2
  %8 = ptrtoint ptr %bf_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 256, ptr %bf_len, align 4
  %gpm_buf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 49, i32 1
  %bf_len7 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 49, i32 1, i32 2
  %9 = ptrtoint ptr %bf_len7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 256, ptr %bf_len7, align 4
  %10 = ptrtoint ptr %mci_coex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mci_coex, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 256
  %12 = ptrtoint ptr %gpm_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %gpm_buf, align 4
  %13 = ptrtoint ptr %bf_paddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bf_paddr, align 4
  %add = add i32 %14, 256
  %bf_paddr19 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 49, i32 1, i32 1
  %15 = ptrtoint ptr %bf_paddr19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %bf_paddr19, align 4
  %16 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc_ah, align 4
  %call29 = tail call i32 @ar9003_mci_setup(ptr noundef %17, i32 noundef %add, ptr noundef %add.ptr, i16 noundef zeroext 16, i32 noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body33, label %if.then31

if.then31:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.3) #6
  br label %cleanup

do.body33:                                        ; preds = %if.end4
  %mci_work = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 50
  tail call void @__init_work(ptr noundef %mci_work, i32 noundef 0) #6
  %18 = ptrtoint ptr %mci_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %mci_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 50, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @ath_mci_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry37 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 50, i32 1
  %19 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 50, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry37, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 50, i32 2
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ath9k_mci_work, ptr %func, align 4
  %debug_mask42 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %debug_mask42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_mask42, align 4
  %and43 = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body33.cleanup_crit_edge, label %if.then45

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body33.cleanup_crit_edge, %if.then31, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.then31 ], [ -12, %if.then3 ], [ -12, %do.body.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %do.body33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ar9003_mci_setup(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_mci_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12844
  %sc_ah.i = getelementptr i8, ptr %work, i32 -10000
  %0 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah.i, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %mci2.i = getelementptr i8, ptr %work, i32 -52
  %num_other_acl.i = getelementptr i8, ptr %work, i32 -33
  %2 = ptrtoint ptr %num_other_acl.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_other_acl.i, align 1
  %conv.i = zext i8 %3 to i32
  %num_a2dp.i = getelementptr i8, ptr %work, i32 -36
  %4 = ptrtoint ptr %num_a2dp.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_a2dp.i, align 4
  %conv5.i = zext i8 %5 to i32
  %add.i = add nuw nsw i32 %conv5.i, %conv.i
  %num_hid.i = getelementptr i8, ptr %work, i32 -35
  %6 = ptrtoint ptr %num_hid.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_hid.i, align 1
  %conv6.i = zext i8 %7 to i32
  %add7.i = add nuw nsw i32 %add.i, %conv6.i
  %num_pan.i = getelementptr i8, ptr %work, i32 -34
  %8 = ptrtoint ptr %num_pan.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_pan.i, align 2
  %conv8.i = zext i8 %9 to i32
  %add9.i = add nuw nsw i32 %add7.i, %conv8.i
  %num_sco.i = getelementptr i8, ptr %work, i32 -37
  %10 = ptrtoint ptr %num_sco.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_sco.i, align 1
  %conv10.i = zext i8 %11 to i32
  %add11.i = add nuw nsw i32 %add9.i, %conv10.i
  %config.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 1, i32 10
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config.i, align 4
  %and.i = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.skip_tuning.i_crit_edge

entry.skip_tuning.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_tuning.i

if.end.i:                                         ; preds = %entry
  %aggr_limit.i = getelementptr i8, ptr %work, i32 -40
  %14 = ptrtoint ptr %aggr_limit.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %aggr_limit.i, align 4
  %arrayidx.i = getelementptr [9 x i8], ptr @ath_mci_duty_cycle, i32 0, i32 %add11.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %conv12.i = zext i8 %16 to i32
  %duty_cycle.i = getelementptr i8, ptr %work, i32 -64
  %17 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv12.i, ptr %duty_cycle.i, align 4
  %btcoex_period.i = getelementptr i8, ptr %work, i32 -72
  %18 = ptrtoint ptr %btcoex_period.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 40, ptr %btcoex_period.i, align 4
  %add26.i = sub nsw i32 0, %conv10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %add26.i)
  %tobool27.not.i = icmp eq i32 %add9.i, %add26.i
  br i1 %tobool27.not.i, label %if.else.i, label %if.end.i.if.end32.i_crit_edge

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_mgmt.i = getelementptr i8, ptr %work, i32 -38
  %19 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_mgmt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool30.not.i = icmp eq i8 %20, 0
  %cond.i = zext i1 %tobool30.not.i to i32
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else.i, %if.end.i.if.end32.i_crit_edge
  %.sink.i = phi i32 [ %cond.i, %if.else.i ], [ 1, %if.end.i.if.end32.i_crit_edge ]
  %21 = getelementptr i8, ptr %work, i32 -80
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i, ptr %21, align 4
  %23 = zext i32 %add11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %add11.i, label %if.else124.i [
    i32 1, label %if.then34.i
    i32 2, label %if.then106.i
  ]

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool37.not.i = icmp eq i8 %11, 0
  br i1 %tobool37.not.i, label %if.else62.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.then34.i
  %24 = ptrtoint ptr %mci2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mci2.i, align 4
  %T.i = getelementptr i8, ptr %25, i32 -6
  %26 = ptrtoint ptr %T.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %T.i, align 2
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %27, label %if.else52.i [
    i16 12, label %if.then42.i
    i16 6, label %if.then49.i
  ]

if.then42.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %aggr_limit.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 8, ptr %aggr_limit.i, align 4
  br label %do.body.i

if.then49.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %aggr_limit.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 6, ptr %aggr_limit.i, align 4
  %31 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 30, ptr %duty_cycle.i, align 4
  br label %do.body.i

if.else52.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %aggr_limit.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 6, ptr %aggr_limit.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else52.i, %if.then49.i, %if.then42.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug_mask.i, align 4
  %and56.i = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %do.body.i.skip_tuning.i_crit_edge, label %if.then58.i

do.body.i.skip_tuning.i_crit_edge:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_tuning.i

if.then58.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %aggr_limit.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %aggr_limit.i, align 4
  %conv60.i = zext i16 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv60.i) #6
  br label %skip_tuning.i

if.else62.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool65.not.i = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool68.not.i = icmp eq i8 %3, 0
  %or.cond.i = select i1 %tobool65.not.i, i1 %tobool68.not.i, i1 false
  br i1 %or.cond.i, label %if.else86.i, label %if.then69.i

if.then69.i:                                      ; preds = %if.else62.i
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %38)
  %cmp71.i = icmp eq i32 %38, 704
  %cond73.i = select i1 %cmp71.i, i32 40, i32 35
  %39 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond73.i, ptr %duty_cycle.i, align 4
  %40 = ptrtoint ptr %btcoex_period.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 53, ptr %btcoex_period.i, align 4
  %debug_mask77.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %debug_mask77.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug_mask77.i, align 4
  %and78.i = and i32 %42, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %if.then69.i.skip_tuning.i_crit_edge, label %if.then80.i

if.then69.i.skip_tuning.i_crit_edge:              ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_tuning.i

if.then80.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.12, i32 noundef %cond73.i, i32 noundef 53) #6
  br label %skip_tuning.i

if.else86.i:                                      ; preds = %if.else62.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool88.not.i = icmp eq i8 %7, 0
  br i1 %tobool88.not.i, label %if.else86.i.skip_tuning.i_crit_edge, label %if.then89.i

if.else86.i.skip_tuning.i_crit_edge:              ; preds = %if.else86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_tuning.i

if.then89.i:                                      ; preds = %if.else86.i
  %43 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 30, ptr %duty_cycle.i, align 4
  %44 = ptrtoint ptr %aggr_limit.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 6, ptr %aggr_limit.i, align 4
  %debug_mask93.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %debug_mask93.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %debug_mask93.i, align 4
  %and94.i = and i32 %46, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %if.then89.i.skip_tuning.i_crit_edge, label %if.then96.i

if.then89.i.skip_tuning.i_crit_edge:              ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_tuning.i

if.then96.i:                                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.13) #6
  br label %skip_tuning.i

if.then106.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp109.i = icmp eq i8 %7, 2
  br i1 %cmp109.i, label %if.then111.i, label %if.then106.i.if.end113.i_crit_edge

if.then106.i.if.end113.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113.i

if.then111.i:                                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 30, ptr %duty_cycle.i, align 4
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then111.i, %if.then106.i.if.end113.i_crit_edge
  %48 = ptrtoint ptr %aggr_limit.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 6, ptr %aggr_limit.i, align 4
  %debug_mask116.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %debug_mask116.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug_mask116.i, align 4
  %and117.i = and i32 %50, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %if.end113.i.skip_tuning.i_crit_edge, label %if.then119.i

if.end113.i.skip_tuning.i_crit_edge:              ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_tuning.i

if.then119.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %duty_cycle.i, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.14, i32 noundef %52) #6
  br label %skip_tuning.i

if.else124.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add11.i)
  %cmp125.i = icmp ugt i32 %add11.i, 2
  br i1 %cmp125.i, label %if.then127.i, label %if.else124.i.skip_tuning.i_crit_edge

if.else124.i.skip_tuning.i_crit_edge:             ; preds = %if.else124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_tuning.i

if.then127.i:                                     ; preds = %if.else124.i
  %53 = ptrtoint ptr %aggr_limit.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 4, ptr %aggr_limit.i, align 4
  %debug_mask130.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %debug_mask130.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %debug_mask130.i, align 4
  %and131.i = and i32 %55, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  br i1 %tobool132.not.i, label %if.then127.i.skip_tuning.i_crit_edge, label %if.then133.i

if.then127.i.skip_tuning.i_crit_edge:             ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_tuning.i

if.then133.i:                                     ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.15) #6
  br label %skip_tuning.i

skip_tuning.i:                                    ; preds = %if.then133.i, %if.then127.i.skip_tuning.i_crit_edge, %if.else124.i.skip_tuning.i_crit_edge, %if.then119.i, %if.end113.i.skip_tuning.i_crit_edge, %if.then96.i, %if.then89.i.skip_tuning.i_crit_edge, %if.else86.i.skip_tuning.i_crit_edge, %if.then80.i, %if.then69.i.skip_tuning.i_crit_edge, %if.then58.i, %do.body.i.skip_tuning.i_crit_edge, %entry.skip_tuning.i_crit_edge
  %56 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sc_ah.i, align 4
  %curchan.i = getelementptr inbounds %struct.ath_hw, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %curchan.i, align 4
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %channelFlags.i, align 2
  %conv141.i = zext i16 %61 to i32
  %and142.i = and i32 %conv141.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  br i1 %tobool143.not.i, label %if.then144.i, label %skip_tuning.i.if.end155.i_crit_edge

skip_tuning.i.if.end155.i_crit_edge:              ; preds = %skip_tuning.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155.i

if.then144.i:                                     ; preds = %skip_tuning.i
  %and149.i = and i32 %conv141.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  %btcoex_period153.i = getelementptr i8, ptr %work, i32 -72
  %62 = ptrtoint ptr %btcoex_period153.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %btcoex_period153.i, align 4
  br i1 %tobool150.not.i, label %if.else152.i, label %if.then151.i

if.then151.i:                                     ; preds = %if.then144.i
  %duty_cycle.i.i = getelementptr i8, ptr %work, i32 -64
  %64 = ptrtoint ptr %duty_cycle.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %duty_cycle.i.i, align 4
  %sub.i.i = sub i32 100, %65
  %mul.i.i = mul i32 %sub.i.i, %63
  %div.i.i = udiv i32 %mul.i.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %mul.i.i)
  %cmp.i.i = icmp ult i32 %mul.i.i, 500
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then151.i.if.end155.i_crit_edge

if.then151.i.if.end155.i_crit_edge:               ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155.i

land.lhs.true.i.i:                                ; preds = %if.then151.i
  %aggr_limit.i.i = getelementptr i8, ptr %work, i32 -40
  %66 = ptrtoint ptr %aggr_limit.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %aggr_limit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i.i = icmp eq i16 %67, 0
  %conv.i.i = zext i16 %67 to i32
  %mul3.i.i = shl nuw nsw i32 %div.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i.i, i32 %conv.i.i)
  %cmp4.i.i = icmp ult i32 %mul3.i.i, %conv.i.i
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp4.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end155.i_crit_edge

land.lhs.true.i.i.if.end155.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.tr.i.i = trunc i32 %div.i.i to i16
  %conv7.i.i = shl i16 %div.tr.i.i, 1
  %68 = ptrtoint ptr %aggr_limit.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv7.i.i, ptr %aggr_limit.i.i, align 4
  br label %if.end155.i

if.else152.i:                                     ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %63, 1
  %69 = ptrtoint ptr %btcoex_period153.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shr.i, ptr %btcoex_period153.i, align 4
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.else152.i, %if.then.i.i, %land.lhs.true.i.i.if.end155.i_crit_edge, %if.then151.i.if.end155.i_crit_edge, %skip_tuning.i.if.end155.i_crit_edge
  tail call void @ath9k_btcoex_timer_pause(ptr noundef %add.ptr) #6
  %70 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sc_ah.i, align 4
  tail call void @ath9k_hw_btcoex_disable(ptr noundef %71) #6
  %72 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sc_ah.i, align 4
  %curchan158.i = getelementptr inbounds %struct.ath_hw, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %curchan158.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %curchan158.i, align 4
  %channelFlags159.i = getelementptr inbounds %struct.ath9k_channel, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %channelFlags159.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %channelFlags159.i, align 2
  %78 = and i16 %77, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool162.not.i = icmp eq i16 %78, 0
  br i1 %tobool162.not.i, label %if.end164.i, label %if.end155.i.ath_mci_update_scheme.exit_crit_edge

if.end155.i.ath_mci_update_scheme.exit_crit_edge: ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_mci_update_scheme.exit

if.end164.i:                                      ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_bdr.i = getelementptr i8, ptr %work, i32 -32
  %79 = ptrtoint ptr %num_bdr.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_bdr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool166.not.i = icmp eq i8 %80, 0
  %cond167.i = select i1 %tobool166.not.i, i32 0, i32 20
  %duty_cycle168.i = getelementptr i8, ptr %work, i32 -64
  %81 = ptrtoint ptr %duty_cycle168.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %duty_cycle168.i, align 4
  %add169.i = add i32 %cond167.i, %82
  %83 = tail call i32 @llvm.umin.i32(i32 %add169.i, i32 90) #6
  %84 = ptrtoint ptr %duty_cycle168.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %duty_cycle168.i, align 4
  %btcoex_period176.i = getelementptr i8, ptr %work, i32 -72
  %85 = ptrtoint ptr %btcoex_period176.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %btcoex_period176.i, align 4
  %sub.i = sub nuw nsw i32 100, %83
  %mul.i = mul i32 %sub.i, %86
  %div.i = udiv i32 %mul.i, 100
  %btcoex_no_stomp.i = getelementptr i8, ptr %work, i32 -76
  %87 = ptrtoint ptr %btcoex_no_stomp.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %div.i, ptr %btcoex_no_stomp.i, align 4
  tail call void @ath9k_hw_btcoex_enable(ptr noundef %73) #6
  tail call void @ath9k_btcoex_timer_resume(ptr noundef %add.ptr) #6
  br label %ath_mci_update_scheme.exit

ath_mci_update_scheme.exit:                       ; preds = %if.end164.i, %if.end155.i.ath_mci_update_scheme.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_mci_cleanup(ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  tail call void @ar9003_mci_cleanup(ptr noundef %1) #6
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_mci_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_mci_intr(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %payload.i = alloca [4 x i32], align 4
  %mci_int = alloca i32, align 4
  %mci_int_rxmsg = alloca i32, align 4
  %more_data = alloca i32, align 4
  %payload = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mci_int) #6
  %2 = ptrtoint ptr %mci_int to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mci_int, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mci_int_rxmsg) #6
  %3 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mci_int_rxmsg, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %more_data) #6
  %4 = ptrtoint ptr %more_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %more_data, align 4
  call void @ar9003_mci_get_interrupt(ptr noundef %1, ptr noundef nonnull %mci_int, ptr noundef nonnull %mci_int_rxmsg) #6
  %call3 = call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mci_int_rxmsg, align 4
  %and = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %payload) #6
  %7 = call ptr @memcpy(ptr %payload, ptr @__const.ath_mci_intr.payload, i32 16)
  %call6 = call zeroext i1 @ar9003_mci_send_message(ptr noundef %1, i8 noundef zeroext -1, i32 noundef 0, ptr noundef nonnull %payload, i8 noundef zeroext 16, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %call7 = call zeroext i1 @ar9003_mci_send_message(ptr noundef %1, i8 noundef zeroext 112, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mci_int_rxmsg, align 4
  %and8 = and i32 %9, -4097
  store i32 %and8, ptr %mci_int_rxmsg, align 4
  %call9 = call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 13) #6
  %call10 = call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %payload) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  %10 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mci_int_rxmsg, align 4
  %and12 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end24_crit_edge, label %if.then14

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then14:                                        ; preds = %if.end11
  %and15 = and i32 %11, -2049
  %12 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and15, ptr %mci_int_rxmsg, align 4
  %bt_state = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 1, i32 25
  %13 = ptrtoint ptr %bt_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bt_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp16 = icmp eq i8 %14, 0
  br i1 %cmp16, label %land.lhs.true, label %if.then14.if.end24_crit_edge

if.then14.if.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then14
  %call18 = call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %land.lhs.true.if.end24_crit_edge, label %if.then21

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 7) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %land.lhs.true.if.end24_crit_edge, %if.then14.if.end24_crit_edge, %if.end11.if.end24_crit_edge
  %15 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mci_int_rxmsg, align 4
  %and25 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end40_crit_edge, label %if.then27

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then27:                                        ; preds = %if.end24
  %and28 = and i32 %16, -1025
  %17 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and28, ptr %mci_int_rxmsg, align 4
  %bt_state29 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 1, i32 25
  %18 = ptrtoint ptr %bt_state29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bt_state29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp31 = icmp eq i8 %19, 1
  br i1 %cmp31, label %land.lhs.true33, label %if.then27.if.end40_crit_edge

if.then27.if.end40_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

land.lhs.true33:                                  ; preds = %if.then27
  %call34 = call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 1
  br i1 %cmp35.not, label %land.lhs.true33.if.end40_crit_edge, label %if.then37

land.lhs.true33.if.end40_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %bt_state29 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bt_state29, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %land.lhs.true33.if.end40_crit_edge, %if.then27.if.end40_crit_edge, %if.end24.if.end40_crit_edge
  %21 = ptrtoint ptr %mci_int to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mci_int, align 4
  %23 = and i32 %22, -2147483640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.end40.if.end47_crit_edge, label %if.then45

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 21) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end40.if.end47_crit_edge
  %25 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mci_int_rxmsg, align 4
  %and48 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end53_crit_edge, label %if.then50

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %and51 = and i32 %26, -33
  %27 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and51, ptr %mci_int_rxmsg, align 4
  %call52 = call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 10) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end47.if.end53_crit_edge
  %28 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mci_int_rxmsg, align 4
  %and54 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end85_crit_edge, label %if.then56

if.end53.if.end85_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then56:                                        ; preds = %if.end53
  %and57 = and i32 %29, -257
  %30 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and57, ptr %mci_int_rxmsg, align 4
  %31 = ptrtoint ptr %more_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %more_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp58185 = icmp eq i32 %32, 1
  br i1 %cmp58185, label %while.body.lr.ph, label %if.then56.if.end85_crit_edge

if.then56.if.end85_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

while.body.lr.ph:                                 ; preds = %if.then56
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %gpm_buf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 49, i32 1
  %add.ptr.i = getelementptr inbounds i8, ptr %payload.i, i32 4
  br label %while.body

while.body:                                       ; preds = %do.body.while.body_crit_edge, %while.body.lr.ph
  %33 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %op_flags, align 4
  %35 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool61.not = icmp eq i32 %35, 0
  br i1 %tobool61.not, label %if.end63, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %while.body
  %36 = ptrtoint ptr %gpm_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gpm_buf, align 4
  %call64 = call i32 @ar9003_mci_get_next_gpm_offset(ptr noundef %1, ptr noundef nonnull %more_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call64)
  %cmp65 = icmp eq i32 %call64, -1
  br i1 %cmp65, label %if.end63.if.end85_crit_edge, label %if.end68

if.end63.if.end85_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.end68:                                         ; preds = %if.end63
  %shr = lshr i32 %call64, 2
  %add.ptr = getelementptr i32, ptr %37, i32 %shr
  %add.ptr69 = getelementptr i8, ptr %add.ptr, i32 4
  %38 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr69, align 1
  %add.ptr72 = getelementptr i8, ptr %add.ptr, i32 5
  %40 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr72, align 1
  br i1 %24, label %if.end77, label %if.end68.do.body_crit_edge

if.end68.do.body_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end77:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %39)
  %cmp78 = icmp ult i8 %39, 6
  br i1 %cmp78, label %if.then80, label %if.else

if.then80:                                        ; preds = %if.end77
  %42 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %43, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %payload.i) #6
  %44 = call ptr @memset(ptr %payload.i, i32 0, i32 16)
  %45 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %39, label %do.body15.i [
    i8 0, label %sw.bb.i
    i8 1, label %do.body9.i
  ]

sw.bb.i:                                          ; preds = %if.then80
  %bt_state.i = getelementptr inbounds %struct.ath_hw, ptr %43, i32 0, i32 72, i32 1, i32 25
  %46 = ptrtoint ptr %bt_state.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bt_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp.i = icmp eq i8 %47, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.i.do.body.i_crit_edge

sw.bb.i.do.body.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %bt_state.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %bt_state.i, align 1
  call void @ath9k_queue_reset(ptr noundef %sc, i32 noundef 10) #6
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %sw.bb.i.do.body.i_crit_edge
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %43, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %50, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.ath_mci_cal_msg.exit_crit_edge, label %if.then4.i

do.body.i.ath_mci_cal_msg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_mci_cal_msg.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %bt_state.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bt_state.i, align 1
  %conv6.i = zext i8 %52 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.16, i32 noundef %conv6.i) #6
  br label %ath_mci_cal_msg.exit

do.body9.i:                                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 5, ptr %add.ptr.i, align 4
  %call14.i = call zeroext i1 @ar9003_mci_send_message(ptr noundef %43, i8 noundef zeroext -128, i32 noundef 0, ptr noundef nonnull %payload.i, i8 noundef zeroext 16, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %ath_mci_cal_msg.exit

do.body15.i:                                      ; preds = %if.then80
  %debug_mask16.i = getelementptr inbounds %struct.ath_hw, ptr %43, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %debug_mask16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %debug_mask16.i, align 4
  %and17.i = and i32 %55, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %do.body15.i.ath_mci_cal_msg.exit_crit_edge, label %if.then19.i

do.body15.i.ath_mci_cal_msg.exit_crit_edge:       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_mci_cal_msg.exit

if.then19.i:                                      ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.17) #6
  br label %ath_mci_cal_msg.exit

ath_mci_cal_msg.exit:                             ; preds = %if.then19.i, %do.body15.i.ath_mci_cal_msg.exit_crit_edge, %do.body9.i, %if.then4.i, %do.body.i.ath_mci_cal_msg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %payload.i) #6
  br label %do.body

if.else:                                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %39)
  %cond150 = icmp eq i8 %39, 12
  br i1 %cond150, label %sw.bb, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ath_mci_msg(ptr noundef %sc, i8 noundef zeroext %41, ptr noundef %add.ptr)
  br label %do.body

do.body:                                          ; preds = %sw.bb, %if.else.do.body_crit_edge, %ath_mci_cal_msg.exit, %if.end68.do.body_crit_edge
  %56 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -16843010, ptr %add.ptr69, align 4
  %57 = ptrtoint ptr %more_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %more_data, align 4
  %cmp58 = icmp eq i32 %58, 1
  br i1 %cmp58, label %do.body.while.body_crit_edge, label %do.body.if.end85_crit_edge

do.body.if.end85_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.body.while.body_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end85:                                         ; preds = %do.body.if.end85_crit_edge, %if.end63.if.end85_crit_edge, %if.then56.if.end85_crit_edge, %if.end53.if.end85_crit_edge
  %59 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mci_int_rxmsg, align 4
  %and86 = and i32 %60, 574
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end130_crit_edge, label %if.then88

if.end85.if.end130_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.then88:                                        ; preds = %if.end85
  %and89 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.then88.if.end93_crit_edge, label %if.then91

if.then88.if.end93_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then91:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  %and92 = and i32 %60, -3
  %61 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and92, ptr %mci_int_rxmsg, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.then88.if.end93_crit_edge
  %62 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mci_int_rxmsg, align 4
  %and94 = and i32 %63, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end98_crit_edge, label %if.then96

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %and97 = and i32 %63, -513
  %64 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and97, ptr %mci_int_rxmsg, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end93.if.end98_crit_edge
  %65 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mci_int_rxmsg, align 4
  %and99 = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.if.end119_crit_edge, label %if.then101

if.end98.if.end119_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.then101:                                       ; preds = %if.end98
  %cont_status = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 1, i32 2
  %67 = ptrtoint ptr %cont_status to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cont_status, align 4
  %and104 = and i32 %66, -9
  %69 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and104, ptr %mci_int_rxmsg, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %70 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %debug_mask, align 4
  %and106 = and i32 %71, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.then101.if.end119_crit_edge, label %if.then108

if.then101.if.end119_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.then108:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  %and102 = and i32 %68, 255
  %72 = and i32 %68, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool112.not = icmp eq i32 %72, 0
  %cond = select i1 %tobool112.not, ptr @.str.9, ptr @.str.8
  %and114 = lshr i32 %68, 8
  %shr115 = and i32 %and114, 255
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond, i32 noundef %shr115, i32 noundef %and102) #6
  br label %if.end119

if.end119:                                        ; preds = %if.then108, %if.then101.if.end119_crit_edge, %if.end98.if.end119_crit_edge
  %73 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mci_int_rxmsg, align 4
  %and120 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end119.if.end124_crit_edge, label %if.then122

if.end119.if.end124_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  %and123 = and i32 %74, -5
  %75 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and123, ptr %mci_int_rxmsg, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end119.if.end124_crit_edge
  %76 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mci_int_rxmsg, align 4
  %and125 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end130_crit_edge, label %if.then127

if.end124.if.end130_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  %and128 = and i32 %77, -17
  %78 = ptrtoint ptr %mci_int_rxmsg to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and128, ptr %mci_int_rxmsg, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %if.end124.if.end130_crit_edge, %if.end85.if.end130_crit_edge
  %79 = ptrtoint ptr %mci_int to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mci_int, align 4
  %81 = and i32 %80, -2147483640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %if.end130.cleanup_crit_edge, label %if.then136

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then136:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  %and137 = and i32 %80, 2147483639
  %83 = ptrtoint ptr %mci_int to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and137, ptr %mci_int, align 4
  call fastcc void @ath_mci_msg(ptr noundef %sc, i8 noundef zeroext 8, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.then136, %if.end130.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %more_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mci_int_rxmsg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mci_int) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_mci_get_interrupt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ar9003_mci_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ar9003_mci_send_message(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ar9003_mci_get_next_gpm_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_mci_msg(ptr noundef %sc, i8 noundef zeroext %opcode, ptr nocapture noundef readonly %rx_payload) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end8_crit_edge, label %do.body

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.body:                                          ; preds = %land.lhs.true
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.do.end_crit_edge, label %if.then6

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.18) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body.do.end_crit_edge
  %mci = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13
  tail call void @ath_mci_flush_profile(ptr noundef %mci)
  %call7 = tail call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 18) #6
  br label %if.end8

if.end8:                                          ; preds = %do.end, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %conv = zext i8 %opcode to i32
  %4 = zext i8 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %opcode, label %do.body68 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb10
    i8 2, label %sw.bb12
    i8 5, label %sw.bb13
    i8 6, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 14) #6
  br label %if.end79

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %rx_payload, i32 6
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  %add.ptr11 = getelementptr i8, ptr %rx_payload, i32 7
  %7 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr11, align 1
  tail call void @ar9003_mci_set_bt_version(ptr noundef %1, i8 noundef zeroext %6, i8 noundef zeroext %8) #6
  br label %if.end79

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ar9003_mci_send_wlan_channels(ptr noundef %1) #6
  br label %if.end79

sw.bb13:                                          ; preds = %if.end8
  %add.ptr14 = getelementptr i8, ptr %rx_payload, i32 6
  %9 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %profile_info.sroa.0.0.copyload129 = load i8, ptr %add.ptr14, align 1
  %profile_info.sroa.14.0.add.ptr14.sroa_idx = getelementptr i8, ptr %rx_payload, i32 7
  %10 = ptrtoint ptr %profile_info.sroa.14.0.add.ptr14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %profile_info.sroa.14.0.copyload132 = load i8, ptr %profile_info.sroa.14.0.add.ptr14.sroa_idx, align 1
  %profile_info.sroa.15.0.add.ptr14.sroa_idx = getelementptr i8, ptr %rx_payload, i32 8
  %11 = ptrtoint ptr %profile_info.sroa.15.0.add.ptr14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %profile_info.sroa.15.0.copyload135 = load i8, ptr %profile_info.sroa.15.0.add.ptr14.sroa_idx, align 1
  %profile_info.sroa.19.0.add.ptr14.sroa_idx = getelementptr i8, ptr %rx_payload, i32 9
  %12 = ptrtoint ptr %profile_info.sroa.19.0.add.ptr14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %profile_info.sroa.19.0.copyload141 = load i8, ptr %profile_info.sroa.19.0.add.ptr14.sroa_idx, align 1
  %profile_info.sroa.19144.0.add.ptr14.sroa_idx = getelementptr i8, ptr %rx_payload, i32 10
  %13 = ptrtoint ptr %profile_info.sroa.19144.0.add.ptr14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %profile_info.sroa.19144.0.copyload145 = load i8, ptr %profile_info.sroa.19144.0.add.ptr14.sroa_idx, align 1
  %profile_info.sroa.21.0.add.ptr14.sroa_idx = getelementptr i8, ptr %rx_payload, i32 11
  %14 = ptrtoint ptr %profile_info.sroa.21.0.add.ptr14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %profile_info.sroa.21.0.copyload149 = load i8, ptr %profile_info.sroa.21.0.add.ptr14.sroa_idx, align 1
  %profile_info.sroa.22.0.add.ptr14.sroa_idx = getelementptr i8, ptr %rx_payload, i32 12
  %15 = ptrtoint ptr %profile_info.sroa.22.0.add.ptr14.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %profile_info.sroa.22.0.add.ptr14.sroa_idx, align 1
  %17 = add i8 %profile_info.sroa.0.0.copyload129, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %17)
  %18 = icmp ult i8 %17, -6
  br i1 %18, label %do.body22, label %if.end34

do.body22:                                        ; preds = %sw.bb13
  %debug_mask23 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %debug_mask23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_mask23, align 4
  %and24 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body22.if.end79_crit_edge, label %if.then26

do.body22.if.end79_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %conv28 = zext i8 %profile_info.sroa.0.0.copyload129 to i32
  %21 = zext i8 %profile_info.sroa.15.0.copyload135 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.19, i32 noundef %conv28, i32 noundef %21) #6
  br label %if.end79

if.end34:                                         ; preds = %sw.bb13
  %mci2.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13
  %22 = ptrtoint ptr %mci2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %mci2.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %23, %mci2.i
  br i1 %cmp.i.not.i.i, label %if.end34.if.end50.thread.i_crit_edge, label %if.end34.for.cond.i.i_crit_edge

if.end34.for.cond.i.i_crit_edge:                  ; preds = %if.end34
  br label %for.cond.i.i

if.end34.if.end50.thread.i_crit_edge:             ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.thread.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end34.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %mci2.i, %if.end34.for.cond.i.i_crit_edge ]
  %24 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %mci2.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end50.thread.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end50.thread.i_crit_edge:         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.thread.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %conn_handle.i.i = getelementptr i8, ptr %.pn.i.i, i32 -11
  %25 = ptrtoint ptr %conn_handle.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %conn_handle.i.i, align 1
  %cmp7.i.i = icmp eq i8 %26, %profile_info.sroa.14.0.copyload132
  br i1 %cmp7.i.i, label %ath_mci_find_profile.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

ath_mci_find_profile.exit.i:                      ; preds = %for.body.i.i
  %conn_handle.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -11
  %entry1.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %tobool.not.i = icmp eq ptr %entry1.0.le.i.i, null
  br i1 %tobool.not.i, label %if.end50.i, label %if.then.i

if.then.i:                                        ; preds = %ath_mci_find_profile.exit.i
  %27 = ptrtoint ptr %entry1.0.le.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %entry1.0.le.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %profile_info.sroa.0.0.copyload129)
  %cmp.not.i = icmp eq i8 %28, %profile_info.sroa.0.0.copyload129
  br i1 %cmp.not.i, label %if.then.i.if.end50.thread124.i_crit_edge, label %do.body.i

if.then.i.if.end50.thread124.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.thread124.i

do.body.i:                                        ; preds = %if.then.i
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %28, label %do.body.i.do.body22.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb11.i
    i8 3, label %sw.bb16.i
    i8 4, label %sw.bb18.i
    i8 5, label %do.body.i.sw.bb20.i_crit_edge
    i8 6, label %do.body.i.sw.bb20.i_crit_edge176
  ]

do.body.i.sw.bb20.i_crit_edge176:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20.i

do.body.i.sw.bb20.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20.i

do.body.i.do.body22.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22.i

sw.bb.i:                                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_other_acl.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 8
  %30 = ptrtoint ptr %num_other_acl.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_other_acl.i, align 1
  %dec.i = add i8 %31, -1
  store i8 %dec.i, ptr %num_other_acl.i, align 1
  br label %do.body22.i

sw.bb11.i:                                        ; preds = %do.body.i
  %num_a2dp.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 5
  %32 = ptrtoint ptr %num_a2dp.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_a2dp.i, align 4
  %dec12.i = add i8 %33, -1
  store i8 %dec12.i, ptr %num_a2dp.i, align 4
  %edr.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %34 = ptrtoint ptr %edr.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %edr.i, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool13.not.i = icmp eq i8 %35, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %sw.bb11.i.do.body22.i_crit_edge

sw.bb11.i.do.body22.i_crit_edge:                  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22.i

if.then14.i:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_bdr.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 9
  %36 = ptrtoint ptr %num_bdr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_bdr.i, align 4
  %dec15.i = add i8 %37, -1
  store i8 %dec15.i, ptr %num_bdr.i, align 4
  br label %do.body22.i

sw.bb16.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_hid.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 6
  %38 = ptrtoint ptr %num_hid.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_hid.i, align 1
  %dec17.i = add i8 %39, -1
  store i8 %dec17.i, ptr %num_hid.i, align 1
  br label %do.body22.i

sw.bb18.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_pan.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 7
  %40 = ptrtoint ptr %num_pan.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_pan.i, align 2
  %dec19.i = add i8 %41, -1
  store i8 %dec19.i, ptr %num_pan.i, align 2
  br label %do.body22.i

sw.bb20.i:                                        ; preds = %do.body.i.sw.bb20.i_crit_edge, %do.body.i.sw.bb20.i_crit_edge176
  %num_sco.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 4
  %42 = ptrtoint ptr %num_sco.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_sco.i, align 1
  %dec21.i = add i8 %43, -1
  store i8 %dec21.i, ptr %num_sco.i, align 1
  br label %do.body22.i

do.body22.i:                                      ; preds = %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %if.then14.i, %sw.bb11.i.do.body22.i_crit_edge, %sw.bb.i, %do.body.i.do.body22.i_crit_edge
  %44 = zext i8 %profile_info.sroa.0.0.copyload129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %profile_info.sroa.0.0.copyload129, label %do.body22.i.if.end50.thread124.i_crit_edge [
    i8 1, label %sw.bb25.i
    i8 2, label %sw.bb27.i
    i8 3, label %sw.bb36.i
    i8 4, label %sw.bb39.i
    i8 5, label %do.body22.i.sw.bb42.i_crit_edge
    i8 6, label %do.body22.i.sw.bb42.i_crit_edge177
  ]

do.body22.i.sw.bb42.i_crit_edge177:               ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb42.i

do.body22.i.sw.bb42.i_crit_edge:                  ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb42.i

do.body22.i.if.end50.thread124.i_crit_edge:       ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.thread124.i

sw.bb25.i:                                        ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_other_acl26.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 8
  %45 = ptrtoint ptr %num_other_acl26.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_other_acl26.i, align 1
  %inc.i = add i8 %46, 1
  store i8 %inc.i, ptr %num_other_acl26.i, align 1
  br label %if.end50.thread124.i

sw.bb27.i:                                        ; preds = %do.body22.i
  %num_a2dp28.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 5
  %47 = ptrtoint ptr %num_a2dp28.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_a2dp28.i, align 4
  %inc29.i = add i8 %48, 1
  store i8 %inc29.i, ptr %num_a2dp28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %profile_info.sroa.19144.0.copyload145)
  %tobool31.not.i = icmp eq i8 %profile_info.sroa.19144.0.copyload145, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %sw.bb27.i.if.end50.thread124.i_crit_edge

sw.bb27.i.if.end50.thread124.i_crit_edge:         ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.thread124.i

if.then32.i:                                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_bdr33.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 9
  %49 = ptrtoint ptr %num_bdr33.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %num_bdr33.i, align 4
  %inc34.i = add i8 %50, 1
  store i8 %inc34.i, ptr %num_bdr33.i, align 4
  br label %if.end50.thread124.i

sw.bb36.i:                                        ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_hid37.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 6
  %51 = ptrtoint ptr %num_hid37.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_hid37.i, align 1
  %inc38.i = add i8 %52, 1
  store i8 %inc38.i, ptr %num_hid37.i, align 1
  br label %if.end50.thread124.i

sw.bb39.i:                                        ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_pan40.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 7
  %53 = ptrtoint ptr %num_pan40.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_pan40.i, align 2
  %inc41.i = add i8 %54, 1
  store i8 %inc41.i, ptr %num_pan40.i, align 2
  br label %if.end50.thread124.i

sw.bb42.i:                                        ; preds = %do.body22.i.sw.bb42.i_crit_edge, %do.body22.i.sw.bb42.i_crit_edge177
  %num_sco43.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 4
  %55 = ptrtoint ptr %num_sco43.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num_sco43.i, align 1
  %inc44.i = add i8 %56, 1
  store i8 %inc44.i, ptr %num_sco43.i, align 1
  br label %if.end50.thread124.i

if.end50.i:                                       ; preds = %ath_mci_find_profile.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %profile_info.sroa.15.0.copyload135)
  %tobool51.not.i = icmp eq i8 %profile_info.sroa.15.0.copyload135, 0
  br i1 %tobool51.not.i, label %if.end50.i.sw.epilog.thread154_crit_edge, label %if.end50.i.land.lhs.true.i_crit_edge

if.end50.i.land.lhs.true.i_crit_edge:             ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

if.end50.i.sw.epilog.thread154_crit_edge:         ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread154

if.end50.thread124.i:                             ; preds = %sw.bb42.i, %sw.bb39.i, %sw.bb36.i, %if.then32.i, %sw.bb27.i.if.end50.thread124.i_crit_edge, %sw.bb25.i, %do.body22.i.if.end50.thread124.i_crit_edge, %if.then.i.if.end50.thread124.i_crit_edge
  %57 = ptrtoint ptr %entry1.0.le.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %profile_info.sroa.0.0.copyload129, ptr %entry1.0.le.i.i, align 4
  %58 = ptrtoint ptr %conn_handle.i.i.le to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %profile_info.sroa.14.0.copyload132, ptr %conn_handle.i.i.le, align 1
  %profile_info.sroa.15.0.entry1.0.le.i.i.sroa_idx = getelementptr i8, ptr %.pn.i.i, i32 -10
  %59 = ptrtoint ptr %profile_info.sroa.15.0.entry1.0.le.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %profile_info.sroa.15.0.copyload135, ptr %profile_info.sroa.15.0.entry1.0.le.i.i.sroa_idx, align 2
  %profile_info.sroa.19.0.entry1.0.le.i.i.sroa_idx = getelementptr i8, ptr %.pn.i.i, i32 -9
  %60 = ptrtoint ptr %profile_info.sroa.19.0.entry1.0.le.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %profile_info.sroa.19.0.copyload141, ptr %profile_info.sroa.19.0.entry1.0.le.i.i.sroa_idx, align 1
  %profile_info.sroa.19144.0.entry1.0.le.i.i.sroa_idx = getelementptr i8, ptr %.pn.i.i, i32 -8
  %61 = ptrtoint ptr %profile_info.sroa.19144.0.entry1.0.le.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %profile_info.sroa.19144.0.copyload145, ptr %profile_info.sroa.19144.0.entry1.0.le.i.i.sroa_idx, align 4
  %profile_info.sroa.21.0.entry1.0.le.i.i.sroa_idx = getelementptr i8, ptr %.pn.i.i, i32 -7
  %62 = ptrtoint ptr %profile_info.sroa.21.0.entry1.0.le.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %profile_info.sroa.21.0.copyload149, ptr %profile_info.sroa.21.0.entry1.0.le.i.i.sroa_idx, align 1
  %profile_info.sroa.22.0.entry1.0.le.i.i.sroa_idx = getelementptr i8, ptr %.pn.i.i, i32 -6
  %63 = ptrtoint ptr %profile_info.sroa.22.0.entry1.0.le.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %16, ptr %profile_info.sroa.22.0.entry1.0.le.i.i.sroa_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %profile_info.sroa.15.0.copyload135)
  %tobool51.not127.i = icmp eq i8 %profile_info.sroa.15.0.copyload135, 0
  br i1 %tobool51.not127.i, label %do.body.i.i, label %if.end50.thread124.i.sw.epilog.thread154_crit_edge

if.end50.thread124.i.sw.epilog.thread154_crit_edge: ; preds = %if.end50.thread124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread154

if.end50.thread.i:                                ; preds = %for.cond.i.i.if.end50.thread.i_crit_edge, %if.end34.if.end50.thread.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %profile_info.sroa.15.0.copyload135)
  %tobool51.not114.i = icmp eq i8 %profile_info.sroa.15.0.copyload135, 0
  br i1 %tobool51.not114.i, label %if.end50.thread.i.sw.epilog.thread154_crit_edge, label %if.end50.thread.i.land.lhs.true.i_crit_edge

if.end50.thread.i.land.lhs.true.i_crit_edge:      ; preds = %if.end50.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

if.end50.thread.i.sw.epilog.thread154_crit_edge:  ; preds = %if.end50.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread154

land.lhs.true.i:                                  ; preds = %if.end50.thread.i.land.lhs.true.i_crit_edge, %if.end50.i.land.lhs.true.i_crit_edge
  %num_sco.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 4
  %64 = ptrtoint ptr %num_sco.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num_sco.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %65)
  %cmp.i.i = icmp eq i8 %65, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %profile_info.sroa.0.0.copyload129)
  %cmp4.i.i = icmp eq i8 %profile_info.sroa.0.0.copyload129, 5
  %or.cond157 = select i1 %cmp.i.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond157, label %land.lhs.true.i.if.end79_crit_edge, label %if.end.i.i

land.lhs.true.i.if.end79_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end.i.i:                                       ; preds = %land.lhs.true.i
  %num_other_acl.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 8
  %66 = ptrtoint ptr %num_other_acl.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_other_acl.i.i, align 1
  %conv6.i.i = zext i8 %67 to i32
  %num_a2dp.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 5
  %68 = ptrtoint ptr %num_a2dp.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_a2dp.i.i, align 4
  %conv7.i.i = zext i8 %69 to i32
  %add.i.i = add nuw nsw i32 %conv7.i.i, %conv6.i.i
  %num_hid.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 6
  %70 = ptrtoint ptr %num_hid.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_hid.i.i, align 1
  %conv8.i.i = zext i8 %71 to i32
  %add9.i.i = add nuw nsw i32 %add.i.i, %conv8.i.i
  %num_pan.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 7
  %72 = ptrtoint ptr %num_pan.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_pan.i.i, align 2
  %conv10.i.i = zext i8 %73 to i32
  %add11.i.i = add nuw nsw i32 %add9.i.i, %conv10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add11.i.i)
  %cmp17.i.i = icmp ne i32 %add11.i.i, 7
  %or.cond158 = select i1 %cmp17.i.i, i1 true, i1 %cmp4.i.i
  br i1 %or.cond158, label %if.end25.i.i, label %if.end.i.i.if.end79_crit_edge

if.end.i.i.if.end79_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end25.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 2848, i32 noundef 20) #9
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end25.i.i.if.end79_crit_edge, label %if.end27.i.i

if.end25.i.i.if.end79_crit_edge:                  ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end27.i.i:                                     ; preds = %if.end25.i.i
  %75 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %profile_info.sroa.0.0.copyload129, ptr %call7.i.i.i.i, align 8
  %profile_info.sroa.14.0.call7.i.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i.i, i32 1
  %76 = ptrtoint ptr %profile_info.sroa.14.0.call7.i.i.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %profile_info.sroa.14.0.copyload132, ptr %profile_info.sroa.14.0.call7.i.i.i.i.sroa_idx, align 1
  %profile_info.sroa.15.0.call7.i.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i.i, i32 2
  %77 = ptrtoint ptr %profile_info.sroa.15.0.call7.i.i.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %profile_info.sroa.15.0.copyload135, ptr %profile_info.sroa.15.0.call7.i.i.i.i.sroa_idx, align 2
  %profile_info.sroa.19.0.call7.i.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i.i, i32 3
  %78 = ptrtoint ptr %profile_info.sroa.19.0.call7.i.i.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %profile_info.sroa.19.0.copyload141, ptr %profile_info.sroa.19.0.call7.i.i.i.i.sroa_idx, align 1
  %profile_info.sroa.19144.0.call7.i.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i.i, i32 4
  %79 = ptrtoint ptr %profile_info.sroa.19144.0.call7.i.i.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %profile_info.sroa.19144.0.copyload145, ptr %profile_info.sroa.19144.0.call7.i.i.i.i.sroa_idx, align 4
  %profile_info.sroa.21.0.call7.i.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i.i, i32 5
  %80 = ptrtoint ptr %profile_info.sroa.21.0.call7.i.i.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %profile_info.sroa.21.0.copyload149, ptr %profile_info.sroa.21.0.call7.i.i.i.i.sroa_idx, align 1
  %profile_info.sroa.22.0.call7.i.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i.i, i32 6
  %81 = ptrtoint ptr %profile_info.sroa.22.0.call7.i.i.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %16, ptr %profile_info.sroa.22.0.call7.i.i.i.i.sroa_idx, align 2
  %82 = zext i8 %profile_info.sroa.0.0.copyload129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %profile_info.sroa.0.0.copyload129, label %if.end27.i.i.do.end.i.i_crit_edge [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb31.i.i
    i8 3, label %sw.bb38.i.i
    i8 4, label %sw.bb41.i.i
    i8 5, label %if.end27.i.i.sw.bb44.i.i_crit_edge
    i8 6, label %if.end27.i.i.sw.bb44.i.i_crit_edge178
  ]

if.end27.i.i.sw.bb44.i.i_crit_edge178:            ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44.i.i

if.end27.i.i.sw.bb44.i.i_crit_edge:               ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44.i.i

if.end27.i.i.do.end.i.i_crit_edge:                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

sw.bb.i.i:                                        ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %num_other_acl.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %num_other_acl.i.i, align 1
  %inc.i.i = add i8 %84, 1
  store i8 %inc.i.i, ptr %num_other_acl.i.i, align 1
  br label %do.end.i.i

sw.bb31.i.i:                                      ; preds = %if.end27.i.i
  %85 = ptrtoint ptr %num_a2dp.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %num_a2dp.i.i, align 4
  %inc33.i.i = add i8 %86, 1
  store i8 %inc33.i.i, ptr %num_a2dp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %profile_info.sroa.19144.0.copyload145)
  %tobool34.not.i.i = icmp eq i8 %profile_info.sroa.19144.0.copyload145, 0
  br i1 %tobool34.not.i.i, label %if.then35.i.i, label %sw.bb31.i.i.do.end.i.i_crit_edge

sw.bb31.i.i.do.end.i.i_crit_edge:                 ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.then35.i.i:                                    ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_bdr.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 9
  %87 = ptrtoint ptr %num_bdr.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num_bdr.i.i, align 4
  %inc36.i.i = add i8 %88, 1
  store i8 %inc36.i.i, ptr %num_bdr.i.i, align 4
  br label %do.end.i.i

sw.bb38.i.i:                                      ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %num_hid.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %num_hid.i.i, align 1
  %inc40.i.i = add i8 %90, 1
  store i8 %inc40.i.i, ptr %num_hid.i.i, align 1
  br label %do.end.i.i

sw.bb41.i.i:                                      ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %num_pan.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %num_pan.i.i, align 2
  %inc43.i.i = add i8 %92, 1
  store i8 %inc43.i.i, ptr %num_pan.i.i, align 2
  br label %do.end.i.i

sw.bb44.i.i:                                      ; preds = %if.end27.i.i.sw.bb44.i.i_crit_edge, %if.end27.i.i.sw.bb44.i.i_crit_edge178
  %93 = ptrtoint ptr %num_sco.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %num_sco.i.i, align 1
  %inc46.i.i = add i8 %94, 1
  store i8 %inc46.i.i, ptr %num_sco.i.i, align 1
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %sw.bb44.i.i, %sw.bb41.i.i, %sw.bb38.i.i, %if.then35.i.i, %sw.bb31.i.i.do.end.i.i_crit_edge, %sw.bb.i.i, %if.end27.i.i.do.end.i.i_crit_edge
  %list.i.i = getelementptr inbounds %struct.ath_mci_profile_info, ptr %call7.i.i.i.i, i32 0, i32 9
  %prev.i.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %96, ptr noundef %mci2.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.i.list_add_tail.exit.i.i_crit_edge

do.end.i.i.list_add_tail.exit.i.i_crit_edge:      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %98 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %mci2.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ath_mci_profile_info, ptr %call7.i.i.i.i, i32 0, i32 9, i32 1
  %99 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev3.i.i.i.i, align 8
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %list.i.i, ptr %96, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %do.end.i.i.list_add_tail.exit.i.i_crit_edge
  br i1 %cmp4.i.i, label %if.then52.i.i, label %list_add_tail.exit.i.i.sw.epilog.thread154_crit_edge

list_add_tail.exit.i.i.sw.epilog.thread154_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread154

if.then52.i.i:                                    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %profile_info.sroa.21.0.copyload149)
  %cmp54.i.i = icmp ult i8 %profile_info.sroa.21.0.copyload149, 9
  br i1 %cmp54.i.i, label %if.then56.i.i, label %if.then52.i.i.cleanup.sink.split.i.i_crit_edge

if.then52.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.then56.i.i:                                    ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv53.i.i = zext i8 %profile_info.sroa.21.0.copyload149 to i32
  %arrayidx.i.i = getelementptr [9 x i8], ptr @__const.ath_mci_add_profile.voice_priority, i32 0, i32 %conv53.i.i
  %101 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.i, align 1
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then56.i.i, %if.then52.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink.i.i = phi i8 [ %102, %if.then56.i.i ], [ 110, %if.then52.i.i.cleanup.sink.split.i.i_crit_edge ]
  %voice_priority59.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 10
  %103 = ptrtoint ptr %voice_priority59.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %.sink.i.i, ptr %voice_priority59.i.i, align 1
  br label %sw.epilog.thread154

do.body.i.i:                                      ; preds = %if.end50.thread124.i
  %104 = zext i8 %profile_info.sroa.0.0.copyload129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %profile_info.sroa.0.0.copyload129, label %do.body.i.i.do.end.i102.i_crit_edge [
    i8 1, label %sw.bb.i93.i
    i8 2, label %sw.bb2.i.i
    i8 3, label %sw.bb8.i.i
    i8 4, label %sw.bb10.i.i
    i8 5, label %do.body.i.i.sw.bb12.i.i_crit_edge
    i8 6, label %do.body.i.i.sw.bb12.i.i_crit_edge179
  ]

do.body.i.i.sw.bb12.i.i_crit_edge179:             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i.i

do.body.i.i.sw.bb12.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i.i

do.body.i.i.do.end.i102.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i102.i

sw.bb.i93.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_other_acl.i92.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 8
  %105 = ptrtoint ptr %num_other_acl.i92.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %num_other_acl.i92.i, align 1
  %dec.i.i = add i8 %106, -1
  store i8 %dec.i.i, ptr %num_other_acl.i92.i, align 1
  br label %do.end.i102.i

sw.bb2.i.i:                                       ; preds = %do.body.i.i
  %num_a2dp.i94.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 5
  %107 = ptrtoint ptr %num_a2dp.i94.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %num_a2dp.i94.i, align 4
  %dec3.i.i = add i8 %108, -1
  store i8 %dec3.i.i, ptr %num_a2dp.i94.i, align 4
  %109 = ptrtoint ptr %profile_info.sroa.19144.0.entry1.0.le.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %profile_info.sroa.19144.0.entry1.0.le.i.i.sroa_idx, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool4.not.i.i = icmp eq i8 %110, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %sw.bb2.i.i.do.end.i102.i_crit_edge

sw.bb2.i.i.do.end.i102.i_crit_edge:               ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i102.i

if.then5.i.i:                                     ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_bdr.i96.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 9
  %111 = ptrtoint ptr %num_bdr.i96.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %num_bdr.i96.i, align 4
  %dec6.i.i = add i8 %112, -1
  store i8 %dec6.i.i, ptr %num_bdr.i96.i, align 4
  br label %do.end.i102.i

sw.bb8.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_hid.i97.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 6
  %113 = ptrtoint ptr %num_hid.i97.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %num_hid.i97.i, align 1
  %dec9.i.i = add i8 %114, -1
  store i8 %dec9.i.i, ptr %num_hid.i97.i, align 1
  br label %do.end.i102.i

sw.bb10.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_pan.i98.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 7
  %115 = ptrtoint ptr %num_pan.i98.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %num_pan.i98.i, align 2
  %dec11.i.i = add i8 %116, -1
  store i8 %dec11.i.i, ptr %num_pan.i98.i, align 2
  br label %do.end.i102.i

sw.bb12.i.i:                                      ; preds = %do.body.i.i.sw.bb12.i.i_crit_edge, %do.body.i.i.sw.bb12.i.i_crit_edge179
  %num_sco.i99.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 4
  %117 = ptrtoint ptr %num_sco.i99.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %num_sco.i99.i, align 1
  %dec13.i.i = add i8 %118, -1
  store i8 %dec13.i.i, ptr %num_sco.i99.i, align 1
  br label %do.end.i102.i

do.end.i102.i:                                    ; preds = %sw.bb12.i.i, %sw.bb10.i.i, %sw.bb8.i.i, %if.then5.i.i, %sw.bb2.i.i.do.end.i102.i_crit_edge, %sw.bb.i93.i, %do.body.i.i.do.end.i102.i_crit_edge
  %call.i.i.i101.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i.i) #6
  br i1 %call.i.i.i101.i, label %if.end.i.i.i103.i, label %do.end.i102.i.list_del.exit.i.i_crit_edge

do.end.i102.i.list_del.exit.i.i_crit_edge:        ; preds = %do.end.i102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i.i

if.end.i.i.i103.i:                                ; preds = %do.end.i102.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 4
  %119 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i.i.i.i, align 4
  %121 = ptrtoint ptr %.pn.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %.pn.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev1.i.i.i.i.i, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %122, ptr %120, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i103.i, %do.end.i102.i.list_del.exit.i.i_crit_edge
  %125 = ptrtoint ptr %.pn.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i.i, align 4
  %prev.i.i104.i = getelementptr i8, ptr %.pn.i.i, i32 4
  %126 = ptrtoint ptr %prev.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i104.i, align 4
  tail call void @kfree(ptr noundef nonnull %entry1.0.le.i.i) #6
  br label %sw.epilog.thread154

sw.epilog.thread154:                              ; preds = %list_del.exit.i.i, %cleanup.sink.split.i.i, %list_add_tail.exit.i.i.sw.epilog.thread154_crit_edge, %if.end50.thread.i.sw.epilog.thread154_crit_edge, %if.end50.thread124.i.sw.epilog.thread154_crit_edge, %if.end50.i.sw.epilog.thread154_crit_edge
  tail call fastcc void @ath_mci_set_concur_txprio(ptr noundef %sc) #6
  br label %if.then78

sw.bb39:                                          ; preds = %if.end8
  %add.ptr40 = getelementptr i8, ptr %rx_payload, i32 6
  %127 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %add.ptr40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool41 = icmp ne i8 %128, 0
  %add.ptr42 = getelementptr i8, ptr %rx_payload, i32 7
  %129 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %add.ptr42, align 1
  %add.ptr43 = getelementptr i8, ptr %rx_payload, i32 8
  %131 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %add.ptr43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool44 = icmp ne i8 %132, 0
  %debug_mask48 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %133 = ptrtoint ptr %debug_mask48 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %debug_mask48, align 4
  %and49 = and i32 %134, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %sw.bb39.do.end62_crit_edge, label %if.then51

sw.bb39.do.end62_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

if.then51:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr46 = getelementptr i8, ptr %rx_payload, i32 12
  %135 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr46, align 4
  %137 = zext i1 %tobool41 to i32
  %conv56 = zext i8 %130 to i32
  %conv59 = zext i1 %tobool44 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.20, i32 noundef %137, i32 noundef %conv56, i32 noundef %conv59, i32 noundef %136) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then51, %sw.bb39.do.end62_crit_edge
  %num_mgmt.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 3
  %138 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %num_mgmt.i, align 2
  br i1 %tobool41, label %do.end62.if.end79_crit_edge, label %if.end.i

do.end62.if.end79_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end.i:                                         ; preds = %do.end62
  %mci2.i108 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13
  %140 = ptrtoint ptr %mci2.i108 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile ptr, ptr %mci2.i108, align 4
  %cmp.i.not.i.i109 = icmp eq ptr %141, %mci2.i108
  br i1 %cmp.i.not.i.i109, label %if.end.i.if.end6.i_crit_edge, label %if.end.i.for.cond.i.i113_crit_edge

if.end.i.for.cond.i.i113_crit_edge:               ; preds = %if.end.i
  br label %for.cond.i.i113

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

for.cond.i.i113:                                  ; preds = %for.body.i.i116.for.cond.i.i113_crit_edge, %if.end.i.for.cond.i.i113_crit_edge
  %.pn.in.i.i110 = phi ptr [ %.pn.i.i111, %for.body.i.i116.for.cond.i.i113_crit_edge ], [ %mci2.i108, %if.end.i.for.cond.i.i113_crit_edge ]
  %142 = ptrtoint ptr %.pn.in.i.i110 to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pn.i.i111 = load ptr, ptr %.pn.in.i.i110, align 4
  %cmp.not.i.i112 = icmp eq ptr %.pn.i.i111, %mci2.i108
  br i1 %cmp.not.i.i112, label %for.cond.i.i113.if.end6.i_crit_edge, label %for.body.i.i116

for.cond.i.i113.if.end6.i_crit_edge:              ; preds = %for.cond.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

for.body.i.i116:                                  ; preds = %for.cond.i.i113
  %conn_handle.i.i114 = getelementptr i8, ptr %.pn.i.i111, i32 -11
  %143 = ptrtoint ptr %conn_handle.i.i114 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %conn_handle.i.i114, align 1
  %cmp7.i.i115 = icmp eq i8 %144, %130
  br i1 %cmp7.i.i115, label %ath_mci_find_profile.exit.i118, label %for.body.i.i116.for.cond.i.i113_crit_edge

for.body.i.i116.for.cond.i.i113_crit_edge:        ; preds = %for.body.i.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i113

ath_mci_find_profile.exit.i118:                   ; preds = %for.body.i.i116
  %entry1.0.le.i.i117 = getelementptr i8, ptr %.pn.i.i111, i32 -12
  %tobool4.not.i = icmp ne ptr %entry1.0.le.i.i117, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %130)
  %cmp.i = icmp ugt i8 %130, 7
  %or.cond159 = select i1 %tobool4.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond159, label %ath_mci_find_profile.exit.i118.if.end79_crit_edge, label %ath_mci_find_profile.exit.i118.if.end11.i_crit_edge

ath_mci_find_profile.exit.i118.if.end11.i_crit_edge: ; preds = %ath_mci_find_profile.exit.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

ath_mci_find_profile.exit.i118.if.end79_crit_edge: ; preds = %ath_mci_find_profile.exit.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end6.i:                                        ; preds = %for.cond.i.i113.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %130)
  %cmp.i.old = icmp ugt i8 %130, 7
  br i1 %cmp.i.old, label %if.end6.i.if.end79_crit_edge, label %if.end6.i.if.end11.i_crit_edge

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.end6.i.if.end79_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end11.i:                                       ; preds = %if.end6.i.if.end11.i_crit_edge, %ath_mci_find_profile.exit.i118.if.end11.i_crit_edge
  %status19.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 1
  %rem.i57.i = zext i8 %130 to i32
  %shl.i58.i = shl nuw nsw i32 1, %rem.i57.i
  br i1 %tobool44, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %145 = ptrtoint ptr %status19.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %status19.i, align 4
  %or.i.i = or i32 %146, %shl.i58.i
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i.i = xor i32 %shl.i58.i, -1
  %147 = ptrtoint ptr %status19.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %status19.i, align 4
  %and.i.i = and i32 %148, %neg.i.i
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then13.i
  %and.i.sink.i = phi i32 [ %and.i.i, %if.else.i ], [ %or.i.i, %if.then13.i ]
  %149 = ptrtoint ptr %status19.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %and.i.sink.i, ptr %status19.i, align 4
  %150 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %num_mgmt.i, align 2
  %151 = load volatile i32, ptr %status19.i, align 4
  %152 = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool26.not.i = icmp eq i32 %152, 0
  br i1 %tobool26.not.i, label %if.end21.i.do.cond.i_crit_edge, label %if.then27.i

if.end21.i.do.cond.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.i

if.then27.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %num_mgmt.i, align 2
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then27.i, %if.end21.i.do.cond.i_crit_edge
  %154 = ptrtoint ptr %status19.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %status19.i, align 4
  %156 = and i32 %155, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool26.not.1.i = icmp eq i32 %156, 0
  br i1 %tobool26.not.1.i, label %do.cond.i.do.cond.1.i_crit_edge, label %if.then27.1.i

do.cond.i.do.cond.1.i_crit_edge:                  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.1.i

if.then27.1.i:                                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %157 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %num_mgmt.i, align 2
  %inc.1.i = add i8 %158, 1
  store i8 %inc.1.i, ptr %num_mgmt.i, align 2
  br label %do.cond.1.i

do.cond.1.i:                                      ; preds = %if.then27.1.i, %do.cond.i.do.cond.1.i_crit_edge
  %159 = ptrtoint ptr %status19.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %status19.i, align 4
  %161 = and i32 %160, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool26.not.2.i = icmp eq i32 %161, 0
  br i1 %tobool26.not.2.i, label %do.cond.1.i.do.cond.2.i_crit_edge, label %if.then27.2.i

do.cond.1.i.do.cond.2.i_crit_edge:                ; preds = %do.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.2.i

if.then27.2.i:                                    ; preds = %do.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %num_mgmt.i, align 2
  %inc.2.i = add i8 %163, 1
  store i8 %inc.2.i, ptr %num_mgmt.i, align 2
  br label %do.cond.2.i

do.cond.2.i:                                      ; preds = %if.then27.2.i, %do.cond.1.i.do.cond.2.i_crit_edge
  %164 = ptrtoint ptr %status19.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %status19.i, align 4
  %166 = and i32 %165, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool26.not.3.i = icmp eq i32 %166, 0
  br i1 %tobool26.not.3.i, label %do.cond.2.i.do.cond.3.i_crit_edge, label %if.then27.3.i

do.cond.2.i.do.cond.3.i_crit_edge:                ; preds = %do.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.3.i

if.then27.3.i:                                    ; preds = %do.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %num_mgmt.i, align 2
  %inc.3.i = add i8 %168, 1
  store i8 %inc.3.i, ptr %num_mgmt.i, align 2
  br label %do.cond.3.i

do.cond.3.i:                                      ; preds = %if.then27.3.i, %do.cond.2.i.do.cond.3.i_crit_edge
  %169 = ptrtoint ptr %status19.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %status19.i, align 4
  %171 = and i32 %170, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool26.not.4.i = icmp eq i32 %171, 0
  br i1 %tobool26.not.4.i, label %do.cond.3.i.do.cond.4.i_crit_edge, label %if.then27.4.i

do.cond.3.i.do.cond.4.i_crit_edge:                ; preds = %do.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.4.i

if.then27.4.i:                                    ; preds = %do.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %num_mgmt.i, align 2
  %inc.4.i = add i8 %173, 1
  store i8 %inc.4.i, ptr %num_mgmt.i, align 2
  br label %do.cond.4.i

do.cond.4.i:                                      ; preds = %if.then27.4.i, %do.cond.3.i.do.cond.4.i_crit_edge
  %174 = ptrtoint ptr %status19.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %status19.i, align 4
  %176 = and i32 %175, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool26.not.5.i = icmp eq i32 %176, 0
  br i1 %tobool26.not.5.i, label %do.cond.4.i.do.cond.5.i_crit_edge, label %if.then27.5.i

do.cond.4.i.do.cond.5.i_crit_edge:                ; preds = %do.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.5.i

if.then27.5.i:                                    ; preds = %do.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %177 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %num_mgmt.i, align 2
  %inc.5.i = add i8 %178, 1
  store i8 %inc.5.i, ptr %num_mgmt.i, align 2
  br label %do.cond.5.i

do.cond.5.i:                                      ; preds = %if.then27.5.i, %do.cond.4.i.do.cond.5.i_crit_edge
  %179 = ptrtoint ptr %status19.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %status19.i, align 4
  %181 = and i32 %180, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool26.not.6.i = icmp eq i32 %181, 0
  br i1 %tobool26.not.6.i, label %do.cond.5.i.do.cond.6.i_crit_edge, label %if.then27.6.i

do.cond.5.i.do.cond.6.i_crit_edge:                ; preds = %do.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.6.i

if.then27.6.i:                                    ; preds = %do.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %182 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %num_mgmt.i, align 2
  %inc.6.i = add i8 %183, 1
  store i8 %inc.6.i, ptr %num_mgmt.i, align 2
  br label %do.cond.6.i

do.cond.6.i:                                      ; preds = %if.then27.6.i, %do.cond.5.i.do.cond.6.i_crit_edge
  %184 = ptrtoint ptr %status19.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %status19.i, align 4
  %186 = and i32 %185, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool26.not.7.i = icmp eq i32 %186, 0
  br i1 %tobool26.not.7.i, label %do.cond.6.i.sw.epilog_crit_edge, label %if.then27.7.i

do.cond.6.i.sw.epilog_crit_edge:                  ; preds = %do.cond.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then27.7.i:                                    ; preds = %do.cond.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %187 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %num_mgmt.i, align 2
  %inc.7.i = add i8 %188, 1
  store i8 %inc.7.i, ptr %num_mgmt.i, align 2
  br label %sw.epilog

do.body68:                                        ; preds = %if.end8
  %debug_mask69 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %189 = ptrtoint ptr %debug_mask69 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %debug_mask69, align 4
  %and70 = and i32 %190, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body68.if.end79_crit_edge, label %if.then72

do.body68.if.end79_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then72:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %if.end79

sw.epilog:                                        ; preds = %if.then27.7.i, %do.cond.6.i.sw.epilog_crit_edge
  tail call fastcc void @ath_mci_set_concur_txprio(ptr noundef %sc) #6
  %191 = ptrtoint ptr %num_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %num_mgmt.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %139, i8 %192)
  %cmp35.not.i.not = icmp eq i8 %139, %192
  br i1 %cmp35.not.i.not, label %sw.epilog.if.end79_crit_edge, label %sw.epilog.if.then78_crit_edge

sw.epilog.if.then78_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78

sw.epilog.if.end79_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then78:                                        ; preds = %sw.epilog.if.then78_crit_edge, %sw.epilog.thread154
  %193 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %sc, align 8
  %mci_work = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 50
  tail call void @ieee80211_queue_work(ptr noundef %194, ptr noundef %mci_work) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %sw.epilog.if.end79_crit_edge, %if.then72, %do.body68.if.end79_crit_edge, %if.end6.i.if.end79_crit_edge, %ath_mci_find_profile.exit.i118.if.end79_crit_edge, %do.end62.if.end79_crit_edge, %if.end25.i.i.if.end79_crit_edge, %if.end.i.i.if.end79_crit_edge, %land.lhs.true.i.if.end79_crit_edge, %if.then26, %do.body22.if.end79_crit_edge, %sw.bb12, %sw.bb10, %sw.bb
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath_mci_enable(ptr nocapture noundef readonly %sc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %btcoex_enabled = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %btcoex_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %btcoex_enabled, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %imask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 36
  %6 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %imask, align 4
  %or = or i32 %7, 512
  store i32 %or, ptr %imask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_mci_update_wlan_channels(ptr nocapture noundef readonly %sc, i1 noundef zeroext %allow_all) local_unnamed_addr #0 align 64 {
entry:
  %channelmap = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curchan, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %channelmap) #6
  %4 = call ptr @memcpy(ptr %channelmap, ptr @__const.ath9k_mci_update_wlan_channels.channelmap, i32 16)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %channelFlags, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br i1 %allow_all, label %if.end.send_wlan_chan_crit_edge, label %if.end5

if.end.send_wlan_chan_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_wlan_chan

if.end5:                                          ; preds = %if.end
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %channel, align 4
  %sub = add i16 %8, -2402
  %conv8 = zext i16 %sub to i32
  %sub9 = add i16 %8, -2412
  %and15 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %add19 = add i16 %8, -2372
  br label %if.end30

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i16 %8, -2392
  %and23 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %sub27 = add i16 %8, -2432
  %spec.select = select i1 %tobool24.not, i16 %sub9, i16 %sub27
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then17
  %chan_start.0 = phi i16 [ %sub9, %if.then17 ], [ %spec.select, %if.else ]
  %chan_end.0 = phi i16 [ %add19, %if.then17 ], [ %add, %if.else ]
  %sub32 = add i16 %chan_start.0, -7
  %add35 = add i16 %chan_end.0, 7
  %9 = tail call i16 @llvm.smax.i16(i16 %sub32, i16 0)
  %10 = tail call i16 @llvm.smin.i16(i16 %add35, i16 78)
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_mask, align 4
  %and46 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end30.do.end_crit_edge, label %if.then48

if.end30.do.end_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = sext i16 %10 to i32
  br label %do.end

if.then48:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %conv51 = zext i16 %9 to i32
  %conv52 = sext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.10, i32 noundef %conv8, i32 noundef %conv51, i32 noundef %conv52) #6
  br label %do.end

do.end:                                           ; preds = %if.then48, %if.end30.do.end_crit_edge
  %conv55.pre-phi = phi i32 [ %.pre, %if.end30.do.end_crit_edge ], [ %conv52, %if.then48 ]
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %10)
  %cmp56116 = icmp slt i16 %9, %10
  br i1 %cmp56116, label %do.body58.lr.ph, label %do.end.send_wlan_chan_crit_edge

do.end.send_wlan_chan_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_wlan_chan

do.body58.lr.ph:                                  ; preds = %do.end
  %conv54 = zext i16 %9 to i32
  %add.ptr = getelementptr inbounds i8, ptr %channelmap, i32 6
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %do.body58.lr.ph
  %i.0117 = phi i32 [ %conv54, %do.body58.lr.ph ], [ %inc, %for.inc.for.inc_crit_edge ]
  %and62 = and i32 %i.0117, 7
  %shl = shl nuw nsw i32 1, %and62
  %div115 = lshr i32 %i.0117, 3
  %add.ptr63 = getelementptr i8, ptr %add.ptr, i32 %div115
  %13 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr63, align 1
  %15 = trunc i32 %shl to i8
  %16 = xor i8 %15, -1
  %conv66 = and i8 %14, %16
  store i8 %conv66, ptr %add.ptr63, align 1
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, %conv55.pre-phi
  br i1 %exitcond.not, label %for.inc.send_wlan_chan_crit_edge, label %for.inc.for.inc_crit_edge

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc.send_wlan_chan_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_wlan_chan

send_wlan_chan:                                   ; preds = %for.inc.send_wlan_chan_crit_edge, %do.end.send_wlan_chan_crit_edge, %if.end.send_wlan_chan_crit_edge
  %uglygep = getelementptr i8, ptr %1, i32 5996
  %17 = call ptr @memcpy(ptr %uglygep, ptr %channelmap, i32 16)
  tail call void @ar9003_mci_send_wlan_channels(ptr noundef %1) #6
  %call78 = tail call i32 @ar9003_mci_state(ptr noundef %1, i32 noundef 17) #6
  br label %cleanup

cleanup:                                          ; preds = %send_wlan_chan, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %channelmap) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_mci_send_wlan_channels(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_mci_set_txpower(ptr nocapture noundef readonly %sc, i1 noundef zeroext %setchannel, i1 noundef zeroext %concur_tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %concur_tx to i8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %concur_tx3 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 1, i32 27
  %2 = ptrtoint ptr %concur_tx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %concur_tx3, align 1, !range !52
  %config = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 1, i32 10
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %concur_tx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %concur_tx3, align 1
  br label %cleanup73

if.end:                                           ; preds = %entry
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %curchan, align 4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %channelFlags, align 2
  %conv = zext i16 %10 to i32
  %and7 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup73_crit_edge

if.end.cleanup73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end10:                                         ; preds = %if.end
  br i1 %setchannel, label %if.then12, label %if.end10.if.end61_crit_edge

if.end10.if.end61_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then12:                                        ; preds = %if.end10
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %11 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_chan, align 8
  %caldata13 = getelementptr inbounds %struct.ath_chanctx, ptr %12, i32 0, i32 6
  %and17 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then12.if.end33_crit_edge, label %land.lhs.true

if.then12.if.end33_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then12
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %channel, align 4
  %15 = ptrtoint ptr %caldata13 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %caldata13, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp = icmp ule i16 %14, %16
  %conv22 = zext i16 %16 to i32
  %conv20 = zext i16 %14 to i32
  %add = add nuw nsw i32 %conv22, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv20)
  %cmp30.not = icmp ult i32 %add, %conv20
  %or.cond = select i1 %cmp, i1 true, i1 %cmp30.not
  br i1 %or.cond, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.cleanup73_crit_edge

land.lhs.true.cleanup73_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.then12.if.end33_crit_edge
  %17 = and i16 %10, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool38.not = icmp eq i16 %17, 0
  br i1 %tobool38.not, label %if.end33.if.end61_crit_edge, label %land.lhs.true39

if.end33.if.end61_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true39:                                  ; preds = %if.end33
  %channel41 = getelementptr inbounds %struct.ath9k_channel, ptr %8, i32 0, i32 1
  %18 = ptrtoint ptr %channel41 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %channel41, align 4
  %20 = ptrtoint ptr %caldata13 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %caldata13, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp45 = icmp uge i16 %19, %21
  %conv44 = zext i16 %21 to i32
  %conv42 = zext i16 %19 to i32
  %sub = add nsw i32 %conv44, -20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv42)
  %cmp53.not = icmp sgt i32 %sub, %conv42
  %or.cond96 = select i1 %cmp45, i1 true, i1 %cmp53.not
  br i1 %or.cond96, label %land.lhs.true39.if.end61_crit_edge, label %land.lhs.true39.cleanup73_crit_edge

land.lhs.true39.cleanup73_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

land.lhs.true39.if.end61_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true39.if.end61_crit_edge, %if.end33.if.end61_crit_edge, %if.end10.if.end61_crit_edge
  %storemerge = phi i8 [ 0, %land.lhs.true39.if.end61_crit_edge ], [ 0, %if.end33.if.end61_crit_edge ], [ %frombool1, %if.end10.if.end61_crit_edge ]
  %22 = ptrtoint ptr %concur_tx3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %storemerge, ptr %concur_tx3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %storemerge)
  %cmp67.not = icmp eq i8 %3, %storemerge
  br i1 %cmp67.not, label %if.end61.cleanup73_crit_edge, label %if.then69

if.end61.cleanup73_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.then69:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %cur_chan70 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %23 = ptrtoint ptr %cur_chan70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_chan70, align 8
  %txpower = getelementptr inbounds %struct.ath_chanctx, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %txpower to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %txpower, align 8
  %conv71 = zext i16 %26 to i32
  tail call void @ath9k_hw_set_txpowerlimit(ptr noundef %1, i32 noundef %conv71, i1 noundef zeroext false) #6
  br label %cleanup73

cleanup73:                                        ; preds = %if.then69, %if.end61.cleanup73_crit_edge, %land.lhs.true39.cleanup73_crit_edge, %land.lhs.true.cleanup73_crit_edge, %if.end.cleanup73_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_txpowerlimit(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_mci_update_rssi(ptr nocapture noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %num_sco.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 4
  %2 = ptrtoint ptr %num_sco.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_sco.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %num_a2dp.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 5
  %4 = ptrtoint ptr %num_a2dp.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_a2dp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.ath9k_mci_stomp_audio.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.ath9k_mci_stomp_audio.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_mci_stomp_audio.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %avgbrssi.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 33, i32 12
  %6 = ptrtoint ptr %avgbrssi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %avgbrssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %7)
  %cmp.i = icmp ugt i32 %7, 25
  %stomp_audio.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 14
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end5.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %stomp_audio.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stomp_audio.i, align 4
  %inc.i = add i8 %9, 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end5.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %inc.sink.i = phi i8 [ %inc.i, %if.end5.i ], [ 0, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %10 = ptrtoint ptr %stomp_audio.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %inc.sink.i, ptr %stomp_audio.i, align 4
  br label %ath9k_mci_stomp_audio.exit

ath9k_mci_stomp_audio.exit:                       ; preds = %cleanup.sink.split.i, %land.lhs.true.i.ath9k_mci_stomp_audio.exit_crit_edge
  %config = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 1, i32 10
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %config, align 4
  %and = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ath9k_mci_stomp_audio.exit.cleanup_crit_edge, label %if.end

ath9k_mci_stomp_audio.exit.cleanup_crit_edge:     ; preds = %ath9k_mci_stomp_audio.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ath9k_mci_stomp_audio.exit
  %avgbrssi = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 33, i32 12
  %13 = ptrtoint ptr %avgbrssi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %avgbrssi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %14)
  %cmp = icmp ugt i32 %14, 39
  %rssi_count = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 12
  %15 = ptrtoint ptr %rssi_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rssi_count, align 4
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %if.then5, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %rssi_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rssi_count, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3.if.end7_crit_edge
  %18 = ptrtoint ptr %rssi_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rssi_count, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rssi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp9 = icmp sgt i32 %inc, 4
  br i1 %cmp9, label %if.then10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %20 = ptrtoint ptr %rssi_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rssi_count, align 4
  %concur_tx3.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 1, i32 27
  %21 = ptrtoint ptr %concur_tx3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %concur_tx3.i, align 1, !range !52
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %config, align 4
  %and.i = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.then.i, label %if.end.i39

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %concur_tx3.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %concur_tx3.i, align 1
  br label %cleanup

if.end.i39:                                       ; preds = %if.then10
  %curchan.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %curchan.i, align 4
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %channelFlags.i, align 2
  %30 = and i16 %29, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool8.not.i = icmp eq i16 %30, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i39.cleanup_crit_edge

if.end.i39.cleanup_crit_edge:                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i39
  %31 = ptrtoint ptr %concur_tx3.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %concur_tx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp67.not.i = icmp eq i8 %22, 1
  br i1 %cmp67.not.i, label %if.end10.i.cleanup_crit_edge, label %if.then69.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then69.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %cur_chan70.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %32 = ptrtoint ptr %cur_chan70.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur_chan70.i, align 8
  %txpower.i = getelementptr inbounds %struct.ath_chanctx, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %txpower.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %txpower.i, align 8
  %conv71.i = zext i16 %35 to i32
  tail call void @ath9k_hw_set_txpowerlimit(ptr noundef %1, i32 noundef %conv71.i, i1 noundef zeroext false) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14 = icmp sgt i32 %16, 0
  br i1 %cmp14, label %if.then15, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %rssi_count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rssi_count, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else.if.end17_crit_edge
  %37 = ptrtoint ptr %rssi_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rssi_count, align 4
  %dec = add i32 %38, -1
  store i32 %dec, ptr %rssi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %dec)
  %cmp19 = icmp slt i32 %dec, -4
  br i1 %cmp19, label %if.then20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  %39 = ptrtoint ptr %rssi_count to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %rssi_count, align 4
  %concur_tx3.i41 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 1, i32 27
  %40 = ptrtoint ptr %concur_tx3.i41 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %concur_tx3.i41, align 1, !range !52
  %42 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %config, align 4
  %and.i43 = and i32 %43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool5.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool5.not.i44, label %if.then.i45, label %if.end.i51

if.then.i45:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %concur_tx3.i41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %concur_tx3.i41, align 1
  br label %cleanup

if.end.i51:                                       ; preds = %if.then20
  %curchan.i46 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %45 = ptrtoint ptr %curchan.i46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %curchan.i46, align 4
  %channelFlags.i47 = getelementptr inbounds %struct.ath9k_channel, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %channelFlags.i47 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %channelFlags.i47, align 2
  %49 = and i16 %48, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool8.not.i50 = icmp eq i16 %49, 0
  br i1 %tobool8.not.i50, label %if.end10.i52, label %if.end.i51.cleanup_crit_edge

if.end.i51.cleanup_crit_edge:                     ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.i52:                                     ; preds = %if.end.i51
  %50 = ptrtoint ptr %concur_tx3.i41 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %concur_tx3.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp67.not.i53 = icmp eq i8 %41, 0
  br i1 %cmp67.not.i53, label %if.end10.i52.cleanup_crit_edge, label %if.then69.i57

if.end10.i52.cleanup_crit_edge:                   ; preds = %if.end10.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then69.i57:                                    ; preds = %if.end10.i52
  call void @__sanitizer_cov_trace_pc() #8
  %cur_chan70.i54 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %51 = ptrtoint ptr %cur_chan70.i54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur_chan70.i54, align 8
  %txpower.i55 = getelementptr inbounds %struct.ath_chanctx, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %txpower.i55 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %txpower.i55, align 8
  %conv71.i56 = zext i16 %54 to i32
  tail call void @ath9k_hw_set_txpowerlimit(ptr noundef %1, i32 noundef %conv71.i56, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then69.i57, %if.end10.i52.cleanup_crit_edge, %if.end.i51.cleanup_crit_edge, %if.then.i45, %if.end17.cleanup_crit_edge, %if.then69.i, %if.end10.i.cleanup_crit_edge, %if.end.i39.cleanup_crit_edge, %if.then.i, %if.end7.cleanup_crit_edge, %ath9k_mci_stomp_audio.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_btcoex_timer_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_btcoex_timer_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_queue_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_mci_set_bt_version(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_mci_set_concur_txprio(ptr nocapture noundef readonly %sc) unnamed_addr #0 align 64 {
entry:
  %stomp_txprio = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %stomp_txprio) #6
  %0 = getelementptr inbounds [5 x i8], ptr %stomp_txprio, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %stomp_txprio, i32 0, i32 2
  %2 = call ptr @memset(ptr %stomp_txprio, i32 0, i32 5)
  %num_mgmt = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 3
  %3 = ptrtoint ptr %num_mgmt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_mgmt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %stomp_txprio to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 62, ptr %stomp_txprio, align 1
  %num_pan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 7
  %6 = ptrtoint ptr %num_pan to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_pan, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then.if.end47_crit_edge

if.then.if.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

land.lhs.true:                                    ; preds = %if.then
  %num_other_acl = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 8
  %8 = ptrtoint ptr %num_other_acl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_other_acl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 62, ptr %1, align 1
  br label %if.end47

if.else:                                          ; preds = %entry
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %1, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %0, align 1
  %num_sco = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 4
  %13 = ptrtoint ptr %num_sco to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_sco, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %if.else.if.end12_crit_edge, label %if.then10

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.else
  %voice_priority = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 10
  %15 = ptrtoint ptr %voice_priority to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %voice_priority, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %16)
  %cmp.i = icmp ugt i8 %18, %16
  br i1 %cmp.i, label %if.then.i, label %if.then10.if.end.i_crit_edge

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %16, ptr %1, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then10.if.end.i_crit_edge
  %20 = ptrtoint ptr %stomp_txprio to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stomp_txprio, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %16)
  %cmp7.i = icmp ult i8 %21, %16
  br i1 %cmp7.i, label %if.then9.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %stomp_txprio to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %16, ptr %stomp_txprio, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end.i.if.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %16)
  %cmp13.i = icmp ugt i8 %16, 60
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end11.i.if.end12_crit_edge

if.end11.i.if.end12_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true.i:                                  ; preds = %if.end11.i
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %16)
  %cmp18.i = icmp ugt i8 %24, %16
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true.i.if.end12_crit_edge

land.lhs.true.i.if.end12_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %16, ptr %0, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then20.i, %land.lhs.true.i.if.end12_crit_edge, %if.end11.i.if.end12_crit_edge, %if.else.if.end12_crit_edge
  %num_other_acl13 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 8
  %26 = ptrtoint ptr %num_other_acl13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_other_acl13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool14.not = icmp eq i8 %27, 0
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %29)
  %cmp.i59 = icmp ugt i8 %29, 50
  br i1 %cmp.i59, label %if.then.i60, label %if.then15.if.end.i62_crit_edge

if.then15.if.end.i62_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i62

if.then.i60:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 50, ptr %1, align 1
  br label %if.end.i62

if.end.i62:                                       ; preds = %if.then.i60, %if.then15.if.end.i62_crit_edge
  %31 = ptrtoint ptr %stomp_txprio to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stomp_txprio, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %32)
  %cmp7.i61 = icmp ult i8 %32, 50
  br i1 %cmp7.i61, label %if.then9.i63, label %if.end.i62.if.end18_crit_edge

if.end.i62.if.end18_crit_edge:                    ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then9.i63:                                     ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %stomp_txprio to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 50, ptr %stomp_txprio, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then9.i63, %if.end.i62.if.end18_crit_edge, %if.end12.if.end18_crit_edge
  %num_a2dp = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 5
  %34 = ptrtoint ptr %num_a2dp to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_a2dp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool19.not = icmp eq i8 %35, 0
  br i1 %tobool19.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %37)
  %cmp.i67 = icmp ugt i8 %37, 90
  br i1 %cmp.i67, label %if.then.i68, label %if.then20.if.end.i70_crit_edge

if.then20.if.end.i70_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i70

if.then.i68:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 90, ptr %1, align 1
  br label %if.end.i70

if.end.i70:                                       ; preds = %if.then.i68, %if.then20.if.end.i70_crit_edge
  %39 = ptrtoint ptr %stomp_txprio to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %stomp_txprio, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %40)
  %cmp7.i69 = icmp ult i8 %40, 90
  br i1 %cmp7.i69, label %if.then9.i71, label %if.end.i70.if.end11.i72_crit_edge

if.end.i70.if.end11.i72_crit_edge:                ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i72

if.then9.i71:                                     ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %stomp_txprio to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 90, ptr %stomp_txprio, align 1
  br label %if.end11.i72

if.end11.i72:                                     ; preds = %if.then9.i71, %if.end.i70.if.end11.i72_crit_edge
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %43)
  %cmp18.i74 = icmp ugt i8 %43, 90
  br i1 %cmp18.i74, label %if.then20.i76, label %if.end11.i72.if.end23_crit_edge

if.end11.i72.if.end23_crit_edge:                  ; preds = %if.end11.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20.i76:                                    ; preds = %if.end11.i72
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 90, ptr %0, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then20.i76, %if.end11.i72.if.end23_crit_edge, %if.end18.if.end23_crit_edge
  %num_hid = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 6
  %45 = ptrtoint ptr %num_hid to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_hid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool24.not = icmp eq i8 %46, 0
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %48)
  %cmp.i79 = icmp ugt i8 %48, 94
  br i1 %cmp.i79, label %if.then.i80, label %if.then25.if.end.i82_crit_edge

if.then25.if.end.i82_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i82

if.then.i80:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 94, ptr %1, align 1
  br label %if.end.i82

if.end.i82:                                       ; preds = %if.then.i80, %if.then25.if.end.i82_crit_edge
  %50 = ptrtoint ptr %stomp_txprio to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %stomp_txprio, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %51)
  %cmp7.i81 = icmp ult i8 %51, 94
  br i1 %cmp7.i81, label %if.then9.i83, label %if.end.i82.if.end11.i84_crit_edge

if.end.i82.if.end11.i84_crit_edge:                ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i84

if.then9.i83:                                     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %stomp_txprio to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 94, ptr %stomp_txprio, align 1
  br label %if.end11.i84

if.end11.i84:                                     ; preds = %if.then9.i83, %if.end.i82.if.end11.i84_crit_edge
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %54)
  %cmp18.i86 = icmp ugt i8 %54, 94
  br i1 %cmp18.i86, label %if.then20.i88, label %if.end11.i84.if.end28_crit_edge

if.end11.i84.if.end28_crit_edge:                  ; preds = %if.end11.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then20.i88:                                    ; preds = %if.end11.i84
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 94, ptr %0, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then20.i88, %if.end11.i84.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  %num_pan29 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 48, i32 13, i32 7
  %56 = ptrtoint ptr %num_pan29 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %num_pan29, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool30.not = icmp eq i8 %57, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %59)
  %cmp.i91 = icmp ugt i8 %59, 52
  br i1 %cmp.i91, label %if.then.i92, label %if.then31.if.end.i94_crit_edge

if.then31.if.end.i94_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i94

if.then.i92:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 52, ptr %1, align 1
  br label %if.end.i94

if.end.i94:                                       ; preds = %if.then.i92, %if.then31.if.end.i94_crit_edge
  %61 = ptrtoint ptr %stomp_txprio to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %stomp_txprio, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %62)
  %cmp7.i93 = icmp ult i8 %62, 52
  br i1 %cmp7.i93, label %if.then9.i95, label %if.end.i94.if.end34_crit_edge

if.end.i94.if.end34_crit_edge:                    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then9.i95:                                     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %stomp_txprio to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 52, ptr %stomp_txprio, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then9.i95, %if.end.i94.if.end34_crit_edge, %if.end28.if.end34_crit_edge
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp = icmp eq i8 %65, -1
  br i1 %cmp, label %if.then37, label %if.end34.if.end39_crit_edge

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %1, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %cmp42 = icmp eq i8 %68, -1
  br i1 %cmp42, label %if.then44, label %if.end39.if.end47_crit_edge

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %0, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end39.if.end47_crit_edge, %if.then5, %land.lhs.true.if.end47_crit_edge, %if.then.if.end47_crit_edge
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %70 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sc_ah, align 4
  call void @ath9k_hw_btcoex_set_concur_txprio(ptr noundef %71, ptr noundef nonnull %stomp_txprio) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %stomp_txprio) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_btcoex_set_concur_txprio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 446, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 463, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ath_mci_setup.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 467, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 468, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 480, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 608, i32 4}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 677, i32 2}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 152, i32 4}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 162, i32 4}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 168, i32 4}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 176, i32 3}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 181, i32 3}
!29 = !{ptr @ath_mci_duty_cycle, !30, !"ath_mci_duty_cycle", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 23, i32 17}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 223, i32 3}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 231, i32 3}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 378, i32 3}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 401, i32 4}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 419, i32 3}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath9k/mci.c", i32 427, i32 3}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
!53 = !{!"auto-init"}
