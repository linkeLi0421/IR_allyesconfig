; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/dfs.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/dfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pulse_event = type { i64, i16, i8, i8, i8 }
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
%struct.ath_rx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i32 }
%struct.ath9k_dfs_fft_40 = type { [64 x i8], [3 x i8], [3 x i8] }
%struct.ath9k_dfs_fft_20 = type { [28 x i8], [3 x i8] }
%struct.dfs_pattern_detector = type { ptr, ptr, ptr, ptr, i32, i8, i64, ptr, ptr, %struct.list_head }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error: rs_phyer=0x%x not a radar error\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"ath9k_dfs_process_phyerr: type=%d, freq=%d, ts=%llu, width=%d, rssi=%d, delta_ts=%llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HT40: datalen=%d, num_fft_packets=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"not enough packets for chirp\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fixing datalen by 2\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HT20: datalen=%d, num_fft_packets=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bin_max = [%d, %d, %d, %d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CHIRP: invalid delta %d in sample %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CHIRP: ddelta %d too high\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CHIRP - %d: delta=%d, ddelta=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 36]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 302, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 346, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 115, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 118, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 124, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 137, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 147, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 161, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 169, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath9k/dfs.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 174, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_dfs_process_phyerr(ptr noundef %sc, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %rs, i64 noundef %mactime) local_unnamed_addr #0 align 64 {
entry:
  %max_bin.i = alloca [4 x i32], align 4
  %pe = alloca %struct.pulse_event, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pe) #4
  %0 = getelementptr inbounds i8, ptr %pe, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %dfs_stats = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3
  %4 = ptrtoint ptr %dfs_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dfs_stats, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %dfs_stats, align 4
  %rs_phyerr = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 3
  %6 = ptrtoint ptr %rs_phyerr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rs_phyerr, align 1
  %conv = zext i8 %7 to i32
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %do.body [
    i8 5, label %entry.if.end13_crit_edge
    i8 36, label %entry.if.end13_crit_edge179
  ]

entry.if.end13_crit_edge179:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  %and = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then6

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body.do.end_crit_edge
  %pulses_no_dfs = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 1
  %11 = ptrtoint ptr %pulses_no_dfs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pulses_no_dfs, align 4
  %inc12 = add i32 %12, 1
  store i32 %inc12, ptr %pulses_no_dfs, align 4
  br label %cleanup

if.end13:                                         ; preds = %entry.if.end13_crit_edge, %entry.if.end13_crit_edge179
  %rs_datalen = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 1
  %13 = ptrtoint ptr %rs_datalen to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rs_datalen, align 4
  %conv14 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp15 = icmp eq i16 %14, 0
  br i1 %cmp15, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %datalen_discards = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 3
  %15 = ptrtoint ptr %datalen_discards to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %datalen_discards, align 4
  %inc21 = add i32 %16, 1
  store i32 %inc21, ptr %datalen_discards, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %rs_rssi_ctl = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 9
  %17 = ptrtoint ptr %rs_rssi_ctl to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rs_rssi_ctl, align 1
  %rs_rssi_ext = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 10
  %19 = ptrtoint ptr %rs_rssi_ext to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rs_rssi_ext, align 4
  %21 = tail call i8 @llvm.smax.i8(i8 %18, i8 0)
  %22 = tail call i8 @llvm.smax.i8(i8 %20, i8 0)
  %add.ptr = getelementptr i8, ptr %data, i32 %conv14
  %arrayidx39 = getelementptr i8, ptr %add.ptr, i32 -1
  %23 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx39, align 1
  %arrayidx40 = getelementptr i8, ptr %add.ptr, i32 -2
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx40, align 1
  %arrayidx41 = getelementptr i8, ptr %add.ptr, i32 -3
  %27 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx41, align 1
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %curchan, align 4
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %channel, align 4
  %freq = getelementptr inbounds %struct.pulse_event, ptr %pe, i32 0, i32 1
  %33 = ptrtoint ptr %freq to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %freq, align 8
  %34 = ptrtoint ptr %pe to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %mactime, ptr %pe, align 8
  %35 = and i8 %24, 3
  %conv3.i = zext i8 %35 to i32
  %36 = zext i32 %conv3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %conv3.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb32.i
  ]

sw.bb.i:                                          ; preds = %if.end22
  %pri_phy_errors.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 6
  %37 = ptrtoint ptr %pri_phy_errors.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pri_phy_errors.i, align 4
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %pri_phy_errors.i, align 4
  %narrow178 = add nuw i8 %21, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %narrow178, i8 %22)
  %cmp.not.i = icmp ugt i8 %narrow178, %22
  br i1 %cmp.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.if.then69.i_crit_edge

