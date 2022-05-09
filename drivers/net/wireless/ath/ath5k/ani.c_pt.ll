; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/ani.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/ani.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ath5k_hw = type { %struct.ath_common, ptr, ptr, i32, i16, ptr, %struct.mutex, ptr, [6 x %struct.ieee80211_supported_band], [314 x %struct.ieee80211_channel], [6 x [32 x %struct.ieee80211_rate]], [6 x [32 x i8]], i32, %struct.ath5k_dbg_info, ptr, ptr, i32, i32, [1 x i32], i32, i32, ptr, i16, i32, %struct.spinlock, i8, i8, [6 x i8], i32, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, %struct.tasklet_struct, %struct.ath5k_led, %struct.list_head, %struct.spinlock, i32, [10 x %struct.ath5k_txq], %struct.tasklet_struct, %struct.ath5k_led, %struct.ath5k_rfkill, %struct.spinlock, %struct.tasklet_struct, %struct.list_head, [4 x ptr], i16, i16, i16, i32, i32, i32, i32, i32, ptr, i8, i8, %struct.ath5k_statistics, %struct.ath5k_ani_state, %struct.tasklet_struct, %struct.delayed_work, %struct.survey_info, i32, ptr, i8, i8, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x [3 x i32]], i8, i8, i8, %struct.ath5k_capabilities, [10 x %struct.ath5k_txq_info], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.ath5k_gain, [8 x i8], %struct.anon.137, %struct.ath5k_nfcal_hist, %struct.ewma_beacon_rssi, i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath5k_capabilities = type { [1 x i32], %struct.anon.134, %struct.ath5k_eeprom_info, %struct.anon.136, i8, i8, i8 }
%struct.anon.134 = type { i16, i16, i16, i16 }
%struct.ath5k_eeprom_info = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x [11 x i16]], [3 x [4 x i16]], [3 x [4 x i16]], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i8], [3 x [4 x i8]], [3 x i8], [10 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [3 x i8], [10 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], i8, [32 x i8], [256 x %struct.ath5k_edge_power], [3 x i16], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, [5 x [2 x i16]], [3 x [3 x i32]] }
%struct.ath5k_chan_pcal_info = type { i16, i16, i16, %union.anon.135, ptr }
%union.anon.135 = type { %struct.ath5k_chan_pcal_info_rf2413 }
%struct.ath5k_chan_pcal_info_rf2413 = type { [4 x i8], [4 x i8], [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.ath5k_rate_pcal_info = type { i16, i16, i16, i16, i16 }
%struct.ath5k_edge_power = type { i16, i16, i8 }
%struct.anon.136 = type { i8 }
%struct.ath5k_txq_info = type { i32, i32, i16, i8, i16, i16, i32, i32, i32, i32 }
%struct.ath5k_gain = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.137 = type { [4 x [64 x i8]], [4 x [64 x i8]], [128 x i8], [32 x i16], i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i32 }
%struct.ath5k_nfcal_hist = type { i16, [8 x i16] }
%struct.ewma_beacon_rssi = type { i32 }

@ath5k_ani_set_noise_immunity_level.lo = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C0\BA", [30 x i8] zeroinitializer }, align 32
@ath5k_ani_set_noise_immunity_level.hi = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F2\F4", [30 x i8] zeroinitializer }, align 32
@ath5k_ani_set_noise_immunity_level.sz = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C9\C2", [30 x i8] zeroinitializer }, align 32
@ath5k_ani_set_noise_immunity_level.fr = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B2\B0", [30 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"noise immunity level %d out of range\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(%s:%d): new level %d\00", [42 x i8] zeroinitializer }, align 32
@__func__.ath5k_ani_set_noise_immunity_level = private unnamed_addr constant [35 x i8] c"ath5k_ani_set_noise_immunity_level\00", align 1
@ath5k_ani_set_spur_immunity_level.val = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"spur immunity level %d out of range\00", [60 x i8] zeroinitializer }, align 32
@__func__.ath5k_ani_set_spur_immunity_level = private unnamed_addr constant [34 x i8] c"ath5k_ani_set_spur_immunity_level\00", align 1
@ath5k_ani_set_firstep_level.val = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4, i32 8], [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"firstep level %d out of range\00", [34 x i8] zeroinitializer }, align 32
@__func__.ath5k_ani_set_firstep_level = private unnamed_addr constant [28 x i8] c"ath5k_ani_set_firstep_level\00", align 1
@ath5k_ani_set_ofdm_weak_signal_detection.m1l = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 127, i32 50], [24 x i8] zeroinitializer }, align 32
@ath5k_ani_set_ofdm_weak_signal_detection.m2l = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 127, i32 40], [24 x i8] zeroinitializer }, align 32
@ath5k_ani_set_ofdm_weak_signal_detection.m1 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 127, i32 77], [24 x i8] zeroinitializer }, align 32
@ath5k_ani_set_ofdm_weak_signal_detection.m2 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 127, i32 64], [24 x i8] zeroinitializer }, align 32
@ath5k_ani_set_ofdm_weak_signal_detection.m2cnt = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 31, i32 16], [24 x i8] zeroinitializer }, align 32
@ath5k_ani_set_ofdm_weak_signal_detection.m2lcnt = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 63, i32 48], [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(%s:%d): turned %s\00", [45 x i8] zeroinitializer }, align 32
@__func__.ath5k_ani_set_ofdm_weak_signal_detection = private unnamed_addr constant [41 x i8] c"ath5k_ani_set_ofdm_weak_signal_detection\00", align 1
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@ath5k_ani_set_cck_weak_signal_detection.val = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 6], [24 x i8] zeroinitializer }, align 32
@__func__.ath5k_ani_set_cck_weak_signal_detection = private unnamed_addr constant [40 x i8] c"ath5k_ani_set_cck_weak_signal_detection\00", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(%s:%d): listen %d (now %d)\00", [36 x i8] zeroinitializer }, align 32
@__func__.ath5k_ani_calibration = private unnamed_addr constant [22 x i8] c"ath5k_ani_calibration\00", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(%s:%d): check high ofdm %d/%d cck %d/%d\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(%s:%d): check low ofdm %d/%d cck %d/%d\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ANI mode %d out of range\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(%s:%d): ANI off\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ath5k_ani_init = private unnamed_addr constant [15 x i8] c"ath5k_ani_init\00", align 1
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(%s:%d): ANI manual low -> high sensitivity\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(%s:%d): ANI manual high -> low sensitivity\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(%s:%d): ANI auto\0A\00", [45 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015ath5k: ACK fail\09%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ath5k_ani_print_counters\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ath/ath5k/ani.c\00", [59 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr = internal global ptr @ath5k_ani_print_counters._entry, section ".printk_index", align 4
@ath5k_ani_print_counters._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.19, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015ath5k: RTS fail\09%d\0A\00", [42 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr.22 = internal global ptr @ath5k_ani_print_counters._entry.20, section ".printk_index", align 4
@ath5k_ani_print_counters._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.19, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015ath5k: RTS success\09%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr.25 = internal global ptr @ath5k_ani_print_counters._entry.23, section ".printk_index", align 4
@ath5k_ani_print_counters._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.19, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015ath5k: FCS error\09%d\0A\00", [41 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr.28 = internal global ptr @ath5k_ani_print_counters._entry.26, section ".printk_index", align 4
@ath5k_ani_print_counters._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.19, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\015ath5k: tx\09%d\0A\00", [16 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr.31 = internal global ptr @ath5k_ani_print_counters._entry.29, section ".printk_index", align 4
@ath5k_ani_print_counters._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.19, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\015ath5k: rx\09%d\0A\00", [16 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr.34 = internal global ptr @ath5k_ani_print_counters._entry.32, section ".printk_index", align 4
@ath5k_ani_print_counters._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.18, ptr @.str.19, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015ath5k: busy\09%d\0A\00", [46 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr.37 = internal global ptr @ath5k_ani_print_counters._entry.35, section ".printk_index", align 4
@ath5k_ani_print_counters._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.18, ptr @.str.19, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\015ath5k: cycles\09%d\0A\00", [44 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr.40 = internal global ptr @ath5k_ani_print_counters._entry.38, section ".printk_index", align 4
@ath5k_ani_print_counters._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.18, ptr @.str.19, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015ath5k: AR5K_PHYERR_CNT1\09%d\0A\00", [34 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr.43 = internal global ptr @ath5k_ani_print_counters._entry.41, section ".printk_index", align 4
@ath5k_ani_print_counters._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.18, ptr @.str.19, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015ath5k: AR5K_PHYERR_CNT2\09%d\0A\00", [34 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr.46 = internal global ptr @ath5k_ani_print_counters._entry.44, section ".printk_index", align 4
@ath5k_ani_print_counters._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.18, ptr @.str.19, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015ath5k: AR5K_OFDM_FIL_CNT\09%d\0A\00", [33 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr.49 = internal global ptr @ath5k_ani_print_counters._entry.47, section ".printk_index", align 4
@ath5k_ani_print_counters._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.18, ptr @.str.19, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015ath5k: AR5K_CCK_FIL_CNT\09%d\0A\00", [34 x i8] zeroinitializer }, align 32
@ath5k_ani_print_counters._entry_ptr.52 = internal global ptr @ath5k_ani_print_counters._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(%s:%d): raise immunity (%s)\00", [35 x i8] zeroinitializer }, align 32
@__func__.ath5k_ani_raise_immunity = private unnamed_addr constant [25 x i8] c"ath5k_ani_raise_immunity\00", align 1
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ODFM\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CCK\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(%s:%d): beacon RSSI high\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(%s:%d): beacon RSSI mid\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(%s:%d): beacon RSSI low, 2GHz\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(%s:%d): lower immunity\00", [40 x i8] zeroinitializer }, align 32
@__func__.ath5k_ani_lower_immunity = private unnamed_addr constant [25 x i8] c"ath5k_ani_lower_immunity\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 25]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.61 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 80, i32 18 }
@___asan_gen_.64 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 81, i32 18 }
@___asan_gen_.67 = private unnamed_addr constant [3 x i8] c"sz\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 82, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 83, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 86, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 101, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 113, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 117, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 137, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 140, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [4 x i8] c"m1l\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 159, i32 19 }
@___asan_gen_.100 = private unnamed_addr constant [4 x i8] c"m2l\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 160, i32 19 }
@___asan_gen_.103 = private unnamed_addr constant [3 x i8] c"m1\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 161, i32 19 }
@___asan_gen_.106 = private unnamed_addr constant [3 x i8] c"m2\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 162, i32 19 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"m2cnt\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 163, i32 19 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"m2lcnt\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 164, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 187, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 199, i32 19 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 496, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 498, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 511, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 652, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 667, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 669, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 677, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 687, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 733, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 734, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 735, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 736, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 739, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 740, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 741, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 742, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 744, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 746, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 748, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 750, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 228, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 258, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 275, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 285, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath5k/ani.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 314, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @ath5k_ani_print_counters._entry, ptr @ath5k_ani_print_counters._entry.20, ptr @ath5k_ani_print_counters._entry.23, ptr @ath5k_ani_print_counters._entry.26, ptr @ath5k_ani_print_counters._entry.29, ptr @ath5k_ani_print_counters._entry.32, ptr @ath5k_ani_print_counters._entry.35, ptr @ath5k_ani_print_counters._entry.38, ptr @ath5k_ani_print_counters._entry.41, ptr @ath5k_ani_print_counters._entry.44, ptr @ath5k_ani_print_counters._entry.47, ptr @ath5k_ani_print_counters._entry.50, ptr @ath5k_ani_print_counters._entry_ptr, ptr @ath5k_ani_print_counters._entry_ptr.22, ptr @ath5k_ani_print_counters._entry_ptr.25, ptr @ath5k_ani_print_counters._entry_ptr.28, ptr @ath5k_ani_print_counters._entry_ptr.31, ptr @ath5k_ani_print_counters._entry_ptr.34, ptr @ath5k_ani_print_counters._entry_ptr.37, ptr @ath5k_ani_print_counters._entry_ptr.40, ptr @ath5k_ani_print_counters._entry_ptr.43, ptr @ath5k_ani_print_counters._entry_ptr.46, ptr @ath5k_ani_print_counters._entry_ptr.49, ptr @ath5k_ani_print_counters._entry_ptr.52, ptr @ath5k_ani_set_noise_immunity_level.lo, ptr @ath5k_ani_set_noise_immunity_level.hi, ptr @ath5k_ani_set_noise_immunity_level.sz, ptr @ath5k_ani_set_noise_immunity_level.fr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ath5k_ani_set_spur_immunity_level.val, ptr @.str.4, ptr @ath5k_ani_set_firstep_level.val, ptr @.str.5, ptr @ath5k_ani_set_ofdm_weak_signal_detection.m1l, ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2l, ptr @ath5k_ani_set_ofdm_weak_signal_detection.m1, ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2, ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2cnt, ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2lcnt, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ath5k_ani_set_cck_weak_signal_detection.val, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_noise_immunity_level.lo to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_noise_immunity_level.hi to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_noise_immunity_level.sz to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_noise_immunity_level.fr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_spur_immunity_level.val to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_firstep_level.val to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_ofdm_weak_signal_detection.m1l to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2l to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_ofdm_weak_signal_detection.m1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2lcnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_set_cck_weak_signal_detection.val to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_ani_print_counters._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_ani_set_noise_immunity_level(ptr noundef %ah, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp1 = icmp ugt i32 %level, 1
  br i1 %cmp1, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.do.end35_crit_edge, label %if.then2

