; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/mac80211-ops.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/mac80211-ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.atomic_t = type { i32 }
%struct.ath5k_hw = type { %struct.ath_common, ptr, ptr, i32, i16, ptr, %struct.mutex, ptr, [6 x %struct.ieee80211_supported_band], [314 x %struct.ieee80211_channel], [6 x [32 x %struct.ieee80211_rate]], [6 x [32 x i8]], i32, %struct.ath5k_dbg_info, ptr, ptr, i32, i32, [1 x i32], i32, i32, ptr, i16, i32, %struct.spinlock, i8, i8, [6 x i8], i32, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, %struct.tasklet_struct, %struct.ath5k_led, %struct.list_head, %struct.spinlock, i32, [10 x %struct.ath5k_txq], %struct.tasklet_struct, %struct.ath5k_led, %struct.ath5k_rfkill, %struct.spinlock, %struct.tasklet_struct, %struct.list_head, [4 x ptr], i16, i16, i16, i32, i32, i32, i32, i32, ptr, i8, i8, %struct.ath5k_statistics, %struct.ath5k_ani_state, %struct.tasklet_struct, %struct.delayed_work, %struct.survey_info, i32, ptr, i8, i8, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x [3 x i32]], i8, i8, i8, %struct.ath5k_capabilities, [10 x %struct.ath5k_txq_info], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.ath5k_gain, [8 x i8], %struct.anon.145, %struct.ath5k_nfcal_hist, %struct.ewma_beacon_rssi, i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ath5k_dbg_info = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath5k_txq = type { i32, ptr, %struct.list_head, %struct.spinlock, i8, i32, i32, i8, i32 }
%struct.ath5k_led = type { [32 x i8], ptr, %struct.led_classdev }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath5k_rfkill = type { i16, i8, %struct.tasklet_struct }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ath5k_statistics = type { [5 x i32], [5 x i32], i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath5k_ani_state = type { i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.ath_cycle_counters, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.141, i32 }
%union.anon.141 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath5k_capabilities = type { [1 x i32], %struct.anon.142, %struct.ath5k_eeprom_info, %struct.anon.144, i8, i8, i8 }
%struct.anon.142 = type { i16, i16, i16, i16 }
%struct.ath5k_eeprom_info = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x [11 x i16]], [3 x [4 x i16]], [3 x [4 x i16]], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i8], [3 x [4 x i8]], [3 x i8], [10 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [3 x i8], [10 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], i8, [32 x i8], [256 x %struct.ath5k_edge_power], [3 x i16], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, [5 x [2 x i16]], [3 x [3 x i32]] }
%struct.ath5k_chan_pcal_info = type { i16, i16, i16, %union.anon.143, ptr }
%union.anon.143 = type { %struct.ath5k_chan_pcal_info_rf2413 }
%struct.ath5k_chan_pcal_info_rf2413 = type { [4 x i8], [4 x i8], [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.ath5k_rate_pcal_info = type { i16, i16, i16, i16, i16 }
%struct.ath5k_edge_power = type { i16, i16, i8 }
%struct.anon.144 = type { i8 }
%struct.ath5k_txq_info = type { i32, i32, i16, i8, i16, i16, i32, i32, i32, i32 }
%struct.ath5k_gain = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.145 = type { [4 x [64 x i8]], [4 x [64 x i8]], [128 x i8], [32 x i16], i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i32 }
%struct.ath5k_nfcal_hist = type { i16, [8 x i16] }
%struct.ewma_beacon_rssi = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ath5k_vif = type { i8, i32, i32, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ath5k_vif_iter_data = type { ptr, [6 x i8], [6 x i8], i8, i8, i8, i32, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }

@ath5k_hw_ops = dso_local constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @ath5k_tx, ptr @ath5k_start, ptr @ath5k_stop, ptr null, ptr null, ptr null, ptr @ath5k_add_interface, ptr null, ptr @ath5k_remove_interface, ptr @ath5k_config, ptr @ath5k_bss_info_changed, ptr null, ptr null, ptr @ath5k_prepare_multicast, ptr @ath5k_configure_filter, ptr null, ptr null, ptr @ath5k_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath5k_sw_scan_start, ptr @ath5k_sw_scan_complete, ptr @ath5k_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath5k_conf_tx, ptr @ath5k_get_tsf, ptr @ath5k_set_tsf, ptr null, ptr @ath5k_reset_tsf, ptr null, ptr null, ptr @ath5k_get_survey, ptr null, ptr @ath5k_set_coverage_class, ptr null, ptr null, ptr null, ptr null, ptr @ath5k_set_antenna, ptr @ath5k_get_antenna, ptr null, ptr null, ptr @ath5k_set_ringparam, ptr @ath5k_get_ringparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/ath/ath5k/mac80211-ops.c\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Only one single ad-hoc interface is allowed.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(%s:%d): add interface mode %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.ath5k_add_interface = private unnamed_addr constant [20 x i8] c"ath5k_add_interface\00", align 1
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(%s:%d): Bss Info ASSOC %d, bssid: %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.ath5k_bss_info_changed = private unnamed_addr constant [23 x i8] c"ath5k_bss_info_changed\00", align 1
@ath5k_modparam_nohwcrypt = external dso_local local_unnamed_addr global i8, align 1
@.str.6 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"(%s:%d): Configure tx [queue %d],  aifs: %d, cw_min: %d, cw_max: %d, txop: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.ath5k_conf_tx = private unnamed_addr constant [14 x i8] c"ath5k_conf_tx\00", align 1
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to update hardware queue %u!\0A\00", [59 x i8] zeroinitializer }, align 32
@switch.table.ath5k_get_antenna = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"ath5k_hw_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 781, i32 28 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 64, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 96, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 114, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 292, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 594, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [49 x i8] c"../drivers/net/wireless/ath/ath5k/mac80211-ops.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 601, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [31 x i8] c"switch.table.ath5k_get_antenna\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @ath5k_hw_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @switch.table.ath5k_get_antenna], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_hw_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_get_antenna to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_tx(ptr noundef %hw, ptr noundef %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i, align 8
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 86, i32 3
  %4 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cap_queues, align 4
  %6 = zext i8 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %6)
  %cmp.not = icmp ult i16 %3, %6
  br i1 %cmp.not, label %if.end23, label %do.end, !prof !28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #6
  tail call void @ieee80211_free_txskb(ptr noundef %hw, ptr noundef %skb) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 40, i32 %conv
  tail call void @ath5k_tx_queue(ptr noundef %hw, ptr noundef %skb, ptr noundef %arrayidx, ptr noundef %control) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_stop(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %lock = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 3, label %entry.land.lhs.true_crit_edge
    i32 1, label %entry.land.lhs.true_crit_edge186
  ]

entry.land.lhs.true_crit_edge186:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge186
  %num_ap_vifs = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %num_ap_vifs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_ap_vifs, align 4
  %conv = zext i16 %6 to i32
  %num_adhoc_vifs = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 49
  %7 = ptrtoint ptr %num_adhoc_vifs to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_adhoc_vifs, align 2
  %conv3 = zext i16 %8 to i32
  %add = add nuw nsw i32 %conv3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp4 = icmp ugt i32 %add, 3
  br i1 %cmp4, label %land.lhs.true.end_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %num_adhoc_vifs6 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 49
  %9 = ptrtoint ptr %num_adhoc_vifs6 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_adhoc_vifs6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %lor.lhs.false8, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false8:                                   ; preds = %if.end
  %nvifs = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 22
  %11 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nvifs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool10.not = icmp ne i16 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp13 = icmp eq i32 %3, 1
  %or.cond = select i1 %tobool10.not, i1 %cmp13, i1 false
  br i1 %or.cond, label %lor.lhs.false8.do.body_crit_edge, label %if.end19

lor.lhs.false8.do.body_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false8.do.body_crit_edge, %if.end.do.body_crit_edge
  %call = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %do.body.end_crit_edge, label %if.then17

do.body.end_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #6
  br label %end

if.end19:                                         ; preds = %lor.lhs.false8
  %13 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %3, label %if.end19.end_crit_edge [
    i32 3, label %if.end19.sw.bb_crit_edge
    i32 2, label %if.end19.sw.bb_crit_edge187
    i32 1, label %if.end19.sw.bb_crit_edge188
    i32 7, label %if.end19.sw.bb_crit_edge189
  ]

if.end19.sw.bb_crit_edge189:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end19.sw.bb_crit_edge188:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end19.sw.bb_crit_edge187:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end19.sw.bb_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end19.end_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

sw.bb:                                            ; preds = %if.end19.sw.bb_crit_edge, %if.end19.sw.bb_crit_edge187, %if.end19.sw.bb_crit_edge188, %if.end19.sw.bb_crit_edge189
  %opmode = getelementptr inbounds %struct.ath5k_vif, ptr %drv_priv, i32 0, i32 1
  %14 = ptrtoint ptr %opmode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %opmode, align 4
  %15 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nvifs, align 8
  %inc = add i16 %16, 1
  store i16 %inc, ptr %nvifs, align 8
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug, align 4
  %and = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %sw.bb.do.end33_crit_edge, label %land.rhs

sw.bb.do.end33_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

land.rhs:                                         ; preds = %sw.bb
  %call25 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.rhs.do.end33_crit_edge, label %if.then29, !prof !28

land.rhs.do.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

if.then29:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %opmode, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ath5k_add_interface, i32 noundef 114, i32 noundef %20) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %land.rhs.do.end33_crit_edge, %sw.bb.do.end33_crit_edge
  %21 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %opmode, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %22, label %do.end33.if.end133_crit_edge [
    i32 3, label %do.end33.if.then45_crit_edge
    i32 1, label %do.end33.if.then45_crit_edge190
    i32 7, label %do.end33.if.then45_crit_edge191
  ]

do.end33.if.then45_crit_edge191:                  ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

do.end33.if.then45_crit_edge190:                  ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

do.end33.if.then45_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

do.end33.if.end133_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

if.then45:                                        ; preds = %do.end33.if.then45_crit_edge, %do.end33.if.then45_crit_edge190, %do.end33.if.then45_crit_edge191
  %bcbuf = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 46
  %24 = ptrtoint ptr %bcbuf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %bcbuf, align 4
  %cmp.i.not = icmp eq ptr %25, %bcbuf
  br i1 %cmp.i.not, label %do.end63, label %if.then45.if.end69_crit_edge, !prof !29

if.then45.if.end69_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.end63:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #6
  br label %if.end69

if.end69:                                         ; preds = %do.end63, %if.then45.if.end69_crit_edge
  %26 = ptrtoint ptr %bcbuf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bcbuf, align 4
  %bbuf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %bbuf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %bbuf, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %27) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end69.list_del.exit_crit_edge

