; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/common-spectral.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/common-spectral.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath_cmn_process_fft\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_cmn_process_fft\09\09\09\09"
module asm "\09.long\09__crc_ath_cmn_process_fft\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_cmn_process_fft:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_cmn_process_fft\22\09\09\09\09\09"
module asm "__kstrtabns_ath_cmn_process_fft:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_spectral_scan_trigger\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_spectral_scan_trigger\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_spectral_scan_trigger\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_spectral_scan_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_spectral_scan_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_spectral_scan_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_spectral_scan_config\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_spectral_scan_config\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_spectral_scan_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_spectral_scan_config:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_spectral_scan_config\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_spectral_scan_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_spectral_deinit_debug\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_spectral_deinit_debug\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_spectral_deinit_debug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_spectral_deinit_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_spectral_deinit_debug\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_spectral_deinit_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_spectral_init_debug\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_spectral_init_debug\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_spectral_init_debug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_spectral_init_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_spectral_init_debug\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_spectral_init_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rchan_callbacks = type { ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.125, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.126, %union.anon.127, %union.anon.128, %union.anon.129, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.ath_dyn_rxbuf = type { i16, i16, [64 x i32] }
%struct.ath_dyn_txbuf = type { i16, i16, [64 x %struct.haddr_pair], [64 x %struct.ts_info] }
%struct.haddr_pair = type { [6 x i8], [6 x i8] }
%struct.ts_info = type { i32, i32 }
%struct.ath_rx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ath_radar_info = type { i8, i8, i8 }
%struct.ath_spec_scan_priv = type { ptr, ptr, i32, %struct.ath_spec_scan }
%struct.ath_spec_scan = type { i8, i8, i8, i8, i8, i8 }
%struct.rchan = type { i32, i32, i32, i32, ptr, %struct.kref, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, [255 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ath_softc = type { ptr, ptr, ptr, [38 x %struct.survey_info], %struct.spinlock, %struct.tasklet_struct, %struct.tasklet_struct, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.ath_chanctx_sched, %struct.ath_offchannel, ptr, %struct.completion, %struct.timespec64, i32, i8, i32, i16, i8, i8, i16, i32, %struct.ath_rx, %struct.ath_tx, %struct.ath_beacon, %struct.cfg80211_chan_def, [2 x %struct.ath_chanctx], ptr, %struct.spinlock, i8, [32 x i8], %struct.led_classdev, %struct.ath9k_debug, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.ath_btcoex, %struct.ath_mci_coex, %struct.work_struct, %struct.ath_descdma, %struct.ath_ant_comb, i8, i8, ptr, i64, i32, %struct.ath_spec_scan_priv, ptr, ptr, i8, i16, i32, i8, i32, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.134, i32 }
%union.anon.134 = type { ptr }
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
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.ath_tx = type { i32, %struct.spinlock, %struct.list_head, [10 x %struct.ath_txq], %struct.ath_descdma, [4 x ptr], ptr, [4 x [4 x [32 x i16]]] }
%struct.ath_txq = type { i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, i32, i8, [8 x %struct.list_head], i8, i8, i32, %struct.sk_buff_head }
%struct.ath_beacon = type { i32, i32, i32, [8 x ptr], i32, i32, %struct.ath_descdma, ptr, %struct.list_head, i8, i8 }
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
%struct.fft_sample_ht20_40 = type <{ %struct.fft_sample_tlv, i8, i16, i8, i8, i64, i8, i8, i16, i16, i8, i8, i8, i8, i8, [128 x i8] }>
%struct.fft_sample_tlv = type <{ i8, i16 }>
%struct.fft_sample_ht20 = type <{ %struct.fft_sample_tlv, i8, i16, i8, i8, i16, i8, i8, i64, [56 x i8] }>
%struct.ath_ps_ops = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rchan_buf = type { ptr, ptr, i32, i32, i32, ptr, %struct.wait_queue_head, %struct.irq_work, ptr, %struct.kref, ptr, i32, i32, ptr, i32, i32, i32, i32, [124 x i8] }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FFT report ignored, no space left on output buffers\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Got radar dump bw_info: 0x%X,len: %i fft_len: %i\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Found valid fft frame at %i\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FFT frame len: %i\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FFT report truncated(bytes left: %i)\0A\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_ath_cmn_process_fft = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_cmn_process_fft = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_cmn_process_fft = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_cmn_process_fft to i32), ptr @__kstrtab_ath_cmn_process_fft, ptr @__kstrtabns_ath_cmn_process_fft }, section "___ksymtab+ath_cmn_process_fft", align 4
@__kstrtab_ath9k_cmn_spectral_scan_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_spectral_scan_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_spectral_scan_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_spectral_scan_trigger to i32), ptr @__kstrtab_ath9k_cmn_spectral_scan_trigger, ptr @__kstrtabns_ath9k_cmn_spectral_scan_trigger }, section "___ksymtab+ath9k_cmn_spectral_scan_trigger", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"spectrum analyzer not implemented on this hardware\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_cmn_spectral_scan_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_spectral_scan_config = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_spectral_scan_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_spectral_scan_config to i32), ptr @__kstrtab_ath9k_cmn_spectral_scan_config, ptr @__kstrtabns_ath9k_cmn_spectral_scan_config }, section "___ksymtab+ath9k_cmn_spectral_scan_config", align 4
@__kstrtab_ath9k_cmn_spectral_deinit_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_spectral_deinit_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_spectral_deinit_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_spectral_deinit_debug to i32), ptr @__kstrtab_ath9k_cmn_spectral_deinit_debug, ptr @__kstrtabns_ath9k_cmn_spectral_deinit_debug }, section "___ksymtab+ath9k_cmn_spectral_deinit_debug", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spectral_scan\00", [18 x i8] zeroinitializer }, align 32
@rfs_spec_scan_cb = internal constant { %struct.rchan_callbacks, [20 x i8] } { %struct.rchan_callbacks { ptr null, ptr @create_buf_file_handler, ptr @remove_buf_file_handler }, [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spectral_scan_ctl\00", [46 x i8] zeroinitializer }, align 32
@fops_spec_scan_ctl = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_spec_scan_ctl, ptr @write_file_spec_scan_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spectral_short_repeat\00", [42 x i8] zeroinitializer }, align 32
@fops_spectral_short_repeat = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_spectral_short_repeat, ptr @write_file_spectral_short_repeat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spectral_count\00", [17 x i8] zeroinitializer }, align 32
@fops_spectral_count = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_spectral_count, ptr @write_file_spectral_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spectral_period\00", [16 x i8] zeroinitializer }, align 32
@fops_spectral_period = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_spectral_period, ptr @write_file_spectral_period, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spectral_fft_period\00", [44 x i8] zeroinitializer }, align 32
@fops_spectral_fft_period = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_spectral_fft_period, ptr @write_file_spectral_fft_period, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_cmn_spectral_init_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_spectral_init_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_spectral_init_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_spectral_init_debug to i32), ptr @__kstrtab_ath9k_cmn_spectral_init_debug, ptr @__kstrtabns_ath9k_cmn_spectral_init_debug }, section "___ksymtab+ath9k_cmn_spectral_init_debug", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"FFT HT20/40 frame: lower mag 0x%X,lower_mag_idx %i, upper mag 0x%X,upper_mag_idx %i\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Magnitude mismatch !\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Calculated new lower max 0x%X at %i\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Got lower mag: 0x%X at index %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Got lower bin %i higher than max: 0x%X\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Got upper mag: 0x%X at index %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Got upper bin %i higher than max: 0x%X\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FFT HT20 frame: max mag 0x%X,max_mag_idx %i\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Got max: 0x%X at index %i\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Got bin %i greater than max: 0x%X\0A\00", [61 x i8] zeroinitializer }, align 32
@relay_file_operations = external dso_local constant %struct.file_operations, align 4
@.str.26 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"background\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chanscan\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.read_file_spec_scan_ctl = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.29], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 36, i64 38]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 512, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 533, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 591, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 612, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 678, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 755, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1077, i32 45 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"rfs_spec_scan_cb\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1056, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1084, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"fops_spec_scan_ctl\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 828, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1088, i32 22 }
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"fops_spectral_short_repeat\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 876, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1092, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"fops_spectral_count\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 924, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1096, i32 22 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"fops_spectral_period\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 972, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1100, i32 22 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"fops_spectral_fft_period\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1020, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 778, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 312, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 327, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 353, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 359, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 364, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 388, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 393, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 173, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 212, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 217, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 693, i32 15 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 698, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 701, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 704, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 707, i32 10 }
@___asan_gen_.147 = private constant [52 x i8] c"../drivers/net/wireless/ath/ath9k/common-spectral.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 848, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 156, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [37 x i8] c"switch.table.read_file_spec_scan_ctl\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__ksymtab_ath9k_cmn_spectral_deinit_debug, ptr @__ksymtab_ath9k_cmn_spectral_init_debug, ptr @__ksymtab_ath9k_cmn_spectral_scan_config, ptr @__ksymtab_ath9k_cmn_spectral_scan_trigger, ptr @__ksymtab_ath_cmn_process_fft, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rfs_spec_scan_cb, ptr @.str.9, ptr @fops_spec_scan_ctl, ptr @.str.10, ptr @fops_spectral_short_repeat, ptr @.str.11, ptr @fops_spectral_count, ptr @.str.12, ptr @fops_spectral_period, ptr @.str.13, ptr @fops_spectral_fft_period, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @switch.table.read_file_spec_scan_ctl], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfs_spec_scan_cb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_spec_scan_ctl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_spectral_short_repeat to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_spectral_count to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_spectral_period to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_spectral_fft_period to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.read_file_spec_scan_ctl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_cmn_process_fft(ptr noundef %spec_priv, ptr noundef %hdr, ptr noundef %rs, i64 noundef %tsf) #0 align 64 {
entry:
  %sample_buf = alloca [135 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 135, ptr nonnull %sample_buf) #11
  %0 = call ptr @memset(ptr %sample_buf, i32 0, i32 135)
  %1 = ptrtoint ptr %spec_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec_priv, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 3
  %priv = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %rs_datalen = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 1
  %5 = ptrtoint ptr %rs_datalen to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rs_datalen, align 4
  %conv = zext i16 %6 to i32
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 8
  %7 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %curchan, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq, align 4
  %conv3 = trunc i32 %12 to i16
  %rs_phyerr = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 3
  %13 = ptrtoint ptr %rs_phyerr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rs_phyerr, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %entry.cleanup_crit_edge [
    i8 5, label %entry.if.end_crit_edge
    i8 36, label %entry.if.end_crit_edge385
    i8 38, label %entry.if.end_crit_edge386
  ]

