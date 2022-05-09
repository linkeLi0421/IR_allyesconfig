; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/tx99.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/tx99.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ath_tx_control = type { ptr, ptr, ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.135, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.135 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.136] }
%struct.anon.136 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tx99\00", [27 x i8] zeroinitializer }, align 32
@fops_tx99 = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_tx99, ptr @write_file_tx99, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx99_power\00", [21 x i8] zeroinitializer }, align 32
@fops_tx99_power = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_tx99_power, ptr @write_file_tx99_power, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Resetting TX99\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TX99 stopped\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"driver is in invalid state unable to use TX99\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to xmit TX99 skb\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TX99 xmit started using %d ( %ddBm)\0A\00", [59 x i8] zeroinitializer }, align 32
@ath9k_build_tx99_skb.PN9Data = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\FF\87\B8Y\B7\A1\CC$W^K\9C\0E\E9\EAP*\BE\B4\1B\B6\B0]\F1\E6\9A\E3E\FD,S\18\0C\CA\C9\FBI7\E5\A8Q;/a\AAr\18\84\02##\ABc\89Q\B3\E7\8Br\90L\E8\FB\C0", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d (%d dBm)\0A\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 279, i32 22 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"fops_tx99\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 219, i32 37 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 282, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"fops_tx99_power\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 266, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 166, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 200, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 156, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 37, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 116, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 146, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 150, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [8 x i8] c"PN9Data\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 42, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath9k/tx99.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 235, i32 21 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @fops_tx99, ptr @.str.1, ptr @fops_tx99_power, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ath9k_build_tx99_skb.PN9Data, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_tx99 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_tx99_power to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_build_tx99_skb.PN9Data to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_tx99_init_debug(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %3)
  %cmp = icmp ugt i32 %3, 127
  br i1 %cmp, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %debug = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debug, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 384, ptr noundef %5, ptr noundef %sc, ptr noundef nonnull @fops_tx99) #6
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debug, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef %7, ptr noundef %sc, ptr noundef nonnull @fops_tx99_power) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_tx99(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !43
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !43
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !43
  %tx99_state = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 61
  %7 = ptrtoint ptr %tx99_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx99_state, align 8, !range !44
  %9 = zext i8 %8 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.2, i32 noundef %9)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_tx99(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %txctl.i = alloca %struct.ath_tx_control, align 4
  %buf = alloca [32 x i8], align 1
  %start = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #6
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start) #6
  %5 = ptrtoint ptr %start to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %start, align 1, !annotation !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_chan, align 8
  %nvifs = getelementptr inbounds %struct.ath_chanctx, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nvifs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp1 = icmp sgt i16 %9, 1
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %10, i1 noundef zeroext false) #6
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end4.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.if.then11.i.i_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end4
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %10, i32 -1226833920) #9, !srcloc !45
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !46

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %10) #6
  %12 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !47
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %10) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #6, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !46

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end4.if.then11.i.i_crit_edge
  %res.0.i.i66 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %10, %if.end4.if.then11.i.i_crit_edge ], [ %10, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %10, %res.0.i.i66
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i66)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %10
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @kstrtobool(ptr noundef nonnull %buf, ptr noundef nonnull %start) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %17 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %start, align 1, !range !44
  %tx99_state = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 61
  %19 = ptrtoint ptr %tx99_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx99_state, align 8, !range !44
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp19 = icmp eq i8 %18, %20
  br i1 %cmp19, label %if.then21, label %if.end14.if.end28_crit_edge

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %if.then21.out_crit_edge, label %do.body

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %if.then21
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_mask, align 4
  %and = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %do.body.do.end_crit_edge, label %if.then26

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.3, ptr noundef %common.i, ptr noundef nonnull @.str.4) #6
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body.do.end_crit_edge
  call fastcc void @ath9k_tx99_deinit(ptr noundef %1)
  %23 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %23)
  %.pr = load i8, ptr %start, align 1
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end14.if.end28_crit_edge
  %24 = phi i8 [ %.pr, %do.end ], [ %18, %if.end14.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool29.not = icmp eq i8 %24, 0
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ath9k_tx99_deinit(ptr noundef %1)
  br label %out

if.end31:                                         ; preds = %if.end28
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %27 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txctl.i) #6
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 3, i32 5
  %29 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %op_flags.i, align 4
  %and1.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i58

if.then.i58:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.9, ptr noundef %common.i.i, ptr noundef nonnull @.str.10) #6
  br label %if.then34