sw.bb.i.if.then69.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then69.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end22
  %ext_phy_errors.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 7
  %39 = ptrtoint ptr %ext_phy_errors.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ext_phy_errors.i, align 4
  %inc17.i = add i32 %40, 1
  store i32 %inc17.i, ptr %ext_phy_errors.i, align 4
  %narrow = add nuw i8 %22, 12
  call void @__sanitizer_cov_trace_cmp1(i8 %narrow, i8 %21)
  %cmp23.not.i = icmp ugt i8 %narrow, %21
  br i1 %cmp23.not.i, label %sw.bb12.i.sw.epilog.i_crit_edge, label %sw.bb12.i.if.then69.i_crit_edge

sw.bb12.i.if.then69.i_crit_edge:                  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then69.i

sw.bb12.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %41 = tail call i8 @llvm.umax.i8(i8 %26, i8 %28) #4
  %dc_phy_errors.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 8
  %42 = ptrtoint ptr %dc_phy_errors.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dc_phy_errors.i, align 4
  %inc46.i = add i32 %43, 1
  store i32 %inc46.i, ptr %dc_phy_errors.i, align 4
  %44 = tail call i8 @llvm.umax.i8(i8 %21, i8 %22) #4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %bwinfo_discards.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 5
  br label %ath9k_postprocess_radar_event.exit.thread

sw.epilog.i:                                      ; preds = %sw.bb32.i, %sw.bb12.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %rssi.0.i = phi i8 [ %44, %sw.bb32.i ], [ %22, %sw.bb12.i.sw.epilog.i_crit_edge ], [ %21, %sw.bb.i.sw.epilog.i_crit_edge ]
  %dur.1.in.i = phi i8 [ %41, %sw.bb32.i ], [ %26, %sw.bb12.i.sw.epilog.i_crit_edge ], [ %28, %sw.bb.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rssi.0.i)
  %cmp67.i = icmp eq i8 %rssi.0.i, 0
  br i1 %cmp67.i, label %sw.epilog.i.if.then69.i_crit_edge, label %if.end74.i

sw.epilog.i.if.then69.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then69.i

if.then69.i:                                      ; preds = %sw.epilog.i.if.then69.i_crit_edge, %sw.bb12.i.if.then69.i_crit_edge, %sw.bb.i.if.then69.i_crit_edge
  %rssi_discards.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 4
  br label %ath9k_postprocess_radar_event.exit.thread

if.end74.i:                                       ; preds = %sw.epilog.i
  %conv75.i = zext i8 %dur.1.in.i to i32
  %45 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %curchan, align 4
  %channelFlags.i.i = getelementptr inbounds %struct.ath9k_channel, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %channelFlags.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %channelFlags.i.i, align 2
  %49 = and i16 %48, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i.i = icmp eq i16 %49, 0
  br i1 %tobool.not.i.i, label %if.end74.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end74.i.if.else.i.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end74.i
  %caps.i.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6
  %50 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %caps.i.i, align 4
  %and1.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i.if.end44_crit_edge

land.lhs.true.i.i.if.end44_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end74.i.if.else.i.i_crit_edge
  br label %if.end44

ath9k_postprocess_radar_event.exit.thread:        ; preds = %if.then69.i, %sw.default.i
  %pulses_detected.sink113.i.ph = phi ptr [ %bwinfo_discards.i, %sw.default.i ], [ %rssi_discards.i, %if.then69.i ]
  %52 = ptrtoint ptr %pulses_detected.sink113.i.ph to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pulses_detected.sink113.i.ph, align 4
  %inc81.i176 = add i32 %53, 1
  store i32 %inc81.i176, ptr %pulses_detected.sink113.i.ph, align 4
  br label %cleanup

if.end44:                                         ; preds = %if.else.i.i, %land.lhs.true.i.i.if.end44_crit_edge
  %.sink.i.i = phi i32 [ 800, %if.else.i.i ], [ 727, %land.lhs.true.i.i.if.end44_crit_edge ]
  %mul3.i.i = mul nuw nsw i32 %.sink.i.i, %conv75.i
  %add.i.i = add nuw nsw i32 %mul3.i.i, 500
  %div.i.i = udiv i32 %add.i.i, 1000
  %conv76.i = trunc i32 %div.i.i to i8
  %width.i = getelementptr inbounds %struct.pulse_event, ptr %pe, i32 0, i32 2
  %54 = ptrtoint ptr %width.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv76.i, ptr %width.i, align 2
  %rssi77.i = getelementptr inbounds %struct.pulse_event, ptr %pe, i32 0, i32 3
  %55 = ptrtoint ptr %rssi77.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %rssi.0.i, ptr %rssi77.i, align 1
  %pulses_detected.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 2
  %56 = ptrtoint ptr %pulses_detected.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pulses_detected.i, align 4
  %inc81.i = add i32 %57, 1
  store i32 %inc81.i, ptr %pulses_detected.i, align 4
  %58 = add i8 %conv76.i, -21
  call void @__sanitizer_cov_trace_const_cmp1(i8 89, i8 %58)
  %59 = icmp ult i8 %58, 89
  br i1 %59, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end44
  %and56 = and i32 %conv3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57 = icmp ne i32 %and56, 0
  %and61 = and i32 %conv3.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62 = icmp ne i32 %and61, 0
  %sub = add nsw i32 %conv14, -3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %max_bin.i) #4
  %60 = getelementptr inbounds [4 x i32], ptr %max_bin.i, i32 0, i32 1
  %61 = getelementptr inbounds [4 x i32], ptr %max_bin.i, i32 0, i32 2
  %62 = getelementptr inbounds [4 x i32], ptr %max_bin.i, i32 0, i32 3
  %63 = call ptr @memset(ptr %max_bin.i, i32 255, i32 16)
  %64 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %curchan, align 4
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %channelFlags.i, align 2
  %68 = and i16 %67, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool.not.i = icmp eq i16 %68, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then53
  %sub.frozen = freeze i32 %sub
  %div.i = udiv i32 %sub.frozen, 70
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %sub)
  %69 = icmp ult i32 %sub, 70
  br i1 %69, label %if.then.i.ath9k_check_chirping.exit_crit_edge, label %do.body.i

