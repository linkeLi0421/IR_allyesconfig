; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/pci.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_bus_ops = type { i32, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.125, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.125 = type { i64, i64, i8 }
%struct.ath_softc = type { ptr, ptr, ptr, [38 x %struct.survey_info], %struct.spinlock, %struct.tasklet_struct, %struct.tasklet_struct, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.ath_chanctx_sched, %struct.ath_offchannel, ptr, %struct.completion, %struct.timespec64, i32, i8, i32, i16, i8, i8, i16, i32, %struct.ath_rx, %struct.ath_tx, %struct.ath_beacon, %struct.cfg80211_chan_def, [2 x %struct.ath_chanctx], ptr, %struct.spinlock, i8, [32 x i8], %struct.led_classdev, %struct.ath9k_debug, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.ath_btcoex, %struct.ath_mci_coex, %struct.work_struct, %struct.ath_descdma, %struct.ath_ant_comb, i8, i8, ptr, i64, i32, %struct.ath_spec_scan_priv, ptr, ptr, i8, i16, i32, i8, i32, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.ath_chanctx_sched = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i32, %struct.timer_list }
%struct.ath_offchannel = type { %struct.ath_chanctx, %struct.timer_list, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.ath_chanctx = type { %struct.cfg80211_chan_def, %struct.list_head, [4 x %struct.ath_acq], i32, ptr, %struct.ath_beacon_config, %struct.ath9k_hw_cal_data, %struct.timespec64, i64, i32, i32, i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.ath_acq = type { %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.ath_beacon_config = type { ptr, i32, i16, i16, i8, i8, i8, i32, i32 }
%struct.ath9k_hw_cal_data = type { i16, i16, i32, i32, i8, i8, [2 x i8], [3 x i16], [3 x [24 x i32]], [3 x i32], [8 x [3 x i32]], [3 x [16 x i32]], [3 x [6 x i32]], [6 x %struct.ath9k_nfcal_hist] }
%struct.ath9k_nfcal_hist = type { [5 x i16], i8, i16, i8 }
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
%struct.ath_btcoex = type { %struct.spinlock, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath_mci_profile, i8 }
%struct.ath_mci_profile = type { %struct.list_head, [1 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath_mci_coex = type { %struct.ath_mci_buf, %struct.ath_mci_buf }
%struct.ath_mci_buf = type { ptr, i32, i32 }
%struct.ath_descdma = type { ptr, i32, i32 }
%struct.ath_ant_comb = type { i16, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8, i32, i32, i32 }
%struct.ath_spec_scan_priv = type { ptr, ptr, i32, %struct.ath_spec_scan }
%struct.ath_spec_scan = type { i8, i8, i8, i8, i8, i8 }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.131, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.132, %union.anon.133, %union.anon.134, %union.anon.135, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
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
%union.anon.131 = type { %struct.ar5416_eeprom_def }
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
%union.anon.132 = type { [3 x i32] }
%union.anon.133 = type { [3 x i32] }
%union.anon.134 = type { [3 x i32] }
%union.anon.135 = type { [3 x i32] }
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
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@ath_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ath_pci_id_table, ptr @ath_pci_probe, ptr @ath_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath9k_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ath9k\00", [26 x i8] zeroinitializer }, align 32
@ath_pci_id_table = internal constant { [152 x %struct.pci_device_id], [1216 x i8] } { [152 x %struct.pci_device_id] [%struct.pci_device_id { i32 5772, i32 35, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 36, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 39, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 41, i32 5772, i32 8342, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 5772, i32 41, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 42, i32 6715, i32 7281, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 5772, i32 42, i32 4187, i32 57375, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 5772, i32 42, i32 4525, i32 26162, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 5772, i32 42, i32 4525, i32 26178, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 5772, i32 42, i32 6706, i32 774, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 5772, i32 42, i32 6239, i32 12445, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 5772, i32 42, i32 4303, i32 5244, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 5772, i32 42, i32 4303, i32 5245, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 5772, i32 42, i32 4303, i32 5430, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 5772, i32 42, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 43, i32 6715, i32 11319, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 43, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 44, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 45, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 46, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 48, i32 6742, i32 8192, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 5772, i32 48, i32 6742, i32 8193, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 5772, i32 48, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6715, i32 8326, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6715, i32 4663, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6715, i32 8486, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6715, i32 4714, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6715, i32 8530, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 4187, i32 57461, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 5772, i32 12569, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 5772, i32 12578, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6239, i32 12569, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6239, i32 12327, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 5197, i32 16645, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 5197, i32 16646, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 5197, i32 16653, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 5197, i32 16654, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 5197, i32 16655, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 5197, i32 50950, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 5197, i32 50816, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 5197, i32 50952, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6058, i32 12824, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6058, i32 12825, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6715, i32 11415, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6715, i32 8448, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 7254, i32 16385, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 4525, i32 26151, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 4525, i32 26152, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 4187, i32 57422, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 4187, i32 57423, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 5199, i32 29079, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 7066, i32 8192, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 7066, i32 8193, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6715, i32 4486, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6715, i32 8070, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6715, i32 4501, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 6715, i32 8085, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 7066, i32 7168, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 7066, i32 7169, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 4163, i32 34061, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 5772, i32 50, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 51, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 6715, i32 8470, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 4525, i32 26209, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 5772, i32 12567, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 6058, i32 12820, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 6505, i32 145, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 6715, i32 8464, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 4163, i32 34062, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 4525, i32 26161, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 4525, i32 26177, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 4156, i32 6244, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 5325, i32 99, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 5325, i32 100, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 4303, i32 6019, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 4136, i32 523, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 4136, i32 768, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5772, i32 48, i32 6742, i32 8195, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 5772, i32 52, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 55, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5772, i32 12328, i32 0, i32 0, i32 296, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6715, i32 8566, i32 0, i32 0, i32 296, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4187, i32 57448, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6239, i32 41241, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 1586, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 1714, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 2114, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 6210, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 26225, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 7066, i32 10257, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 7066, i32 10258, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 7066, i32 10401, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 7066, i32 10403, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6715, i32 8586, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6715, i32 12170, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5772, i32 12325, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5772, i32 12326, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5772, i32 12331, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4187, i32 57449, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6239, i32 12328, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 1570, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 1650, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 1634, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 1698, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 1666, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6715, i32 8506, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6715, i32 8508, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4156, i32 6371, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4156, i32 8575, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4156, i32 8197, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4136, i32 524, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5197, i32 16666, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5197, i32 16667, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5197, i32 16668, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5197, i32 16669, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5197, i32 16670, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5197, i32 16681, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5197, i32 16682, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5772, i32 12327, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5772, i32 12332, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 1602, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 1618, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 1554, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 2098, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 6194, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 1682, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 2051, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4525, i32 2067, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6715, i32 8496, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6715, i32 8507, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6715, i32 8578, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6715, i32 8587, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6715, i32 8588, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6715, i32 12162, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 5199, i32 29186, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 7066, i32 10256, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 7066, i32 10259, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 7066, i32 10402, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 7066, i32 10404, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6239, i32 12327, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6239, i32 41248, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4187, i32 57471, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4187, i32 57487, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4187, i32 57473, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4187, i32 57489, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4187, i32 57497, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6058, i32 12326, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 6058, i32 16422, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4163, i32 34290, i32 0, i32 0, i32 288, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 4136, i32 526, i32 0, i32 0, i32 2336, i32 0 }, %struct.pci_device_id { i32 5772, i32 54, i32 -1, i32 -1, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id zeroinitializer], [1216 x i8] zeroinitializer }, align 32
@ath9k_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ath_pci_suspend, ptr @ath_pci_resume, ptr @ath_pci_suspend, ptr @ath_pci_resume, ptr @ath_pci_suspend, ptr @ath_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ath_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ath9k: 32-bit DMA not available\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ath_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ath/ath9k/pci.c\00", [59 x i8] zeroinitializer }, align 32
@ath_pci_probe._entry_ptr = internal global ptr @ath_pci_probe._entry, section ".printk_index", align 4
@ath_pci_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 940, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PCI memory region reserve error\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath_pci_probe._entry_ptr.8 = internal global ptr @ath_pci_probe._entry.4, section ".printk_index", align 4
@ath9k_ops = external dso_local global %struct.ieee80211_ops, align 4
@ath_pci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 947, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No memory for ieee80211_hw\0A\00", [36 x i8] zeroinitializer }, align 32
@ath_pci_probe._entry_ptr.11 = internal global ptr @ath_pci_probe._entry.9, section ".printk_index", align 4
@ath9k_use_msi = external dso_local local_unnamed_addr global i32, align 4
@ath_pci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 963, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Using MSI\0A\00", [21 x i8] zeroinitializer }, align 32
@ath_pci_probe._entry_ptr.14 = internal global ptr @ath_pci_probe._entry.12, section ".printk_index", align 4
@ath_pci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 965, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Using INTx\0A\00", [20 x i8] zeroinitializer }, align 32
@ath_pci_probe._entry_ptr.17 = internal global ptr @ath_pci_probe._entry.15, section ".printk_index", align 4
@ath_pci_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 975, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_irq failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ath_pci_probe._entry_ptr.20 = internal global ptr @ath_pci_probe._entry.18, section ".printk_index", align 4
@ath_pci_bus_ops = internal constant { %struct.ath_bus_ops, [44 x i8] } { %struct.ath_bus_ops { i32 0, ptr @ath_pci_read_cachesize, ptr @ath_pci_eeprom_read, ptr null, ptr @ath_pci_aspm_init }, [44 x i8] zeroinitializer }, align 32
@ath_pci_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 983, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize device\0A\00", [35 x i8] zeroinitializer }, align 32
@ath_pci_probe._entry_ptr.23 = internal global ptr @ath_pci_probe._entry.21, section ".printk_index", align 4
@ath_pci_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 992, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s mem=0x%lx, irq=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ath_pci_probe._entry_ptr.27 = internal global ptr @ath_pci_probe._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Disabling ASPM since BTCOEX is enabled\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ASPM enabled: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@is_ath9k_unloaded = external dso_local local_unnamed_addr global i8, align 1
@ath_pci_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1024, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WOW is enabled, bypassing PCI suspend\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ath_pci_suspend\00", [16 x i8] zeroinitializer }, align 32
@ath_pci_suspend._entry_ptr = internal global ptr @ath_pci_suspend._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"ath_pci_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1077, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1087, i32 9 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"ath_pci_id_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 26, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"ath9k_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1064, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 901, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 940, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 947, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 963, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 965, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 975, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"ath_pci_bus_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 879, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 983, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 991, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 850, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 875, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath9k/pci.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1024, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @ath_pci_probe._entry, ptr @ath_pci_probe._entry.12, ptr @ath_pci_probe._entry.15, ptr @ath_pci_probe._entry.18, ptr @ath_pci_probe._entry.21, ptr @ath_pci_probe._entry.24, ptr @ath_pci_probe._entry.4, ptr @ath_pci_probe._entry.9, ptr @ath_pci_probe._entry_ptr, ptr @ath_pci_probe._entry_ptr.11, ptr @ath_pci_probe._entry_ptr.14, ptr @ath_pci_probe._entry_ptr.17, ptr @ath_pci_probe._entry_ptr.20, ptr @ath_pci_probe._entry_ptr.23, ptr @ath_pci_probe._entry_ptr.27, ptr @ath_pci_probe._entry_ptr.8, ptr @ath_pci_suspend._entry, ptr @ath_pci_suspend._entry_ptr, ptr @ath_pci_driver, ptr @.str, ptr @ath_pci_id_table, ptr @ath9k_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @ath_pci_bus_ops, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_id_table to i32), i32 4864, i32 6080, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_bus_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_pci_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_pci_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ath_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_pci_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @ath_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %csz = alloca i8, align 1
  %val = alloca i32, align 4
  %hw_name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %csz) #4
  %0 = ptrtoint ptr %csz to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %csz, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hw_name) #4
  %2 = call ptr @memset(ptr %hw_name, i32 255, i32 64)
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #4
  %call6 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 12, ptr noundef nonnull %csz) #4
  %3 = ptrtoint ptr %csz to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %csz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then8, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %csz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %csz, align 1
  %call9 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 12, i8 noundef zeroext 32) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %call11 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 13, i8 noundef zeroext -88) #4
  call void @pci_set_master(ptr noundef %pdev) #4
  %call12 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 64, ptr noundef nonnull %val) #4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and = and i32 %7, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13.not = icmp eq i32 %and, 0
  br i1 %cmp13.not, label %if.end10.if.end18_crit_edge, label %if.then15

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %and16 = and i32 %7, -65281
  %call17 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 64, i32 noundef %and16) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end10.if.end18_crit_edge
  %call19 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  call void @ath9k_fill_chanctx_ops() #4
  %call.i150 = call ptr @ieee80211_alloc_hw_nm(i32 noundef 13072, ptr noundef nonnull @ath9k_ops, ptr noundef null) #4
  %tobool28.not = icmp eq ptr %call.i150, null
  br i1 %tobool28.not, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i150, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56, i32 1
  %10 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i150, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i150, i32 0, i32 3
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i150, ptr %13, align 8
  %dev38 = getelementptr inbounds %struct.ath_softc, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %dev38 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %dev38, align 4
  %call39 = call ptr @pcim_iomap_table(ptr noundef %pdev) #4
  %16 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call39, align 4
  %mem = getelementptr inbounds %struct.ath_softc, ptr %13, i32 0, i32 8
  %18 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %mem, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %19 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %driver_data, align 4
  %driver_data40 = getelementptr inbounds %struct.ath_softc, ptr %13, i32 0, i32 26
  %21 = ptrtoint ptr %driver_data40 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %driver_data40, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath9k_use_msi to i32))
  %22 = load i32, ptr @ath9k_use_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool41.not = icmp eq i32 %22, 0
  br i1 %tobool41.not, label %if.end34.if.end63_crit_edge, label %if.then42