do.body.do.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %level) #4
  br label %do.end35

if.end3:                                          ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 38992
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %3 = and i32 %2, -61456
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx = getelementptr [2 x i8], ptr @ath5k_ani_set_noise_immunity_level.sz, i32 0, i32 %level
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %shl = shl nsw i32 %conv, 20
  %and5 = and i32 %shl, 267386880
  %or = or i32 %and5, %4
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %8, i32 38992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %9) #4, !srcloc !142
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %11, i32 39004
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %13 = and i32 %12, 2139160575
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx8 = getelementptr [2 x i8], ptr @ath5k_ani_set_noise_immunity_level.lo, i32 0, i32 %level
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %16 to i32
  %shl10 = shl nsw i32 %conv9, 7
  %and11 = and i32 %shl10, 32640
  %or12 = or i32 %and11, %14
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %18, i32 39004
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or12) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %19) #4, !srcloc !142
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %21, i32 39004
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %23 = and i32 %22, -8404737
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %arrayidx15 = getelementptr [2 x i8], ptr @ath5k_ani_set_noise_immunity_level.hi, i32 0, i32 %level
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %26 to i32
  %shl17 = shl nsw i32 %conv16, 15
  %and18 = and i32 %shl17, 4161536
  %or19 = or i32 %and18, %24
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %28, i32 39004
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %29 = tail call i32 @llvm.bswap.i32(i32 %or19) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %29) #4, !srcloc !142
  %30 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %31, i32 39000
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %33 = and i32 %32, -64516
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %arrayidx22 = getelementptr [2 x i8], ptr @ath5k_ani_set_noise_immunity_level.fr, i32 0, i32 %level
  %35 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %36 to i32
  %shl24 = shl nsw i32 %conv23, 18
  %and25 = and i32 %shl24, 66846720
  %or26 = or i32 %and25, %34
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %38, i32 39000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %39 = tail call i32 @llvm.bswap.i32(i32 %or26) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %39) #4, !srcloc !142
  %noise_imm_level = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 1
  %40 = ptrtoint ptr %noise_imm_level to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %level, ptr %noise_imm_level, align 4
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %41 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug, align 4
  %and29 = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end3.do.end35_crit_edge, label %if.then33, !prof !143

if.end3.do.end35_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

if.then33:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ath5k_ani_set_noise_immunity_level, i32 noundef 101, i32 noundef %level) #4
  br label %do.end35

do.end35:                                         ; preds = %if.then33, %if.end3.do.end35_crit_edge, %if.then2, %do.body.do.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_ani_set_spur_immunity_level(ptr noundef %ah, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %level)
  %cmp1 = icmp ugt i32 %level, 7
  br i1 %cmp1, label %entry.do.body_crit_edge, label %lor.lhs.false2

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false2:                                   ; preds = %entry
  %max_spur_level = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 6
  %0 = ptrtoint ptr %max_spur_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_spur_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %level)
  %cmp3 = icmp slt i32 %1, %level
  br i1 %cmp3, label %lor.lhs.false2.do.body_crit_edge, label %if.end5

lor.lhs.false2.do.body_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false2.do.body_crit_edge, %entry.do.body_crit_edge
  %call = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.do.end17_crit_edge, label %if.then4

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end17

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef %level) #4
  br label %do.end17

if.end5:                                          ; preds = %lor.lhs.false2
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 39204
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %5 = and i32 %4, 33554431
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %arrayidx = getelementptr [8 x i32], ptr @ath5k_ani_set_spur_immunity_level.val, i32 0, i32 %level
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %8, 1
  %and7 = and i32 %shl, 254
  %or = or i32 %and7, %6
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %10, i32 39204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %11) #4, !srcloc !142
  %spur_level = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 2
  %12 = ptrtoint ptr %spur_level to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %level, ptr %spur_level, align 8
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug, align 4
  %and11 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end5.do.end17_crit_edge, label %if.then15, !prof !143