if.then.i.ath9k_check_chirping.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_check_chirping.exit

do.body.i:                                        ; preds = %if.then.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %70 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %debug_mask.i, align 4
  %and4.i = and i32 %71, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then6.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3, i32 noundef %sub, i32 noundef %div.i) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i.do.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %sub)
  %cmp8.i = icmp ult i32 %sub, 280
  br i1 %cmp8.i, label %do.body11.i, label %if.end19.i

do.body11.i:                                      ; preds = %do.end.i
  %72 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %debug_mask.i, align 4
  %and13.i = and i32 %73, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body11.i.ath9k_check_chirping.exit_crit_edge, label %if.then15.i

do.body11.i.ath9k_check_chirping.exit_crit_edge:  ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_check_chirping.exit

if.then15.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4) #4
  br label %ath9k_check_chirping.exit

if.end19.i:                                       ; preds = %do.end.i
  %74 = mul i32 %div.i, 70
  %rem.i.decomposed = sub i32 %sub.frozen, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.i.decomposed)
  %cmp20.i = icmp eq i32 %rem.i.decomposed, 2
  br i1 %cmp20.i, label %if.then22.i, label %if.end19.i.if.end31.i_crit_edge

if.end19.i.if.end31.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

if.then22.i:                                      ; preds = %if.end19.i
  %add.ptr.i = getelementptr i8, ptr %data, i32 2
  %75 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %debug_mask.i, align 4
  %and25.i = and i32 %76, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.then22.i.if.end31.i_crit_edge, label %if.then27.i

if.then22.i.if.end31.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

if.then27.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5) #4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then27.i, %if.then22.i.if.end31.i_crit_edge, %if.end19.i.if.end31.i_crit_edge
  %fft.0.i = phi ptr [ %add.ptr.i, %if.then27.i ], [ %add.ptr.i, %if.then22.i.if.end31.i_crit_edge ], [ %data, %if.end19.i.if.end31.i_crit_edge ]
  %77 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %curchan, align 4
  %channelFlags33.i = getelementptr inbounds %struct.ath9k_channel, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %channelFlags33.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %channelFlags33.i, align 2
  %81 = and i16 %80, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool36.not.i = icmp eq i16 %81, 0
  %spec.select.i = select i1 %tobool36.not.i, i1 %tobool62, i1 %tobool57
  %spec.select251.i = select i1 %tobool36.not.i, i1 %tobool57, i1 %tobool62
  %brmerge.demorgan.i.i = and i1 %spec.select251.i, %spec.select.i
  br label %for.body.i

for.body.i:                                       ; preds = %ath9k_get_max_index_ht40.exit.i.for.body.i_crit_edge, %if.end31.i
  %i.0263.i = phi i32 [ 0, %if.end31.i ], [ %inc.i150, %ath9k_get_max_index_ht40.exit.i.for.body.i_crit_edge ]
  br i1 %brmerge.demorgan.i.i, label %if.then.i.i, label %for.body.i.if.end27.i.i_crit_edge

for.body.i.if.end27.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %lower_bins.i.i = getelementptr %struct.ath9k_dfs_fft_40, ptr %fft.0.i, i32 %i.0263.i, i32 1
  %82 = ptrtoint ptr %lower_bins.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %lower_bins.i.i, align 1
  %84 = and i8 %83, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp.i.i = icmp ne i8 %84, 0
  %upper_bins.i.i = getelementptr %struct.ath9k_dfs_fft_40, ptr %fft.0.i, i32 %i.0263.i, i32 2
  %85 = ptrtoint ptr %upper_bins.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %upper_bins.i.i, align 1
  %87 = and i8 %86, 63
  %cmp.not.i.i = xor i1 %cmp.i.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp8.not.i.i = icmp eq i8 %87, 0
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp8.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.if.end27.i.i_crit_edge, label %if.then16.i.i

if.then.i.i.if.end27.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i.i