if.end34.if.end63_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %call43 = call i32 @pci_enable_msi(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 0
  %.str.13..str.16 = select i1 %cmp44, ptr @.str.13, ptr @.str.16
  %. = select i1 %cmp44, i32 0, i32 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.13..str.16) #7
  br label %if.end63

if.end63:                                         ; preds = %if.then42, %if.end34.if.end63_crit_edge
  %.sink156 = phi i32 [ 128, %if.end34.if.end63_crit_edge ], [ %., %if.then42 ]
  %tobool57154 = phi i1 [ false, %if.end34.if.end63_crit_edge ], [ %cmp44, %if.then42 ]
  %irq61 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %23 = ptrtoint ptr %irq61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq61, align 4
  %call.i152 = call i32 @request_threaded_irq(i32 noundef %24, ptr noundef nonnull @ath_isr, ptr noundef null, i32 noundef %.sink156, ptr noundef nonnull @.str, ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool64.not = icmp eq i32 %call.i152, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  br label %err_irq

if.end70:                                         ; preds = %if.end63
  %irq71 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %25 = ptrtoint ptr %irq71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq71, align 4
  %irq72 = getelementptr inbounds %struct.ath_softc, ptr %13, i32 0, i32 9
  %27 = ptrtoint ptr %irq72 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %irq72, align 4
  %device = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %device, align 4
  %conv73 = trunc i32 %29 to i16
  %call74 = call i32 @ath9k_init_device(i16 noundef zeroext %conv73, ptr noundef %13, ptr noundef nonnull @ath_pci_bus_ops) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end81, label %do.end79

do.end79:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #7
  %30 = ptrtoint ptr %irq72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq72, align 4
  %call94 = call ptr @free_irq(i32 noundef %31, ptr noundef %13) #4
  br label %err_irq

if.end81:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %13, i32 0, i32 7
  %32 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc_ah, align 4
  %msi_enabled83 = getelementptr inbounds %struct.ath_hw, ptr %33, i32 0, i32 140
  %frombool = zext i1 %tobool57154 to i8
  %34 = ptrtoint ptr %msi_enabled83 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool, ptr %msi_enabled83, align 1
  %35 = load ptr, ptr %sc_ah, align 4
  %msi_reg = getelementptr inbounds %struct.ath_hw, ptr %35, i32 0, i32 142
  %36 = ptrtoint ptr %msi_reg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %msi_reg, align 4
  %37 = load ptr, ptr %sc_ah, align 4
  call void @ath9k_hw_name(ptr noundef %37, ptr noundef nonnull %hw_name, i32 noundef 64) #4
  %38 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy.i, align 8
  %dev89 = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56
  %40 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mem, align 8
  %42 = ptrtoint ptr %41 to i32
  %43 = ptrtoint ptr %irq71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq71, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev89, ptr noundef nonnull @.str.25, ptr noundef nonnull %hw_name, i32 noundef %42, i32 noundef %44) #7
  br label %cleanup