if.end.i:                                         ; preds = %if.end31
  %call.i.i.i59 = call ptr @__alloc_skb(i32 noundef 1200, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i59, null
  br i1 %tobool.not.i.i, label %ath9k_build_tx99_skb.exit.thread.i, label %if.end.i.i60

ath9k_build_tx99_skb.exit.thread.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx99_skb68.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 60
  %31 = ptrtoint ptr %tx99_skb68.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %tx99_skb68.i, align 4
  br label %if.then34

if.end.i.i60:                                     ; preds = %if.end.i
  %call2.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i59, i32 noundef 1200) #6
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i59, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %34 = call ptr @memset(ptr %33, i32 0, i32 1200)
  %35 = load ptr, ptr %data.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2048, ptr %35, align 2
  %duration_id.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %duration_id.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %duration_id.i.i, align 2
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %35, i32 0, i32 2
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy.i.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 1
  %40 = call ptr @memcpy(ptr %addr1.i.i, ptr %perm_addr.i.i, i32 6)
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %35, i32 0, i32 3
  %41 = load ptr, ptr %wiphy.i.i, align 8
  %perm_addr7.i.i = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %addr2.i.i, ptr %perm_addr7.i.i, i32 6)
  %addr3.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %35, i32 0, i32 4
  %43 = load ptr, ptr %wiphy.i.i, align 8
  %perm_addr11.i.i = getelementptr inbounds %struct.wiphy, ptr %43, i32 0, i32 1
  %44 = call ptr @memcpy(ptr %addr3.i.i, ptr %perm_addr11.i.i, i32 6)
  %tx99_vif.i.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 59
  %45 = ptrtoint ptr %tx99_vif.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx99_vif.i.i, align 8
  %tobool13.not.i.i = icmp eq ptr %46, null
  br i1 %tobool13.not.i.i, label %if.end.i.i60.if.end19.i.i_crit_edge, label %if.then14.i.i

if.end.i.i60.if.end19.i.i_crit_edge:              ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  %seq_no.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %46, i32 1, i32 1
  %47 = ptrtoint ptr %seq_no.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %seq_no.i.i, align 8
  %49 = call i16 @llvm.bswap.i16(i16 %48) #6
  %seq_ctrl.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %35, i32 0, i32 5
  %50 = ptrtoint ptr %seq_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %seq_ctrl.i.i, align 2
  %or96.i.i = or i16 %51, %49
  store i16 %or96.i.i, ptr %seq_ctrl.i.i, align 2
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then14.i.i, %if.end.i.i60.if.end19.i.i_crit_edge
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i59, i32 0, i32 3
  %52 = call ptr @memset(ptr %cb.i.i.i, i32 0, i32 48)
  %53 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_chan, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %band21.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i59, i32 0, i32 3, i32 4
  %bf.shl.i.i = shl i32 %58, 29
  %59 = ptrtoint ptr %band21.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %bf.shl.i.i, ptr %band21.i.i, align 4
  %60 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %cb.i.i.i, align 8
  %61 = ptrtoint ptr %tx99_vif.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx99_vif.i.i, align 8
  %vif.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i59, i32 0, i32 3, i32 24
  %63 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %vif.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i59, i32 0, i32 3, i32 9
  %64 = ptrtoint ptr %count.i.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 2048, ptr %count.i.i, align 1
  %curchan.i.i = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 8
  %65 = ptrtoint ptr %curchan.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %curchan.i.i, align 4
  %tobool26.not.i.i = icmp eq ptr %66, null
  br i1 %tobool26.not.i.i, label %if.end19.i.i.if.end7.i_crit_edge, label %land.lhs.true.i.i61

if.end19.i.i.if.end7.i_crit_edge:                 ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

land.lhs.true.i.i61:                              ; preds = %if.end19.i.i
  %channelFlags.i.i = getelementptr inbounds %struct.ath9k_channel, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %channelFlags.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %channelFlags.i.i, align 2
  %69 = and i16 %68, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool29.not.i.i = icmp eq i16 %69, 0
  br i1 %tobool29.not.i.i, label %land.lhs.true.i.i61.if.end7.i_crit_edge, label %if.then30.i.i