if.end69.list_del.exit_crit_edge:                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %27, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end69.list_del.exit_crit_edge
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %bslot = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %37 = ptrtoint ptr %bslot to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %bslot, align 4
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 47, i32 0
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %tobool82.not = icmp eq ptr %39, null
  br i1 %tobool82.not, label %list_del.exit.if.then83_crit_edge, label %for.inc

list_del.exit.if.then83_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

if.then83:                                        ; preds = %for.inc.2.if.then83_crit_edge, %for.inc.1.if.then83_crit_edge, %for.inc.if.then83_crit_edge, %list_del.exit.if.then83_crit_edge
  %slot.0184.lcssa = phi i32 [ 0, %list_del.exit.if.then83_crit_edge ], [ 1, %for.inc.if.then83_crit_edge ], [ 2, %for.inc.1.if.then83_crit_edge ], [ 3, %for.inc.2.if.then83_crit_edge ]
  %40 = ptrtoint ptr %bslot to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %slot.0184.lcssa, ptr %bslot, align 4
  br label %do.body87

for.inc:                                          ; preds = %list_del.exit
  %arrayidx.1 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 47, i32 1
  %41 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.1, align 4
  %tobool82.not.1 = icmp eq ptr %42, null
  br i1 %tobool82.not.1, label %for.inc.if.then83_crit_edge, label %for.inc.1