if.then16.i.i:                                    ; preds = %if.then.i.i
  %88 = lshr i8 %83, 6
  %89 = zext i8 %88 to i32
  %arrayidx1.i.i.i = getelementptr %struct.ath9k_dfs_fft_40, ptr %fft.0.i, i32 %i.0263.i, i32 1, i32 1
  %90 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %91 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 2
  %or.i.i.i = or i32 %shl.i.i.i, %89
  %arrayidx3.i.i.i = getelementptr %struct.ath9k_dfs_fft_40, ptr %fft.0.i, i32 %i.0263.i, i32 1, i32 2
  %92 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx3.i.i.i, align 1
  %94 = and i8 %93, 3
  %and5.i.i.i = zext i8 %94 to i32
  %shl6.i.i.i = shl nuw nsw i32 %and5.i.i.i, 10
  %or7.i.i.i = or i32 %shl6.i.i.i, %or.i.i.i
  %95 = lshr i8 %86, 6
  %96 = zext i8 %95 to i32
  %arrayidx1.i49.i.i = getelementptr %struct.ath9k_dfs_fft_40, ptr %fft.0.i, i32 %i.0263.i, i32 2, i32 1
  %97 = ptrtoint ptr %arrayidx1.i49.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx1.i49.i.i, align 1
  %conv2.i50.i.i = zext i8 %98 to i32
  %shl.i51.i.i = shl nuw nsw i32 %conv2.i50.i.i, 2
  %or.i52.i.i = or i32 %shl.i51.i.i, %96
  %arrayidx3.i53.i.i = getelementptr %struct.ath9k_dfs_fft_40, ptr %fft.0.i, i32 %i.0263.i, i32 2, i32 2
  %99 = ptrtoint ptr %arrayidx3.i53.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx3.i53.i.i, align 1
  %101 = and i8 %100, 3
  %and5.i54.i.i = zext i8 %101 to i32
  %shl6.i55.i.i = shl nuw nsw i32 %and5.i54.i.i, 10
  %or7.i56.i.i = or i32 %shl6.i55.i.i, %or.i52.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or7.i56.i.i, i32 %or7.i.i.i)
  %cmp23.i.i = icmp ule i32 %or7.i56.i.i, %or7.i.i.i
  %.cmp.i.i = select i1 %cmp23.i.i, i1 %cmp.i.i, i1 false
  br i1 %.cmp.i.i, label %if.then16.i.i.if.then29.i.i_crit_edge, label %if.then16.i.i.if.end33.i.i_crit_edge

if.then16.i.i.if.end33.i.i_crit_edge:             ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33.i.i

if.then16.i.i.if.then29.i.i_crit_edge:            ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29.i.i

if.end27.i.i:                                     ; preds = %if.then.i.i.if.end27.i.i_crit_edge, %for.body.i.if.end27.i.i_crit_edge
  %is_ctl.addr.1.off0.i.i = phi i1 [ %cmp.i.i, %if.then.i.i.if.end27.i.i_crit_edge ], [ %spec.select251.i, %for.body.i.if.end27.i.i_crit_edge ]
  br i1 %is_ctl.addr.1.off0.i.i, label %if.end27.i.i.if.then29.i.i_crit_edge, label %if.end27.i.i.if.end33.i.i_crit_edge

if.end27.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33.i.i

if.end27.i.i.if.then29.i.i_crit_edge:             ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.end27.i.i.if.then29.i.i_crit_edge, %if.then16.i.i.if.then29.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.ath9k_dfs_fft_40, ptr %fft.0.i, i32 %i.0263.i, i32 1, i32 2
  %102 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i.i.i, align 1
  %104 = lshr i8 %103, 2
  br label %ath9k_get_max_index_ht40.exit.i

if.end33.i.i:                                     ; preds = %if.end27.i.i.if.end33.i.i_crit_edge, %if.then16.i.i.if.end33.i.i_crit_edge
  %arrayidx.i57.i.i = getelementptr %struct.ath9k_dfs_fft_40, ptr %fft.0.i, i32 %i.0263.i, i32 2, i32 2
  %105 = ptrtoint ptr %arrayidx.i57.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i57.i.i, align 1
  %107 = lshr i8 %106, 2
  %108 = or i8 %107, 64
  br label %ath9k_get_max_index_ht40.exit.i

ath9k_get_max_index_ht40.exit.i:                  ; preds = %if.end33.i.i, %if.then29.i.i
  %retval.0.in.i.i = phi i8 [ %104, %if.then29.i.i ], [ %108, %if.end33.i.i ]
  %retval.0.i.i = zext i8 %retval.0.in.i.i to i32
  %arrayidx.i = getelementptr [4 x i32], ptr %max_bin.i, i32 0, i32 %i.0263.i
  %109 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %retval.0.i.i, ptr %arrayidx.i, align 4
  %inc.i150 = add nuw nsw i32 %i.0263.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i150, 4
  br i1 %exitcond.not.i, label %ath9k_get_max_index_ht40.exit.i.do.body97.i_crit_edge, label %ath9k_get_max_index_ht40.exit.i.for.body.i_crit_edge

