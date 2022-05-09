; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/htc_drv_beacon.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath9k_tx_queue_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.wmi_event_swba = type <{ i64, i8 }>
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.131, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.131 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.132] }
%struct.anon.132 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.145 }
%union.anon.145 = type { %struct.anon.151, [16 x i8] }
%struct.anon.151 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ath9k_htc_vif = type { i8, i16, i8, i32, i64 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ath9k_beacon_state = type { i32, i32, i32, i32, i16, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to update beacon queue %u!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Beacon stuck, HW reset\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Resuming beacon xmit after %u misses\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Added interface at beacon slot: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Removed interface at beacon slot: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tsfadjust is: %llu for bslot: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported beaconing mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Choose slot: %d, tsf: %llu, tsftu: %u, intval: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No free CAB slot\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to send CAB frame\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to send beacon, no free TX buffer\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Changing beacon interval of multiple AP interfaces !\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"HW in AP mode, cannot set STA beacon parameters\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Beacon already configured for a station interface\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 58, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 296, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 304, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 340, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 354, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 381, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 482, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 280, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 168, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 178, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 253, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 412, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 423, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [51 x i8] c"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 441, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_beaconq_config(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  %qi = alloca %struct.ath9k_tx_queue_info, align 4
  %qi_be = alloca %struct.ath9k_tx_queue_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ah1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi) #6
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi_be) #6
  %2 = call ptr @memset(ptr %qi, i32 0, i32 60)
  %3 = call ptr @memset(ptr %qi_be, i32 0, i32 60)
  %beaconq = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 38, i32 3
  %4 = ptrtoint ptr %beaconq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %beaconq, align 4
  %call = call zeroext i1 @ath9k_hw_get_txq_props(ptr noundef %1, i32 noundef %5, ptr noundef nonnull %qi) #6
  %6 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah1, align 4
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opmode, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %entry.if.end24_crit_edge [
    i32 3, label %entry.if.then_crit_edge
    i32 7, label %entry.if.then_crit_edge51
    i32 1, label %if.then9
  ]

entry.if.then_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge51
  %tqi_aifs = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 5
  %11 = ptrtoint ptr %tqi_aifs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %tqi_aifs, align 4
  %tqi_cwmin = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 6
  %12 = ptrtoint ptr %tqi_cwmin to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tqi_cwmin, align 4
  br label %if.end24.sink.split

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 57, i32 2
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %call10 = call zeroext i1 @ath9k_hw_get_txq_props(ptr noundef %1, i32 noundef %14, ptr noundef nonnull %qi_be) #6
  %tqi_aifs11 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi_be, i32 0, i32 5
  %15 = ptrtoint ptr %tqi_aifs11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tqi_aifs11, align 4
  %tqi_aifs12 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 5
  %17 = ptrtoint ptr %tqi_aifs12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tqi_aifs12, align 4
  %slottime = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 66
  %18 = ptrtoint ptr %slottime to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slottime, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %19)
  %cmp13 = icmp eq i32 %19, 20
  %tqi_cwmin15 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi_be, i32 0, i32 6
  %20 = ptrtoint ptr %tqi_cwmin15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tqi_cwmin15, align 4
  %. = select i1 %cmp13, i32 1, i32 2
  %mul19 = shl i32 %21, %.
  %22 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 6
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul19, ptr %22, align 4
  %tqi_cwmax21 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi_be, i32 0, i32 7
  %24 = ptrtoint ptr %tqi_cwmax21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tqi_cwmax21, align 4
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.then9, %if.then
  %.sink50 = phi i32 [ %25, %if.then9 ], [ 0, %if.then ]
  %tqi_cwmax22 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 7
  %26 = ptrtoint ptr %tqi_cwmax22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink50, ptr %tqi_cwmax22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %entry.if.end24_crit_edge
  %27 = ptrtoint ptr %beaconq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %beaconq, align 4
  %call27 = call zeroext i1 @ath9k_hw_set_txq_props(ptr noundef %1, i32 noundef %28, ptr noundef nonnull %qi) #6
  br i1 %call27, label %if.else32, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %beaconq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %beaconq, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %30) #6
  br label %if.end36