err_irq:                                          ; preds = %do.end79, %do.end68
  %ret.1 = phi i32 [ %call.i152, %do.end68 ], [ %call74, %do.end79 ]
  call void @ieee80211_free_hw(ptr noundef nonnull %call.i150) #4
  br label %cleanup

cleanup:                                          ; preds = %err_irq, %if.end81, %do.end32, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -19, %do.end24 ], [ %ret.1, %err_irq ], [ 0, %if.end81 ], [ -12, %do.end32 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hw_name) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %csz) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath_pci_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @is_ath9k_unloaded to i32))
  %4 = load i8, ptr @is_ath9k_unloaded, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc_ah, align 4
  %ah_flags = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ah_flags, align 4
  %or = or i32 %8, 2
  store i32 %or, ptr %ah_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ath9k_deinit_device(ptr noundef %3) #4
  %irq = getelementptr inbounds %struct.ath_softc, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %3) #4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  tail call void @ieee80211_free_hw(ptr noundef %12) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_fill_chanctx_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_isr(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_init_device(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath_pci_read_cachesize(ptr nocapture noundef readonly %common, ptr nocapture noundef writeonly %csz) #0 align 64 {
entry:
  %u8tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #4
  %2 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %u8tmp, align 1, !annotation !65
  %dev = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -136
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 12, ptr noundef nonnull %u8tmp) #4
  %5 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %u8tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  %narrow = select i1 %cmp, i8 8, i8 %6
  %spec.select = zext i8 %narrow to i32
  %7 = ptrtoint ptr %csz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %csz, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ath_pci_eeprom_read(ptr nocapture noundef readonly %common, i32 noundef %off, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %ops = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 24
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %shl = shl i32 %off, 2
  %add = add i32 %shl, 8192
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %add) #4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %7)
  %cmp = icmp eq i32 %7, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %7)
  %cmp4 = icmp ugt i32 %7, 447
  %cond = select i1 %cmp4, i32 16516, i32 16508
  %cond5 = select i1 %cmp, i32 16584, i32 %cond
  %call6 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %1, i32 noundef %cond5, i32 noundef 327680, i32 noundef 0, i32 noundef 100000) #4
  br i1 %call6, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %13)
  %cmp11 = icmp eq i32 %13, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %13)
  %cmp16 = icmp ugt i32 %13, 447
  %cond17 = select i1 %cmp16, i32 16516, i32 16508
  %cond19 = select i1 %cmp11, i32 16584, i32 %cond17
  %call20 = tail call i32 %11(ptr noundef %1, i32 noundef %cond19) #4
  %conv = trunc i32 %call20 to i16
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath_pci_aspm_init(ptr noundef %common) #0 align 64 {
entry:
  %aspm = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %dev = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %aspm) #4
  %6 = ptrtoint ptr %aspm to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %aspm, align 2, !annotation !65
  %is_pciexpress = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %is_pciexpress to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_pciexpress, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus = getelementptr i8, ptr %5, i32 -128
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self, align 4
  %tobool1.not = icmp eq ptr %12, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %btcoex_hw.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 72
  %13 = ptrtoint ptr %btcoex_hw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %btcoex_hw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end3.if.end8_crit_edge, label %land.lhs.true

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end3
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %16)
  %cmp4 = icmp eq i32 %16, 192
  br i1 %cmp4, label %if.then5, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %add.ptr, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext 0) #4
  %call.i40 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef nonnull %12, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext 0) #4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.26, ptr noundef %common, ptr noundef nonnull @.str.28) #4
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  %macVersion10 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %macVersion10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %macVersion10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %18)
  %cmp11 = icmp eq i32 %18, 640
  br i1 %cmp11, label %if.then12, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %aspm_l1_fix = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 5, i32 18
  %call13 = tail call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 1804, ptr noundef %aspm_l1_fix) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  %call15 = call i32 @pcie_capability_read_word(ptr noundef nonnull %12, i32 noundef 16, ptr noundef nonnull %aspm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true17:                                  ; preds = %if.end14
  %19 = ptrtoint ptr %aspm to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %aspm, align 2
  %21 = and i16 %20, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool18.not = icmp eq i16 %21, 0
  br i1 %tobool18.not, label %land.lhs.true17.cleanup_crit_edge, label %ath9k_hw_configpcipowersave.exit

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ath9k_hw_configpcipowersave.exit:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  %aspm_enabled = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 14
  %22 = ptrtoint ptr %aspm_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %aspm_enabled, align 1
  %ops.i.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 63
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  call void %24(ptr noundef %3, i1 noundef zeroext false) #4
  %25 = ptrtoint ptr %aspm to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %aspm, align 2
  %conv20 = zext i16 %26 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.26, ptr noundef %common, ptr noundef nonnull @.str.29, i32 noundef %conv20) #4
  br label %cleanup