if.end5.do.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end17

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ath5k_ani_set_spur_immunity_level, i32 noundef 126, i32 noundef %level) #4
  br label %do.end17

do.end17:                                         ; preds = %if.then15, %if.end5.do.end17_crit_edge, %if.then4, %do.body.do.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_ani_set_firstep_level(ptr noundef %ah, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %level)
  %cmp1 = icmp ugt i32 %level, 2
  br i1 %cmp1, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.do.end14_crit_edge, label %if.then2

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %level) #4
  br label %do.end14

if.end3:                                          ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 39000
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %3 = and i32 %2, -15729409
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx = getelementptr [3 x i32], ptr @ath5k_ani_set_firstep_level.val, i32 0, i32 %level
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %6, 12
  %and5 = and i32 %shl, 258048
  %or = or i32 %and5, %4
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %8, i32 39000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %9) #4, !srcloc !142
  %firstep_level = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 3
  %10 = ptrtoint ptr %firstep_level to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %level, ptr %firstep_level, align 4
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 4
  %and8 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end3.do.end14_crit_edge, label %if.then12, !prof !143

if.end3.do.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ath5k_ani_set_firstep_level, i32 noundef 148, i32 noundef %level) #4
  br label %do.end14

do.end14:                                         ; preds = %if.then12, %if.end3.do.end14_crit_edge, %if.then2, %do.body.do.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_ani_set_ofdm_weak_signal_detection(ptr noundef %ah, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 39020
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %3 = and i32 %2, -12590849
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %idxprom = zext i1 %on to i32
  %arrayidx = getelementptr [2 x i32], ptr @ath5k_ani_set_ofdm_weak_signal_detection.m1l, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %6, 14
  %and1 = and i32 %shl, 2080768
  %or = or i32 %and1, %4
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %8, i32 39020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %9) #4, !srcloc !142
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %11, i32 39020
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %13 = and i32 %12, -57360
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx6 = getelementptr [2 x i32], ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2l, i32 0, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6, align 4
  %shl7 = shl i32 %16, 21
  %and8 = and i32 %shl7, 266338304
  %or9 = or i32 %and8, %14
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %18, i32 39020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or9) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %19) #4, !srcloc !142
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %21, i32 39016
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %23 = and i32 %22, -65025
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %arrayidx14 = getelementptr [2 x i32], ptr @ath5k_ani_set_ofdm_weak_signal_detection.m1, i32 0, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14, align 4
  %shl15 = shl i32 %26, 17
  %and16 = and i32 %shl15, 16646144
  %or17 = or i32 %and16, %24
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %28, i32 39016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %29 = tail call i32 @llvm.bswap.i32(i32 %or17) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %29) #4, !srcloc !142
  %30 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %31, i32 39016
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %33 = and i32 %32, -128
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %arrayidx22 = getelementptr [2 x i32], ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2, i32 0, i32 %idxprom
  %35 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx22, align 4
  %shl23 = shl i32 %36, 24
  %and24 = and i32 %shl23, 2130706432
  %or25 = or i32 %and24, %34
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %38, i32 39016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %39 = tail call i32 @llvm.bswap.i32(i32 %or25) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %39) #4, !srcloc !142
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %41, i32 39016
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %43 = and i32 %42, -520093697
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %arrayidx30 = getelementptr [2 x i32], ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2cnt, i32 0, i32 %idxprom
  %45 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx30, align 4
  %and32 = and i32 %46, 31
  %or33 = or i32 %and32, %44
  %47 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %48, i32 39016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %49 = tail call i32 @llvm.bswap.i32(i32 %or33) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %49) #4, !srcloc !142
  %50 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %51, i32 39020
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %53 = and i32 %52, -4128769
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %arrayidx38 = getelementptr [2 x i32], ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2lcnt, i32 0, i32 %idxprom
  %55 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx38, align 4
  %shl39 = shl i32 %56, 8
  %and40 = and i32 %shl39, 16128
  %or41 = or i32 %and40, %54
  %57 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %58, i32 39020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %59 = tail call i32 @llvm.bswap.i32(i32 %or41) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %59) #4, !srcloc !142
  %60 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %61, i32 39020
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %63 = or i32 %62, 16777216
  %64 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %65, i32 39020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %63) #4, !srcloc !142
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %66 = and i32 %62, -16777217
  %67 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %68, i32 39020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %66) #4, !srcloc !142
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ofdm_weak_sig = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 4
  %69 = ptrtoint ptr %ofdm_weak_sig to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %frombool, ptr %ofdm_weak_sig, align 8
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %70 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %debug, align 4
  %and49 = and i32 %71, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end.do.end_crit_edge, label %if.then53, !prof !143

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then53:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %cond = select i1 %on, ptr @.str.7, ptr @.str.8
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ath5k_ani_set_ofdm_weak_signal_detection, i32 noundef 188, ptr noundef nonnull %cond) #4
  br label %do.end

do.end:                                           ; preds = %if.then53, %if.end.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_ani_set_cck_weak_signal_detection(ptr noundef %ah, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 41480
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %3 = and i32 %2, -1056964609
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %idxprom = zext i1 %on to i32
  %arrayidx = getelementptr [2 x i32], ptr @ath5k_ani_set_cck_weak_signal_detection.val, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and1 = and i32 %6, 63
  %or = or i32 %and1, %4
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %8, i32 41480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %9) #4, !srcloc !142
  %cck_weak_sig = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 5
  %10 = ptrtoint ptr %cck_weak_sig to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %cck_weak_sig, align 1
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 4
  %and4 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %entry.do.end_crit_edge, label %if.then, !prof !143

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cond = select i1 %on, ptr @.str.7, ptr @.str.8
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ath5k_ani_set_cck_weak_signal_detection, i32 noundef 204, ptr noundef nonnull %cond) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_ani_calibration(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ani_state = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60
  %cc_lock.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 19
  tail call void @_raw_spin_lock_bh(ptr noundef %cc_lock.i) #4
  tail call void @ath_hw_cycle_counters_update(ptr noundef %ah) #4
  %last_cc.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 10
  %cc_ani.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 20
  %0 = call ptr @memcpy(ptr %last_cc.i, ptr %cc_ani.i, i32 16)
  %call1.i = tail call i32 @ath_hw_get_listen_time(ptr noundef %ah) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %cc_lock.i) #4
  %listen_time = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 7
  %1 = ptrtoint ptr %listen_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %listen_time, align 4
  %add = add i32 %2, %call1.i
  store i32 %add, ptr %listen_time, align 4
  %3 = ptrtoint ptr %ani_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ani_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @ath5k_ani_save_and_clear_phy_errors(ptr noundef %ah, ptr noundef %ani_state)
  %5 = ptrtoint ptr %listen_time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %listen_time, align 4
  %mul = mul i32 %6, 500
  %div = udiv i32 %mul, 1000
  %mul4 = mul i32 %6, 200
  %div5 = udiv i32 %mul4, 1000
  %mul10 = mul i32 %6, 100
  %div11 = udiv i32 %mul10, 1000
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  %and = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.body17_crit_edge, label %if.then14, !prof !143

if.end.do.body17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.ath5k_ani_calibration, i32 noundef 497, i32 noundef %6, i32 noundef %call1.i) #4
  br label %do.body17

do.body17:                                        ; preds = %if.then14, %if.end.do.body17_crit_edge
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 4
  %and20 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body17.do.end31_crit_edge, label %if.then28, !prof !143

do.body17.do.end31_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

if.then28:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %ofdm_errors = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 8
  %11 = ptrtoint ptr %ofdm_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ofdm_errors, align 4
  %cck_errors = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 9
  %13 = ptrtoint ptr %cck_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cck_errors, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.ath5k_ani_calibration, i32 noundef 500, i32 noundef %12, i32 noundef %div, i32 noundef %14, i32 noundef %div5) #4
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %do.body17.do.end31_crit_edge
  %ofdm_errors32 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 8
  %15 = ptrtoint ptr %ofdm_errors32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ofdm_errors32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %div)
  %cmp33 = icmp ugt i32 %16, %div
  br i1 %cmp33, label %do.end31.if.then36_crit_edge, label %lor.lhs.false

do.end31.if.then36_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