if.else32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %beaconq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %beaconq, align 4
  %call35 = call zeroext i1 @ath9k_hw_resettxqueue(ptr noundef %1, i32 noundef %32) #6
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then28
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi_be) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_get_txq_props(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_set_txq_props(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_resettxqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_beaconep(ptr nocapture noundef readnone %drv_priv, ptr noundef %skb, i32 noundef %ep_id, i1 noundef zeroext %txok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_swba(ptr noundef %priv, ptr nocapture noundef readonly %swba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %beacon_pending = getelementptr inbounds %struct.wmi_event_swba, ptr %swba, i32 0, i32 1
  %2 = ptrtoint ptr %beacon_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %beacon_pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  %bmisscnt11 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 38, i32 2
  %4 = ptrtoint ptr %bmisscnt11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bmisscnt11, align 4
  br i1 %cmp.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %inc = add i32 %5, 1
  %6 = ptrtoint ptr %bmisscnt11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %bmisscnt11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %cmp4 = icmp ugt i32 %inc, 10
  br i1 %cmp4, label %do.body, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.then
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_mask, align 4
  %and = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then7

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.3) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body.do.end_crit_edge
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %fatal_work = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 46
  tail call void @ieee80211_queue_work(ptr noundef %10, ptr noundef %fatal_work) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %if.end9.if.end26_crit_edge, label %do.body14

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.body14:                                        ; preds = %if.end9
  %debug_mask15 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %debug_mask15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_mask15, align 4
  %and16 = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body14.do.end23_crit_edge, label %if.then18

do.body14.do.end23_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.4, i32 noundef %5) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body14.do.end23_crit_edge
  %13 = ptrtoint ptr %bmisscnt11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bmisscnt11, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.end9.if.end26_crit_edge
  %14 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ah, align 4
  %beacon_interval.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 1
  %16 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %beacon_interval.i, align 4
  %18 = ptrtoint ptr %swba to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %swba, align 1
  %sh.diff.i = lshr i64 %19, 10
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %shl.i = and i32 %tr.sh.diff.i, -4194304
  %conv3.i = trunc i64 %19 to i32
  %shr4.i = lshr i32 %conv3.i, 10
  %or.i = or i32 %shl.i, %shr4.i
  %conv5.i = and i32 %17, 65535
  %rem.i = urem i32 %or.i, %conv5.i
  %mul.i = shl nuw nsw i32 %rem.i, 1
  %div.i = udiv i32 %mul.i, %conv5.i
  %sub7.i = sub nsw i32 1, %div.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %15, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end26.ath9k_htc_choose_bslot.exit_crit_edge, label %if.then.i

if.end26.ath9k_htc_choose_bslot.exit_crit_edge:   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_htc_choose_bslot.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i, ptr noundef nonnull @.str.9, i32 noundef %sub7.i, i64 noundef %19, i32 noundef %or.i, i32 noundef %conv5.i) #6
  br label %ath9k_htc_choose_bslot.exit

ath9k_htc_choose_bslot.exit:                      ; preds = %if.then.i, %if.end26.ath9k_htc_choose_bslot.exit_crit_edge
  %beacon_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %beacon_lock) #6
  %arrayidx = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 38, i32 1, i32 %sub7.i
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %cmp29 = icmp eq ptr %23, null
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #6
  br i1 %cmp29, label %ath9k_htc_choose_bslot.exit.cleanup_crit_edge, label %if.end33

ath9k_htc_choose_bslot.exit.cleanup_crit_edge:    ; preds = %ath9k_htc_choose_bslot.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %ath9k_htc_choose_bslot.exit
  %24 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ah, align 4
  %common.i.i57 = getelementptr inbounds %struct.ath_hw, ptr %25, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %beacon_lock) #6
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %hw.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %28 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw.i, align 4
  %call1.i = tail call ptr @ieee80211_get_buffered_bc(ptr noundef %29, ptr noundef %27) #6
  %tobool.not70.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not70.i, label %if.end33.ath9k_htc_send_buffered.exit_crit_edge, label %while.body.lr.ph.i

if.end33.ath9k_htc_send_buffered.exit_crit_edge:  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_htc_send_buffered.exit

while.body.lr.ph.i:                               ; preds = %if.end33
  %debug_mask24.i = getelementptr inbounds %struct.ath_hw, ptr %25, i32 0, i32 3, i32 3
  %tx_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 11
  %queued_cnt.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %next.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %skb.071.i = phi ptr [ %call1.i, %while.body.lr.ph.i ], [ %call36.i, %next.i.while.body.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.071.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 2
  %call2.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %33) #9
  %and.i58 = and i32 %call2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool3.not.i = icmp eq i32 %and.i58, 0
  br i1 %tobool3.not.i, label %while.body.i.if.end10.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end10.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.071.i, i32 0, i32 6
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %call2.i)
  %cmp.i = icmp ugt i32 %35, %call2.i
  br i1 %cmp.i, label %if.then.i59, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i59:                                      ; preds = %land.lhs.true.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.071.i, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %and.i58)
  %cmp5.i = icmp ult i32 %sub.ptr.sub.i.i, %and.i58
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i