for.inc.if.then83_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 47, i32 2
  %43 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.2, align 4
  %tobool82.not.2 = icmp eq ptr %44, null
  br i1 %tobool82.not.2, label %for.inc.1.if.then83_crit_edge, label %for.inc.2

for.inc.1.if.then83_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 47, i32 3
  %45 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.3, align 4
  %tobool82.not.3 = icmp eq ptr %46, null
  br i1 %tobool82.not.3, label %for.inc.2.if.then83_crit_edge, label %for.inc.2.do.body87_crit_edge

for.inc.2.do.body87_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body87

for.inc.2.if.then83_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

do.body87:                                        ; preds = %for.inc.2.do.body87_crit_edge, %if.then83
  %47 = ptrtoint ptr %bslot to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bslot, align 4
  %arrayidx90 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 47, i32 %48
  %49 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx90, align 4
  %cmp91.not = icmp eq ptr %50, null
  br i1 %cmp91.not, label %do.end108, label %do.body100, !prof !28

do.body100:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath5k/mac80211-ops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 134, 0\0A.popsection", ""() #6, !srcloc !30
  unreachable

do.end108:                                        ; preds = %do.body87
  %51 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %vif, ptr %arrayidx90, align 4
  %52 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %opmode, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %53, label %do.end108.if.end133_crit_edge [
    i32 3, label %if.then115
    i32 1, label %if.then121
    i32 7, label %if.then128
  ]

do.end108.if.end133_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

if.then115:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #8
  %num_ap_vifs116 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 48
  %55 = ptrtoint ptr %num_ap_vifs116 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %num_ap_vifs116, align 4
  %inc117 = add i16 %56, 1
  store i16 %inc117, ptr %num_ap_vifs116, align 4
  br label %if.end133

if.then121:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %num_adhoc_vifs6 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %num_adhoc_vifs6, align 2
  %inc123 = add i16 %58, 1
  store i16 %inc123, ptr %num_adhoc_vifs6, align 2
  br label %if.end133

if.then128:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #8
  %num_mesh_vifs = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 50
  %59 = ptrtoint ptr %num_mesh_vifs to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %num_mesh_vifs, align 8
  %inc129 = add i16 %60, 1
  store i16 %inc129, ptr %num_mesh_vifs, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %if.then121, %if.then115, %do.end108.if.end133_crit_edge, %do.end33.if.end133_crit_edge
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %call135 = tail call i32 @ath5k_hw_set_lladdr(ptr noundef %1, ptr noundef %addr) #6
  tail call void @ath5k_update_bssid_mask_and_opmode(ptr noundef %1, ptr noundef %vif) #6
  br label %end

end:                                              ; preds = %if.end133, %if.end19.end_crit_edge, %if.then17, %do.body.end_crit_edge, %land.lhs.true.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.end133 ], [ -48, %land.lhs.true.end_crit_edge ], [ -48, %if.then17 ], [ -48, %do.body.end_crit_edge ], [ -95, %if.end19.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %lock = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %nvifs = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nvifs, align 8
  %dec = add i16 %3, -1
  store i16 %dec, ptr %nvifs, align 8
  %bbuf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %bbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bbuf, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  tail call void @ath5k_txbuf_free_skb(ptr noundef %1, ptr noundef nonnull %5) #6
  %6 = ptrtoint ptr %bbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bbuf, align 4
  %bcbuf = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 46
  %prev.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 46, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %9, ptr noundef %bcbuf) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bcbuf, ptr %7, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %7, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 47, i32 0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %15, %vif
  br i1 %cmp3, label %list_add_tail.exit.if.then4_crit_edge, label %for.cond

list_add_tail.exit.if.then4_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

for.cond:                                         ; preds = %list_add_tail.exit
  %arrayidx.1 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 47, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %cmp3.1 = icmp eq ptr %17, %vif
  br i1 %cmp3.1, label %for.cond.if.then4_crit_edge, label %for.cond.1

for.cond.if.then4_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 47, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %cmp3.2 = icmp eq ptr %19, %vif
  br i1 %cmp3.2, label %for.cond.1.if.then4_crit_edge, label %for.cond.2

for.cond.1.if.then4_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 47, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %cmp3.3 = icmp eq ptr %21, %vif
  br i1 %cmp3.3, label %for.cond.2.if.then4_crit_edge, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.2.if.then4_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %for.cond.2.if.then4_crit_edge, %for.cond.1.if.then4_crit_edge, %for.cond.if.then4_crit_edge, %list_add_tail.exit.if.then4_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx, %list_add_tail.exit.if.then4_crit_edge ], [ %arrayidx.1, %for.cond.if.then4_crit_edge ], [ %arrayidx.2, %for.cond.1.if.then4_crit_edge ], [ %arrayidx.3, %for.cond.2.if.then4_crit_edge ]
  %22 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx.lcssa, align 4
  br label %for.end

for.end:                                          ; preds = %if.then4, %for.cond.2.for.end_crit_edge
  %23 = ptrtoint ptr %bbuf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %bbuf, align 4
  br label %if.end8