lor.lhs.false:                                    ; preds = %do.end31
  %cck_errors34 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 9
  %17 = ptrtoint ptr %cck_errors34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cck_errors34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %div5)
  %cmp35 = icmp ugt i32 %18, %div5
  br i1 %cmp35, label %lor.lhs.false.if.then36_crit_edge, label %if.else

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %do.end31.if.then36_crit_edge
  %ah_beacon_rssi_avg.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 110
  %19 = ptrtoint ptr %ah_beacon_rssi_avg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ah_beacon_rssi_avg.i, align 4
  %21 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug, align 4
  %and.i = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then36.do.end.i_crit_edge, label %if.then.i, !prof !143

if.then36.do.end.i_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %cond.i = select i1 %cmp33, ptr @.str.54, ptr @.str.55
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.ath5k_ani_raise_immunity, i32 noundef 229, ptr noundef nonnull %cond.i) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then36.do.end.i_crit_edge
  %noise_imm_level.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 1
  %23 = ptrtoint ptr %noise_imm_level.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %noise_imm_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp slt i32 %24, 1
  br i1 %cmp.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add nsw i32 %24, 1
  tail call void @ath5k_ani_set_noise_immunity_level(ptr noundef %ah, i32 noundef %add.i) #4
  br label %ath5k_ani_raise_immunity.exit

if.end6.i:                                        ; preds = %do.end.i
  br i1 %cmp33, label %land.lhs.true.i, label %if.end6.i.if.end12.i_crit_edge

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %spur_level.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 2
  %25 = ptrtoint ptr %spur_level.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %spur_level.i, align 4
  %max_spur_level.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 6
  %27 = ptrtoint ptr %max_spur_level.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_spur_level.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp8.i = icmp slt i32 %26, %28
  br i1 %cmp8.i, label %if.then9.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %add11.i = add nsw i32 %26, 1
  tail call void @ath5k_ani_set_spur_immunity_level(ptr noundef %ah, i32 noundef %add11.i) #4
  br label %ath5k_ani_raise_immunity.exit

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.end6.i.if.end12.i_crit_edge
  %opmode.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 12
  %29 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp13.i = icmp eq i32 %30, 3
  br i1 %cmp13.i, label %if.then14.i, label %if.end20.i

if.then14.i:                                      ; preds = %if.end12.i
  %firstep_level.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 3
  %31 = ptrtoint ptr %firstep_level.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %firstep_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp15.i = icmp slt i32 %32, 2
  br i1 %cmp15.i, label %if.then16.i, label %if.then14.i.ath5k_ani_raise_immunity.exit_crit_edge

if.then14.i.ath5k_ani_raise_immunity.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_ani_raise_immunity.exit

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  %add18.i = add nsw i32 %32, 1
  tail call void @ath5k_ani_set_firstep_level(ptr noundef %ah, i32 noundef %add18.i) #4
  br label %ath5k_ani_raise_immunity.exit

if.end20.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 41983, i32 %20)
  %cmp21.i = icmp ugt i32 %20, 41983
  br i1 %cmp21.i, label %do.body23.i, label %if.else.i

do.body23.i:                                      ; preds = %if.end20.i
  %33 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug, align 4
  %and26.i = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %do.body23.i.do.end37.i_crit_edge, label %if.then34.i, !prof !143

do.body23.i.do.end37.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end37.i

if.then34.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.ath5k_ani_raise_immunity, i32 noundef 259) #4
  br label %do.end37.i

do.end37.i:                                       ; preds = %if.then34.i, %do.body23.i.do.end37.i_crit_edge
  br i1 %cmp33, label %land.lhs.true39.i, label %do.end37.i.if.end42.i_crit_edge

do.end37.i.if.end42.i_crit_edge:                  ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

land.lhs.true39.i:                                ; preds = %do.end37.i
  %ofdm_weak_sig.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 4
  %35 = ptrtoint ptr %ofdm_weak_sig.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ofdm_weak_sig.i, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool40.not.i = icmp eq i8 %36, 0
  br i1 %tobool40.not.i, label %land.lhs.true39.i.if.end42.i_crit_edge, label %if.then41.i

land.lhs.true39.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

if.then41.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath5k_ani_set_ofdm_weak_signal_detection(ptr noundef %ah, i1 noundef zeroext false) #4
  tail call void @ath5k_ani_set_spur_immunity_level(ptr noundef %ah, i32 noundef 0) #4
  br label %ath5k_ani_raise_immunity.exit

if.end42.i:                                       ; preds = %land.lhs.true39.i.if.end42.i_crit_edge, %do.end37.i.if.end42.i_crit_edge
  %firstep_level43.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 3
  %37 = ptrtoint ptr %firstep_level43.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %firstep_level43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp44.i = icmp slt i32 %38, 2
  br i1 %cmp44.i, label %if.then45.i, label %if.end42.i.ath5k_ani_raise_immunity.exit_crit_edge

if.end42.i.ath5k_ani_raise_immunity.exit_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_ani_raise_immunity.exit

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  %add47.i = add nsw i32 %38, 1
  tail call void @ath5k_ani_set_firstep_level(ptr noundef %ah, i32 noundef %add47.i) #4
  br label %ath5k_ani_raise_immunity.exit

if.else.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %20)
  %cmp49.i = icmp ugt i32 %20, 8191
  br i1 %cmp49.i, label %do.body51.i, label %if.else78.i

do.body51.i:                                      ; preds = %if.else.i
  %39 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug, align 4
  %and54.i = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %do.body51.i.do.end65.i_crit_edge, label %if.then62.i, !prof !143

do.body51.i.do.end65.i_crit_edge:                 ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end65.i

if.then62.i:                                      ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.ath5k_ani_raise_immunity, i32 noundef 276) #4
  br label %do.end65.i

do.end65.i:                                       ; preds = %if.then62.i, %do.body51.i.do.end65.i_crit_edge
  br i1 %cmp33, label %land.lhs.true67.i, label %do.end65.i.if.end71.i_crit_edge

do.end65.i.if.end71.i_crit_edge:                  ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71.i

land.lhs.true67.i:                                ; preds = %do.end65.i
  %ofdm_weak_sig68.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 4
  %41 = ptrtoint ptr %ofdm_weak_sig68.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ofdm_weak_sig68.i, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool69.not.i = icmp eq i8 %42, 0
  br i1 %tobool69.not.i, label %if.then70.i, label %land.lhs.true67.i.if.end71.i_crit_edge

land.lhs.true67.i.if.end71.i_crit_edge:           ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71.i

if.then70.i:                                      ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath5k_ani_set_ofdm_weak_signal_detection(ptr noundef %ah, i1 noundef zeroext true) #4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then70.i, %land.lhs.true67.i.if.end71.i_crit_edge, %do.end65.i.if.end71.i_crit_edge
  %firstep_level72.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 3
  %43 = ptrtoint ptr %firstep_level72.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %firstep_level72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp73.i = icmp slt i32 %44, 2
  br i1 %cmp73.i, label %if.then74.i, label %if.end71.i.ath5k_ani_raise_immunity.exit_crit_edge

if.end71.i.ath5k_ani_raise_immunity.exit_crit_edge: ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_ani_raise_immunity.exit

if.then74.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  %add76.i = add nsw i32 %44, 1
  tail call void @ath5k_ani_set_firstep_level(ptr noundef %ah, i32 noundef %add76.i) #4
  br label %ath5k_ani_raise_immunity.exit

if.else78.i:                                      ; preds = %if.else.i
  %ah_current_channel.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %45 = ptrtoint ptr %ah_current_channel.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ah_current_channel.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp79.i = icmp eq i32 %48, 0
  br i1 %cmp79.i, label %do.body81.i, label %if.else78.i.ath5k_ani_raise_immunity.exit_crit_edge

if.else78.i.ath5k_ani_raise_immunity.exit_crit_edge: ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_ani_raise_immunity.exit

do.body81.i:                                      ; preds = %if.else78.i
  %49 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug, align 4
  %and84.i = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %do.body81.i.do.end95.i_crit_edge, label %if.then92.i, !prof !143

do.body81.i.do.end95.i_crit_edge:                 ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end95.i

if.then92.i:                                      ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.ath5k_ani_raise_immunity, i32 noundef 286) #4
  br label %do.end95.i

do.end95.i:                                       ; preds = %if.then92.i, %do.body81.i.do.end95.i_crit_edge
  br i1 %cmp33, label %land.lhs.true97.i, label %do.end95.i.if.end101.i_crit_edge

do.end95.i.if.end101.i_crit_edge:                 ; preds = %do.end95.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101.i

land.lhs.true97.i:                                ; preds = %do.end95.i
  %ofdm_weak_sig98.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 4
  %51 = ptrtoint ptr %ofdm_weak_sig98.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ofdm_weak_sig98.i, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool99.not.i = icmp eq i8 %52, 0
  br i1 %tobool99.not.i, label %land.lhs.true97.i.if.end101.i_crit_edge, label %if.then100.i