if.then6.i:                                       ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.071.i, i32 noundef 1) #6
  br label %next.i

if.end.i:                                         ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call ptr @skb_push(ptr noundef nonnull %skb.071.i, i32 noundef %and.i58) #6
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 %and.i58
  %40 = call ptr @memmove(ptr %39, ptr %add.ptr.i, i32 %call2.i)
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i, %land.lhs.true.i.if.end10.i_crit_edge, %while.body.i.if.end10.i_crit_edge
  %call11.i = tail call i32 @ath9k_htc_tx_get_slot(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.body.i, label %if.end18.i

do.body.i:                                        ; preds = %if.end10.i
  %41 = ptrtoint ptr %debug_mask24.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug_mask24.i, align 4
  %and14.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then16.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i57, ptr noundef nonnull @.str.10) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %do.body.i.do.end.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.071.i, i32 noundef 1) #6
  br label %next.i

if.end18.i:                                       ; preds = %if.end10.i
  %conv.i = trunc i32 %call11.i to i8
  %call19.i = tail call i32 @ath9k_htc_tx_start(ptr noundef %priv, ptr noundef null, ptr noundef nonnull %skb.071.i, i8 noundef zeroext %conv.i, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.not.i = icmp eq i32 %call19.i, 0
  br i1 %cmp20.not.i, label %if.else.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end18.i
  tail call void @ath9k_htc_tx_clear_slot(ptr noundef %priv, i32 noundef %call11.i) #6
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.071.i, i32 noundef 1) #6
  %43 = ptrtoint ptr %debug_mask24.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debug_mask24.i, align 4
  %and25.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.then22.i.next.i_crit_edge, label %if.then27.i

if.then22.i.next.i_crit_edge:                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %next.i

if.then27.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i57, ptr noundef nonnull @.str.11) #6
  br label %next.i

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #6
  %45 = ptrtoint ptr %queued_cnt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %queued_cnt.i, align 4
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %queued_cnt.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #6
  br label %next.i

next.i:                                           ; preds = %if.else.i, %if.then27.i, %if.then22.i.next.i_crit_edge, %do.end.i, %if.then6.i
  %47 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw.i, align 4
  %call36.i = tail call ptr @ieee80211_get_buffered_bc(ptr noundef %48, ptr noundef %27) #6
  %tobool.not.i60 = icmp eq ptr %call36.i, null
  br i1 %tobool.not.i60, label %next.i.ath9k_htc_send_buffered.exit_crit_edge, label %next.i.while.body.i_crit_edge

next.i.while.body.i_crit_edge:                    ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

next.i.ath9k_htc_send_buffered.exit_crit_edge:    ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_htc_send_buffered.exit

ath9k_htc_send_buffered.exit:                     ; preds = %next.i.ath9k_htc_send_buffered.exit_crit_edge, %if.end33.ath9k_htc_send_buffered.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #6
  %49 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ah, align 4
  %common.i.i62 = getelementptr inbounds %struct.ath_hw, ptr %50, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %beacon_lock) #6
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %52, i32 0, i32 19
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %50, i32 0, i32 3, i32 5
  %53 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %op_flags.i, align 4
  %55 = and i32 %54, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i65 = icmp eq i32 %55, 0
  br i1 %tobool.not.i65, label %if.end.i68, label %if.then.i66, !prof !39

if.then.i66:                                      ; preds = %ath9k_htc_send_buffered.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #6
  br label %cleanup

if.end.i68:                                       ; preds = %ath9k_htc_send_buffered.exit
  %56 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw.i, align 4
  %call.i.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %57, ptr noundef %52, ptr noundef null, ptr noundef null) #6
  %tobool7.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end10.i71

if.then8.i:                                       ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #6
  br label %cleanup

if.end10.i71:                                     ; preds = %if.end.i68
  %data.i69 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %58 = ptrtoint ptr %data.i69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i69, align 4
  %tsfadjust.i = getelementptr inbounds %struct.ieee80211_vif, ptr %52, i32 1, i32 1, i32 4
  %60 = ptrtoint ptr %tsfadjust.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %tsfadjust.i, align 8
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %59, i32 0, i32 6
  %62 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %61, ptr %u.i, align 2
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cb.i.i, align 8
  %and.i70 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool12.not.i = icmp eq i32 %and.i70, 0
  br i1 %tobool12.not.i, label %if.end10.i71.if.end24.i_crit_edge, label %if.then13.i