land.lhs.true.i.i61.if.end7.i_crit_edge:          ; preds = %land.lhs.true.i.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then30.i.i:                                    ; preds = %land.lhs.true.i.i61
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %count.i.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 2056, ptr %count.i.i, align 1
  %71 = ptrtoint ptr %curchan.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %curchan.i.i, align 4
  %channelFlags42.i.i = getelementptr inbounds %struct.ath9k_channel, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %channelFlags42.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %channelFlags42.i.i, align 2
  %75 = and i16 %74, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool45.not.i.i = icmp eq i16 %75, 0
  %spec.store.select.i.i = select i1 %tobool45.not.i.i, i16 2056, i16 2088
  %76 = ptrtoint ptr %count.i.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %spec.store.select.i.i, ptr %count.i.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then30.i.i, %land.lhs.true.i.i61.if.end7.i_crit_edge, %if.end19.i.i.if.end7.i_crit_edge
  %77 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %78, i32 30
  %79 = call ptr @memcpy(ptr %add.ptr.i.i62, ptr @ath9k_build_tx99_skb.PN9Data, i32 64)
  %tx99_skb.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 60
  %80 = ptrtoint ptr %tx99_skb.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i.i.i59, ptr %tx99_skb.i, align 4
  %81 = getelementptr inbounds i8, ptr %txctl.i, i32 4
  %82 = call ptr @memset(ptr %81, i32 0, i32 12)
  %txq_map.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 35, i32 5
  %83 = ptrtoint ptr %txq_map.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %txq_map.i, align 4
  %85 = ptrtoint ptr %txctl.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %txctl.i, align 4
  %call8.i = call i32 @ath_reset(ptr noundef %1, ptr noundef null) #6
  call void @ath9k_ps_wakeup(ptr noundef %1) #6
  call void @ath9k_hw_disable_interrupts(ptr noundef %28) #6
  %call9.i = call zeroext i1 @ath_drain_all_txq(ptr noundef %1) #6
  %call10.i = call zeroext i1 @ath_stoprecv(ptr noundef %1) #6
  %86 = ptrtoint ptr %tx99_state to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %tx99_state, align 8
  call void @ieee80211_stop_queues(ptr noundef %26) #6
  %tx99_power.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 62
  %87 = ptrtoint ptr %tx99_power.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %tx99_power.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %88)
  %cmp.i = icmp eq i16 %88, 64
  br i1 %cmp.i, label %if.then12.i, label %if.end7.i.if.end14.i_crit_edge

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %tx99_power.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 63, ptr %tx99_power.i, align 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end7.i.if.end14.i_crit_edge
  %tx99_set_txpower.i.i = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 63, i32 15
  %90 = ptrtoint ptr %tx99_set_txpower.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx99_set_txpower.i.i, align 4
  %tobool.not.i66.i = icmp eq ptr %91, null
  br i1 %tobool.not.i66.i, label %if.end14.i.ath9k_hw_tx99_set_txpower.exit.i_crit_edge, label %if.then.i.i63

if.end14.i.ath9k_hw_tx99_set_txpower.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_tx99_set_txpower.exit.i

if.then.i.i63:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %tx99_power.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %tx99_power.i, align 2
  %conv16.i = trunc i16 %93 to i8
  call void %91(ptr noundef %28, i8 noundef zeroext %conv16.i) #6
  br label %ath9k_hw_tx99_set_txpower.exit.i

ath9k_hw_tx99_set_txpower.exit.i:                 ; preds = %if.then.i.i63, %if.end14.i.ath9k_hw_tx99_set_txpower.exit.i_crit_edge
  %94 = ptrtoint ptr %tx99_skb.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx99_skb.i, align 4
  %call18.i = call i32 @ath9k_tx99_send(ptr noundef %1, ptr noundef %95, ptr noundef nonnull %txctl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  %debug_mask26.i = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 3, i32 3
  %96 = ptrtoint ptr %debug_mask26.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %debug_mask26.i, align 4
  %and27.i = and i32 %97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool19.not.i, label %do.body25.i, label %do.body.i

do.body.i:                                        ; preds = %ath9k_hw_tx99_set_txpower.exit.i
  br i1 %tobool28.not.i, label %do.body.i.if.then34_crit_edge, label %if.then22.i

do.body.i.if.then34_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.3, ptr noundef %common.i.i, ptr noundef nonnull @.str.11) #6
  br label %if.then34

do.body25.i:                                      ; preds = %ath9k_hw_tx99_set_txpower.exit.i
  br i1 %tobool28.not.i, label %do.body25.i.ath9k_tx99_init.exit_crit_edge, label %if.then29.i

do.body25.i.ath9k_tx99_init.exit_crit_edge:       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_tx99_init.exit

if.then29.i:                                      ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %tx99_power.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %tx99_power.i, align 2
  %conv31.i = sext i16 %99 to i32
  %div69.i = sdiv i16 %99, 2
  %div.sext.i = sext i16 %div69.i to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.3, ptr noundef %common.i.i, ptr noundef nonnull @.str.12, i32 noundef %conv31.i, i32 noundef %div.sext.i) #6
  br label %ath9k_tx99_init.exit

ath9k_tx99_init.exit:                             ; preds = %if.then29.i, %do.body25.i.ath9k_tx99_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txctl.i) #6
  br label %out