land.lhs.true97.i.if.end101.i_crit_edge:          ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101.i

if.then100.i:                                     ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath5k_ani_set_ofdm_weak_signal_detection(ptr noundef %ah, i1 noundef zeroext false) #4
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then100.i, %land.lhs.true97.i.if.end101.i_crit_edge, %do.end95.i.if.end101.i_crit_edge
  %firstep_level102.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 3
  %53 = ptrtoint ptr %firstep_level102.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %firstep_level102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp103.i = icmp sgt i32 %54, 0
  br i1 %cmp103.i, label %if.then104.i, label %if.end101.i.ath5k_ani_raise_immunity.exit_crit_edge

if.end101.i.ath5k_ani_raise_immunity.exit_crit_edge: ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_ani_raise_immunity.exit

if.then104.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath5k_ani_set_firstep_level(ptr noundef %ah, i32 noundef 0) #4
  br label %ath5k_ani_raise_immunity.exit

ath5k_ani_raise_immunity.exit:                    ; preds = %if.then104.i, %if.end101.i.ath5k_ani_raise_immunity.exit_crit_edge, %if.else78.i.ath5k_ani_raise_immunity.exit_crit_edge, %if.then74.i, %if.end71.i.ath5k_ani_raise_immunity.exit_crit_edge, %if.then45.i, %if.end42.i.ath5k_ani_raise_immunity.exit_crit_edge, %if.then41.i, %if.then16.i, %if.then14.i.ath5k_ani_raise_immunity.exit_crit_edge, %if.then9.i, %if.then4.i
  %55 = ptrtoint ptr %ofdm_errors32 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ofdm_errors32, align 4
  %last_ofdm_errors.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 12
  %57 = ptrtoint ptr %last_ofdm_errors.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %last_ofdm_errors.i, align 4
  %cck_errors.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 9
  br label %cleanup.sink.split

if.else:                                          ; preds = %lor.lhs.false
  %58 = ptrtoint ptr %listen_time to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %listen_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %59)
  %cmp41 = icmp ugt i32 %59, 500
  br i1 %cmp41, label %do.body43, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body43:                                        ; preds = %if.else
  %60 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %debug, align 4
  %and46 = and i32 %61, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body43.do.end59_crit_edge, label %if.then54, !prof !143

do.body43.do.end59_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end59

if.then54:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.ath5k_ani_calibration, i32 noundef 513, i32 noundef %16, i32 noundef %div5, i32 noundef %18, i32 noundef %div11) #4
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body43.do.end59_crit_edge
  %62 = ptrtoint ptr %ofdm_errors32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ofdm_errors32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %div5)
  %cmp61.not = icmp ugt i32 %63, %div5
  br i1 %cmp61.not, label %do.end59.if.end65_crit_edge, label %land.lhs.true

do.end59.if.end65_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

land.lhs.true:                                    ; preds = %do.end59
  %64 = ptrtoint ptr %cck_errors34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cck_errors34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %div11)
  %cmp63.not = icmp ugt i32 %65, %div11
  br i1 %cmp63.not, label %land.lhs.true.if.end65_crit_edge, label %if.then64

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ath5k_ani_lower_immunity(ptr noundef %ah, ptr noundef %ani_state)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %land.lhs.true.if.end65_crit_edge, %do.end59.if.end65_crit_edge
  %66 = ptrtoint ptr %ofdm_errors32 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ofdm_errors32, align 4
  %last_ofdm_errors.i113 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 12
  %68 = ptrtoint ptr %last_ofdm_errors.i113 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %last_ofdm_errors.i113, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end65, %ath5k_ani_raise_immunity.exit
  %cck_errors.i.sink118 = phi ptr [ %cck_errors.i, %ath5k_ani_raise_immunity.exit ], [ %cck_errors34, %if.end65 ]
  %69 = ptrtoint ptr %cck_errors.i.sink118 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cck_errors.i.sink118, align 4
  %last_cck_errors.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 13
  %71 = ptrtoint ptr %last_cck_errors.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %last_cck_errors.i, align 4
  %72 = ptrtoint ptr %listen_time to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %listen_time, align 4
  %last_listen.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 11
  %74 = ptrtoint ptr %last_listen.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %last_listen.i, align 4
  %75 = ptrtoint ptr %ofdm_errors32 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %ofdm_errors32, align 4
  store i32 0, ptr %cck_errors.i.sink118, align 4
  store i32 0, ptr %listen_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath5k_ani_save_and_clear_phy_errors(ptr nocapture noundef readonly %ah, ptr nocapture noundef %as) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_has_phyerr_counters = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 4
  %0 = ptrtoint ptr %cap_has_phyerr_counters to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_has_phyerr_counters, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 33068
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !139
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %7, i32 33076
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #4, !srcloc !139
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %11, i32 33068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 218021632) #4, !srcloc !142
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %13, i32 33076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 956284672) #4, !srcloc !142
  %sub2 = add i32 %5, -12582412
  %sub4 = add i32 %9, -12582712
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2)
  %cmp = icmp eq i32 %sub2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %cmp5 = icmp eq i32 %sub4, 0
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  br i1 %cmp, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %ofdm_errors = getelementptr inbounds %struct.ath5k_ani_state, ptr %as, i32 0, i32 8
  %14 = ptrtoint ptr %ofdm_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ofdm_errors, align 4
  %add = add i32 %15, %sub2
  store i32 %add, ptr %ofdm_errors, align 4
  %sum_ofdm_errors = getelementptr inbounds %struct.ath5k_ani_state, ptr %as, i32 0, i32 14
  %16 = ptrtoint ptr %sum_ofdm_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sum_ofdm_errors, align 4
  %add10 = add i32 %17, %sub2
  store i32 %add10, ptr %sum_ofdm_errors, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  br i1 %cmp5, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %cck_errors = getelementptr inbounds %struct.ath5k_ani_state, ptr %as, i32 0, i32 9
  %18 = ptrtoint ptr %cck_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cck_errors, align 4
  %add14 = add i32 %19, %sub4
  store i32 %add14, ptr %cck_errors, align 4
  %sum_cck_errors = getelementptr inbounds %struct.ath5k_ani_state, ptr %as, i32 0, i32 15
  %20 = ptrtoint ptr %sum_cck_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sum_cck_errors, align 4
  %add15 = add i32 %21, %sub4
  store i32 %add15, ptr %sum_cck_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then13 ], [ 1, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_ani_lower_immunity(ptr noundef %ah, ptr nocapture noundef readonly %as) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_beacon_rssi_avg = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 110
  %0 = ptrtoint ptr %ah_beacon_rssi_avg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_beacon_rssi_avg, align 4
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !143

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.ath5k_ani_lower_immunity, i32 noundef 314) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 12
  %4 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.end
  %firstep_level = getelementptr inbounds %struct.ath5k_ani_state, ptr %as, i32 0, i32 3
  %6 = ptrtoint ptr %firstep_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %firstep_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp sgt i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.then3.if.end31_crit_edge

if.then3.if.end31_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add nsw i32 %7, -1
  tail call void @ath5k_ani_set_firstep_level(ptr noundef %ah, i32 noundef %sub)
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 41983, i32 %1)
  %cmp8 = icmp ugt i32 %1, 41983
  br i1 %cmp8, label %if.else.if.end31_crit_edge, label %if.else10

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %1)
  %cmp11 = icmp ugt i32 %1, 8191
  br i1 %cmp11, label %if.then12, label %if.else22

if.then12:                                        ; preds = %if.else10
  %ofdm_weak_sig = getelementptr inbounds %struct.ath5k_ani_state, ptr %as, i32 0, i32 4
  %8 = ptrtoint ptr %ofdm_weak_sig to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ofdm_weak_sig, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath5k_ani_set_ofdm_weak_signal_detection(ptr noundef %ah, i1 noundef zeroext true)
  br label %cleanup

if.end15:                                         ; preds = %if.then12
  %firstep_level16 = getelementptr inbounds %struct.ath5k_ani_state, ptr %as, i32 0, i32 3
  %10 = ptrtoint ptr %firstep_level16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %firstep_level16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17 = icmp sgt i32 %11, 0
  br i1 %cmp17, label %if.then18, label %if.end15.if.end31_crit_edge

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %sub20 = add nsw i32 %11, -1
  tail call void @ath5k_ani_set_firstep_level(ptr noundef %ah, i32 noundef %sub20)
  br label %cleanup