if.end8:                                          ; preds = %for.end, %entry.if.end8_crit_edge
  %opmode = getelementptr inbounds %struct.ath5k_vif, ptr %drv_priv, i32 0, i32 1
  %24 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opmode, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %25, label %if.end8.if.end23_crit_edge [
    i32 3, label %if.then10
    i32 1, label %if.then14
    i32 7, label %if.then19
  ]

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %num_ap_vifs = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 48
  %27 = ptrtoint ptr %num_ap_vifs to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_ap_vifs, align 4
  %dec11 = add i16 %28, -1
  store i16 %dec11, ptr %num_ap_vifs, align 4
  br label %if.end23

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %num_adhoc_vifs = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 49
  %29 = ptrtoint ptr %num_adhoc_vifs to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_adhoc_vifs, align 2
  %dec15 = add i16 %30, -1
  store i16 %dec15, ptr %num_adhoc_vifs, align 2
  br label %if.end23

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %num_mesh_vifs = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 50
  %31 = ptrtoint ptr %num_mesh_vifs to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_mesh_vifs, align 8
  %dec20 = add i16 %32, -1
  store i16 %dec20, ptr %num_mesh_vifs, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.then14, %if.then10, %if.end8.if.end23_crit_edge
  tail call void @ath5k_update_bssid_mask_and_opmode(ptr noundef %1, ptr noundef null) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_config(ptr noundef %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %and = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %call = tail call i32 @ath5k_chan_set(ptr noundef %1, ptr noundef %chandef) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.unlock_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then.unlock_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.if.end3_crit_edge ], [ 0, %entry.if.end3_crit_edge ]
  %and4 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end13_crit_edge, label %land.lhs.true

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end3
  %txp_requested = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 108, i32 14
  %2 = ptrtoint ptr %txp_requested to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txp_requested, align 4
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp6.not = icmp eq i32 %3, %5
  br i1 %cmp6.not, label %land.lhs.true.if.end13_crit_edge, label %if.then7

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %txp_requested to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %txp_requested, align 4
  %7 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power_level, align 4
  %.tr = trunc i32 %8 to i8
  %conv = shl i8 %.tr, 1
  %call12 = tail call i32 @ath5k_hw_set_txpower_limit(ptr noundef %1, i8 noundef zeroext %conv) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %land.lhs.true.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %and14 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  %long_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 5
  %9 = ptrtoint ptr %long_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %long_frame_max_tx_count, align 1
  %ah_retry_long = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 75
  %11 = ptrtoint ptr %ah_retry_long to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ah_retry_long, align 8
  %short_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 6
  %12 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %short_frame_max_tx_count, align 4
  %ah_retry_short = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 76
  %14 = ptrtoint ptr %ah_retry_short to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ah_retry_short, align 1
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 86, i32 3
  %15 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cap_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp1845.not = icmp eq i8 %16, 0
  br i1 %cmp1845.not, label %if.then16.if.end20_crit_edge, label %if.then16.for.body_crit_edge

if.then16.for.body_crit_edge:                     ; preds = %if.then16
  br label %for.body

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then16.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then16.for.body_crit_edge ]
  tail call void @ath5k_hw_set_tx_retry_limits(ptr noundef %1, i32 noundef %i.046) #6
  %inc = add nuw nsw i32 %i.046, 1
  %17 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cap_queues, align 4
  %conv17 = zext i8 %18 to i32
  %cmp18 = icmp ult i32 %inc, %conv17
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %for.body.if.end20_crit_edge

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end20:                                         ; preds = %for.body.if.end20_crit_edge, %if.then16.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %ah_ant_mode = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 83
  %19 = ptrtoint ptr %ah_ant_mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ah_ant_mode, align 4
  tail call void @ath5k_hw_set_antenna_mode(ptr noundef %1, i8 noundef zeroext %20) #6
  br label %unlock