entry.if.end_crit_edge386:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge385:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge385, %entry.if.end_crit_edge386
  %arrayidx = getelementptr i8, ptr %hdr, i32 %conv
  %add.ptr = getelementptr %struct.ath_radar_info, ptr %arrayidx, i32 -1
  %pulse_bw_info = getelementptr inbounds %struct.ath_radar_info, ptr %add.ptr, i32 0, i32 2
  %16 = ptrtoint ptr %pulse_bw_info to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pulse_bw_info, align 1
  %18 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %rfs_chan_spec_scan = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %spec_priv, i32 0, i32 1
  %19 = ptrtoint ptr %rfs_chan_spec_scan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rfs_chan_spec_scan, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %call13.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %21)
  %cmp14.i = icmp ult i32 %call13.i, %21
  br i1 %cmp14.i, label %do.body.lr.ph.i, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.body.lr.ph.i:                                  ; preds = %if.end20
  %buf1.i = getelementptr inbounds %struct.rchan, ptr %20, i32 0, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call16.i = phi i32 [ %call13.i, %do.body.lr.ph.i ], [ %call.i, %if.end.i.do.body.i_crit_edge ]
  %ret.015.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %ret.1.i, %if.end.i.do.body.i_crit_edge ]
  %22 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf1.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call16.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %26, %24
  %27 = inttoptr i32 %add.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @relay_buf_full(ptr noundef nonnull %29) #11
  %add4.i = add i32 %call3.i, %ret.015.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i.if.end.i_crit_edge
  %ret.1.i = phi i32 [ %add4.i, %if.then.i ], [ %ret.015.i, %do.body.i.if.end.i_crit_edge ]
  %call.i = tail call i32 @cpumask_next(i32 noundef %call16.i, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %30
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %ath_cmn_is_fft_buf_full.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

ath_cmn_is_fft_buf_full.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool5.not.i.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool5.not.i.not, label %ath_cmn_is_fft_buf_full.exit.if.end29_crit_edge, label %do.body

ath_cmn_is_fft_buf_full.exit.if.end29_crit_edge:  ; preds = %ath_cmn_is_fft_buf_full.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.body:                                          ; preds = %ath_cmn_is_fft_buf_full.exit
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_mask, align 4
  %and25 = and i32 %32, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body.cleanup_crit_edge, label %if.then27

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end29:                                         ; preds = %ath_cmn_is_fft_buf_full.exit.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %hw = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %34, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %36, label %do.end.i [
    i32 0, label %if.end29.do.body37_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %cfg80211_get_chandef_type.exit
  ]

if.end29.do.body37_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

sw.bb1.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 778, i32 noundef 9, ptr noundef null) #11
  br label %do.body37

cfg80211_get_chandef_type.exit:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %34, i32 0, i32 7
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_conf, ptr %34, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %center_freq1.i, align 4
  %40 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chandef, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %43)
  %cmp.i351 = icmp ugt i32 %39, %43
  %..i352 = select i1 %cmp.i351, i32 3, i32 2
  br label %do.body37

do.body37:                                        ; preds = %cfg80211_get_chandef_type.exit, %do.end.i, %sw.bb1.i, %if.end29.do.body37_crit_edge
  %retval.0.i363 = phi i32 [ %..i352, %cfg80211_get_chandef_type.exit ], [ %36, %if.end29.do.body37_crit_edge ], [ 1, %sw.bb1.i ], [ 0, %do.end.i ]
  %num_bins.0 = phi i32 [ 128, %cfg80211_get_chandef_type.exit ], [ 56, %if.end29.do.body37_crit_edge ], [ 56, %sw.bb1.i ], [ 56, %do.end.i ]
  %fft_len.0 = phi i32 [ 138, %cfg80211_get_chandef_type.exit ], [ 63, %if.end29.do.body37_crit_edge ], [ 63, %sw.bb1.i ], [ 63, %do.end.i ]
  %sample_len.0 = phi i32 [ 135, %cfg80211_get_chandef_type.exit ], [ 60, %if.end29.do.body37_crit_edge ], [ 60, %sw.bb1.i ], [ 60, %do.end.i ]
  %fft_idx_validator.0 = phi ptr [ @ath_cmn_max_idx_verify_ht20_40_fft, %cfg80211_get_chandef_type.exit ], [ @ath_cmn_max_idx_verify_ht20_fft, %if.end29.do.body37_crit_edge ], [ @ath_cmn_max_idx_verify_ht20_fft, %sw.bb1.i ], [ @ath_cmn_max_idx_verify_ht20_fft, %do.end.i ]
  %fft_handler.0 = phi ptr [ @ath_cmn_process_ht20_40_fft, %cfg80211_get_chandef_type.exit ], [ @ath_cmn_process_ht20_fft, %if.end29.do.body37_crit_edge ], [ @ath_cmn_process_ht20_fft, %sw.bb1.i ], [ @ath_cmn_process_ht20_fft, %do.end.i ]
  %debug_mask38 = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %debug_mask38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug_mask38, align 4
  %and39 = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.do.end47_crit_edge, label %if.then41

do.body37.do.end47_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %pulse_bw_info to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pulse_bw_info, align 1
  %conv43 = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, i32 noundef %conv43, i32 noundef %conv, i32 noundef %fft_len.0) #11
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %do.body37.do.end47_crit_edge
  %sub = add nsw i32 %conv, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp48367 = icmp ugt i16 %6, 2
  br i1 %cmp48367, label %for.body.lr.ph, label %do.end47.for.end_crit_edge

do.end47.for.end_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = add nsw i32 %num_bins.0, -2
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end47
  %add = add nuw nsw i32 %fft_len.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp51.not = icmp ult i32 %add, %conv
  %sub54 = add nsw i32 %conv, -3
  %sub62 = add nsw i32 %sample_len.0, -1
  %add67 = add nuw nsw i32 %sample_len.0, 2
  %arrayidx12.i = getelementptr inbounds i8, ptr %sample_buf, i32 30
  %arrayidx13.i = getelementptr inbounds i8, ptr %sample_buf, i32 31
  %sub15.i = add nsw i32 %sample_len.0, -31
  %arrayidx4.i = getelementptr inbounds i8, ptr %sample_buf, i32 1
  %arrayidx7.i = getelementptr inbounds i8, ptr %sample_buf, i32 32
  %sub9.i = add nsw i32 %sample_len.0, -32
  %rx_spectral_sample_err = getelementptr inbounds %struct.ath_softc, ptr %4, i32 0, i32 44, i32 2, i32 2, i32 18
  %rx_spectral_sample_good = getelementptr inbounds %struct.ath_softc, ptr %4, i32 0, i32 44, i32 2, i32 2, i32 17
  %sub216 = add nsw i32 %num_bins.0, -2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.0377 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.3, %for.inc.for.body_crit_edge ]
  %sample_bytes.0376 = phi i32 [ 0, %for.body.lr.ph ], [ %sample_bytes.3, %for.inc.for.body_crit_edge ]
  %sample_start.0373 = phi ptr [ %hdr, %for.body.lr.ph ], [ %sample_start.1, %for.inc.for.body_crit_edge ]
  %got_slen.0372 = phi i32 [ 0, %for.body.lr.ph ], [ %got_slen.3, %for.inc.for.body_crit_edge ]
  %i.0368 = phi i32 [ 0, %for.body.lr.ph ], [ %inc222, %for.inc.for.body_crit_edge ]
  %inc = add i32 %sample_bytes.0376, 1
  %spec.select = select i1 %cmp51.not, i32 %got_slen.0372, i32 1
  %spec.select349 = select i1 %cmp51.not, i32 %inc, i32 %sub54
  %arrayidx56 = getelementptr i8, ptr %hdr, i32 %i.0368
  %48 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %49)
  %cmp58 = icmp ugt i8 %49, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select349, i32 %sub62)
  %cmp63.not = icmp slt i32 %spec.select349, %sub62
  %or.cond380 = select i1 %cmp58, i1 true, i1 %cmp63.not
  br i1 %or.cond380, label %if.end133, label %if.then65

if.then65:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select349, i32 %add67)
  %cmp68 = icmp sgt i32 %spec.select349, %add67
  br i1 %cmp68, label %if.then65.for.end_crit_edge, label %lor.lhs.false70

if.then65.for.end_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

lor.lhs.false70:                                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select349, i32 %sample_len.0)
  %cmp72 = icmp sgt i32 %spec.select349, %sample_len.0
  br i1 %cmp72, label %land.lhs.true74, label %lor.lhs.false70.if.end82_crit_edge

lor.lhs.false70.if.end82_crit_edge:               ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

land.lhs.true74:                                  ; preds = %lor.lhs.false70
  %arrayidx75 = getelementptr i8, ptr %sample_start.0373, i32 31
  %50 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx75, align 1
  %arrayidx77 = getelementptr i8, ptr %sample_start.0373, i32 32
  %52 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx77, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %53)
  %cmp79.not = icmp eq i8 %51, %53
  br i1 %cmp79.not, label %land.lhs.true74.if.end82_crit_edge, label %land.lhs.true74.for.end_crit_edge

land.lhs.true74.for.end_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true74.if.end82_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true74.if.end82_crit_edge, %lor.lhs.false70.if.end82_crit_edge
  %call84 = call i32 %fft_idx_validator.0(ptr noundef %arrayidx56, i32 noundef %i.0368) #11, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.body87, label %if.else95