if.else22:                                        ; preds = %if.else10
  %firstep_level23 = getelementptr inbounds %struct.ath5k_ani_state, ptr %as, i32 0, i32 3
  %12 = ptrtoint ptr %firstep_level23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %firstep_level23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp24 = icmp sgt i32 %13, 0
  br i1 %cmp24, label %if.then25, label %if.else22.if.end31_crit_edge

if.else22.if.end31_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  %sub27 = add nsw i32 %13, -1
  tail call void @ath5k_ani_set_firstep_level(ptr noundef %ah, i32 noundef %sub27)
  br label %cleanup

if.end31:                                         ; preds = %if.else22.if.end31_crit_edge, %if.end15.if.end31_crit_edge, %if.else.if.end31_crit_edge, %if.then3.if.end31_crit_edge
  %spur_level = getelementptr inbounds %struct.ath5k_ani_state, ptr %as, i32 0, i32 2
  %14 = ptrtoint ptr %spur_level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spur_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp32 = icmp sgt i32 %15, 0
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %sub35 = add nsw i32 %15, -1
  tail call void @ath5k_ani_set_spur_immunity_level(ptr noundef %ah, i32 noundef %sub35)
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %noise_imm_level = getelementptr inbounds %struct.ath5k_ani_state, ptr %as, i32 0, i32 1
  %16 = ptrtoint ptr %noise_imm_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %noise_imm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp37 = icmp sgt i32 %17, 0
  br i1 %cmp37, label %if.then38, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %sub40 = add nsw i32 %17, -1
  tail call void @ath5k_ani_set_noise_immunity_level(ptr noundef %ah, i32 noundef %sub40)
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end36.cleanup_crit_edge, %if.then33, %if.then25, %if.then18, %if.then14, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_ani_mib_intr(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ani_state = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60
  %cap_has_phyerr_counters = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 4
  %0 = ptrtoint ptr %cap_has_phyerr_counters to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_has_phyerr_counters, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 33060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !142
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %5, i32 33064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #4, !srcloc !142
  %6 = ptrtoint ptr %ani_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ani_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.not = icmp eq i32 %7, 3
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call fastcc i32 @ath5k_ani_save_and_clear_phy_errors(ptr noundef %ah, ptr noundef %ani_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %ofdm_errors = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 8
  %8 = ptrtoint ptr %ofdm_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ofdm_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %9)
  %cmp7 = icmp ugt i32 %9, 500
  br i1 %cmp7, label %if.end6.if.then9_crit_edge, label %lor.lhs.false

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end6
  %cck_errors = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 9
  %10 = ptrtoint ptr %cck_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cck_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %11)
  %cmp8 = icmp ugt i32 %11, 200
  br i1 %cmp8, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %state.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 61, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %ani_tasklet = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 61
  tail call void @__tasklet_schedule(ptr noundef %ani_tasklet) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_ani_phy_error_report(ptr noundef %ah, i32 noundef %phyerr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %phyerr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %phyerr, label %entry.if.end13_crit_edge [
    i32 17, label %if.then
    i32 25, label %if.then5
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then:                                          ; preds = %entry
  %ofdm_errors = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 8
  %1 = ptrtoint ptr %ofdm_errors to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ofdm_errors, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %ofdm_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %inc)
  %cmp2 = icmp ugt i32 %inc, 500
  br i1 %cmp2, label %if.then3, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then3:                                         ; preds = %if.then
  %state.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 61, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end13.sink.split_crit_edge, label %if.then3.if.end13_crit_edge

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then3.if.end13.sink.split_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.sink.split

if.then5:                                         ; preds = %entry
  %cck_errors = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 9
  %3 = ptrtoint ptr %cck_errors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cck_errors, align 4
  %inc6 = add i32 %4, 1
  store i32 %inc6, ptr %cck_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %inc6)
  %cmp8 = icmp ugt i32 %inc6, 200
  br i1 %cmp8, label %if.then9, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then9:                                         ; preds = %if.then5
  %state.i20 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 61, i32 1
  %call.i21 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %if.then9.if.end13.sink.split_crit_edge, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then9.if.end13.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.then9.if.end13.sink.split_crit_edge, %if.then3.if.end13.sink.split_crit_edge
  %ani_tasklet10 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 61
  tail call void @__tasklet_schedule(ptr noundef %ani_tasklet10) #4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.then9.if.end13_crit_edge, %if.then5.if.end13_crit_edge, %if.then3.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_ani_init(ptr noundef %ah, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp2 = icmp ugt i32 %mode, 3
  br i1 %cmp2, label %do.body, label %if.end6

do.body:                                          ; preds = %lor.lhs.false
  %call = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %if.then4

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef %mode) #4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %ani_state = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60
  %2 = call ptr @memset(ptr %ani_state, i32 0, i32 72)
  %ah_mac_srev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 70
  %3 = ptrtoint ptr %ah_mac_srev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ah_mac_srev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %4)
  %cmp7 = icmp ult i32 %4, 112
  %spec.select = select i1 %cmp7, i32 7, i32 2
  %5 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 4
  %7 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %mode, label %do.body61 [
    i32 0, label %do.body15
    i32 1, label %do.body25
    i32 2, label %do.body42
  ]

do.body15:                                        ; preds = %if.end6
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body15.if.else88_crit_edge, label %if.then19, !prof !143

do.body15.if.else88_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else88

if.then19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ath5k_ani_init, i32 noundef 667) #4
  br label %if.else88

do.body25:                                        ; preds = %if.end6
  %debug26 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %10 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug26, align 4
  %and28 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body25.do.end38_crit_edge, label %if.then36, !prof !143

do.body25.do.end38_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end38

if.then36:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ath5k_ani_init, i32 noundef 670) #4
  br label %do.end38

do.end38:                                         ; preds = %if.then36, %do.body25.do.end38_crit_edge
  tail call void @ath5k_ani_set_noise_immunity_level(ptr noundef %ah, i32 noundef 0)
  tail call void @ath5k_ani_set_spur_immunity_level(ptr noundef %ah, i32 noundef 0)
  %iobase.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %12 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 39000
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %15 = and i32 %14, -15729409
  %16 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %17, i32 39000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %15) #4, !srcloc !142
  %firstep_level.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 3
  %18 = ptrtoint ptr %firstep_level.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %firstep_level.i, align 4
  %19 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug26, align 4
  %and8.i = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.end38.ath5k_ani_set_firstep_level.exit_crit_edge, label %if.then12.i, !prof !143

do.end38.ath5k_ani_set_firstep_level.exit_crit_edge: ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_ani_set_firstep_level.exit

if.then12.i:                                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ath5k_ani_set_firstep_level, i32 noundef 148, i32 noundef 0) #4
  br label %ath5k_ani_set_firstep_level.exit

ath5k_ani_set_firstep_level.exit:                 ; preds = %if.then12.i, %do.end38.ath5k_ani_set_firstep_level.exit_crit_edge
  tail call void @ath5k_ani_set_ofdm_weak_signal_detection(ptr noundef %ah, i1 noundef zeroext true)
  %21 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i151 = getelementptr i8, ptr %22, i32 41480
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i151) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %24 = and i32 %23, -1056964609
  %25 = or i32 %24, 100663296
  %26 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %27, i32 41480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %25) #4, !srcloc !142
  %cck_weak_sig.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 5
  %28 = ptrtoint ptr %cck_weak_sig.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %cck_weak_sig.i, align 1
  %29 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug26, align 4
  %and4.i = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %ath5k_ani_set_firstep_level.exit.if.else88_crit_edge, label %if.then.i, !prof !143

ath5k_ani_set_firstep_level.exit.if.else88_crit_edge: ; preds = %ath5k_ani_set_firstep_level.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else88

if.then.i:                                        ; preds = %ath5k_ani_set_firstep_level.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ath5k_ani_set_cck_weak_signal_detection, i32 noundef 204, ptr noundef nonnull @.str.7) #4
  br label %if.else88

do.body42:                                        ; preds = %if.end6
  %debug43 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %31 = ptrtoint ptr %debug43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug43, align 4
  %and45 = and i32 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body42.do.end55_crit_edge, label %if.then53, !prof !143

do.body42.do.end55_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end55

if.then53:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ath5k_ani_init, i32 noundef 678) #4
  br label %do.end55