unlock:                                           ; preds = %if.end20, %if.then.unlock_crit_edge
  %ret.1 = phi i32 [ %call, %if.then.unlock_crit_edge ], [ %ret.0, %if.end20 ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_bss_info_changed(ptr noundef %hw, ptr noundef %vif, ptr nocapture noundef readonly %bss_conf, i32 noundef %changes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %and = and i32 %changes, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %curbssid = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bss_conf, align 8
  %4 = call ptr @memcpy(ptr %curbssid, ptr %3, i32 6)
  %curaid = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %curaid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %curaid, align 2
  tail call void @ath5k_hw_set_bssid(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %changes, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 19
  %6 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %beacon_int, align 2
  %conv = zext i16 %7 to i32
  %bintval = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 53
  %8 = ptrtoint ptr %bintval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %bintval, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %and6 = and i32 %changes, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end13_crit_edge, label %if.then8

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 16
  %9 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %use_short_slot, align 2, !range !31
  %ah_short_slot = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 81
  %11 = ptrtoint ptr %ah_short_slot to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ah_short_slot, align 2
  %call10 = tail call i32 @ath5k_hw_get_default_slottime(ptr noundef %1) #6
  %ah_coverage_class = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 78
  %12 = ptrtoint ptr %ah_coverage_class to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ah_coverage_class, align 1
  %conv11 = zext i8 %13 to i32
  %mul = mul nuw nsw i32 %conv11, 3
  %add = add i32 %mul, %call10
  %call12 = tail call i32 @ath5k_hw_set_ifs_intervals(ptr noundef %1, i32 noundef %add) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end5.if.end13_crit_edge
  %and14 = and i32 %changes, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end56_crit_edge, label %if.then16

if.end13.if.end56_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then16:                                        ; preds = %if.end13
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %14 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %assoc, align 1, !range !31
  %16 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %drv_priv, align 4
  %17 = load i8, ptr %assoc, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not = icmp eq i8 %17, 0
  br i1 %tobool21.not, label %if.else, label %if.then16.if.end30_crit_edge

if.then16.if.end30_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call zeroext i1 @ath5k_any_vif_assoc(ptr noundef %1) #6
  %frombool29 = zext i1 %call27 to i8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then16.if.end30_crit_edge
  %.sink = phi i8 [ %frombool29, %if.else ], [ 1, %if.then16.if.end30_crit_edge ]
  %18 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 57
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %18, align 4
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp eq i32 %21, 2
  br i1 %cmp, label %if.then32, label %if.end30.if.end35_crit_edge

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %18, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34 = icmp ne i8 %23, 0
  tail call void @ath5k_set_beacon_filter(ptr noundef %hw, i1 noundef zeroext %tobool34) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end30.if.end35_crit_edge
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %18, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool37.not = icmp eq i8 %25, 0
  %cond = select i1 %tobool37.not, i32 0, i32 3
  tail call void @ath5k_hw_set_ledstate(ptr noundef %1, i32 noundef %cond) #6
  %26 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %assoc, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool40.not = icmp eq i8 %27, 0
  br i1 %tobool40.not, label %if.end35.if.end56_crit_edge, label %do.body

if.end35.if.end56_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

do.body:                                          ; preds = %if.end35
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool43.not = icmp eq i32 %29, 0
  br i1 %tobool43.not, label %do.body.do.end_crit_edge, label %land.rhs

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %call44 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.rhs.do.end_crit_edge, label %if.then48, !prof !28

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then48:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %30 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %aid, align 2
  %conv49 = zext i16 %31 to i32
  %curbssid50 = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ath5k_bss_info_changed, i32 noundef 294, i32 noundef %conv49, ptr noundef %curbssid50) #6
  br label %do.end

do.end:                                           ; preds = %if.then48, %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  %aid53 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %32 = ptrtoint ptr %aid53 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %aid53, align 2
  %curaid54 = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %curaid54 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %curaid54, align 2
  tail call void @ath5k_hw_set_bssid(ptr noundef %1) #6
  br label %if.end56

if.end56:                                         ; preds = %do.end, %if.end35.if.end56_crit_edge, %if.end13.if.end56_crit_edge
  %and57 = and i32 %changes, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end62_crit_edge, label %if.then59

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %block = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 44
  tail call void @_raw_spin_lock_bh(ptr noundef %block) #6
  %call60 = tail call i32 @ath5k_beacon_update(ptr noundef %hw, ptr noundef %vif) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %block) #6
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end56.if.end62_crit_edge
  %and63 = and i32 %changes, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end69_crit_edge, label %if.then65

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 17
  %35 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enable_beacon, align 1, !range !31
  %enable_beacon67 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 58
  %37 = ptrtoint ptr %enable_beacon67 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %enable_beacon67, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end62.if.end69_crit_edge
  %and70 = and i32 %changes, 832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end73_crit_edge, label %if.then72

if.end69.if.end73_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath5k_beacon_config(ptr noundef %1) #6
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end69.if.end73_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i64 @ath5k_prepare_multicast(ptr nocapture noundef readnone %hw, ptr noundef readonly %mc_list) #2 align 64 {
entry:
  %mfilt = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mfilt) #6
  %0 = getelementptr inbounds [2 x i32], ptr %mfilt, i32 0, i32 1
  %1 = ptrtoint ptr %mfilt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %mfilt, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  %3 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %ha.053 = load ptr, ptr %mc_list, align 4
  %cmp.not54 = icmp eq ptr %ha.053, %mc_list
  br i1 %cmp.not54, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ha.055 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.053, %entry.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.055, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %addr, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %shr = lshr i32 %6, 18
  %shr5 = lshr i32 %6, 12
  %shr6 = lshr i32 %6, 6
  %add.ptr11 = getelementptr %struct.netdev_hw_addr, ptr %ha.055, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %add.ptr11, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %shr13 = lshr i32 %9, 18
  %shr14 = lshr i32 %9, 12
  %shr16 = lshr i32 %9, 6
  %xor15 = xor i32 %shr5, %6
  %xor17 = xor i32 %xor15, %shr
  %xor18 = xor i32 %xor17, %shr6
  %xor = xor i32 %xor18, %9
  %xor7 = xor i32 %xor, %shr14
  %xor8 = xor i32 %xor7, %shr13
  %xor20 = xor i32 %xor8, %shr16
  %rem = and i32 %xor20, 31
  %shl = shl nuw i32 1, %rem
  %conv23 = lshr i32 %xor20, 5
  %div52 = and i32 %conv23, 1
  %arrayidx26 = getelementptr [2 x i32], ptr %mfilt, i32 0, i32 %div52
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx26, align 4
  %or = or i32 %shl, %11
  store i32 %or, ptr %arrayidx26, align 4
  %12 = ptrtoint ptr %ha.055 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0 = load ptr, ptr %ha.055, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  %conv33 = zext i32 %14 to i64
  %shl34 = shl nuw i64 %conv33, 32
  %15 = ptrtoint ptr %mfilt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mfilt, align 4
  %conv36 = zext i32 %16 to i64
  %or37 = or i64 %shl34, %conv36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mfilt) #6
  ret i64 %or37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %new_flags, i64 noundef %multicast) #0 align 64 {
entry:
  %iter_data = alloca %struct.ath5k_vif_iter_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %iter_data) #6
  %2 = getelementptr inbounds i8, ptr %iter_data, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 20)
  %lock = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_flags, align 4
  %and3 = and i32 %5, 126
  store i32 %and3, ptr %new_flags, align 4
  %call = tail call i32 @ath5k_hw_get_rx_filter(ptr noundef %1) #6
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 68
  %6 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %cond = select i1 %cmp, i32 64, i32 256
  %8 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %new_flags, align 4
  %and9 = and i32 %9, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %and5 = select i1 %tobool10.not, i32 %call, i32 320
  %spec.select79.v = and i32 %and5, %cond
  %and18 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %entry.if.then23_crit_edge

entry.if.then23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

lor.lhs.false:                                    ; preds = %entry
  %spec.select79 = or i32 %spec.select79.v, 7
  %nvifs = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nvifs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp21 = icmp ugt i16 %11, 1
  br i1 %cmp21, label %lor.lhs.false.if.then23_crit_edge, label %lor.lhs.false.if.end25_crit_edge

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %entry.if.then23_crit_edge
  %or24 = or i32 %spec.select79.v, 23
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %lor.lhs.false.if.end25_crit_edge
  %rfilt.1 = phi i32 [ %or24, %if.then23 ], [ %spec.select79, %lor.lhs.false.if.end25_crit_edge ]
  %and26 = lshr i32 %9, 2
  %12 = and i32 %and26, 8
  %13 = or i32 %rfilt.1, %12
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opmode, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %15, label %if.end25.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 3, label %if.end25.sw.bb32_crit_edge
    i32 1, label %if.end25.sw.bb32_crit_edge80
    i32 2, label %sw.bb34
  ]

if.end25.sw.bb32_crit_edge80:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb32