if.end10.i71.if.end24.i_crit_edge:                ; preds = %if.end10.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then13.i:                                      ; preds = %if.end10.i71
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %data.i69 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i69, align 4
  %seq_no.i = getelementptr inbounds %struct.ath9k_htc_vif, ptr %drv_priv.i, i32 0, i32 1
  %67 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %seq_no.i, align 2
  %add.i = add i16 %68, 16
  store i16 %add.i, ptr %seq_no.i, align 2
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %66, i32 0, i32 5
  %69 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %seq_ctrl.i, align 2
  %71 = and i16 %70, 3840
  store i16 %71, ptr %seq_ctrl.i, align 2
  %72 = load i16, ptr %seq_no.i, align 2
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #6
  %or77.i = or i16 %73, %71
  %74 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %or77.i, ptr %seq_ctrl.i, align 2
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then13.i, %if.end10.i71.if.end24.i_crit_edge
  %75 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 216172782113783808, ptr %75, align 4
  %beacon_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 8
  %77 = ptrtoint ptr %beacon_ep.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %beacon_ep.i, align 4
  %conv26.i = trunc i32 %78 to i8
  %epid.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 9
  %79 = ptrtoint ptr %epid.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv26.i, ptr %epid.i, align 1
  %80 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %drv_priv.i, align 8
  %call27.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 4) #6
  %82 = ptrtoint ptr %call27.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %call27.i, align 1
  %beacon_hdr.sroa.6.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call27.i, i32 1
  %83 = ptrtoint ptr %beacon_hdr.sroa.6.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %beacon_hdr.sroa.6.0.tx_fhdr.0..sroa_idx.i, align 1
  %beacon_hdr.sroa.7.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call27.i, i32 2
  %84 = ptrtoint ptr %beacon_hdr.sroa.7.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 0, ptr %beacon_hdr.sroa.7.0.tx_fhdr.0..sroa_idx.i, align 1
  %htc.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 3
  %85 = ptrtoint ptr %htc.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %htc.i, align 4
  %call28.i = tail call i32 @htc_send(ptr noundef %86, ptr noundef nonnull %call.i.i) #6
  %87 = zext i32 %call28.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call28.i, label %if.end24.i.if.end38.i_crit_edge [
    i32 0, label %if.end24.i.if.end39.i_crit_edge
    i32 -12, label %do.body.i73
  ]

if.end24.i.if.end39.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.end24.i.if.end38.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

do.body.i73:                                      ; preds = %if.end24.i
  %debug_mask.i72 = getelementptr inbounds %struct.ath_hw, ptr %50, i32 0, i32 3, i32 3
  %88 = ptrtoint ptr %debug_mask.i72 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %debug_mask.i72, align 4
  %and34.i = and i32 %89, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %do.body.i73.if.end38.i_crit_edge, label %if.then36.i

do.body.i73.if.end38.i_crit_edge:                 ; preds = %do.body.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

if.then36.i:                                      ; preds = %do.body.i73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i62, ptr noundef nonnull @.str.12) #6
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i, %do.body.i73.if.end38.i_crit_edge, %if.end24.i.if.end38.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #6
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end38.i, %if.end24.i.if.end39.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #6
  %csa_vif.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 63
  %90 = ptrtoint ptr %csa_vif.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %csa_vif.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %91, null
  br i1 %tobool.not.i.i, label %if.end39.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end39.i
  %csa_active.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %csa_active.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %csa_active.i.i, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool1.not.i.i = icmp eq i8 %93, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %call.i78.i = tail call zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef nonnull %91) #6
  br i1 %call.i78.i, label %if.end3.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ieee80211_csa_finish(ptr noundef nonnull %91) #6
  %94 = ptrtoint ptr %csa_vif.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %csa_vif.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i.i, %if.end.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %if.then8.i, %if.then.i66, %ath9k_htc_choose_bslot.exit.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_assign_bslot(ptr noundef %priv, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %beacon_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %beacon_lock) #6
  %arrayidx = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 38, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.023.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ]
  %bslot2 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %4 = ptrtoint ptr %bslot2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.023.lcssa, ptr %bslot2, align 8
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 38, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %cmp1.1 = icmp eq ptr %6, null
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then
  %bslot5 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %7 = ptrtoint ptr %bslot5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bslot5, align 8
  %arrayidx6 = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 38, i32 1, i32 %8
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vif, ptr %arrayidx6, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #6
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.then8

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %bslot5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bslot5, align 8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %13) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %for.end.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_remove_bslot(ptr noundef %priv, ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %beacon_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %beacon_lock) #6
  %bslot1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %2 = ptrtoint ptr %bslot1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bslot1, align 8
  %arrayidx = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 38, i32 1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #6
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %bslot1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bslot1, align 8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.6, i32 noundef %8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_set_tsfadjust(ptr nocapture noundef readonly %priv, ptr nocapture noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %bslot = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %2 = ptrtoint ptr %bslot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bslot, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %beacon_interval = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 1
  %4 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %beacon_interval, align 4
  %mul = mul i32 %5, %3
  %div = sdiv i32 %mul, 2
  %conv = sext i32 %div to i64
  %shl = shl nsw i64 %conv, 10
  %6 = tail call i64 @llvm.bswap.i64(i64 %shl)
  %tsfadjust2 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %7 = ptrtoint ptr %tsfadjust2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %tsfadjust2, align 8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.7, i64 noundef %conv, i32 noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_beacon_config(ptr noundef %priv, ptr nocapture noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %htc_imask.i.i = alloca i32, align 4
  %cmd_rsp.i.i = alloca i8, align 1
  %beacon_configured.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %cur_beacon_conf = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %beacon_configured.i) #6
  %opmode.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end13.i_crit_edge

entry.if.end13.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %entry
  %num_ap_vif.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 24
  %4 = ptrtoint ptr %num_ap_vif.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_ap_vif.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp3.i = icmp ugt i8 %5, 1
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp6.i = icmp eq i32 %7, 3
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true5.i.if.end13.i_crit_edge

land.lhs.true5.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true5.i
  %beacon_interval.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 1
  %8 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %beacon_interval.i, align 4
  %beacon_int.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %10 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %beacon_int.i, align 2
  %conv9.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv9.i)
  %cmp10.not.i = icmp eq i32 %9, %conv9.i
  br i1 %cmp10.not.i, label %land.lhs.true8.i.if.end13.i_crit_edge, label %do.body.i