do.end55:                                         ; preds = %if.then53, %do.body42.do.end55_crit_edge
  tail call void @ath5k_ani_set_noise_immunity_level(ptr noundef %ah, i32 noundef 1)
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %5, align 4
  tail call void @ath5k_ani_set_spur_immunity_level(ptr noundef %ah, i32 noundef %34)
  %iobase.i.i153 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %35 = ptrtoint ptr %iobase.i.i153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i.i153, align 4
  %add.ptr.i.i154 = getelementptr i8, ptr %36, i32 39000
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i154) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %38 = and i32 %37, -15729409
  %39 = or i32 %38, 8388608
  %40 = ptrtoint ptr %iobase.i.i153 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i.i153, align 4
  %add.ptr.i26.i156 = getelementptr i8, ptr %41, i32 39000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i156, i32 %39) #4, !srcloc !142
  %firstep_level.i157 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 3
  %42 = ptrtoint ptr %firstep_level.i157 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %firstep_level.i157, align 4
  %43 = ptrtoint ptr %debug43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debug43, align 4
  %and8.i159 = and i32 %44, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i159)
  %tobool9.not.i160 = icmp eq i32 %and8.i159, 0
  br i1 %tobool9.not.i160, label %do.end55.ath5k_ani_set_firstep_level.exit162_crit_edge, label %if.then12.i161, !prof !143

do.end55.ath5k_ani_set_firstep_level.exit162_crit_edge: ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_ani_set_firstep_level.exit162

if.then12.i161:                                   ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ath5k_ani_set_firstep_level, i32 noundef 148, i32 noundef 2) #4
  br label %ath5k_ani_set_firstep_level.exit162

ath5k_ani_set_firstep_level.exit162:              ; preds = %if.then12.i161, %do.end55.ath5k_ani_set_firstep_level.exit162_crit_edge
  tail call void @ath5k_ani_set_ofdm_weak_signal_detection(ptr noundef %ah, i1 noundef zeroext false)
  %45 = ptrtoint ptr %iobase.i.i153 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i.i153, align 4
  %add.ptr.i.i164 = getelementptr i8, ptr %46, i32 41480
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i164) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %48 = and i32 %47, -1056964609
  %49 = or i32 %48, 134217728
  %50 = ptrtoint ptr %iobase.i.i153 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iobase.i.i153, align 4
  %add.ptr.i16.i166 = getelementptr i8, ptr %51, i32 41480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i166, i32 %49) #4, !srcloc !142
  %cck_weak_sig.i167 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 5
  %52 = ptrtoint ptr %cck_weak_sig.i167 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %cck_weak_sig.i167, align 1
  %53 = ptrtoint ptr %debug43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug43, align 4
  %and4.i169 = and i32 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i169)
  %tobool5.not.i170 = icmp eq i32 %and4.i169, 0
  br i1 %tobool5.not.i170, label %ath5k_ani_set_firstep_level.exit162.if.else88_crit_edge, label %if.then.i171, !prof !143

ath5k_ani_set_firstep_level.exit162.if.else88_crit_edge: ; preds = %ath5k_ani_set_firstep_level.exit162
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else88

if.then.i171:                                     ; preds = %ath5k_ani_set_firstep_level.exit162
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ath5k_ani_set_cck_weak_signal_detection, i32 noundef 204, ptr noundef nonnull @.str.8) #4
  br label %if.else88

do.body61:                                        ; preds = %if.end6
  %debug62 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %55 = ptrtoint ptr %debug62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %debug62, align 4
  %and64 = and i32 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body61.do.end74_crit_edge, label %if.then72, !prof !143

do.body61.do.end74_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

if.then72:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.ath5k_ani_init, i32 noundef 687) #4
  br label %do.end74

do.end74:                                         ; preds = %if.then72, %do.body61.do.end74_crit_edge
  tail call void @ath5k_ani_set_noise_immunity_level(ptr noundef %ah, i32 noundef 0)
  tail call void @ath5k_ani_set_spur_immunity_level(ptr noundef %ah, i32 noundef 0)
  %iobase.i.i173 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %57 = ptrtoint ptr %iobase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iobase.i.i173, align 4
  %add.ptr.i.i174 = getelementptr i8, ptr %58, i32 39000
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i174) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %60 = and i32 %59, -15729409
  %61 = ptrtoint ptr %iobase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iobase.i.i173, align 4
  %add.ptr.i26.i175 = getelementptr i8, ptr %62, i32 39000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i175, i32 %60) #4, !srcloc !142
  %firstep_level.i176 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 3
  %63 = ptrtoint ptr %firstep_level.i176 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %firstep_level.i176, align 4
  %64 = ptrtoint ptr %debug62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %debug62, align 4
  %and8.i178 = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i178)
  %tobool9.not.i179 = icmp eq i32 %and8.i178, 0
  br i1 %tobool9.not.i179, label %do.end74.ath5k_ani_set_firstep_level.exit181_crit_edge, label %if.then12.i180, !prof !143

do.end74.ath5k_ani_set_firstep_level.exit181_crit_edge: ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_ani_set_firstep_level.exit181

if.then12.i180:                                   ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ath5k_ani_set_firstep_level, i32 noundef 148, i32 noundef 0) #4
  br label %ath5k_ani_set_firstep_level.exit181

ath5k_ani_set_firstep_level.exit181:              ; preds = %if.then12.i180, %do.end74.ath5k_ani_set_firstep_level.exit181_crit_edge
  tail call void @ath5k_ani_set_ofdm_weak_signal_detection(ptr noundef %ah, i1 noundef zeroext true)
  %66 = ptrtoint ptr %iobase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %iobase.i.i173, align 4
  %add.ptr.i.i183 = getelementptr i8, ptr %67, i32 41480
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i183) #4, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %69 = and i32 %68, -1056964609
  %70 = or i32 %69, 134217728
  %71 = ptrtoint ptr %iobase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iobase.i.i173, align 4
  %add.ptr.i16.i185 = getelementptr i8, ptr %72, i32 41480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i185, i32 %70) #4, !srcloc !142
  %cck_weak_sig.i186 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60, i32 5
  %73 = ptrtoint ptr %cck_weak_sig.i186 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %cck_weak_sig.i186, align 1
  %74 = ptrtoint ptr %debug62 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %debug62, align 4
  %and4.i188 = and i32 %75, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i188)
  %tobool5.not.i189 = icmp eq i32 %and4.i188, 0
  br i1 %tobool5.not.i189, label %ath5k_ani_set_firstep_level.exit181.if.then80_crit_edge, label %if.then.i190, !prof !143

ath5k_ani_set_firstep_level.exit181.if.then80_crit_edge: ; preds = %ath5k_ani_set_firstep_level.exit181
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then80

if.then.i190:                                     ; preds = %ath5k_ani_set_firstep_level.exit181
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ath5k_ani_set_cck_weak_signal_detection, i32 noundef 204, ptr noundef nonnull @.str.8) #4
  br label %if.then80

if.then80:                                        ; preds = %if.then.i190, %ath5k_ani_set_firstep_level.exit181.if.then80_crit_edge
  %cap_has_phyerr_counters = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 4
  %76 = ptrtoint ptr %cap_has_phyerr_counters to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %cap_has_phyerr_counters, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool81.not = icmp eq i8 %77, 0
  br i1 %tobool81.not, label %if.else83, label %if.then82

if.then82:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #6
  %78 = ptrtoint ptr %iobase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iobase.i.i173, align 4
  %add.ptr.i.i193 = getelementptr i8, ptr %79, i32 33068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i193, i32 218021632) #4, !srcloc !142
  %80 = ptrtoint ptr %iobase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iobase.i.i173, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %81, i32 33076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 956284672) #4, !srcloc !142
  %82 = ptrtoint ptr %iobase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %iobase.i.i173, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %83, i32 33072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 512) #4, !srcloc !142
  %84 = ptrtoint ptr %iobase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %iobase.i.i173, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %85, i32 33080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 2) #4, !srcloc !142
  %86 = ptrtoint ptr %iobase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %iobase.i.i173, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %87, i32 33060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 0) #4, !srcloc !142
  %88 = ptrtoint ptr %iobase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iobase.i.i173, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %89, i32 33064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 0) #4, !srcloc !142
  br label %if.end100

if.else83:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #6
  %call84 = tail call i32 @ath5k_hw_get_rx_filter(ptr noundef %ah) #4
  %90 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp86 = icmp eq i32 %91, 1
  %cond = select i1 %cmp86, i32 64, i32 256
  %or = or i32 %cond, %call84
  tail call void @ath5k_hw_set_rx_filter(ptr noundef %ah, i32 noundef %or) #4
  br label %if.end100

if.else88:                                        ; preds = %if.then.i171, %ath5k_ani_set_firstep_level.exit162.if.else88_crit_edge, %if.then.i, %ath5k_ani_set_firstep_level.exit.if.else88_crit_edge, %if.then19, %do.body15.if.else88_crit_edge
  %cap_has_phyerr_counters90 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 4
  %92 = ptrtoint ptr %cap_has_phyerr_counters90 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %cap_has_phyerr_counters90, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool91.not = icmp eq i8 %93, 0
  br i1 %tobool91.not, label %if.else93, label %if.then92