if.end25.sw.bb32_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb32

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %or31 = or i32 %rfilt.1, 184
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end25.sw.bb32_crit_edge, %if.end25.sw.bb32_crit_edge80
  %or33 = or i32 %13, 144
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %assoc = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 57
  %17 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %assoc, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool35.not = icmp eq i8 %18, 0
  %or37 = or i32 %13, 16
  %spec.select77 = select i1 %tobool35.not, i32 %13, i32 %or37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb32, %sw.bb, %if.end25.sw.epilog_crit_edge
  %rfilt.3 = phi i32 [ %13, %if.end25.sw.epilog_crit_edge ], [ %or33, %sw.bb32 ], [ %or31, %sw.bb ], [ %spec.select77, %sw.bb34 ]
  %and6 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %conv = trunc i64 %multicast to i32
  %spec.select75 = select i1 %tobool.not, i32 %conv, i32 -1
  %shr = lshr i64 %multicast, 32
  %conv1 = trunc i64 %shr to i32
  %spec.select = select i1 %tobool.not, i32 %conv1, i32 -1
  %19 = ptrtoint ptr %iter_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %iter_data, align 4
  %n_stas = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %iter_data, i32 0, i32 7
  %20 = ptrtoint ptr %n_stas to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %n_stas, align 4
  %need_set_hw_addr = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %iter_data, i32 0, i32 3
  %21 = ptrtoint ptr %need_set_hw_addr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %need_set_hw_addr, align 4
  %hw39 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %hw39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw39, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @ath5k_vif_iter, ptr noundef nonnull %iter_data) #6
  %24 = ptrtoint ptr %n_stas to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_stas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp41 = icmp sgt i32 %25, 1
  %or44 = or i32 %rfilt.3, 32
  %spec.select78 = select i1 %cmp41, i32 %or44, i32 %rfilt.3
  call void @ath5k_hw_set_rx_filter(ptr noundef %1, i32 noundef %spec.select78) #6
  call void @ath5k_hw_set_mcast_filter(ptr noundef %1, i32 noundef %spec.select75, i32 noundef %spec.select) #6
  %filter_flags = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 19
  %26 = ptrtoint ptr %filter_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select78, ptr %filter_flags, align 4
  %27 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %new_flags, align 4
  %fif_filter_flags = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 20
  %29 = ptrtoint ptr %fif_filter_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %fif_filter_flags, align 8
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %iter_data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ath5k_modparam_nohwcrypt to i32))
  %2 = load i8, ptr @ath5k_modparam_nohwcrypt, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 8
  %5 = and i16 %4, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %land.lhs.true, label %if.end3.if.end16_crit_edge

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end3
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %8 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cipher, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %9, label %land.lhs.true.if.end16_crit_edge [
    i32 1027074, label %land.lhs.true.land.lhs.true10_crit_edge
    i32 1027076, label %land.lhs.true.land.lhs.true10_crit_edge78
  ]

land.lhs.true.land.lhs.true10_crit_edge78:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true10

land.lhs.true.land.lhs.true10_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true10

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true10:                                  ; preds = %land.lhs.true.land.lhs.true10_crit_edge, %land.lhs.true.land.lhs.true10_crit_edge78
  %11 = and i16 %4, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool14.not = icmp eq i16 %11, 0
  br i1 %tobool14.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end16_crit_edge

land.lhs.true10.if.end16_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true10.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  %cipher17 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %12 = ptrtoint ptr %cipher17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cipher17, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %13, label %if.end16.cleanup_crit_edge [
    i32 1027073, label %if.end16.sw.epilog_crit_edge
    i32 1027077, label %if.end16.sw.epilog_crit_edge79
    i32 1027074, label %if.end16.sw.epilog_crit_edge80
    i32 1027076, label %sw.bb18
  ]

if.end16.sw.epilog_crit_edge80:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end16.sw.epilog_crit_edge79:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb18:                                          ; preds = %if.end16
  %crypt_caps = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %crypt_caps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crypt_caps, align 4
  %and19 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %sw.bb18.cleanup_crit_edge, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb18.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge79, %if.end16.sw.epilog_crit_edge80
  %lock = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %17 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %cmd, label %sw.epilog.sw.epilog54_crit_edge [
    i32 0, label %sw.bb23
    i32 1, label %sw.bb51
  ]

sw.epilog.sw.epilog54_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog54