do.body87:                                        ; preds = %if.end82
  %54 = ptrtoint ptr %debug_mask38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %debug_mask38, align 4
  %and89 = and i32 %55, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body87.do.body136_crit_edge, label %if.then91

do.body87.do.body136_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body136

if.then91:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3, i32 noundef %i.0368) #11
  br label %do.body136

if.else95:                                        ; preds = %if.end82
  %arrayidx96 = getelementptr i8, ptr %sample_start.0373, i32 31
  %56 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx96, align 1
  %arrayidx98 = getelementptr i8, ptr %sample_start.0373, i32 32
  %58 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx98, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp100 = icmp eq i8 %57, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select349, i32 %sample_len.0)
  %cmp104.not = icmp sge i32 %spec.select349, %sample_len.0
  %or.cond = select i1 %cmp100, i1 %cmp104.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select349, i32 %add67)
  %cmp109 = icmp slt i32 %spec.select349, %add67
  %or.cond350 = select i1 %or.cond, i1 %cmp109, i1 false
  br i1 %or.cond350, label %land.lhs.true111, label %if.else95.if.else118_crit_edge

if.else95.if.else118_crit_edge:                   ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else118

land.lhs.true111:                                 ; preds = %if.else95
  %add112 = add nsw i32 %i.0368, 1
  %arrayidx113 = getelementptr i8, ptr %hdr, i32 %add112
  %60 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %61)
  %cmp115 = icmp ult i8 %61, 8
  br i1 %cmp115, label %land.lhs.true111.for.inc_crit_edge, label %land.lhs.true111.if.else118_crit_edge

land.lhs.true111.if.else118_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else118

land.lhs.true111.for.inc_crit_edge:               ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else118:                                       ; preds = %land.lhs.true111.if.else118_crit_edge, %if.else95.if.else118_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select349, i32 %sub62)
  %cmp121 = icmp eq i32 %spec.select349, %sub62
  br i1 %cmp121, label %land.lhs.true123, label %if.else118.do.body136_crit_edge

if.else118.do.body136_crit_edge:                  ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body136

land.lhs.true123:                                 ; preds = %if.else118
  %add124 = add nsw i32 %i.0368, 1
  %arrayidx125 = getelementptr i8, ptr %hdr, i32 %add124
  %62 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %63)
  %cmp127 = icmp ult i8 %63, 8
  br i1 %cmp127, label %land.lhs.true123.for.inc_crit_edge, label %land.lhs.true123.do.body136_crit_edge

land.lhs.true123.do.body136_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body136

land.lhs.true123.for.inc_crit_edge:               ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end133:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool134.not = icmp eq i32 %spec.select, 0
  br i1 %tobool134.not, label %if.end133.for.inc_crit_edge, label %if.end133.do.body136_crit_edge

if.end133.do.body136_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body136

if.end133.for.inc_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body136:                                       ; preds = %if.end133.do.body136_crit_edge, %land.lhs.true123.do.body136_crit_edge, %if.else118.do.body136_crit_edge, %if.then91, %do.body87.do.body136_crit_edge
  %64 = ptrtoint ptr %debug_mask38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %debug_mask38, align 4
  %and138 = and i32 %65, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %do.body136.do.end143_crit_edge, label %if.then140

do.body136.do.end143_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end143

if.then140:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4, i32 noundef %spec.select349) #11
  br label %do.end143

do.end143:                                        ; preds = %if.then140, %do.body136.do.end143_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select349, i32 %sample_len.0)
  %cmp145.not = icmp eq i32 %spec.select349, %sample_len.0
  %brmerge = or i1 %cmp51.not, %cmp145.not
  br i1 %brmerge, label %do.end143.if.end175_crit_edge, label %if.then152

do.end143.if.end175_crit_edge:                    ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end175

if.then152:                                       ; preds = %do.end143
  %sub.i = sub i32 %spec.select349, %sample_len.0
  %66 = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %sub.i, label %if.then152.ath_cmn_copy_fft_frame.exit_crit_edge [
    i32 -1, label %sw.bb.i
    i32 0, label %sw.bb2.i354
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb10.i
  ]

if.then152.ath_cmn_copy_fft_frame.exit_crit_edge: ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_cmn_copy_fft_frame.exit

sw.bb.i:                                          ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  %67 = call ptr @memcpy(ptr %arrayidx4.i, ptr %sample_start.0373, i32 %sub62)
  br label %ath_cmn_copy_fft_frame.exit

sw.bb2.i354:                                      ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  %68 = call ptr @memcpy(ptr %sample_buf, ptr %sample_start.0373, i32 %sample_len.0)
  br label %ath_cmn_copy_fft_frame.exit

sw.bb3.i:                                         ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  %69 = call ptr @memcpy(ptr %arrayidx4.i, ptr %sample_start.0373, i32 30)
  %arrayidx5.i = getelementptr i8, ptr %sample_start.0373, i32 31
  %70 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx5.i, align 1
  %72 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx13.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %sample_start.0373, i32 33
  %73 = call ptr @memcpy(ptr %arrayidx7.i, ptr %arrayidx8.i, i32 %sub9.i)
  br label %ath_cmn_copy_fft_frame.exit

sw.bb10.i:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  %74 = call ptr @memcpy(ptr %sample_buf, ptr %sample_start.0373, i32 30)
  %arrayidx11.i = getelementptr i8, ptr %sample_start.0373, i32 31
  %75 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx11.i, align 1
  %77 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr i8, ptr %sample_start.0373, i32 33
  %78 = call ptr @memcpy(ptr %arrayidx13.i, ptr %arrayidx14.i, i32 %sub15.i)
  br label %ath_cmn_copy_fft_frame.exit

ath_cmn_copy_fft_frame.exit:                      ; preds = %sw.bb10.i, %sw.bb3.i, %sw.bb2.i354, %sw.bb.i, %if.then152.ath_cmn_copy_fft_frame.exit_crit_edge
  %call155 = call i32 %fft_handler.0(ptr noundef %rs, ptr noundef %spec_priv, ptr noundef nonnull %sample_buf, i64 noundef %tsf, i16 noundef zeroext %conv3, i32 noundef %retval.0.i363) #11, !callees !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp eq i32 %call155, 0
  %rx_spectral_sample_good.rx_spectral_sample_err = select i1 %cmp156, ptr %rx_spectral_sample_good, ptr %rx_spectral_sample_err
  %79 = ptrtoint ptr %rx_spectral_sample_good.rx_spectral_sample_err to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_spectral_sample_good.rx_spectral_sample_err, align 4
  %inc168 = add i32 %80, 1
  store i32 %inc168, ptr %rx_spectral_sample_good.rx_spectral_sample_err, align 4
  %81 = call ptr @memset(ptr %sample_buf, i32 0, i32 135)
  call void @add_device_randomness(ptr noundef nonnull %sample_buf, i32 noundef %num_bins.0) #11
  br label %if.end175

if.end175:                                        ; preds = %ath_cmn_copy_fft_frame.exit, %do.end143.if.end175_crit_edge
  %ret.1 = phi i32 [ %call155, %ath_cmn_copy_fft_frame.exit ], [ %ret.0377, %do.end143.if.end175_crit_edge ]
  br i1 %cmp145.not, label %if.then179, label %if.end175.if.end203_crit_edge

if.end175.if.end203_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203

if.then179:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #13
  %call180 = call i32 %fft_handler.0(ptr noundef %rs, ptr noundef %spec_priv, ptr noundef %sample_start.0373, i64 noundef %tsf, i16 noundef zeroext %conv3, i32 noundef %retval.0.i363) #11, !callees !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %cmp181 = icmp eq i32 %call180, 0
  %rx_spectral_sample_good.rx_spectral_sample_err384 = select i1 %cmp181, ptr %rx_spectral_sample_good, ptr %rx_spectral_sample_err
  %82 = ptrtoint ptr %rx_spectral_sample_good.rx_spectral_sample_err384 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_spectral_sample_good.rx_spectral_sample_err384, align 4
  %inc198 = add i32 %83, 1
  store i32 %inc198, ptr %rx_spectral_sample_good.rx_spectral_sample_err384, align 4
  call void @add_device_randomness(ptr noundef %sample_start.0373, i32 noundef %num_bins.0) #11
  br label %if.end203

if.end203:                                        ; preds = %if.then179, %if.end175.if.end203_crit_edge
  %ret.2 = phi i32 [ %call180, %if.then179 ], [ %ret.1, %if.end175.if.end203_crit_edge ]
  br i1 %cmp51.not, label %if.end209, label %if.end203.cleanup_crit_edge

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end209:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  %add210 = add nsw i32 %i.0368, 1
  %arrayidx211 = getelementptr i8, ptr %hdr, i32 %add210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp212 = icmp eq i32 %ret.2, 0
  %add217 = select i1 %cmp212, i32 %sub216, i32 0
  %i.1 = add i32 %add217, %i.0368
  %sample_bytes.2 = select i1 %cmp212, i32 %sub216, i32 %spec.select349
  br label %for.inc