land.lhs.true8.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

do.body.i:                                        ; preds = %land.lhs.true8.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.ath9k_htc_check_beacon_config.exit.thread_crit_edge, label %if.then12.i

do.body.i.ath9k_htc_check_beacon_config.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_htc_check_beacon_config.exit.thread

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.13) #6
  br label %ath9k_htc_check_beacon_config.exit.thread

if.end13.i:                                       ; preds = %land.lhs.true8.i.if.end13.i_crit_edge, %land.lhs.true5.i.if.end13.i_crit_edge, %land.lhs.true.i.if.end13.i_crit_edge, %entry.if.end13.i_crit_edge
  %num_ap_vif14.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 24
  %14 = ptrtoint ptr %num_ap_vif14.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_ap_vif14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not.i = icmp eq i8 %15, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end30.i_crit_edge, label %land.lhs.true17.i

if.end13.i.if.end30.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

land.lhs.true17.i:                                ; preds = %if.end13.i
  %16 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp19.not.i = icmp eq i32 %17, 3
  br i1 %cmp19.not.i, label %land.lhs.true17.i.if.end30.i_crit_edge, label %do.body22.i

land.lhs.true17.i.if.end30.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

do.body22.i:                                      ; preds = %land.lhs.true17.i
  %debug_mask23.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %debug_mask23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask23.i, align 4
  %and24.i = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %do.body22.i.ath9k_htc_check_beacon_config.exit.thread_crit_edge, label %if.then26.i

do.body22.i.ath9k_htc_check_beacon_config.exit.thread_crit_edge: ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_htc_check_beacon_config.exit.thread

if.then26.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.14) #6
  br label %ath9k_htc_check_beacon_config.exit.thread

if.end30.i:                                       ; preds = %land.lhs.true17.i.if.end30.i_crit_edge, %if.end13.i.if.end30.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp33.i = icmp eq i32 %3, 2
  br i1 %cmp33.i, label %land.lhs.true35.i, label %if.end30.i.if.end_crit_edge

if.end30.i.if.end_crit_edge:                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true35.i:                                ; preds = %if.end30.i
  %num_sta_vif.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 22
  %20 = ptrtoint ptr %num_sta_vif.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_sta_vif.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp37.i = icmp ugt i8 %21, 1
  br i1 %cmp37.i, label %land.lhs.true39.i, label %land.lhs.true35.i.if.end_crit_edge

land.lhs.true35.i.if.end_crit_edge:               ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true39.i:                                ; preds = %land.lhs.true35.i
  %22 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp41.i = icmp eq i32 %23, 2
  br i1 %cmp41.i, label %if.then43.i, label %land.lhs.true39.i.if.end_crit_edge