sw.bb23:                                          ; preds = %sw.epilog
  %call24 = tail call i32 @ath_key_config(ptr noundef %1, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %cmp25 = icmp sgt i32 %call24, -1
  br i1 %cmp25, label %if.then27, label %sw.bb23.sw.epilog54_crit_edge

sw.bb23.sw.epilog54_crit_edge:                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog54

if.then27:                                        ; preds = %sw.bb23
  %conv28 = trunc i32 %call24 to i8
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %18 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv28, ptr %hw_key_idx, align 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 8
  %21 = or i16 %20, 2
  store i16 %21, ptr %flags, align 8
  %22 = ptrtoint ptr %cipher17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cipher17, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %23, label %if.then27.sw.epilog54_crit_edge [
    i32 1027074, label %if.end40.thread
    i32 1027076, label %if.then44
  ]

if.then27.sw.epilog54_crit_edge:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog54

if.end40.thread:                                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %25 = or i16 %20, 6
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %flags, align 8
  br label %sw.epilog54

if.then44:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags, align 8
  %29 = or i16 %28, 16
  store i16 %29, ptr %flags, align 8
  br label %sw.epilog54

sw.bb51:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %hw_key_idx52 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %30 = ptrtoint ptr %hw_key_idx52 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hw_key_idx52, align 2
  tail call void @ath_key_delete(ptr noundef %1, i8 noundef zeroext %31) #6
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %sw.bb51, %if.then44, %if.end40.thread, %if.then27.sw.epilog54_crit_edge, %sw.bb23.sw.epilog54_crit_edge, %sw.epilog.sw.epilog54_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb51 ], [ %call24, %sw.bb23.sw.epilog54_crit_edge ], [ 0, %if.then44 ], [ -22, %sw.epilog.sw.epilog54_crit_edge ], [ 0, %if.end40.thread ], [ 0, %if.then27.sw.epilog54_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog54, %sw.bb18.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog54 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %land.lhs.true10.cleanup_crit_edge ], [ -95, %sw.bb18.cleanup_crit_edge ], [ -95, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_sw_scan_start(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %assoc = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath5k_hw_set_ledstate(ptr noundef %1, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_sw_scan_complete(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %assoc = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 0, i32 3
  tail call void @ath5k_hw_set_ledstate(ptr noundef %1, i32 noundef %cond) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_get_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @ath5k_hw_update_mib_counters(ptr noundef %1) #6
  %ack_fail = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 17
  %2 = ptrtoint ptr %ack_fail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ack_fail, align 8
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %stats, align 4
  %rts_fail = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 18
  %5 = ptrtoint ptr %rts_fail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rts_fail, align 4
  %dot11RTSFailureCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 1
  %7 = ptrtoint ptr %dot11RTSFailureCount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dot11RTSFailureCount, align 4
  %rts_ok = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 19
  %8 = ptrtoint ptr %rts_ok to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rts_ok, align 8
  %dot11RTSSuccessCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 3
  %10 = ptrtoint ptr %dot11RTSSuccessCount to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dot11RTSSuccessCount, align 4
  %fcs_error = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 20
  %11 = ptrtoint ptr %fcs_error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fcs_error, align 4
  %dot11FCSErrorCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 2
  %13 = ptrtoint ptr %dot11FCSErrorCount to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dot11FCSErrorCount, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %qi = alloca %struct.ath5k_txq_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %qi) #6
  %2 = call ptr @memset(ptr %qi, i32 255, i32 32)
  %conv = zext i16 %queue to i32
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 86, i32 3
  %3 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cap_queues, align 4
  %5 = zext i8 %4 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %queue)
  %cmp.not = icmp ugt i16 %5, %queue
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call = call i32 @ath5k_hw_get_tx_queueprops(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %qi) #6
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 3
  %6 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aifs, align 2
  %tqi_aifs = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi, i32 0, i32 3
  %8 = ptrtoint ptr %tqi_aifs to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tqi_aifs, align 2
  %cw_min = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cw_min, align 2
  %tqi_cw_min = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi, i32 0, i32 4
  %11 = ptrtoint ptr %tqi_cw_min to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %tqi_cw_min, align 4
  %cw_max = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %12 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cw_max, align 2
  %tqi_cw_max = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi, i32 0, i32 5
  %14 = ptrtoint ptr %tqi_cw_max to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tqi_cw_max, align 2
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %params, align 2
  %conv4 = zext i16 %16 to i32
  %mul = shl nuw nsw i32 %conv4, 5
  %tqi_burst_time = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi, i32 0, i32 8
  %17 = ptrtoint ptr %tqi_burst_time to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %tqi_burst_time, align 4
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %land.rhs

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.rhs:                                         ; preds = %if.end
  %call5 = call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.rhs.do.end_crit_edge, label %if.then9, !prof !28

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %aifs, align 2
  %conv12 = zext i8 %21 to i32
  %22 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cw_min, align 2
  %conv14 = zext i16 %23 to i32
  %24 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cw_max, align 2
  %conv16 = zext i16 %25 to i32
  %26 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %params, align 2
  %conv18 = zext i16 %27 to i32
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ath5k_conf_tx, i32 noundef 598, i32 noundef %conv, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.rhs.do.end_crit_edge, %if.end.do.end_crit_edge
  %call21 = call i32 @ath5k_hw_set_tx_queueprops(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %qi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else, label %do.body24

do.body24:                                        ; preds = %do.end
  %call25 = call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body24.if.end34_crit_edge, label %if.then27

do.body24.if.end34_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then27:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef %conv) #6
  br label %if.end34

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = call i32 @ath5k_hw_reset_tx_queue(ptr noundef %1, i32 noundef %conv) #6
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27, %do.body24.if.end34_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -5, %if.then27 ], [ -5, %do.body24.if.end34_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end34 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qi) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ath5k_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i64 @ath5k_hw_get_tsf64(ptr noundef %1) #6
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_set_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i64 noundef %tsf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @ath5k_hw_set_tsf64(ptr noundef %1, i64 noundef %tsf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_reset_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath5k_beacon_update_timers(ptr noundef %1, i64 noundef 0) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath5k_hw_reset_tsf(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_get_survey(ptr nocapture noundef readonly %hw, i32 noundef %idx, ptr nocapture noundef writeonly %survey) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cc_survey = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 21
  %clockrate = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %clockrate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clockrate, align 4
  %mul = mul i32 %3, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp.not = icmp eq i32 %idx, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cc_lock = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_bh(ptr noundef %cc_lock) #6
  tail call void @ath_hw_cycle_counters_update(ptr noundef %1) #6
  %4 = ptrtoint ptr %cc_survey to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cc_survey, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %if.end.if.end19_crit_edge, label %if.then3

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div5 = udiv i32 %5, %mul
  %conv = zext i32 %div5 to i64
  %time = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 63, i32 1
  %6 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %time, align 8
  %add = add i64 %7, %conv
  store i64 %add, ptr %time, align 8
  %rx_busy = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 21, i32 1
  %8 = ptrtoint ptr %rx_busy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_busy, align 4
  %div7 = udiv i32 %9, %mul
  %conv8 = zext i32 %div7 to i64
  %time_busy = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 63, i32 2
  %10 = ptrtoint ptr %time_busy to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %time_busy, align 8
  %add10 = add i64 %11, %conv8
  store i64 %add10, ptr %time_busy, align 8
  %rx_frame = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %rx_frame to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_frame, align 4
  %div11 = udiv i32 %13, %mul
  %conv12 = zext i32 %div11 to i64
  %time_rx = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 63, i32 4
  %14 = ptrtoint ptr %time_rx to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %time_rx, align 8
  %add14 = add i64 %15, %conv12
  store i64 %add14, ptr %time_rx, align 8
  %tx_frame = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 21, i32 3
  %16 = ptrtoint ptr %tx_frame to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_frame, align 4
  %div15 = udiv i32 %17, %mul
  %conv16 = zext i32 %div15 to i64
  %time_tx = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 63, i32 5
  %18 = ptrtoint ptr %time_tx to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %time_tx, align 8
  %add18 = add i64 %19, %conv16
  store i64 %add18, ptr %time_tx, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then3, %if.end.if.end19_crit_edge
  %20 = call ptr @memset(ptr %cc_survey, i32 0, i32 16)
  tail call void @_raw_spin_unlock_bh(ptr noundef %cc_lock) #6
  %survey21 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 63
  %21 = call ptr @memcpy(ptr %survey, ptr %survey21, i32 72)
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %22 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chandef, align 4
  %24 = ptrtoint ptr %survey to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %survey, align 8
  %ah_noise_floor = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 111
  %25 = ptrtoint ptr %ah_noise_floor to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ah_noise_floor, align 8
  %conv22 = trunc i32 %26 to i8
  %noise = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 9
  %27 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv22, ptr %noise, align 4
  %filled = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %28 = ptrtoint ptr %filled to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 111, ptr %filled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_set_coverage_class(ptr nocapture noundef readonly %hw, i16 noundef signext %coverage_class) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %conv = trunc i16 %coverage_class to i8
  tail call void @ath5k_hw_set_coverage_class(ptr noundef %1, i8 noundef zeroext %conv) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_set_antenna(ptr nocapture noundef readonly %hw, i32 noundef %tx_ant, i32 noundef %rx_ant) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tx_ant)
  %cmp = icmp eq i32 %tx_ant, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rx_ant)
  %cmp1 = icmp eq i32 %rx_ant, 1
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup.sink.split_crit_edge, label %if.else

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tx_ant)
  %cmp2 = icmp eq i32 %tx_ant, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rx_ant)
  %cmp4 = icmp eq i32 %rx_ant, 2
  %or.cond21 = and i1 %cmp2, %cmp4
  br i1 %or.cond21, label %if.else.cleanup.sink.split_crit_edge, label %if.else6

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else6:                                         ; preds = %if.else
  %2 = and i32 %tx_ant, 3
  %3 = and i32 %2, %rx_ant
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %if.else6.cleanup.sink.split_crit_edge, label %if.else6.cleanup_crit_edge

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else6.cleanup.sink.split_crit_edge:            ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else6.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 1, %entry.cleanup.sink.split_crit_edge ], [ 2, %if.else.cleanup.sink.split_crit_edge ], [ 0, %if.else6.cleanup.sink.split_crit_edge ]
  tail call void @ath5k_hw_set_antenna_mode(ptr noundef %1, i8 noundef zeroext %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else6.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else6.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath5k_get_antenna(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %tx_ant, ptr nocapture noundef writeonly %rx_ant) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ah_ant_mode = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %ah_ant_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ah_ant_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %4 = icmp ult i8 %3, 3
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = sext i8 %3 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ath5k_get_antenna, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = ptrtoint ptr %tx_ant to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %tx_ant, align 4
  %8 = ptrtoint ptr %rx_ant to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %switch.load, ptr %rx_ant, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_set_ringparam(ptr noundef %hw, i32 noundef %tx, i32 noundef %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %rx)
  %cmp.not = icmp ne i32 %rx, 40
  %2 = add i32 %tx, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -50, i32 %2)
  %3 = icmp ult i32 %2, -50
  %or.cond = or i1 %cmp.not, %3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %setup = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 40, i32 %indvars.iv, i32 4
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %setup, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false15:                                  ; preds = %for.body
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 40, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp20 = icmp ugt i32 %7, 3
  br i1 %cmp20, label %lor.lhs.false15.for.inc_crit_edge, label %if.end23