for.inc:                                          ; preds = %if.end209, %if.end133.for.inc_crit_edge, %land.lhs.true123.for.inc_crit_edge, %land.lhs.true111.for.inc_crit_edge
  %i.2 = phi i32 [ %i.0368, %land.lhs.true111.for.inc_crit_edge ], [ %i.0368, %land.lhs.true123.for.inc_crit_edge ], [ %i.1, %if.end209 ], [ %i.0368, %if.end133.for.inc_crit_edge ]
  %got_slen.3 = phi i32 [ %spec.select, %land.lhs.true111.for.inc_crit_edge ], [ %spec.select, %land.lhs.true123.for.inc_crit_edge ], [ 0, %if.end209 ], [ 0, %if.end133.for.inc_crit_edge ]
  %sample_start.1 = phi ptr [ %sample_start.0373, %land.lhs.true111.for.inc_crit_edge ], [ %sample_start.0373, %land.lhs.true123.for.inc_crit_edge ], [ %arrayidx211, %if.end209 ], [ %sample_start.0373, %if.end133.for.inc_crit_edge ]
  %sample_bytes.3 = phi i32 [ %spec.select349, %land.lhs.true111.for.inc_crit_edge ], [ %sub62, %land.lhs.true123.for.inc_crit_edge ], [ %sample_bytes.2, %if.end209 ], [ %spec.select349, %if.end133.for.inc_crit_edge ]
  %ret.3 = phi i32 [ %ret.0377, %land.lhs.true111.for.inc_crit_edge ], [ %ret.0377, %land.lhs.true123.for.inc_crit_edge ], [ %ret.2, %if.end209 ], [ %ret.0377, %if.end133.for.inc_crit_edge ]
  %inc222 = add i32 %i.2, 1
  %cmp48 = icmp slt i32 %inc222, %sub
  br i1 %cmp48, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true74.for.end_crit_edge, %if.then65.for.end_crit_edge, %do.end47.for.end_crit_edge
  %sub224.pre-phi = phi i32 [ %.pre, %do.end47.for.end_crit_edge ], [ %sub216, %if.then65.for.end_crit_edge ], [ %sub216, %land.lhs.true74.for.end_crit_edge ], [ %sub216, %for.inc.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %do.end47.for.end_crit_edge ], [ %inc222, %for.inc.for.end_crit_edge ], [ %i.0368, %land.lhs.true74.for.end_crit_edge ], [ %i.0368, %if.then65.for.end_crit_edge ]
  %sub225.neg = add nsw i32 %sub224.pre-phi, %conv
  %sub226 = sub i32 %sub225.neg, %i.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub226)
  %cmp227.not = icmp eq i32 %sub226, 3
  br i1 %cmp227.not, label %for.end.cleanup_crit_edge, label %do.body230

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body230:                                       ; preds = %for.end
  %84 = ptrtoint ptr %debug_mask38 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %debug_mask38, align 4
  %and232 = and i32 %85, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %do.body230.cleanup_crit_edge, label %if.then234

do.body230.cleanup_crit_edge:                     ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then234:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %sub226) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then234, %do.body230.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end203.cleanup_crit_edge, %if.then27, %do.body.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end17.cleanup_crit_edge ], [ 1, %if.then27 ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %do.body230.cleanup_crit_edge ], [ 1, %if.then234 ], [ 1, %for.end.cleanup_crit_edge ], [ 1, %if.end203.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 135, ptr nonnull %sample_buf) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath_cmn_max_idx_verify_ht20_40_fft(ptr nocapture noundef readonly %sample_end, i32 noundef %bytes_read) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 134, i32 %bytes_read)
  %cmp = icmp ult i32 %bytes_read, 134
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %sample_end, i32 -6
  %add.ptr3 = getelementptr i8, ptr %sample_end, i32 -134
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr1, align 1
  %2 = lshr i8 %1, 6
  %3 = zext i8 %2 to i32
  %arrayidx1.i = getelementptr i8, ptr %sample_end, i32 -5
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 2
  %or.i = or i32 %shl.i, %3
  %arrayidx4.i = getelementptr i8, ptr %sample_end, i32 -4
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i, align 1
  %8 = and i8 %7, 3
  %and6.i = zext i8 %8 to i32
  %shl7.i = shl nuw nsw i32 %and6.i, 10
  %or8.i = or i32 %shl7.i, %or.i
  %9 = lshr i8 %7, 2
  %10 = or i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not29.i.i = icmp slt i8 %7, 0
  %spec.select.i.i = select i1 %tobool.not29.i.i, i8 %10, i8 %9
  %upper_bins = getelementptr i8, ptr %sample_end, i32 -3
  %11 = ptrtoint ptr %upper_bins to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %upper_bins, align 1
  %13 = lshr i8 %12, 6
  %14 = zext i8 %13 to i32
  %arrayidx1.i60 = getelementptr i8, ptr %sample_end, i32 -2
  %15 = ptrtoint ptr %arrayidx1.i60 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.i60, align 1
  %conv2.i61 = zext i8 %16 to i32
  %shl.i62 = shl nuw nsw i32 %conv2.i61, 2
  %or.i63 = or i32 %shl.i62, %14
  %arrayidx4.i64 = getelementptr i8, ptr %sample_end, i32 -1
  %17 = ptrtoint ptr %arrayidx4.i64 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4.i64, align 1
  %19 = and i8 %18, 3
  %and6.i65 = zext i8 %19 to i32
  %shl7.i66 = shl nuw nsw i32 %and6.i65, 10
  %or8.i67 = or i32 %shl7.i66, %or.i63
  %20 = lshr i8 %18, 2
  %21 = or i8 %20, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not29.i.i69 = icmp slt i8 %18, 0
  %spec.select.i.i70 = select i1 %tobool.not29.i.i69, i8 %21, i8 %20
  %22 = ptrtoint ptr %sample_end to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sample_end, align 1
  %24 = and i8 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 134, i32 %bytes_read)
  %cmp14 = icmp eq i32 %bytes_read, 134
  br i1 %cmp14, label %land.lhs.true, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i.i70)
  %cmp17 = icmp eq i8 %spec.select.i.i70, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i.i)
  %cmp20 = icmp eq i8 %spec.select.i.i, 0
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp20
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %25 = or i8 %spec.select.i.i70, 64
  %add = zext i8 %25 to i32
  %arrayidx = getelementptr i8, ptr %add.ptr3, i32 %add
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %28 = and i8 %27, -8
  %and26 = zext i8 %28 to i32
  %conv28 = zext i8 %24 to i32
  %shr = lshr i32 %or8.i67, %conv28
  %and29 = and i32 %shr, 248
  call void @__sanitizer_cov_trace_cmp4(i32 %and29, i32 %and26)
  %cmp30.not = icmp eq i32 %and29, %and26
  br i1 %cmp30.not, label %lor.lhs.false32, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false32:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom = zext i8 %spec.select.i.i to i32
  %arrayidx33 = getelementptr i8, ptr %add.ptr3, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx33, align 1
  %31 = and i8 %30, -8
  %and35 = zext i8 %31 to i32
  %shr38 = lshr i32 %or8.i, %conv28
  %and39 = and i32 %shr38, 248
  call void @__sanitizer_cov_trace_cmp4(i32 %and39, i32 %and35)
  %cmp40.not = icmp ne i32 %and39, %and35
  %spec.select = sext i1 %cmp40.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false32, %if.end23.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.end23.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath_cmn_process_ht20_40_fft(ptr nocapture noundef readonly %rs, ptr nocapture noundef readonly %spec_priv, ptr nocapture noundef readonly %sample_buf, i64 noundef %tsf, i16 noundef zeroext %freq, i32 noundef %chan_type) unnamed_addr #0 align 64 {
entry:
  %fft_sample_40 = alloca %struct.fft_sample_ht20_40, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 155, ptr nonnull %fft_sample_40) #11
  %0 = call ptr @memset(ptr %fft_sample_40, i32 255, i32 155)
  %1 = ptrtoint ptr %spec_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec_priv, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 3
  %caldata3 = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 31
  %3 = ptrtoint ptr %caldata3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caldata3, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %curchan, align 4
  %privNF = getelementptr %struct.ath9k_hw_cal_data, ptr %4, i32 0, i32 13, i32 3, i32 2
  %7 = ptrtoint ptr %privNF to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %privNF, align 4
  %call4 = tail call signext i16 @ath9k_hw_getchan_noise(ptr noundef %2, ptr noundef %6, i16 noundef signext %8) #11
  %extract.t = trunc i16 %call4 to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ext_nf.0.off0 = phi i8 [ %extract.t, %if.then ], [ -95, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %fft_sample_40 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %fft_sample_40, align 1
  %length7 = getelementptr inbounds %struct.fft_sample_tlv, ptr %fft_sample_40, i32 0, i32 1
  %10 = ptrtoint ptr %length7 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 152, ptr %length7, align 1
  %freq8 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 2
  %11 = ptrtoint ptr %freq8 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %freq, ptr %freq8, align 1
  %conv = trunc i32 %chan_type to i8
  %channel_type = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 1
  %12 = ptrtoint ptr %channel_type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %channel_type, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chan_type)
  %cmp = icmp eq i32 %chan_type, 3
  br i1 %cmp, label %if.then10, label %if.else16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rs_rssi_ctl = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 9
  %13 = ptrtoint ptr %rs_rssi_ctl to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rs_rssi_ctl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %14)
  %cmp.i = icmp eq i8 %14, -128
  %spec.store.select.i = select i1 %cmp.i, i8 0, i8 %14
  %rs_rssi_ext = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 10
  %15 = ptrtoint ptr %rs_rssi_ext to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rs_rssi_ext, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %16)
  %cmp.i407 = icmp eq i8 %16, -128
  %spec.store.select.i408 = select i1 %cmp.i407, i8 0, i8 %16
  %noise = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 30
  %17 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %noise, align 4
  br label %if.end27