if.then34:                                        ; preds = %if.then22.i, %do.body.i.if.then34_crit_edge, %ath9k_build_tx99_skb.exit.thread.i, %if.then.i58
  %retval.0.i.ph = phi i32 [ -12, %ath9k_build_tx99_skb.exit.thread.i ], [ %call18.i, %do.body.i.if.then34_crit_edge ], [ %call18.i, %if.then22.i ], [ -22, %if.then.i58 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txctl.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

out:                                              ; preds = %ath9k_tx99_init.exit, %if.then30, %if.then21.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then34, %if.end9.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then34 ], [ %count, %out ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_tx99_deinit(ptr noundef %sc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ath_reset(ptr noundef %sc, ptr noundef null) #6
  tail call void @ath9k_ps_wakeup(ptr noundef %sc) #6
  %sc_ah.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah.i, align 4
  %call1.i = tail call zeroext i1 @ath_drain_all_txq(ptr noundef %sc) #6
  tail call void @ath_startrecv(ptr noundef %sc) #6
  tail call void @ath9k_hw_set_interrupts(ptr noundef %1) #6
  tail call void @ath9k_hw_enable_interrupts(ptr noundef %1) #6
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 8
  tail call void @ieee80211_wake_queues(ptr noundef %3) #6
  %tx99_skb.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 60
  %4 = ptrtoint ptr %tx99_skb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx99_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #6
  %6 = ptrtoint ptr %tx99_skb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tx99_skb.i, align 4
  %tx99_state.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 61
  %7 = ptrtoint ptr %tx99_state.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tx99_state.i, align 8
  %8 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_ah.i, align 4
  %tx99_stop.i.i = getelementptr inbounds %struct.ath_hw, ptr %9, i32 0, i32 63, i32 14
  %10 = ptrtoint ptr %tx99_stop.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx99_stop.i.i, align 4
  tail call void %11(ptr noundef %9) #6
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ath9k_tx99_stop.exit_crit_edge, label %if.then.i

entry.ath9k_tx99_stop.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_tx99_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.3, ptr noundef %common.i.i, ptr noundef nonnull @.str.8) #6
  br label %ath9k_tx99_stop.exit

ath9k_tx99_stop.exit:                             ; preds = %if.then.i, %entry.ath9k_tx99_stop.exit_crit_edge
  tail call void @ath9k_ps_restore(ptr noundef %sc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_drain_all_txq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_startrecv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_enable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_disable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_stoprecv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_tx99_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_tx99_power(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #6
  %tx99_power = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 62
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %tx99_power to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tx99_power, align 2
  %conv = sext i16 %4 to i32
  %div6 = sdiv i16 %4, 2
  %div.sext = sext i16 %div6 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %div.sext)
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_tx99_power(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %tx_power = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx_power) #6
  %2 = ptrtoint ptr %tx_power to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tx_power, align 1, !annotation !43
  %call = call i32 @kstrtou8_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %tx_power) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %tx_power to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx_power, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %4)
  %cmp = icmp ugt i8 %4, 63
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conv4 = zext i8 %4 to i16
  %tx99_power = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 62
  %5 = ptrtoint ptr %tx99_power to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv4, ptr %tx99_power, align 2
  call void @ath9k_ps_wakeup(ptr noundef %1) #6
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  %tx99_set_txpower.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 63, i32 15
  %8 = ptrtoint ptr %tx99_set_txpower.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx99_set_txpower.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end3.ath9k_hw_tx99_set_txpower.exit_crit_edge, label %if.then.i

if.end3.ath9k_hw_tx99_set_txpower.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_tx99_set_txpower.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %tx99_power to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx99_power, align 2
  %conv6 = trunc i16 %11 to i8
  call void %9(ptr noundef %7, i8 noundef zeroext %conv6) #6
  br label %ath9k_hw_tx99_set_txpower.exit

ath9k_hw_tx99_set_txpower.exit:                   ; preds = %if.then.i, %if.end3.ath9k_hw_tx99_set_txpower.exit_crit_edge
  call void @ath9k_ps_restore(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %ath9k_hw_tx99_set_txpower.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %ath9k_hw_tx99_set_txpower.exit ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx_power) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 279, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 282, i32 22}
!4 = !{ptr @fops_tx99, !5, !"fops_tx99", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 219, i32 37}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 166, i32 21}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 200, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!13 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 37, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 116, i32 3}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 146, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 150, i32 2}
!27 = !{ptr @ath9k_build_tx99_skb.PN9Data, !28, !"PN9Data", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 42, i32 12}
!29 = !{ptr @fops_tx99_power, !30, !"fops_tx99_power", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 266, i32 37}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/tx99.c", i32 235, i32 21}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i8 0, i8 2}
!45 = !{i64 2152377586, i64 2152377611}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 4873141}
!48 = !{i64 4873338}
!49 = !{i64 2152358571}