lor.lhs.false15.for.inc_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end23:                                         ; preds = %lor.lhs.false15
  %txq_max = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 40, i32 %indvars.iv, i32 6
  %8 = ptrtoint ptr %txq_max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tx, ptr %txq_max, align 4
  %txq_len = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 40, i32 %indvars.iv, i32 5
  %9 = ptrtoint ptr %txq_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txq_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %tx)
  %cmp34.not = icmp slt i32 %10, %tx
  br i1 %cmp34.not, label %if.end23.for.inc_crit_edge, label %if.then36

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then36:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ieee80211_stop_queue(ptr noundef %hw, i32 noundef %7) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %if.end23.for.inc_crit_edge, %lor.lhs.false15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath5k_get_ringparam(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %tx, ptr nocapture noundef writeonly %tx_max, ptr nocapture noundef writeonly %rx, ptr nocapture noundef writeonly %rx_max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %txq_max = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 40, i32 0, i32 6
  %2 = ptrtoint ptr %txq_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txq_max, align 4
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tx, align 4
  %5 = ptrtoint ptr %tx_max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 50, ptr %tx_max, align 4
  %6 = ptrtoint ptr %rx_max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 40, ptr %rx_max, align 4
  %7 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 40, ptr %rx, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_tx_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_lladdr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_update_bssid_mask_and_opmode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_txbuf_free_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_chan_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_txpower_limit(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_tx_retry_limits(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_antenna_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_bssid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_default_slottime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_ifs_intervals(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath5k_any_vif_assoc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_set_beacon_filter(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_ledstate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_beacon_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_beacon_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_rx_filter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_vif_iter(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_rx_filter(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_mcast_filter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_key_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_key_delete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_update_mib_counters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_tx_queueprops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_tx_queueprops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_reset_tx_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ath5k_hw_get_tsf64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_tsf64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_beacon_update_timers(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_reset_tsf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_cycle_counters_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_coverage_class(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !14, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @ath5k_hw_ops, !1, !"ath5k_hw_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/mac80211-ops.c", i32 781, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath5k/mac80211-ops.c", i32 64, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath5k/mac80211-ops.c", i32 96, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath5k/mac80211-ops.c", i32 114, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.ath5k_add_interface, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath5k/mac80211-ops.c", i32 292, i32 4}
!13 = !{ptr @__func__.ath5k_bss_info_changed, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath5k/mac80211-ops.c", i32 594, i32 2}
!16 = !{ptr @__func__.ath5k_conf_tx, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath5k/mac80211-ops.c", i32 601, i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2157596086, i64 2157596596, i64 2157596123, i64 2157596179, i64 2157596213, i64 2157596237, i64 2157596278, i64 2157596299, i64 2157596327, i64 2157596361}
!31 = !{i8 0, i8 2}