cleanup:                                          ; preds = %ath9k_hw_configpcipowersave.exit, %land.lhs.true17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %aspm) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_deinit_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath_pci_suspend(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_ah, align 4
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %op_flags, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.30) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath9k_stop_btcoex(ptr noundef %3) #4
  %9 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc_ah, align 4
  %call4 = tail call zeroext i1 @ath9k_hw_disable(ptr noundef %10) #4
  %sleep_timer = getelementptr inbounds %struct.ath_softc, ptr %3, i32 0, i32 47
  %call5 = tail call i32 @del_timer_sync(ptr noundef %sleep_timer) #4
  %11 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sc_ah, align 4
  %call7 = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %12, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath_pci_resume(ptr noundef %device) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %device, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !65
  %call2 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 64, ptr noundef nonnull %val) #4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and3 = and i32 %8, -65281
  %call4 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 64, i32 noundef %and3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 3
  call void @ath_pci_aspm_init(ptr noundef %common.i)
  %reset_power_on = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 26
  %9 = ptrtoint ptr %reset_power_on to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %reset_power_on, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_stop_btcoex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_setpower(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 1087, i32 9}
!2 = !{ptr @ath_pci_driver, !3, !"ath_pci_driver", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 1077, i32 26}
!4 = !{ptr @ath_pci_id_table, !5, !"ath_pci_id_table", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 26, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 901, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ath_pci_probe._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @ath_pci_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 940, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ath_pci_probe._entry.4, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @ath_pci_probe._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 947, i32 3}
!20 = !{ptr @ath_pci_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ath_pci_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 963, i32 4}
!24 = !{ptr @ath_pci_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ath_pci_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 965, i32 4}
!28 = !{ptr @ath_pci_probe._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ath_pci_probe._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 975, i32 3}
!32 = !{ptr @ath_pci_probe._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ath_pci_probe._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 983, i32 3}
!36 = !{ptr @ath_pci_probe._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ath_pci_probe._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 991, i32 2}
!40 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ath_pci_probe._entry.24, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ath_pci_probe._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ath_pci_bus_ops, !44, !"ath_pci_bus_ops", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 879, i32 33}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 850, i32 3}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 875, i32 3}
!49 = !{ptr @ath9k_pm_ops, !50, !"ath9k_pm_ops", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 1064, i32 8}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath9k/pci.c", i32 1024, i32 3}
!53 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ath_pci_suspend._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ath_pci_suspend._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i8 0, i8 2}