ath9k_get_max_index_ht40.exit.i.for.body.i_crit_edge: ; preds = %ath9k_get_max_index_ht40.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

ath9k_get_max_index_ht40.exit.i.do.body97.i_crit_edge: ; preds = %ath9k_get_max_index_ht40.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body97.i

if.else.i:                                        ; preds = %if.then53
  %div57.i = udiv i32 %sub, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub)
  %110 = icmp ult i32 %sub, 31
  br i1 %110, label %if.else.i.ath9k_check_chirping.exit_crit_edge, label %do.body62.i

if.else.i.ath9k_check_chirping.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_check_chirping.exit

do.body62.i:                                      ; preds = %if.else.i
  %debug_mask63.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %111 = ptrtoint ptr %debug_mask63.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %debug_mask63.i, align 4
  %and64.i = and i32 %112, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %do.body62.i.do.end69.i_crit_edge, label %if.then66.i

do.body62.i.do.end69.i_crit_edge:                 ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69.i

if.then66.i:                                      ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6, i32 noundef %sub, i32 noundef %div57.i) #4
  br label %do.end69.i

do.end69.i:                                       ; preds = %if.then66.i, %do.body62.i.do.end69.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 124, i32 %sub)
  %cmp70.i = icmp ult i32 %sub, 124
  br i1 %cmp70.i, label %do.body73.i, label %for.body85.preheader.i

for.body85.preheader.i:                           ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i.i = getelementptr %struct.ath9k_dfs_fft_20, ptr %data, i32 0, i32 1, i32 2
  %113 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i.i, align 1
  %115 = lshr i8 %114, 2
  %116 = xor i8 %115, 32
  %xor.i = zext i8 %116 to i32
  %117 = ptrtoint ptr %max_bin.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %xor.i, ptr %max_bin.i, align 4
  %arrayidx.i.1.i = getelementptr %struct.ath9k_dfs_fft_20, ptr %data, i32 1, i32 1, i32 2
  %118 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i.1.i, align 1
  %120 = lshr i8 %119, 2
  %121 = xor i8 %120, 32
  %xor.1.i = zext i8 %121 to i32
  %122 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %xor.1.i, ptr %60, align 4
  %arrayidx.i.2.i = getelementptr %struct.ath9k_dfs_fft_20, ptr %data, i32 2, i32 1, i32 2
  %123 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i.2.i, align 1
  %125 = lshr i8 %124, 2
  %126 = xor i8 %125, 32
  %xor.2.i = zext i8 %126 to i32
  %127 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %xor.2.i, ptr %61, align 4
  %arrayidx.i.3.i = getelementptr %struct.ath9k_dfs_fft_20, ptr %data, i32 3, i32 1, i32 2
  %128 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i.3.i, align 1
  %130 = lshr i8 %129, 2
  %131 = xor i8 %130, 32
  %xor.3.i = zext i8 %131 to i32
  %132 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %xor.3.i, ptr %62, align 4
  br label %do.body97.i

do.body73.i:                                      ; preds = %do.end69.i
  %133 = ptrtoint ptr %debug_mask63.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %debug_mask63.i, align 4
  %and75.i = and i32 %134, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %do.body73.i.ath9k_check_chirping.exit_crit_edge, label %if.then77.i

do.body73.i.ath9k_check_chirping.exit_crit_edge:  ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_check_chirping.exit

if.then77.i:                                      ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4) #4
  br label %ath9k_check_chirping.exit

do.body97.i:                                      ; preds = %for.body85.preheader.i, %ath9k_get_max_index_ht40.exit.i.do.body97.i_crit_edge
  %debug_mask98.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %135 = ptrtoint ptr %debug_mask98.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %debug_mask98.i, align 4
  %and99.i = and i32 %136, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %do.body97.i.do.end108.i_crit_edge, label %if.then101.i

do.body97.i.do.end108.i_crit_edge:                ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end108.i

if.then101.i:                                     ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #6
  %137 = ptrtoint ptr %max_bin.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max_bin.i, align 4
  %139 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %60, align 4
  %141 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %61, align 4
  %143 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %62, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7, i32 noundef %138, i32 noundef %140, i32 noundef %142, i32 noundef %144) #4
  br label %do.end108.i

do.end108.i:                                      ; preds = %if.then101.i, %do.body97.i.do.end108.i_crit_edge
  %145 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %60, align 4
  %147 = ptrtoint ptr %max_bin.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %max_bin.i, align 4
  %sub.i = sub i32 %146, %148
  %149 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #4
  %150 = add i32 %149, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %150)
  %151 = icmp ult i32 %150, -10
  br i1 %151, label %do.end108.i.do.body132.i_crit_edge, label %do.body167.i