if.else16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rs_rssi_ext17 = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 10
  %19 = ptrtoint ptr %rs_rssi_ext17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rs_rssi_ext17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %20)
  %cmp.i409 = icmp eq i8 %20, -128
  %spec.store.select.i410 = select i1 %cmp.i409, i8 0, i8 %20
  %rs_rssi_ctl20 = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 9
  %21 = ptrtoint ptr %rs_rssi_ctl20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rs_rssi_ctl20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %22)
  %cmp.i411 = icmp eq i8 %22, -128
  %spec.store.select.i412 = select i1 %cmp.i411, i8 0, i8 %22
  %noise25 = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 30
  %23 = ptrtoint ptr %noise25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %noise25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else16, %if.then10
  %ext_nf.0.off0.sink = phi i8 [ %18, %if.then10 ], [ %ext_nf.0.off0, %if.else16 ]
  %.sink = phi i8 [ %ext_nf.0.off0, %if.then10 ], [ %24, %if.else16 ]
  %lower_rssi.0 = phi i8 [ %spec.store.select.i, %if.then10 ], [ %spec.store.select.i410, %if.else16 ]
  %upper_rssi.0 = phi i8 [ %spec.store.select.i408, %if.then10 ], [ %spec.store.select.i412, %if.else16 ]
  %25 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %ext_nf.0.off0.sink, ptr %25, align 1
  %27 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 7
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %27, align 1
  %lower_rssi28 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 3
  %29 = ptrtoint ptr %lower_rssi28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %lower_rssi.0, ptr %lower_rssi28, align 1
  %upper_rssi29 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 4
  %30 = ptrtoint ptr %upper_rssi29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %upper_rssi.0, ptr %upper_rssi29, align 1
  %add.ptr = getelementptr i8, ptr %sample_buf, i32 128
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr, align 1
  %33 = lshr i8 %32, 6
  %34 = zext i8 %33 to i16
  %arrayidx1.i = getelementptr i8, ptr %sample_buf, i32 129
  %35 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %36 to i16
  %shl.i = shl nuw nsw i16 %conv2.i, 2
  %or.i = or i16 %shl.i, %34
  %arrayidx4.i = getelementptr i8, ptr %sample_buf, i32 130
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx4.i, align 1
  %39 = and i8 %38, 3
  %and6.i = zext i8 %39 to i16
  %shl7.i = shl nuw nsw i16 %and6.i, 10
  %or8.i = or i16 %shl7.i, %or.i
  %lower_max_magnitude = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 8
  %40 = ptrtoint ptr %lower_max_magnitude to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %or8.i, ptr %lower_max_magnitude, align 1
  %upper_bins = getelementptr i8, ptr %sample_buf, i32 131
  %41 = ptrtoint ptr %upper_bins to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %upper_bins, align 1
  %43 = lshr i8 %42, 6
  %44 = zext i8 %43 to i16
  %arrayidx1.i413 = getelementptr i8, ptr %sample_buf, i32 132
  %45 = ptrtoint ptr %arrayidx1.i413 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx1.i413, align 1
  %conv2.i414 = zext i8 %46 to i16
  %shl.i415 = shl nuw nsw i16 %conv2.i414, 2
  %or.i416 = or i16 %shl.i415, %44
  %arrayidx4.i417 = getelementptr i8, ptr %sample_buf, i32 133
  %47 = ptrtoint ptr %arrayidx4.i417 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx4.i417, align 1
  %49 = and i8 %48, 3
  %and6.i418 = zext i8 %49 to i16
  %shl7.i419 = shl nuw nsw i16 %and6.i418, 10
  %or8.i420 = or i16 %shl7.i419, %or.i416
  %upper_max_magnitude = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 9
  %50 = ptrtoint ptr %upper_max_magnitude to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %or8.i420, ptr %upper_max_magnitude, align 1
  %51 = lshr i8 %38, 2
  %52 = or i8 %51, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not29.i.i = icmp slt i8 %38, 0
  %spec.select.i.i = select i1 %tobool.not29.i.i, i8 %52, i8 %51
  %lower_max_index36 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 10
  %53 = ptrtoint ptr %lower_max_index36 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %spec.select.i.i, ptr %lower_max_index36, align 1
  %54 = lshr i8 %48, 2
  %55 = or i8 %54, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not29.i.i422 = icmp slt i8 %48, 0
  %spec.select.i.i423 = select i1 %tobool.not29.i.i422, i8 %55, i8 %54
  %upper_max_index40 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 11
  %56 = ptrtoint ptr %upper_max_index40 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %spec.select.i.i423, ptr %upper_max_index40, align 1
  %57 = and i8 %32, 63
  %lower_bitmap_weight = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 12
  %58 = ptrtoint ptr %lower_bitmap_weight to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %lower_bitmap_weight, align 1
  %59 = and i8 %42, 63
  %upper_bitmap_weight = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 13
  %60 = ptrtoint ptr %upper_bitmap_weight to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %upper_bitmap_weight, align 1
  %max_exp47 = getelementptr i8, ptr %sample_buf, i32 134
  %61 = ptrtoint ptr %max_exp47 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %max_exp47, align 1
  %63 = and i8 %62, 15
  %max_exp50 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 14
  %64 = ptrtoint ptr %max_exp50 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %max_exp50, align 1
  %tsf51 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 5
  %65 = ptrtoint ptr %tsf51 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %tsf, ptr %tsf51, align 1
  %data = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 15
  %66 = call ptr @memcpy(ptr %data, ptr %sample_buf, i32 128)
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 3, i32 3
  %67 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %debug_mask, align 4
  %and53 = and i32 %68, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end27.do.end_crit_edge, label %if.then55

if.end27.do.end_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i16 %or8.i420 to i32
  %.pre433 = zext i8 %63 to i32
  %.pre434 = lshr i32 %.pre, %.pre433
  br label %do.end

if.then55:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %conv56 = zext i16 %or8.i to i32
  %conv57 = zext i8 %63 to i32
  %shr = lshr i32 %conv56, %conv57
  %conv58 = zext i8 %spec.select.i.i to i32
  %conv59 = zext i16 %or8.i420 to i32
  %shr61 = lshr i32 %conv59, %conv57
  %conv62 = zext i8 %spec.select.i.i423 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.15, i32 noundef %shr, i32 noundef %conv58, i32 noundef %shr61, i32 noundef %conv62) #11
  br label %do.end

do.end:                                           ; preds = %if.then55, %if.end27.do.end_crit_edge
  %shr71.pre-phi = phi i32 [ %.pre434, %if.end27.do.end_crit_edge ], [ %shr61, %if.then55 ]
  %conv70.pre-phi = phi i32 [ %.pre433, %if.end27.do.end_crit_edge ], [ %conv57, %if.then55 ]
  %69 = or i8 %spec.select.i.i423, 64
  %add = zext i8 %69 to i32
  %arrayidx66 = getelementptr %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 15, i32 %add
  %70 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx66, align 1
  %72 = and i8 %71, -8
  %and68 = zext i8 %72 to i32
  %and72 = and i32 %shr71.pre-phi, 248
  call void @__sanitizer_cov_trace_cmp4(i32 %and72, i32 %and68)
  %cmp73.not = icmp eq i32 %and72, %and68
  br i1 %cmp73.not, label %lor.lhs.false, label %do.end.do.body86_crit_edge

do.end.do.body86_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body86

lor.lhs.false:                                    ; preds = %do.end
  %idxprom = zext i8 %spec.select.i.i to i32
  %arrayidx76 = getelementptr %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 15, i32 %idxprom
  %73 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx76, align 1
  %75 = and i8 %74, -8
  %and78 = zext i8 %75 to i32
  %conv79 = zext i16 %or8.i to i32
  %shr81 = lshr i32 %conv79, %conv70.pre-phi
  %and82 = and i32 %shr81, 248
  call void @__sanitizer_cov_trace_cmp4(i32 %and82, i32 %and78)
  %cmp83.not = icmp eq i32 %and82, %and78
  br i1 %cmp83.not, label %lor.lhs.false.if.end94_crit_edge, label %lor.lhs.false.do.body86_crit_edge

lor.lhs.false.do.body86_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body86

lor.lhs.false.if.end94_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

do.body86:                                        ; preds = %lor.lhs.false.do.body86_crit_edge, %do.end.do.body86_crit_edge
  %76 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %debug_mask, align 4
  %and88 = and i32 %77, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body86.if.end94_crit_edge, label %if.then90

do.body86.if.end94_crit_edge:                     ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then90:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.16) #11
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %do.body86.if.end94_crit_edge, %lor.lhs.false.if.end94_crit_edge
  %ret.0 = phi i32 [ 0, %lor.lhs.false.if.end94_crit_edge ], [ -1, %if.then90 ], [ -1, %do.body86.if.end94_crit_edge ]
  %arrayidx97 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 15, i32 65
  %78 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %79 to i16
  %arrayidx100 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 15, i32 63
  %80 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %81 to i16
  %add102 = add nuw nsw i16 %conv101, %conv98
  %div406 = lshr i16 %add102, 1
  %conv103 = trunc i16 %div406 to i8
  %arrayidx105 = getelementptr inbounds %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 15, i32 64
  %82 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv103, ptr %arrayidx105, align 1
  %conv148 = zext i16 %or8.i to i32
  %shr150 = lshr i32 %conv148, %conv70.pre-phi
  br label %for.body144

for.body144:                                      ; preds = %for.inc187.for.body144_crit_edge, %if.end94
  %ret.1427 = phi i32 [ %ret.0, %if.end94 ], [ %ret.2, %for.inc187.for.body144_crit_edge ]
  %i.1424 = phi i32 [ 0, %if.end94 ], [ %inc188, %for.inc187.for.body144_crit_edge ]
  %arrayidx146 = getelementptr %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 15, i32 %i.1424
  %83 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %84 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr150, i32 %conv147)
  %cmp151 = icmp eq i32 %shr150, %conv147
  br i1 %cmp151, label %do.body154, label %for.body144.if.end165_crit_edge

for.body144.if.end165_crit_edge:                  ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

do.body154:                                       ; preds = %for.body144
  %85 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %debug_mask, align 4
  %and156 = and i32 %86, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %do.body154.if.end165_crit_edge, label %if.then158

do.body154.if.end165_crit_edge:                   ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

if.then158:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.18, i32 noundef %shr150, i32 noundef %i.1424) #11
  br label %if.end165

if.end165:                                        ; preds = %if.then158, %do.body154.if.end165_crit_edge, %for.body144.if.end165_crit_edge
  %87 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx146, align 1
  %conv168 = zext i8 %88 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr150, i32 %conv168)
  %cmp172 = icmp ult i32 %shr150, %conv168
  br i1 %cmp172, label %do.body175, label %if.end165.for.inc187_crit_edge

if.end165.for.inc187_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc187

do.body175:                                       ; preds = %if.end165
  %89 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %debug_mask, align 4
  %and177 = and i32 %90, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %do.body175.for.inc187_crit_edge, label %if.then179

do.body175.for.inc187_crit_edge:                  ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc187

if.then179:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.19, i32 noundef %i.1424, i32 noundef %conv168) #11
  br label %for.inc187