if.then92:                                        ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i.i194 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %94 = ptrtoint ptr %iobase.i.i194 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %iobase.i.i194, align 4
  %add.ptr.i.i195 = getelementptr i8, ptr %95, i32 33068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i195, i32 0) #4, !srcloc !142
  %96 = ptrtoint ptr %iobase.i.i194 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %iobase.i.i194, align 4
  %add.ptr.i7.i196 = getelementptr i8, ptr %97, i32 33076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i196, i32 0) #4, !srcloc !142
  %98 = ptrtoint ptr %iobase.i.i194 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %iobase.i.i194, align 4
  %add.ptr.i9.i197 = getelementptr i8, ptr %99, i32 33072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i197, i32 0) #4, !srcloc !142
  %100 = ptrtoint ptr %iobase.i.i194 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %iobase.i.i194, align 4
  %add.ptr.i11.i198 = getelementptr i8, ptr %101, i32 33080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i198, i32 0) #4, !srcloc !142
  %102 = ptrtoint ptr %iobase.i.i194 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iobase.i.i194, align 4
  %add.ptr.i13.i199 = getelementptr i8, ptr %103, i32 33060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i199, i32 0) #4, !srcloc !142
  %104 = ptrtoint ptr %iobase.i.i194 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %iobase.i.i194, align 4
  %add.ptr.i15.i200 = getelementptr i8, ptr %105, i32 33064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i200, i32 0) #4, !srcloc !142
  br label %if.end100

if.else93:                                        ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #6
  %call94 = tail call i32 @ath5k_hw_get_rx_filter(ptr noundef %ah) #4
  %106 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp96 = icmp eq i32 %107, 1
  %neg = select i1 %cmp96, i32 -65, i32 -257
  %and98 = and i32 %neg, %call94
  tail call void @ath5k_hw_set_rx_filter(ptr noundef %ah, i32 noundef %and98) #4
  br label %if.end100

if.end100:                                        ; preds = %if.else93, %if.then92, %if.else83, %if.then82
  %108 = ptrtoint ptr %ani_state to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %mode, ptr %ani_state, align 8
  br label %return

return:                                           ; preds = %if.end100, %if.then4, %do.body.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_rx_filter(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_rx_filter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_ani_print_counters(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %conv.i = select i1 %cmp, i32 32920, i32 32912
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !139
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %5) #7
  %6 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6 = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %conv.i88 = select i1 %cmp6, i32 32916, i32 32908
  %add.ptr.i89 = getelementptr i8, ptr %9, i32 %conv.i88
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #4, !srcloc !139
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %11) #7
  %12 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16 = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %conv.i91 = select i1 %cmp16, i32 32912, i32 32904
  %add.ptr.i92 = getelementptr i8, ptr %15, i32 %conv.i91
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #4, !srcloc !139
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %17) #7
  %18 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp26 = icmp eq i32 %19, 0
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 4
  %conv.i94 = select i1 %cmp26, i32 32924, i32 32916
  %add.ptr.i95 = getelementptr i8, ptr %21, i32 %conv.i94
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #4, !srcloc !139
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %23) #7
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %25, i32 33004
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #4, !srcloc !139
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %27) #7
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %29, i32 33008
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #4, !srcloc !139
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %31) #7
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %33, i32 33012
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #4, !srcloc !139
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %35) #7
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %37, i32 33016
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #4, !srcloc !139
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %39) #7
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %41, i32 33068
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #4, !srcloc !139
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %43) #7
  %44 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %45, i32 33076
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #4, !srcloc !139
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %47) #7
  %48 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %49, i32 33060
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #4, !srcloc !139
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %51) #7
  %52 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %53, i32 33064
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #4, !srcloc !139
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %55) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_cycle_counters_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_hw_get_listen_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !51, !53, !55, !57, !59, !60, !62, !64, !66, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !125, !127, !129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @ath5k_ani_set_noise_immunity_level.lo, !1, !"lo", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 80, i32 18}
!2 = !{ptr @ath5k_ani_set_noise_immunity_level.hi, !3, !"hi", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 81, i32 18}
!4 = !{ptr @ath5k_ani_set_noise_immunity_level.sz, !5, !"sz", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 82, i32 18}
!6 = !{ptr @ath5k_ani_set_noise_immunity_level.fr, !7, !"fr", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 83, i32 18}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 86, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 101, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__func__.ath5k_ani_set_noise_immunity_level, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ath5k_ani_set_spur_immunity_level.val, !16, !"val", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 113, i32 19}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 117, i32 3}
!19 = !{ptr @__func__.ath5k_ani_set_spur_immunity_level, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 126, i32 2}
!21 = !{ptr @ath5k_ani_set_firstep_level.val, !22, !"val", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 137, i32 19}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 140, i32 3}
!25 = !{ptr @__func__.ath5k_ani_set_firstep_level, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 148, i32 2}
!27 = !{ptr @ath5k_ani_set_ofdm_weak_signal_detection.m1l, !28, !"m1l", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 159, i32 19}
!29 = !{ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2l, !30, !"m2l", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 160, i32 19}
!31 = !{ptr @ath5k_ani_set_ofdm_weak_signal_detection.m1, !32, !"m1", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 161, i32 19}
!33 = !{ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2, !34, !"m2", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 162, i32 19}
!35 = !{ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2cnt, !36, !"m2cnt", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 163, i32 19}
!37 = !{ptr @ath5k_ani_set_ofdm_weak_signal_detection.m2lcnt, !38, !"m2lcnt", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 164, i32 19}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 187, i32 2}
!41 = !{ptr @__func__.ath5k_ani_set_ofdm_weak_signal_detection, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ath5k_ani_set_cck_weak_signal_detection.val, !45, !"val", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 199, i32 19}
!46 = !{ptr @__func__.ath5k_ani_set_cck_weak_signal_detection, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 203, i32 2}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 496, i32 2}
!50 = !{ptr @__func__.ath5k_ani_calibration, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 498, i32 2}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 511, i32 3}
!55 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 652, i32 3}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 667, i32 3}
!59 = !{ptr @__func__.ath5k_ani_init, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 669, i32 3}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 677, i32 3}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 687, i32 3}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 733, i32 2}
!68 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ath5k_ani_print_counters._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @ath5k_ani_print_counters._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 734, i32 2}
!74 = !{ptr @ath5k_ani_print_counters._entry.20, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ath5k_ani_print_counters._entry_ptr.22, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 735, i32 2}
!78 = !{ptr @ath5k_ani_print_counters._entry.23, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ath5k_ani_print_counters._entry_ptr.25, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 736, i32 2}
!82 = !{ptr @ath5k_ani_print_counters._entry.26, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ath5k_ani_print_counters._entry_ptr.28, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 739, i32 2}
!86 = !{ptr @ath5k_ani_print_counters._entry.29, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ath5k_ani_print_counters._entry_ptr.31, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 740, i32 2}
!90 = !{ptr @ath5k_ani_print_counters._entry.32, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ath5k_ani_print_counters._entry_ptr.34, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 741, i32 2}
!94 = !{ptr @ath5k_ani_print_counters._entry.35, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ath5k_ani_print_counters._entry_ptr.37, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 742, i32 2}
!98 = !{ptr @ath5k_ani_print_counters._entry.38, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ath5k_ani_print_counters._entry_ptr.40, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 744, i32 2}
!102 = !{ptr @ath5k_ani_print_counters._entry.41, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ath5k_ani_print_counters._entry_ptr.43, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 746, i32 2}
!106 = !{ptr @ath5k_ani_print_counters._entry.44, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ath5k_ani_print_counters._entry_ptr.46, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 748, i32 2}
!110 = !{ptr @ath5k_ani_print_counters._entry.47, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ath5k_ani_print_counters._entry_ptr.49, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 750, i32 2}
!114 = !{ptr @ath5k_ani_print_counters._entry.50, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ath5k_ani_print_counters._entry_ptr.52, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 228, i32 2}
!118 = !{ptr @__func__.ath5k_ani_raise_immunity, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 258, i32 3}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 275, i32 3}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 285, i32 3}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/ath5k/ani.c", i32 314, i32 2}
!129 = !{ptr @__func__.ath5k_ani_lower_immunity, !128, !"<string literal>", i1 false, i1 false}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{i64 761878}
!140 = !{i64 2148947051}
!141 = !{i64 2148948406}
!142 = !{i64 761460}
!143 = !{!"branch_weights", i32 2000, i32 1}
!144 = !{i8 0, i8 2}