do.end108.i.do.body132.i_crit_edge:               ; preds = %do.end108.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body132.i

do.body132.i:                                     ; preds = %cleanup175.1.i.do.body132.i_crit_edge, %cleanup175.i.do.body132.i_crit_edge, %do.end108.i.do.body132.i_crit_edge
  %i.2270.lcssa.i = phi i32 [ 0, %do.end108.i.do.body132.i_crit_edge ], [ 1, %cleanup175.i.do.body132.i_crit_edge ], [ 2, %cleanup175.1.i.do.body132.i_crit_edge ]
  %sub.lcssa.i = phi i32 [ %sub.i, %do.end108.i.do.body132.i_crit_edge ], [ %sub.1.i, %cleanup175.i.do.body132.i_crit_edge ], [ %sub.2.i, %cleanup175.1.i.do.body132.i_crit_edge ]
  %152 = ptrtoint ptr %debug_mask98.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %debug_mask98.i, align 4
  %and134.i = and i32 %153, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i)
  %tobool135.not.i = icmp eq i32 %and134.i, 0
  br i1 %tobool135.not.i, label %do.body132.i.ath9k_check_chirping.exit_crit_edge, label %if.then136.i

do.body132.i.ath9k_check_chirping.exit_crit_edge: ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_check_chirping.exit

if.then136.i:                                     ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.8, i32 noundef %sub.lcssa.i, i32 noundef %i.2270.lcssa.i) #4
  br label %ath9k_check_chirping.exit

do.body158.i:                                     ; preds = %if.end144.2.i.do.body158.i_crit_edge, %if.end144.1.i.do.body158.i_crit_edge
  %sub145.lcssa.i = phi i32 [ %sub145.1.i, %if.end144.1.i.do.body158.i_crit_edge ], [ %sub145.2.i, %if.end144.2.i.do.body158.i_crit_edge ]
  %154 = ptrtoint ptr %debug_mask98.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %debug_mask98.i, align 4
  %and160.i = and i32 %155, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160.i)
  %tobool161.not.i = icmp eq i32 %and160.i, 0
  br i1 %tobool161.not.i, label %do.body158.i.ath9k_check_chirping.exit_crit_edge, label %if.then162.i

do.body158.i.ath9k_check_chirping.exit_crit_edge: ; preds = %do.body158.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_check_chirping.exit

if.then162.i:                                     ; preds = %do.body158.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.9, i32 noundef %sub145.lcssa.i) #4
  br label %ath9k_check_chirping.exit

do.body167.i:                                     ; preds = %do.end108.i
  %156 = ptrtoint ptr %debug_mask98.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %debug_mask98.i, align 4
  %and169.i = and i32 %157, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169.i)
  %tobool170.not.i = icmp eq i32 %and169.i, 0
  br i1 %tobool170.not.i, label %do.body167.i.cleanup175.i_crit_edge, label %if.then171.i

do.body167.i.cleanup175.i_crit_edge:              ; preds = %do.body167.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup175.i

if.then171.i:                                     ; preds = %do.body167.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef %sub.i, i32 noundef -1) #4
  br label %cleanup175.i

cleanup175.i:                                     ; preds = %if.then171.i, %do.body167.i.cleanup175.i_crit_edge
  %158 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %61, align 4
  %sub.1.i = sub i32 %159, %146
  %160 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #4
  %161 = add i32 %160, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %161)
  %162 = icmp ult i32 %161, -10
  br i1 %162, label %cleanup175.i.do.body132.i_crit_edge, label %if.end144.1.i

cleanup175.i.do.body132.i_crit_edge:              ; preds = %cleanup175.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body132.i

if.end144.1.i:                                    ; preds = %cleanup175.i
  %sub145.1.i = sub i32 %sub.1.i, %sub.i
  %163 = tail call i32 @llvm.abs.i32(i32 %sub145.1.i, i1 false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %163)
  %cmp155.1.i = icmp sgt i32 %163, 2
  br i1 %cmp155.1.i, label %if.end144.1.i.do.body158.i_crit_edge, label %do.body167.1.i

if.end144.1.i.do.body158.i_crit_edge:             ; preds = %if.end144.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body158.i

do.body167.1.i:                                   ; preds = %if.end144.1.i
  %164 = ptrtoint ptr %debug_mask98.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %debug_mask98.i, align 4
  %and169.1.i = and i32 %165, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169.1.i)
  %tobool170.not.1.i = icmp eq i32 %and169.1.i, 0
  br i1 %tobool170.not.1.i, label %do.body167.1.i.cleanup175.1.i_crit_edge, label %if.then171.1.i

do.body167.1.i.cleanup175.1.i_crit_edge:          ; preds = %do.body167.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup175.1.i

if.then171.1.i:                                   ; preds = %do.body167.1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef %sub.1.i, i32 noundef %sub145.1.i) #4
  br label %cleanup175.1.i