for.inc187:                                       ; preds = %if.then179, %do.body175.for.inc187_crit_edge, %if.end165.for.inc187_crit_edge
  %ret.2 = phi i32 [ %ret.1427, %if.end165.for.inc187_crit_edge ], [ -1, %if.then179 ], [ -1, %do.body175.for.inc187_crit_edge ]
  %inc188 = add nuw nsw i32 %i.1424, 1
  %exitcond.not = icmp eq i32 %inc188, 64
  br i1 %exitcond.not, label %for.inc187.for.body235_crit_edge, label %for.inc187.for.body144_crit_edge

for.inc187.for.body144_crit_edge:                 ; preds = %for.inc187
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body144

for.inc187.for.body235_crit_edge:                 ; preds = %for.inc187
  br label %for.body235

for.body235:                                      ; preds = %for.inc278.for.body235_crit_edge, %for.inc187.for.body235_crit_edge
  %ret.4431 = phi i32 [ %ret.5, %for.inc278.for.body235_crit_edge ], [ %ret.2, %for.inc187.for.body235_crit_edge ]
  %i.3428 = phi i32 [ %inc279, %for.inc278.for.body235_crit_edge ], [ 64, %for.inc187.for.body235_crit_edge ]
  %arrayidx237 = getelementptr %struct.fft_sample_ht20_40, ptr %fft_sample_40, i32 0, i32 15, i32 %i.3428
  %91 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %92 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr71.pre-phi, i32 %conv238)
  %cmp242 = icmp eq i32 %shr71.pre-phi, %conv238
  br i1 %cmp242, label %do.body245, label %for.body235.if.end256_crit_edge

for.body235.if.end256_crit_edge:                  ; preds = %for.body235
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end256

do.body245:                                       ; preds = %for.body235
  %93 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %debug_mask, align 4
  %and247 = and i32 %94, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %do.body245.if.end256_crit_edge, label %if.then249

do.body245.if.end256_crit_edge:                   ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end256

if.then249:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.21, i32 noundef %shr71.pre-phi, i32 noundef %i.3428) #11
  br label %if.end256

if.end256:                                        ; preds = %if.then249, %do.body245.if.end256_crit_edge, %for.body235.if.end256_crit_edge
  %95 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx237, align 1
  %conv259 = zext i8 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr71.pre-phi, i32 %conv259)
  %cmp263 = icmp ult i32 %shr71.pre-phi, %conv259
  br i1 %cmp263, label %do.body266, label %if.end256.for.inc278_crit_edge

if.end256.for.inc278_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc278

do.body266:                                       ; preds = %if.end256
  %97 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %debug_mask, align 4
  %and268 = and i32 %98, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268)
  %tobool269.not = icmp eq i32 %and268, 0
  br i1 %tobool269.not, label %do.body266.for.inc278_crit_edge, label %if.then270

do.body266.for.inc278_crit_edge:                  ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc278

if.then270:                                       ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.22, i32 noundef %i.3428, i32 noundef %conv259) #11
  br label %for.inc278

for.inc278:                                       ; preds = %if.then270, %do.body266.for.inc278_crit_edge, %if.end256.for.inc278_crit_edge
  %ret.5 = phi i32 [ %ret.4431, %if.end256.for.inc278_crit_edge ], [ -1, %if.then270 ], [ -1, %do.body266.for.inc278_crit_edge ]
  %inc279 = add nuw nsw i32 %i.3428, 1
  %exitcond432.not = icmp eq i32 %inc279, 128
  br i1 %exitcond432.not, label %if.end281, label %for.inc278.for.body235_crit_edge

for.inc278.for.body235_crit_edge:                 ; preds = %for.inc278
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body235

if.end281:                                        ; preds = %for.inc278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5)
  %cmp282 = icmp slt i32 %ret.5, 0
  br i1 %cmp282, label %if.end281.cleanup_crit_edge, label %if.end285

if.end281.cleanup_crit_edge:                      ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end285:                                        ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ath_debug_send_fft_sample(ptr noundef %spec_priv, ptr noundef nonnull %fft_sample_40)
  br label %cleanup

cleanup:                                          ; preds = %if.end285, %if.end281.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end285 ], [ -1, %if.end281.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 155, ptr nonnull %fft_sample_40) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath_cmn_max_idx_verify_ht20_fft(ptr nocapture noundef readonly %sample_end, i32 noundef %bytes_read) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %bytes_read)
  %cmp = icmp ult i32 %bytes_read, 59
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i = getelementptr i8, ptr %sample_end, i32 -1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i.i, align 1
  %2 = lshr i8 %1, 2
  %3 = or i8 %2, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not29.i.i = icmp slt i8 %1, 0
  %spec.select.i.i = select i1 %tobool.not29.i.i, i8 %3, i8 %2
  %conv12.i.i = add nsw i8 %spec.select.i.i, 28
  %4 = add nsw i8 %spec.select.i.i, -28
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %4)
  %5 = icmp ult i8 %4, -56
  %m.1.i.i = select i1 %5, i8 0, i8 %conv12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %bytes_read)
  %cmp9 = icmp eq i32 %bytes_read, 59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %m.1.i.i)
  %cmp12 = icmp eq i8 %m.1.i.i, 0
  %or.cond = select i1 %cmp9, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %sample_end to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sample_end, align 1
  %8 = and i8 %7, 15
  %9 = and i8 %1, 3
  %and6.i = zext i8 %9 to i32
  %shl7.i = shl nuw nsw i32 %and6.i, 10
  %arrayidx1.i = getelementptr i8, ptr %sample_end, i32 -2
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 2
  %add.ptr1 = getelementptr i8, ptr %sample_end, i32 -3
  %12 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr1, align 1
  %14 = lshr i8 %13, 6
  %15 = zext i8 %14 to i32
  %or.i = or i32 %shl.i, %15
  %or8.i = or i32 %or.i, %shl7.i
  %add.ptr3 = getelementptr i8, ptr %sample_end, i32 -59
  %idxprom = zext i8 %m.1.i.i to i32
  %arrayidx = getelementptr i8, ptr %add.ptr3, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %18 = and i8 %17, -8
  %and17 = zext i8 %18 to i32
  %conv19 = zext i8 %8 to i32
  %shr = lshr i32 %or8.i, %conv19
  %and20 = and i32 %shr, 248
  call void @__sanitizer_cov_trace_cmp4(i32 %and20, i32 %and17)
  %cmp21.not = icmp ne i32 %and20, %and17
  %. = sext i1 %cmp21.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %., %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath_cmn_process_ht20_fft(ptr nocapture noundef readonly %rs, ptr nocapture noundef readonly %spec_priv, ptr nocapture noundef readonly %sample_buf, i64 noundef %tsf, i16 noundef zeroext %freq, i32 noundef %chan_type) unnamed_addr #0 align 64 {
entry:
  %fft_sample_20 = alloca %struct.fft_sample_ht20, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %fft_sample_20) #11
  %0 = ptrtoint ptr %spec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec_priv, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fft_sample_20 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %fft_sample_20, align 1
  %length5 = getelementptr inbounds %struct.fft_sample_tlv, ptr %fft_sample_20, i32 0, i32 1
  %3 = ptrtoint ptr %length5 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 73, ptr %length5, align 1
  %freq6 = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 2
  %4 = ptrtoint ptr %freq6 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %freq, ptr %freq6, align 1
  %rs_rssi_ctl = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 9
  %5 = ptrtoint ptr %rs_rssi_ctl to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rs_rssi_ctl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %cmp.i = icmp eq i8 %6, -128
  %spec.store.select.i = select i1 %cmp.i, i8 0, i8 %6
  %rssi = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 3
  %7 = ptrtoint ptr %rssi to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.store.select.i, ptr %rssi, align 1
  %noise = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %noise, align 4
  %noise8 = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 4
  %10 = ptrtoint ptr %noise8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %noise8, align 1
  %add.ptr = getelementptr i8, ptr %sample_buf, i32 56
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr, align 1
  %13 = lshr i8 %12, 6
  %14 = zext i8 %13 to i16
  %arrayidx1.i = getelementptr i8, ptr %sample_buf, i32 57
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %16 to i16
  %shl.i = shl nuw nsw i16 %conv2.i, 2
  %or.i = or i16 %shl.i, %14
  %arrayidx4.i = getelementptr i8, ptr %sample_buf, i32 58
  %17 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4.i, align 1
  %19 = and i8 %18, 3
  %and6.i = zext i8 %19 to i16
  %shl7.i = shl nuw nsw i16 %and6.i, 10
  %or8.i = or i16 %shl7.i, %or.i
  %max_magnitude = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 5
  %20 = ptrtoint ptr %max_magnitude to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %or8.i, ptr %max_magnitude, align 1
  %21 = lshr i8 %18, 2
  %22 = or i8 %21, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not29.i.i = icmp slt i8 %18, 0
  %spec.select.i.i = select i1 %tobool.not29.i.i, i8 %22, i8 %21
  %conv12.i.i = add nsw i8 %spec.select.i.i, 28
  %23 = add nsw i8 %spec.select.i.i, -28
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %23)
  %24 = icmp ult i8 %23, -56
  %m.1.i.i = select i1 %24, i8 0, i8 %conv12.i.i
  %max_index13 = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 6
  %25 = ptrtoint ptr %max_index13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %m.1.i.i, ptr %max_index13, align 1
  %26 = and i8 %12, 63
  %bitmap_weight = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 7
  %27 = ptrtoint ptr %bitmap_weight to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %bitmap_weight, align 1
  %max_exp17 = getelementptr i8, ptr %sample_buf, i32 59
  %28 = ptrtoint ptr %max_exp17 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %max_exp17, align 1
  %30 = and i8 %29, 15
  %max_exp19 = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 1
  %31 = ptrtoint ptr %max_exp19 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %max_exp19, align 1
  %tsf20 = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 8
  %32 = ptrtoint ptr %tsf20 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %tsf, ptr %tsf20, align 1
  %data = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 9
  %33 = call ptr @memcpy(ptr %data, ptr %sample_buf, i32 56)
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug_mask, align 4
  %and22 = and i32 %35, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i8 %m.1.i.i to i32
  %.pre212 = zext i16 %or8.i to i32
  %.pre213 = zext i8 %30 to i32
  %.pre214 = lshr i32 %.pre212, %.pre213
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv23 = zext i16 %or8.i to i32
  %conv24 = zext i8 %30 to i32
  %shr = lshr i32 %conv23, %conv24
  %conv25 = zext i8 %m.1.i.i to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.23, i32 noundef %shr, i32 noundef %conv25) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %shr32.pre-phi = phi i32 [ %.pre214, %entry.do.end_crit_edge ], [ %shr, %if.then ]
  %conv31.pre-phi = phi i32 [ %.pre213, %entry.do.end_crit_edge ], [ %conv24, %if.then ]
  %idxprom.pre-phi = phi i32 [ %.pre, %entry.do.end_crit_edge ], [ %conv25, %if.then ]
  %arrayidx27 = getelementptr %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 9, i32 %idxprom.pre-phi
  %36 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx27, align 1
  %38 = and i8 %37, -8
  %and29 = zext i8 %38 to i32
  %and33 = and i32 %shr32.pre-phi, 248
  call void @__sanitizer_cov_trace_cmp4(i32 %and33, i32 %and29)
  %cmp.not = icmp eq i32 %and33, %and29
  br i1 %cmp.not, label %do.end.if.end44_crit_edge, label %do.body36