land.lhs.true39.i.if.end_crit_edge:               ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then43.i:                                      ; preds = %land.lhs.true39.i
  %24 = ptrtoint ptr %beacon_configured.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %beacon_configured.i, align 1
  %hw.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %26, i32 noundef 1, ptr noundef nonnull @ath9k_htc_beacon_iter, ptr noundef nonnull %beacon_configured.i) #6
  %27 = ptrtoint ptr %beacon_configured.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %beacon_configured.i, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool44.not.i = icmp eq i8 %28, 0
  br i1 %tobool44.not.i, label %if.then43.i.if.end_crit_edge, label %do.body46.i

if.then43.i.if.end_crit_edge:                     ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body46.i:                                      ; preds = %if.then43.i
  %debug_mask47.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %debug_mask47.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_mask47.i, align 4
  %and48.i = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %do.body46.i.ath9k_htc_check_beacon_config.exit.thread_crit_edge, label %if.then50.i

do.body46.i.ath9k_htc_check_beacon_config.exit.thread_crit_edge: ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_htc_check_beacon_config.exit.thread

if.then50.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.15) #6
  br label %ath9k_htc_check_beacon_config.exit.thread

ath9k_htc_check_beacon_config.exit.thread:        ; preds = %if.then50.i, %do.body46.i.ath9k_htc_check_beacon_config.exit.thread_crit_edge, %if.then26.i, %do.body22.i.ath9k_htc_check_beacon_config.exit.thread_crit_edge, %if.then12.i, %do.body.i.ath9k_htc_check_beacon_config.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %beacon_configured.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.then43.i.if.end_crit_edge, %land.lhs.true39.i.if.end_crit_edge, %land.lhs.true35.i.if.end_crit_edge, %if.end30.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %beacon_configured.i) #6
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %31 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %beacon_int, align 2
  %beacon_interval = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp = icmp eq i16 %32, 0
  %narrow = select i1 %cmp, i16 100, i16 %32
  %spec.select = zext i16 %narrow to i32
  %33 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select, ptr %beacon_interval, align 4
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %34 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dtim_period, align 8
  %conv8 = zext i8 %35 to i16
  %dtim_period9 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 2
  %36 = ptrtoint ptr %dtim_period9 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv8, ptr %dtim_period9, align 4
  %conv11 = mul i16 %narrow, 10
  %bmiss_timeout = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 3
  %37 = ptrtoint ptr %bmiss_timeout to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv11, ptr %bmiss_timeout, align 2
  %38 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vif, align 8
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %39, label %do.body [
    i32 2, label %sw.bb
    i32 1, label %sw.bb12
    i32 7, label %if.end.sw.bb13_crit_edge
    i32 3, label %if.end.sw.bb13_crit_edge40
  ]

if.end.sw.bb13_crit_edge40:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13

if.end.sw.bb13_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ath9k_htc_beacon_config_sta(ptr noundef %priv, ptr noundef %cur_beacon_conf)
  %beacon_configured = getelementptr inbounds %struct.ath9k_htc_vif, ptr %drv_priv, i32 0, i32 2
  %41 = ptrtoint ptr %beacon_configured to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %beacon_configured, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ah, align 4
  %imask.i = getelementptr inbounds %struct.ath_hw, ptr %43, i32 0, i32 36
  %44 = ptrtoint ptr %imask.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %imask.i, align 4
  call void @ath9k_cmn_beacon_config_adhoc(ptr noundef %43, ptr noundef %cur_beacon_conf) #6
  %ibss_creator.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 6
  %45 = ptrtoint ptr %ibss_creator.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ibss_creator.i, align 2, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.i = icmp ne i8 %46, 0
  call fastcc void @ath9k_htc_beacon_init(ptr noundef %priv, ptr noundef %cur_beacon_conf, i1 noundef zeroext %tobool.i) #6
  br label %cleanup