cleanup175.1.i:                                   ; preds = %if.then171.1.i, %do.body167.1.i.cleanup175.1.i_crit_edge
  %166 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %62, align 4
  %sub.2.i = sub i32 %167, %159
  %168 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #4
  %169 = add i32 %168, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %169)
  %170 = icmp ult i32 %169, -10
  br i1 %170, label %cleanup175.1.i.do.body132.i_crit_edge, label %if.end144.2.i

cleanup175.1.i.do.body132.i_crit_edge:            ; preds = %cleanup175.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body132.i

if.end144.2.i:                                    ; preds = %cleanup175.1.i
  %sub145.2.i = sub i32 %sub.2.i, %sub.1.i
  %171 = tail call i32 @llvm.abs.i32(i32 %sub145.2.i, i1 false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %171)
  %cmp155.2.i = icmp sgt i32 %171, 2
  br i1 %cmp155.2.i, label %if.end144.2.i.do.body158.i_crit_edge, label %do.body167.2.i

if.end144.2.i.do.body158.i_crit_edge:             ; preds = %if.end144.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body158.i

do.body167.2.i:                                   ; preds = %if.end144.2.i
  %172 = ptrtoint ptr %debug_mask98.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %debug_mask98.i, align 4
  %and169.2.i = and i32 %173, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169.2.i)
  %tobool170.not.2.i = icmp eq i32 %and169.2.i, 0
  br i1 %tobool170.not.2.i, label %do.body167.2.i.ath9k_check_chirping.exit_crit_edge, label %if.then171.2.i

do.body167.2.i.ath9k_check_chirping.exit_crit_edge: ; preds = %do.body167.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_check_chirping.exit

if.then171.2.i:                                   ; preds = %do.body167.2.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef %sub.2.i, i32 noundef %sub145.2.i) #4
  br label %ath9k_check_chirping.exit

ath9k_check_chirping.exit:                        ; preds = %if.then171.2.i, %do.body167.2.i.ath9k_check_chirping.exit_crit_edge, %if.then162.i, %do.body158.i.ath9k_check_chirping.exit_crit_edge, %if.then136.i, %do.body132.i.ath9k_check_chirping.exit_crit_edge, %if.then77.i, %do.body73.i.ath9k_check_chirping.exit_crit_edge, %if.else.i.ath9k_check_chirping.exit_crit_edge, %if.then15.i, %do.body11.i.ath9k_check_chirping.exit_crit_edge, %if.then.i.ath9k_check_chirping.exit_crit_edge
  %retval.5.i = phi i1 [ false, %if.then15.i ], [ false, %if.then77.i ], [ false, %if.then.i.ath9k_check_chirping.exit_crit_edge ], [ false, %do.body11.i.ath9k_check_chirping.exit_crit_edge ], [ false, %if.else.i.ath9k_check_chirping.exit_crit_edge ], [ false, %do.body73.i.ath9k_check_chirping.exit_crit_edge ], [ false, %if.then136.i ], [ false, %do.body132.i.ath9k_check_chirping.exit_crit_edge ], [ false, %if.then162.i ], [ false, %do.body158.i.ath9k_check_chirping.exit_crit_edge ], [ true, %if.then171.2.i ], [ true, %do.body167.2.i.ath9k_check_chirping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max_bin.i) #4
  %chirp = getelementptr inbounds %struct.pulse_event, ptr %pe, i32 0, i32 4
  %frombool70 = zext i1 %retval.5.i to i8
  %174 = ptrtoint ptr %chirp to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %frombool70, ptr %chirp, align 4
  br label %do.body73

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %chirp71 = getelementptr inbounds %struct.pulse_event, ptr %pe, i32 0, i32 4
  %175 = ptrtoint ptr %chirp71 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %chirp71, align 4
  br label %do.body73

do.body73:                                        ; preds = %if.else, %ath9k_check_chirping.exit
  %debug_mask74 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %176 = ptrtoint ptr %debug_mask74 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %debug_mask74, align 4
  %and75 = and i32 %177, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body73.do.end91_crit_edge, label %if.then77

do.body73.do.end91_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end91

if.then77:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #6
  %178 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %freq, align 8
  %conv81 = zext i16 %179 to i32
  %180 = ptrtoint ptr %pe to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %pe, align 8
  %182 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %width.i, align 2
  %conv84 = zext i8 %183 to i32
  %184 = ptrtoint ptr %rssi77.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %rssi77.i, align 1
  %conv86 = zext i8 %185 to i32
  %dfs_prev_pulse_ts = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 56
  %186 = ptrtoint ptr %dfs_prev_pulse_ts to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %dfs_prev_pulse_ts, align 8
  %sub88 = sub i64 %181, %187
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, i32 noundef %conv3.i, i32 noundef %conv81, i64 noundef %181, i32 noundef %conv84, i32 noundef %conv86, i64 noundef %sub88) #4
  br label %do.end91