do.end.if.end44_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.body36:                                        ; preds = %do.end
  %39 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug_mask, align 4
  %and38 = and i32 %40, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body36.if.end44_crit_edge, label %if.then40

do.body36.if.end44_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then40:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.16) #11
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %do.body36.if.end44_crit_edge, %do.end.if.end44_crit_edge
  %ret.0 = phi i32 [ 0, %do.end.if.end44_crit_edge ], [ -1, %if.then40 ], [ -1, %do.body36.if.end44_crit_edge ]
  %arrayidx46 = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 9, i32 29
  %41 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %42 to i16
  %arrayidx49 = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 9, i32 27
  %43 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %44 to i16
  %add51 = add nuw nsw i16 %conv50, %conv47
  %div203 = lshr i16 %add51, 1
  %conv52 = trunc i16 %div203 to i8
  %arrayidx54 = getelementptr inbounds %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 9, i32 28
  %45 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv52, ptr %arrayidx54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %m.1.i.i)
  %cmp56 = icmp eq i8 %m.1.i.i, 28
  br i1 %cmp56, label %for.body.preheader, label %if.end44.for.body92_crit_edge

if.end44.for.body92_crit_edge:                    ; preds = %if.end44
  br label %for.body92

for.body.preheader:                               ; preds = %if.end44
  %46 = ptrtoint ptr %max_index13 to i32
  call void @__asan_load1_noabort(i32 %46)
  %max_index13.promoted = load i8, ptr %max_index13, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %conv71215 = phi i8 [ %spec.select, %for.body.for.body_crit_edge ], [ %max_index13.promoted, %for.body.preheader ]
  %tmp_mag.0210 = phi i16 [ %50, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0208 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx62 = getelementptr %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 9, i32 %i.0208
  %47 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx62, align 1
  %49 = zext i8 %48 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %tmp_mag.0210, i16 %49)
  %cmp65 = icmp ult i16 %tmp_mag.0210, %49
  %conv71 = trunc i32 %i.0208 to i8
  %spec.select = select i1 %cmp65, i8 %conv71, i8 %conv71215
  %50 = call i16 @llvm.umax.i16(i16 %tmp_mag.0210, i16 %49)
  %inc = add nuw nsw i32 %i.0208, 1
  %exitcond211.not = icmp eq i32 %inc, 28
  br i1 %exitcond211.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %51 = ptrtoint ptr %max_index13 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.select, ptr %max_index13, align 1
  %conv74 = zext i16 %50 to i32
  %shl = shl i32 %conv74, %conv31.pre-phi
  %conv76 = trunc i32 %shl to i16
  %52 = ptrtoint ptr %max_magnitude to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %conv76, ptr %max_magnitude, align 1
  %53 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug_mask, align 4
  %and80 = and i32 %54, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %for.end.if.end138_crit_edge, label %if.then82

for.end.if.end138_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138

if.then82:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %max_index13 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %max_index13, align 1
  %conv85 = zext i8 %56 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.17, i32 noundef %conv74, i32 noundef %conv85) #11
  br label %if.end138

for.body92:                                       ; preds = %for.inc135.for.body92_crit_edge, %if.end44.for.body92_crit_edge
  %ret.1207 = phi i32 [ %ret.2, %for.inc135.for.body92_crit_edge ], [ %ret.0, %if.end44.for.body92_crit_edge ]
  %i.1204 = phi i32 [ %inc136, %for.inc135.for.body92_crit_edge ], [ 0, %if.end44.for.body92_crit_edge ]
  %arrayidx94 = getelementptr %struct.fft_sample_ht20, ptr %fft_sample_20, i32 0, i32 9, i32 %i.1204
  %57 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr32.pre-phi, i32 %conv95)
  %cmp99 = icmp eq i32 %shr32.pre-phi, %conv95
  br i1 %cmp99, label %do.body102, label %for.body92.if.end113_crit_edge

for.body92.if.end113_crit_edge:                   ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

do.body102:                                       ; preds = %for.body92
  %59 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug_mask, align 4
  %and104 = and i32 %60, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %do.body102.if.end113_crit_edge, label %if.then106

do.body102.if.end113_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then106:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.24, i32 noundef %shr32.pre-phi, i32 noundef %i.1204) #11
  br label %if.end113

if.end113:                                        ; preds = %if.then106, %do.body102.if.end113_crit_edge, %for.body92.if.end113_crit_edge
  %61 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx94, align 1
  %conv116 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr32.pre-phi, i32 %conv116)
  %cmp120 = icmp ult i32 %shr32.pre-phi, %conv116
  br i1 %cmp120, label %do.body123, label %if.end113.for.inc135_crit_edge

if.end113.for.inc135_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc135

do.body123:                                       ; preds = %if.end113
  %63 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug_mask, align 4
  %and125 = and i32 %64, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %do.body123.for.inc135_crit_edge, label %if.then127

do.body123.for.inc135_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc135

if.then127:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.25, i32 noundef %i.1204, i32 noundef %conv116) #11
  br label %for.inc135

for.inc135:                                       ; preds = %if.then127, %do.body123.for.inc135_crit_edge, %if.end113.for.inc135_crit_edge
  %ret.2 = phi i32 [ %ret.1207, %if.end113.for.inc135_crit_edge ], [ -1, %if.then127 ], [ -1, %do.body123.for.inc135_crit_edge ]
  %inc136 = add nuw nsw i32 %i.1204, 1
  %exitcond.not = icmp eq i32 %inc136, 56
  br i1 %exitcond.not, label %for.inc135.if.end138_crit_edge, label %for.inc135.for.body92_crit_edge

for.inc135.for.body92_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body92

for.inc135.if.end138_crit_edge:                   ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138