sw.bb13:                                          ; preds = %if.end.sw.bb13_crit_edge, %if.end.sw.bb13_crit_edge40
  %47 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ah, align 4
  %imask.i38 = getelementptr inbounds %struct.ath_hw, ptr %48, i32 0, i32 36
  %49 = ptrtoint ptr %imask.i38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %imask.i38, align 4
  call void @ath9k_cmn_beacon_config_ap(ptr noundef %48, ptr noundef %cur_beacon_conf, i32 noundef 2) #6
  %50 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ah, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %htc_imask.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #6
  %52 = ptrtoint ptr %cmd_rsp.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %cmd_rsp.i.i, align 1, !annotation !41
  %intval.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 8
  %53 = ptrtoint ptr %intval.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %intval.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40959, i32 %54)
  %cmp.i.i = icmp ugt i32 %54, 40959
  %spec.select.i.i = select i1 %cmp.i.i, i32 40, i32 10
  %55 = getelementptr inbounds %struct.ath_hw, ptr %51, i32 0, i32 5, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %spec.select.i.i, ptr %55, align 4
  %wmi.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %57 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wmi.i.i, align 4
  %call.i.i = call i32 @ath9k_wmi_cmd(ptr noundef %58, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp.i.i, i32 noundef 1, i32 noundef 200) #6
  call void @ath9k_htc_beaconq_config(ptr noundef %priv) #6
  %nexttbtt.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 7
  %59 = ptrtoint ptr %nexttbtt.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nexttbtt.i.i, align 4
  %61 = ptrtoint ptr %intval.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %intval.i.i, align 4
  call void @ath9k_hw_beaconinit(ptr noundef %51, i32 noundef %60, i32 noundef %62) #6
  %bmisscnt.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 38, i32 2
  %63 = ptrtoint ptr %bmisscnt.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %bmisscnt.i.i, align 4
  %imask.i.i = getelementptr inbounds %struct.ath_hw, ptr %51, i32 0, i32 36
  %64 = ptrtoint ptr %imask.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %imask.i.i, align 4
  %66 = ptrtoint ptr %htc_imask.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %htc_imask.i.i, align 4
  %67 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wmi.i.i, align 4
  %call9.i.i = call i32 @ath9k_wmi_cmd(ptr noundef %68, i32 noundef 5, ptr noundef nonnull %htc_imask.i.i, i32 noundef 4, ptr noundef nonnull %cmd_rsp.i.i, i32 noundef 1, i32 noundef 200) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %htc_imask.i.i) #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %69 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %debug_mask, align 4
  %and = and i32 %70, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then14

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body.cleanup_crit_edge, %sw.bb13, %sw.bb12, %sw.bb, %ath9k_htc_check_beacon_config.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_htc_beacon_config_sta(ptr nocapture noundef readonly %priv, ptr noundef %bss_conf) unnamed_addr #0 align 64 {
entry:
  %bs = alloca %struct.ath9k_beacon_state, align 4
  %htc_imask = alloca i32, align 4
  %cmd_rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bs) #6
  %0 = call ptr @memset(ptr %bs, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %htc_imask) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #6
  %1 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !41
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %call = call i32 @ath9k_cmn_beacon_config_sta(ptr noundef %3, ptr noundef %bss_conf, ptr noundef nonnull %bs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wmi, align 4
  %call1 = call i32 @ath9k_wmi_cmd(ptr noundef %5, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #6
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  call void @ath9k_hw_set_sta_beacon_timers(ptr noundef %7, ptr noundef nonnull %bs) #6
  %8 = ptrtoint ptr %htc_imask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 262144, ptr %htc_imask, align 4
  %9 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wmi, align 4
  %call5 = call i32 @ath9k_wmi_cmd(ptr noundef %10, i32 noundef 5, ptr noundef nonnull %htc_imask, i32 noundef 4, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %htc_imask) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_beacon_reconfig(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %htc_imask.i.i = alloca i32, align 4
  %cmd_rsp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %cur_beacon_conf = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opmode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %3, label %do.body [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
    i32 7, label %entry.sw.bb3_crit_edge
    i32 3, label %entry.sw.bb3_crit_edge15
  ]

entry.sw.bb3_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ath9k_htc_beacon_config_sta(ptr noundef %priv, ptr noundef %cur_beacon_conf)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %imask.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 36
  %5 = ptrtoint ptr %imask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %imask.i, align 4
  tail call void @ath9k_cmn_beacon_config_adhoc(ptr noundef %1, ptr noundef %cur_beacon_conf) #6
  %ibss_creator.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 6
  %6 = ptrtoint ptr %ibss_creator.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ibss_creator.i, align 2, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i = icmp ne i8 %7, 0
  tail call fastcc void @ath9k_htc_beacon_init(ptr noundef %priv, ptr noundef %cur_beacon_conf, i1 noundef zeroext %tobool.i) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge15
  %imask.i14 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %imask.i14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %imask.i14, align 4
  tail call void @ath9k_cmn_beacon_config_ap(ptr noundef %1, ptr noundef %cur_beacon_conf, i32 noundef 2) #6
  %9 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %htc_imask.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #6
  %11 = ptrtoint ptr %cmd_rsp.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %cmd_rsp.i.i, align 1, !annotation !41
  %intval.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 8
  %12 = ptrtoint ptr %intval.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intval.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40959, i32 %13)
  %cmp.i.i = icmp ugt i32 %13, 40959
  %spec.select.i.i = select i1 %cmp.i.i, i32 40, i32 10
  %14 = getelementptr inbounds %struct.ath_hw, ptr %10, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i.i, ptr %14, align 4
  %wmi.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %16 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wmi.i.i, align 4
  %call.i.i = call i32 @ath9k_wmi_cmd(ptr noundef %17, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp.i.i, i32 noundef 1, i32 noundef 200) #6
  call void @ath9k_htc_beaconq_config(ptr noundef %priv) #6
  %nexttbtt.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 37, i32 7
  %18 = ptrtoint ptr %nexttbtt.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nexttbtt.i.i, align 4
  %20 = ptrtoint ptr %intval.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intval.i.i, align 4
  call void @ath9k_hw_beaconinit(ptr noundef %10, i32 noundef %19, i32 noundef %21) #6
  %bmisscnt.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 38, i32 2
  %22 = ptrtoint ptr %bmisscnt.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %bmisscnt.i.i, align 4
  %imask.i.i = getelementptr inbounds %struct.ath_hw, ptr %10, i32 0, i32 36
  %23 = ptrtoint ptr %imask.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %imask.i.i, align 4
  %25 = ptrtoint ptr %htc_imask.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %htc_imask.i.i, align 4
  %26 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wmi.i.i, align 4
  %call9.i.i = call i32 @ath9k_wmi_cmd(ptr noundef %27, i32 noundef 5, ptr noundef nonnull %htc_imask.i.i, i32 noundef 4, ptr noundef nonnull %cmd_rsp.i.i, i32 noundef 1, i32 noundef 200) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %htc_imask.i.i) #6
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug_mask, align 4
  %and = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body.cleanup_crit_edge, %sw.bb3, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath9k_htc_csa_is_finished(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %csa_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 63
  %0 = ptrtoint ptr %csa_vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csa_vif, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %csa_active = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %csa_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %csa_active, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef nonnull %1) #6
  br i1 %call, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ieee80211_csa_finish(ptr noundef nonnull %1) #6
  %4 = ptrtoint ptr %csa_vif to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %csa_vif, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end3 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_csa_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_buffered_bc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_tx_get_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_tx_start(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_tx_clear_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @htc_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath9k_htc_beacon_iter(ptr nocapture noundef writeonly %data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %beacon_configured1 = getelementptr inbounds %struct.ath9k_htc_vif, ptr %drv_priv, i32 0, i32 2
  %2 = ptrtoint ptr %beacon_configured1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %beacon_configured1, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %data, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_cmn_beacon_config_sta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_wmi_cmd(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_sta_beacon_timers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_beacon_config_adhoc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_htc_beacon_init(ptr nocapture noundef %priv, ptr nocapture noundef readonly %conf, i1 noundef zeroext %reset_tsf) unnamed_addr #0 align 64 {
entry:
  %htc_imask = alloca i32, align 4
  %cmd_rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ah1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %htc_imask) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #6
  %2 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !41
  %intval = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 8
  %3 = ptrtoint ptr %intval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %intval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40959, i32 %4)
  %cmp = icmp ugt i32 %4, 40959
  %spec.select = select i1 %cmp, i32 40, i32 10
  %5 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 4
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %7 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wmi, align 4
  %call = call i32 @ath9k_wmi_cmd(ptr noundef %8, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #6
  br i1 %reset_tsf, label %if.then4, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @ath9k_hw_reset_tsf(ptr noundef %1) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %entry.if.end5_crit_edge
  call void @ath9k_htc_beaconq_config(ptr noundef %priv)
  %nexttbtt = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 7
  %9 = ptrtoint ptr %nexttbtt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nexttbtt, align 4
  %11 = ptrtoint ptr %intval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intval, align 4
  call void @ath9k_hw_beaconinit(ptr noundef %1, i32 noundef %10, i32 noundef %12) #6
  %bmisscnt = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 38, i32 2
  %13 = ptrtoint ptr %bmisscnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bmisscnt, align 4
  %imask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 36
  %14 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %imask, align 4
  %16 = ptrtoint ptr %htc_imask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %htc_imask, align 4
  %17 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wmi, align 4
  %call9 = call i32 @ath9k_wmi_cmd(ptr noundef %18, i32 noundef 5, ptr noundef nonnull %htc_imask, i32 noundef 4, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %htc_imask) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_reset_tsf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_beaconinit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_beacon_config_ap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 58, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 296, i32 4}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 304, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 340, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 354, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 381, i32 2}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 482, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 280, i32 2}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 168, i32 4}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 178, i32 4}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 253, i32 4}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 412, i32 3}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 423, i32 3}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_beacon.c", i32 441, i32 4}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i8 0, i8 2}
!41 = !{!"auto-init"}