do.end91:                                         ; preds = %if.then77, %do.body73.do.end91_crit_edge
  %188 = ptrtoint ptr %pe to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %pe, align 8
  %dfs_prev_pulse_ts93 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 56
  %190 = ptrtoint ptr %dfs_prev_pulse_ts93 to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %189, ptr %dfs_prev_pulse_ts93, align 8
  %191 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool97.not = icmp eq i8 %191, 0
  br i1 %tobool97.not, label %do.end91.if.end99_crit_edge, label %if.then98

do.end91.if.end99_crit_edge:                      ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

if.then98:                                        ; preds = %do.end91
  %dfs_detector.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 55
  %192 = ptrtoint ptr %dfs_detector.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dfs_detector.i, align 8
  %pulses_processed.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 9
  %194 = ptrtoint ptr %pulses_processed.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pulses_processed.i, align 4
  %inc.i151 = add i32 %195, 1
  store i32 %inc.i151, ptr %pulses_processed.i, align 4
  %cmp.i = icmp eq ptr %193, null
  br i1 %cmp.i, label %if.then98.if.end99_crit_edge, label %if.end.i

if.then98.if.end99_crit_edge:                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

if.end.i:                                         ; preds = %if.then98
  %add_pulse.i = getelementptr inbounds %struct.dfs_pattern_detector, ptr %193, i32 0, i32 2
  %196 = ptrtoint ptr %add_pulse.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %add_pulse.i, align 8
  %call.i = call zeroext i1 %197(ptr noundef nonnull %193, ptr noundef nonnull %pe, ptr noundef null) #4
  br i1 %call.i, label %if.end2.i, label %if.end.i.if.end99_crit_edge

if.end.i.if.end99_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %radar_detected.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 10
  %198 = ptrtoint ptr %radar_detected.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %radar_detected.i, align 4
  %inc6.i = add i32 %199, 1
  store i32 %inc6.i, ptr %radar_detected.i, align 4
  %200 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %sc, align 8
  call void @ieee80211_radar_detected(ptr noundef %201) #4
  br label %if.end99

if.end99:                                         ; preds = %if.end2.i, %if.end.i.if.end99_crit_edge, %if.then98.if.end99_crit_edge, %do.end91.if.end99_crit_edge
  %202 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %curchan, align 4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %channelFlags, align 2
  %conv101 = zext i16 %205 to i32
  %and102 = and i32 %conv101, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  %206 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool108.not = icmp eq i8 %206, 0
  %or.cond177 = select i1 %tobool103.not, i1 true, i1 %tobool108.not
  br i1 %or.cond177, label %if.end99.cleanup_crit_edge, label %if.then109

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then109:                                       ; preds = %if.end99
  %and113 = and i32 %conv101, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  %cond = select i1 %tobool114.not, i16 -20, i16 20
  %207 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %freq, align 8
  %add = add i16 %208, %cond
  store i16 %add, ptr %freq, align 8
  %dfs_detector.i152 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 55
  %209 = ptrtoint ptr %dfs_detector.i152 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dfs_detector.i152, align 8
  %pulses_processed.i153 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 9
  %211 = ptrtoint ptr %pulses_processed.i153 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %pulses_processed.i153, align 4
  %inc.i154 = add i32 %212, 1
  store i32 %inc.i154, ptr %pulses_processed.i153, align 4
  %cmp.i155 = icmp eq ptr %210, null
  br i1 %cmp.i155, label %if.then109.cleanup_crit_edge, label %if.end.i158

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i158:                                      ; preds = %if.then109
  %add_pulse.i156 = getelementptr inbounds %struct.dfs_pattern_detector, ptr %210, i32 0, i32 2
  %213 = ptrtoint ptr %add_pulse.i156 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %add_pulse.i156, align 8
  %call.i157 = call zeroext i1 %214(ptr noundef nonnull %210, ptr noundef nonnull %pe, ptr noundef null) #4
  br i1 %call.i157, label %if.end2.i161, label %if.end.i158.cleanup_crit_edge

if.end.i158.cleanup_crit_edge:                    ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2.i161:                                     ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #6
  %radar_detected.i159 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 3, i32 10
  %215 = ptrtoint ptr %radar_detected.i159 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %radar_detected.i159, align 4
  %inc6.i160 = add i32 %216, 1
  store i32 %inc6.i160, ptr %radar_detected.i159, align 4
  %217 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %sc, align 8
  call void @ieee80211_radar_detected(ptr noundef %218) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i161, %if.end.i158.cleanup_crit_edge, %if.then109.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %ath9k_postprocess_radar_event.exit.thread, %if.then17, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pe) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_radar_detected(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/dfs.c", i32 302, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/dfs.c", i32 346, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/dfs.c", i32 115, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/dfs.c", i32 118, i32 4}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/dfs.c", i32 124, i32 4}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/dfs.c", i32 137, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/dfs.c", i32 147, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/dfs.c", i32 161, i32 4}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/dfs.c", i32 169, i32 4}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/dfs.c", i32 174, i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