if.end138:                                        ; preds = %for.inc135.if.end138_crit_edge, %if.then82, %for.end.if.end138_crit_edge
  %ret.3 = phi i32 [ %ret.0, %if.then82 ], [ %ret.0, %for.end.if.end138_crit_edge ], [ %ret.2, %for.inc135.if.end138_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp139 = icmp slt i32 %ret.3, 0
  br i1 %cmp139, label %if.end138.cleanup_crit_edge, label %if.end142

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end142:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ath_debug_send_fft_sample(ptr noundef %spec_priv, ptr noundef nonnull %fft_sample_20)
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %if.end138.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end142 ], [ -1, %if.end138.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %fft_sample_20) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath9k_cmn_spectral_scan_trigger(ptr nocapture %common, ptr nocapture %spec_priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_cmn_spectral_scan_config(ptr noundef %common, ptr noundef %spec_priv, i32 noundef %spectral_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %spec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec_priv, align 4
  %spectral_scan_trigger = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 63, i32 11
  %2 = ptrtoint ptr %spectral_scan_trigger to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spectral_scan_trigger, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.6, ptr noundef %common, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %spectral_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %spectral_mode, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 3, label %if.end.sw.bb6_crit_edge
    i32 2, label %if.end.sw.bb6_crit_edge32
  ]

if.end.sw.bb6_crit_edge32:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %spec_config = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %spec_priv, i32 0, i32 3
  %5 = ptrtoint ptr %spec_config to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %spec_config, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %spec_config3 = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %spec_priv, i32 0, i32 3
  %endless = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %spec_priv, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %endless to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %endless, align 2
  %7 = ptrtoint ptr %spec_config3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %spec_config3, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge32
  %spec_config7 = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %spec_priv, i32 0, i32 3
  %endless8 = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %spec_priv, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %endless8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %endless8, align 2
  %9 = ptrtoint ptr %spec_config7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %spec_config7, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb2, %sw.bb
  %ps_ops.i = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 26
  %10 = ptrtoint ptr %ps_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ps_ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %common) #11
  %spectral_scan_config = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 63, i32 10
  %14 = ptrtoint ptr %spectral_scan_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spectral_scan_config, align 4
  %spec_config13 = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %spec_priv, i32 0, i32 3
  tail call void %15(ptr noundef %1, ptr noundef %spec_config13) #11
  %16 = ptrtoint ptr %ps_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ps_ops.i, align 4
  %restore = getelementptr inbounds %struct.ath_ps_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %restore, align 4
  tail call void %19(ptr noundef %common) #11
  %spectral_mode15 = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %spec_priv, i32 0, i32 2
  %20 = ptrtoint ptr %spectral_mode15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spectral_mode, ptr %spectral_mode15, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %if.then ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_cmn_spectral_deinit_debug(ptr nocapture noundef %spec_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rfs_chan_spec_scan = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %spec_priv, i32 0, i32 1
  %0 = ptrtoint ptr %rfs_chan_spec_scan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rfs_chan_spec_scan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @relay_close(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %rfs_chan_spec_scan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rfs_chan_spec_scan, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @relay_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_cmn_spectral_init_debug(ptr noundef %spec_priv, ptr noundef %debugfs_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @relay_open(ptr noundef nonnull @.str.8, ptr noundef %debugfs_phy, i32 noundef 1024, i32 noundef 256, ptr noundef nonnull @rfs_spec_scan_cb, ptr noundef null) #11
  %rfs_chan_spec_scan = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %spec_priv, i32 0, i32 1
  %0 = ptrtoint ptr %rfs_chan_spec_scan to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %rfs_chan_spec_scan, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %debugfs_phy, ptr noundef %spec_priv, ptr noundef nonnull @fops_spec_scan_ctl) #11
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 384, ptr noundef %debugfs_phy, ptr noundef %spec_priv, ptr noundef nonnull @fops_spectral_short_repeat) #11
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef %debugfs_phy, ptr noundef %spec_priv, ptr noundef nonnull @fops_spectral_count) #11
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 384, ptr noundef %debugfs_phy, ptr noundef %spec_priv, ptr noundef nonnull @fops_spectral_period) #11
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 384, ptr noundef %debugfs_phy, ptr noundef %spec_priv, ptr noundef nonnull @fops_spectral_fft_period) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @relay_open(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @relay_buf_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i16 @ath9k_hw_getchan_noise(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_debug_send_fft_sample(ptr nocapture noundef readonly %spec_priv, ptr nocapture noundef readonly %fft_sample_tlv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rfs_chan_spec_scan = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %spec_priv, i32 0, i32 1
  %0 = ptrtoint ptr %rfs_chan_spec_scan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rfs_chan_spec_scan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %length1 = getelementptr inbounds %struct.fft_sample_tlv, ptr %fft_sample_tlv, i32 0, i32 1
  %2 = ptrtoint ptr %length1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %length1, align 1
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 3
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !103
  %and.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.do.body12.i_crit_edge

if.end.do.body12.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.then.i, %if.end.do.body12.i_crit_edge
  %buf16.i = getelementptr inbounds %struct.rchan, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %buf16.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf16.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !91) #11
  %and.i77.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i77.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %offset.i = getelementptr inbounds %struct.rchan_buf, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 8
  %add19.i = add i32 %18, %add
  %subbuf_size.i = getelementptr inbounds %struct.rchan, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %subbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %subbuf_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i, i32 %20)
  %cmp20.i = icmp ugt i32 %add19.i, %20
  br i1 %cmp20.i, label %if.then24.i, label %do.body12.i.if.end26.i_crit_edge, !prof !104

do.body12.i.if.end26.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then24.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  %call25.i = tail call i32 @relay_switch_subbuf(ptr noundef %16, i32 noundef %add) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %do.body12.i.if.end26.i_crit_edge
  %length.addr.0.i = phi i32 [ %call25.i, %if.then24.i ], [ %add, %do.body12.i.if.end26.i_crit_edge ]
  %data27.i = getelementptr inbounds %struct.rchan_buf, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %data27.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data27.i, align 4
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset.i, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 %24
  %25 = call ptr @memcpy(ptr %add.ptr.i, ptr %fft_sample_tlv, i32 %length.addr.0.i)
  %26 = load i32, ptr %offset.i, align 8
  %add30.i = add i32 %26, %length.addr.0.i
  store i32 %add30.i, ptr %offset.i, align 8
  br i1 %tobool.not.i, label %if.then40.i, label %if.end26.i.do.body42.i_crit_edge

if.end26.i.do.body42.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body42.i

if.then40.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body42.i

do.body42.i:                                      ; preds = %if.then40.i, %if.end26.i.do.body42.i_crit_edge
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !105
  %and.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool50.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool50.not.i, label %if.then59.i, label %do.body42.i.relay_write.exit_crit_edge, !prof !104

do.body42.i.relay_write.exit_crit_edge:           ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %relay_write.exit

if.then59.i:                                      ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %relay_write.exit

relay_write.exit:                                 ; preds = %if.then59.i, %do.body42.i.relay_write.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #11, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %relay_write.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @relay_switch_subbuf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @create_buf_file_handler(ptr noundef %filename, ptr noundef %parent, i16 noundef zeroext %mode, ptr noundef %buf, ptr nocapture noundef writeonly %is_global) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef %filename, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %buf, ptr noundef nonnull @relay_file_operations) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %is_global to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %is_global, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_buf_file_handler(ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debugfs_remove(ptr noundef %dentry) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_spec_scan_ctl(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spectral_mode = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %spectral_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spectral_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.read_file_spec_scan_ctl, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %mode.0 = phi ptr [ @.str.26, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %call = tail call i32 @strlen(ptr noundef nonnull %mode.0) #15
  %call4 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %mode.0, i32 noundef %call) #11
  ret i32 %call4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @write_file_spec_scan_ctl(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_spectral_short_repeat(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %short_repeat = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %1, i32 0, i32 3, i32 1
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %short_repeat to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %short_repeat, align 1, !range !107
  %5 = zext i8 %4 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.31, i32 noundef %5)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_spectral_short_repeat(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #16, !srcloc !109
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !110

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %6 = call i32 @llvm.read_register.i32(metadata !91) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !111
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !110

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp6 = icmp ugt i32 %12, 1
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9 = icmp ne i32 %12, 0
  %short_repeat = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %1, i32 0, i32 3, i32 1
  %frombool = zext i1 %tobool9 to i8
  %13 = ptrtoint ptr %short_repeat to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %short_repeat, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_spectral_count(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %count1 = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %1, i32 0, i32 3, i32 3
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %count1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %count1, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.31, i32 noundef %conv)
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_spectral_count(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #16, !srcloc !109
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !110

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %6 = call i32 @llvm.read_register.i32(metadata !91) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !111
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !110

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %12)
  %cmp6 = icmp ugt i32 %12, 255
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %12 to i8
  %count9 = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %1, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %count9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %count9, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_spectral_period(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %period = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %1, i32 0, i32 3, i32 4
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %period to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %period, align 4
  %conv = zext i8 %4 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.31, i32 noundef %conv)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_spectral_period(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #16, !srcloc !109
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !110

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %6 = call i32 @llvm.read_register.i32(metadata !91) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !111
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !110

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %12)
  %cmp6 = icmp ugt i32 %12, 255
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %12 to i8
  %period = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %1, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %period to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %period, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_spectral_fft_period(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %fft_period = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %1, i32 0, i32 3, i32 5
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %fft_period to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fft_period, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.31, i32 noundef %conv)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_spectral_fft_period(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #16, !srcloc !109
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !110

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %6 = call i32 @llvm.read_register.i32(metadata !91) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !111
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !110

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp6 = icmp ugt i32 %12, 15
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %12 to i8
  %fft_period = getelementptr inbounds %struct.ath_spec_scan_priv, ptr %1, i32 0, i32 3, i32 5
  %13 = ptrtoint ptr %fft_period to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %fft_period, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !83, !85, !87, !89}
!llvm.named.register.sp = !{!91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 512, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 533, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 591, i32 5}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 612, i32 4}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 678, i32 3}
!11 = !{ptr @__ksymtab_ath_cmn_process_fft, !12, !"__ksymtab_ath_cmn_process_fft", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 683, i32 1}
!13 = !{ptr @__ksymtab_ath9k_cmn_spectral_scan_trigger, !14, !"__ksymtab_ath9k_cmn_spectral_scan_trigger", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 746, i32 1}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 755, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__ksymtab_ath9k_cmn_spectral_scan_config, !19, !"__ksymtab_ath9k_cmn_spectral_scan_config", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 787, i32 1}
!20 = !{ptr @__ksymtab_ath9k_cmn_spectral_deinit_debug, !21, !"__ksymtab_ath9k_cmn_spectral_deinit_debug", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 1072, i32 1}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 1077, i32 45}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 1084, i32 22}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 1088, i32 22}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 1092, i32 22}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 1096, i32 22}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 1100, i32 22}
!34 = !{ptr @__ksymtab_ath9k_cmn_spectral_init_debug, !35, !"__ksymtab_ath9k_cmn_spectral_init_debug", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 1105, i32 1}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 312, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 327, i32 3}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 353, i32 3}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 359, i32 4}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 364, i32 4}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 382, i32 3}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 388, i32 4}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 393, i32 4}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 173, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 212, i32 4}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 217, i32 4}
!60 = !{ptr @rfs_spec_scan_cb, !61, !"rfs_spec_scan_cb", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 1056, i32 37}
!62 = !{ptr @fops_spec_scan_ctl, !63, !"fops_spec_scan_ctl", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 828, i32 37}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 693, i32 15}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 698, i32 10}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 701, i32 10}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 704, i32 10}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 707, i32 10}
!74 = !{ptr @fops_spectral_short_repeat, !75, !"fops_spectral_short_repeat", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 876, i32 37}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 848, i32 21}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!80 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!85 = !{ptr @fops_spectral_count, !86, !"fops_spectral_count", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 924, i32 37}
!87 = !{ptr @fops_spectral_period, !88, !"fops_spectral_period", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 972, i32 37}
!89 = !{ptr @fops_spectral_fft_period, !90, !"fops_spectral_fft_period", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath9k/common-spectral.c", i32 1020, i32 37}
!91 = !{!"sp"}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{ptr @ath_cmn_max_idx_verify_ht20_40_fft, ptr @ath_cmn_max_idx_verify_ht20_fft}
!102 = !{ptr @ath_cmn_process_ht20_40_fft, ptr @ath_cmn_process_ht20_fft}
!103 = !{i64 850818, i64 850879}
!104 = !{!"branch_weights", i32 1, i32 2000}
!105 = !{i64 853550}
!106 = !{i64 853835}
!107 = !{i8 0, i8 2}
!108 = !{!"auto-init"}
!109 = !{i64 2150593283, i64 2150593308}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 3088838}
!112 = !{i64 3089035}
!113 = !{i64 2150574268}
