; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath5k_gain_opt = type { i8, i8, [10 x %struct.ath5k_gain_opt_step] }
%struct.ath5k_gain_opt_step = type { [7 x i8], i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ath5k_rf_reg = type { i8, i8, %struct.ath5k_rfb_field }
%struct.ath5k_rfb_field = type { i8, i16, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ath5k_ini_rfgain = type { i16, [2 x i32] }
%struct.ath5k_ini_rfbuffer = type { i8, i16, [3 x i32] }
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
%struct.ath5k_pdgain_info = type { i8, ptr, ptr }

@rfgain_opt_5111 = internal constant { %struct.ath5k_gain_opt, [46 x i8] } { %struct.ath5k_gain_opt { i8 4, i8 9, [10 x %struct.ath5k_gain_opt_step] [%struct.ath5k_gain_opt_step { [7 x i8] c"\04\01\01\01\00\00\00", i8 6 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\04\00\01\01\00\00\00", i8 4 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\03\01\01\01\00\00\00", i8 3 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\04\00\00\01\00\00\00", i8 1 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\04\01\01\00\00\00\00", i8 0 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\04\00\01\00\00\00\00", i8 -2 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\03\01\01\00\00\00\00", i8 -3 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\04\00\00\00\00\00\00", i8 -4 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\02\01\01\00\00\00\00", i8 -6 }, %struct.ath5k_gain_opt_step zeroinitializer] }, [46 x i8] zeroinitializer }, align 32
@rfgain_opt_5112 = internal constant { %struct.ath5k_gain_opt, [46 x i8] } { %struct.ath5k_gain_opt { i8 1, i8 8, [10 x %struct.ath5k_gain_opt_step] [%struct.ath5k_gain_opt_step { [7 x i8] c"\03\00\00\00\00\00\00", i8 6 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\02\00\00\00\00\00\00", i8 0 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\01\00\00\00\00\00\00", i8 -3 }, %struct.ath5k_gain_opt_step { [7 x i8] zeroinitializer, i8 -6 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\00\01\01\00\00\00\00", i8 -8 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\00\01\01\00\01\01\00", i8 -10 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\00\01\00\01\01\01\00", i8 -13 }, %struct.ath5k_gain_opt_step { [7 x i8] c"\00\01\00\01\01\00\01", i8 -16 }, %struct.ath5k_gain_opt_step zeroinitializer, %struct.ath5k_gain_opt_step zeroinitializer] }, [46 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(%s:%d): NF did not complete in calibration window\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_update_noise_floor = private unnamed_addr constant [28 x i8] c"ath5k_hw_update_noise_floor\00", align 1
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"(%s:%d): noise floor failure detected; read %d, threshold %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(%s:%d): noise floor calibrated: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(%s:%d): No I/Q correction performed (%uMHz)\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_phy_calibrate = private unnamed_addr constant [23 x i8] c"ath5k_hw_phy_calibrate\00", align 1
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(%s:%d): changing txpower to %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_set_txpower_limit = private unnamed_addr constant [27 x i8] c"ath5k_hw_set_txpower_limit\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"gain calibration timeout (%uMHz)\0A\00", [62 x i8] zeroinitializer }, align 32
@rf_regs_5112a = internal constant { [35 x %struct.ath5k_rf_reg], [72 x i8] } { [35 x %struct.ath5k_rf_reg] [%struct.ath5k_rf_reg { i8 2, i8 0, %struct.ath5k_rfb_field { i8 1, i16 1, i8 2 } }, %struct.ath5k_rf_reg { i8 6, i8 1, %struct.ath5k_rfb_field { i8 3, i16 287, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 3, %struct.ath5k_rfb_field { i8 3, i16 290, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 2, %struct.ath5k_rfb_field { i8 3, i16 279, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 4, %struct.ath5k_rfb_field { i8 3, i16 282, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 5, %struct.ath5k_rfb_field { i8 1, i16 278, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 6, %struct.ath5k_rfb_field { i8 1, i16 277, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 8, %struct.ath5k_rfb_field { i8 1, i16 302, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 10, %struct.ath5k_rfb_field { i8 2, i16 270, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 11, %struct.ath5k_rfb_field { i8 2, i16 257, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 22, %struct.ath5k_rfb_field { i8 1, i16 176, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 23, %struct.ath5k_rfb_field { i8 1, i16 175, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 24, %struct.ath5k_rfb_field { i8 1, i16 174, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 25, %struct.ath5k_rfb_field { i8 1, i16 170, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 26, %struct.ath5k_rfb_field { i8 1, i16 169, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 27, %struct.ath5k_rfb_field { i8 1, i16 168, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 28, %struct.ath5k_rfb_field { i8 1, i16 140, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 29, %struct.ath5k_rfb_field { i8 1, i16 139, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 12, %struct.ath5k_rfb_field { i8 2, i16 90, i8 2 } }, %struct.ath5k_rf_reg { i8 6, i8 13, %struct.ath5k_rfb_field { i8 2, i16 92, i8 2 } }, %struct.ath5k_rf_reg { i8 6, i8 14, %struct.ath5k_rfb_field { i8 2, i16 94, i8 2 } }, %struct.ath5k_rf_reg { i8 6, i8 15, %struct.ath5k_rfb_field { i8 1, i16 254, i8 2 } }, %struct.ath5k_rf_reg { i8 6, i8 16, %struct.ath5k_rfb_field { i8 1, i16 281, i8 1 } }, %struct.ath5k_rf_reg { i8 6, i8 17, %struct.ath5k_rfb_field { i8 2, i16 1, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 18, %struct.ath5k_rfb_field { i8 2, i16 3, i8 3 } }, %struct.ath5k_rf_reg { i8 7, i8 31, %struct.ath5k_rfb_field { i8 6, i16 14, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 38, %struct.ath5k_rfb_field { i8 1, i16 36, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 39, %struct.ath5k_rfb_field { i8 2, i16 37, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 40, %struct.ath5k_rfb_field { i8 4, i16 32, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 41, %struct.ath5k_rfb_field { i8 4, i16 58, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 42, %struct.ath5k_rfb_field { i8 4, i16 62, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 43, %struct.ath5k_rfb_field { i8 4, i16 66, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 44, %struct.ath5k_rfb_field { i8 4, i16 70, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 45, %struct.ath5k_rfb_field { i8 4, i16 74, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 46, %struct.ath5k_rfb_field { i8 4, i16 78, i8 0 } }], [72 x i8] zeroinitializer }, align 32
@ath5k_hw_rfb_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014ath5k: %s: Rf register not found!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ath5k_hw_rfb_op\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ath/ath5k/phy.c\00", [59 x i8] zeroinitializer }, align 32
@ath5k_hw_rfb_op._entry_ptr = internal global ptr @ath5k_hw_rfb_op._entry, section ".printk_index", align 4
@ath5k_hw_rfb_op._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014ath5k: %s: invalid values at offset %u\0A\00", [54 x i8] zeroinitializer }, align 32
@ath5k_hw_rfb_op._entry_ptr.13 = internal global ptr @ath5k_hw_rfb_op._entry.11, section ".printk_index", align 4
@rf_regs_5111 = internal constant { [16 x %struct.ath5k_rf_reg], [32 x i8] } { [16 x %struct.ath5k_rf_reg] [%struct.ath5k_rf_reg { i8 2, i8 0, %struct.ath5k_rfb_field { i8 1, i16 3, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 1, %struct.ath5k_rfb_field { i8 3, i16 119, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 3, %struct.ath5k_rfb_field { i8 3, i16 122, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 2, %struct.ath5k_rfb_field { i8 3, i16 104, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 4, %struct.ath5k_rfb_field { i8 3, i16 107, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 7, %struct.ath5k_rfb_field { i8 1, i16 95, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 9, %struct.ath5k_rfb_field { i8 4, i16 96, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 20, %struct.ath5k_rfb_field { i8 1, i16 51, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 21, %struct.ath5k_rfb_field { i8 1, i16 45, i8 3 } }, %struct.ath5k_rf_reg { i8 7, i8 31, %struct.ath5k_rfb_field { i8 6, i16 29, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 32, %struct.ath5k_rfb_field { i8 1, i16 4, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 33, %struct.ath5k_rfb_field { i8 1, i16 36, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 34, %struct.ath5k_rfb_field { i8 6, i16 37, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 35, %struct.ath5k_rfb_field { i8 5, i16 19, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 36, %struct.ath5k_rfb_field { i8 5, i16 24, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 37, %struct.ath5k_rfb_field { i8 2, i16 49, i8 0 } }], [32 x i8] zeroinitializer }, align 32
@rf_regs_5112 = internal constant { [25 x %struct.ath5k_rf_reg], [56 x i8] } { [25 x %struct.ath5k_rf_reg] [%struct.ath5k_rf_reg { i8 2, i8 0, %struct.ath5k_rfb_field { i8 1, i16 1, i8 2 } }, %struct.ath5k_rf_reg { i8 6, i8 1, %struct.ath5k_rfb_field { i8 3, i16 269, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 3, %struct.ath5k_rfb_field { i8 3, i16 272, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 2, %struct.ath5k_rfb_field { i8 3, i16 261, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 4, %struct.ath5k_rfb_field { i8 3, i16 264, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 5, %struct.ath5k_rfb_field { i8 1, i16 260, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 6, %struct.ath5k_rfb_field { i8 1, i16 259, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 8, %struct.ath5k_rfb_field { i8 1, i16 284, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 9, %struct.ath5k_rfb_field { i8 2, i16 252, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 22, %struct.ath5k_rfb_field { i8 1, i16 172, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 23, %struct.ath5k_rfb_field { i8 1, i16 171, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 24, %struct.ath5k_rfb_field { i8 1, i16 170, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 25, %struct.ath5k_rfb_field { i8 1, i16 166, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 26, %struct.ath5k_rfb_field { i8 1, i16 165, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 27, %struct.ath5k_rfb_field { i8 1, i16 164, i8 3 } }, %struct.ath5k_rf_reg { i8 7, i8 31, %struct.ath5k_rfb_field { i8 6, i16 14, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 38, %struct.ath5k_rfb_field { i8 1, i16 36, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 39, %struct.ath5k_rfb_field { i8 2, i16 37, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 40, %struct.ath5k_rfb_field { i8 4, i16 32, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 41, %struct.ath5k_rfb_field { i8 4, i16 58, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 42, %struct.ath5k_rfb_field { i8 4, i16 62, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 43, %struct.ath5k_rfb_field { i8 4, i16 66, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 44, %struct.ath5k_rfb_field { i8 4, i16 70, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 45, %struct.ath5k_rfb_field { i8 4, i16 74, i8 0 } }, %struct.ath5k_rf_reg { i8 7, i8 46, %struct.ath5k_rfb_field { i8 4, i16 78, i8 0 } }], [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"(%s:%d): ret %d, gain step %u, current gain %u, target gain %u\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_rf_gainf_adjust = private unnamed_addr constant [25 x i8] c"ath5k_hw_rf_gainf_adjust\00", align 1
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(%s:%d): cal %d:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_get_median_noise_floor = private unnamed_addr constant [32 x i8] c"ath5k_hw_get_median_noise_floor\00", align 1
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"calibration timeout (%uMHz)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(%s:%d): I/Q calibration still running\00", [57 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_rf511x_iq_calibrate = private unnamed_addr constant [29 x i8] c"ath5k_hw_rf511x_iq_calibrate\00", align 1
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(%s:%d): iq_corr:%x i_pwr:%x q_pwr:%x\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(%s:%d): new I:%d Q:%d (i_coffd:%x q_coffd:%x)\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid tx power: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"channel frequency (%u MHz) out of supported band range\0A\00", [40 x i8] zeroinitializer }, align 32
@rfgain_5111 = internal constant { [64 x %struct.ath5k_ini_rfgain], [192 x i8] } { [64 x %struct.ath5k_ini_rfgain] [%struct.ath5k_ini_rfgain { i16 -26112, [2 x i32] [i32 425, i32 0] }, %struct.ath5k_ini_rfgain { i16 -26108, [2 x i32] [i32 489, i32 64] }, %struct.ath5k_ini_rfgain { i16 -26104, [2 x i32] [i32 41, i32 128] }, %struct.ath5k_ini_rfgain { i16 -26100, [2 x i32] [i32 105, i32 336] }, %struct.ath5k_ini_rfgain { i16 -26096, [2 x i32] [i32 409, i32 400] }, %struct.ath5k_ini_rfgain { i16 -26092, [2 x i32] [i32 473, i32 464] }, %struct.ath5k_ini_rfgain { i16 -26088, [2 x i32] [i32 25, i32 16] }, %struct.ath5k_ini_rfgain { i16 -26084, [2 x i32] [i32 89, i32 68] }, %struct.ath5k_ini_rfgain { i16 -26080, [2 x i32] [i32 153, i32 132] }, %struct.ath5k_ini_rfgain { i16 -26076, [2 x i32] [i32 421, i32 328] }, %struct.ath5k_ini_rfgain { i16 -26072, [2 x i32] [i32 485, i32 392] }, %struct.ath5k_ini_rfgain { i16 -26068, [2 x i32] [i32 37, i32 456] }, %struct.ath5k_ini_rfgain { i16 -26064, [2 x i32] [i32 456, i32 20] }, %struct.ath5k_ini_rfgain { i16 -26060, [2 x i32] [i32 8, i32 66] }, %struct.ath5k_ini_rfgain { i16 -26056, [2 x i32] [i32 72, i32 130] }, %struct.ath5k_ini_rfgain { i16 -26052, [2 x i32] [i32 136, i32 376] }, %struct.ath5k_ini_rfgain { i16 -26048, [2 x i32] [i32 408, i32 440] }, %struct.ath5k_ini_rfgain { i16 -26044, [2 x i32] [i32 472, i32 504] }, %struct.ath5k_ini_rfgain { i16 -26040, [2 x i32] [i32 24, i32 18] }, %struct.ath5k_ini_rfgain { i16 -26036, [2 x i32] [i32 88, i32 82] }, %struct.ath5k_ini_rfgain { i16 -26032, [2 x i32] [i32 152, i32 146] }, %struct.ath5k_ini_rfgain { i16 -26028, [2 x i32] [i32 420, i32 380] }, %struct.ath5k_ini_rfgain { i16 -26024, [2 x i32] [i32 484, i32 444] }, %struct.ath5k_ini_rfgain { i16 -26020, [2 x i32] [i32 36, i32 508] }, %struct.ath5k_ini_rfgain { i16 -26016, [2 x i32] [i32 100, i32 10] }, %struct.ath5k_ini_rfgain { i16 -26012, [2 x i32] [i32 164, i32 74] }, %struct.ath5k_ini_rfgain { i16 -26008, [2 x i32] [i32 228, i32 138] }, %struct.ath5k_ini_rfgain { i16 -26004, [2 x i32] [i32 266, i32 346] }, %struct.ath5k_ini_rfgain { i16 -26000, [2 x i32] [i32 330, i32 410] }, %struct.ath5k_ini_rfgain { i16 -25996, [2 x i32] [i32 394, i32 474] }, %struct.ath5k_ini_rfgain { i16 -25992, [2 x i32] [i32 458, i32 14] }, %struct.ath5k_ini_rfgain { i16 -25988, [2 x i32] [i32 10, i32 78] }, %struct.ath5k_ini_rfgain { i16 -25984, [2 x i32] [i32 74, i32 142] }, %struct.ath5k_ini_rfgain { i16 -25980, [2 x i32] [i32 138, i32 350] }, %struct.ath5k_ini_rfgain { i16 -25976, [2 x i32] [i32 442, i32 414] }, %struct.ath5k_ini_rfgain { i16 -25972, [2 x i32] [i32 506, i32 478] }, %struct.ath5k_ini_rfgain { i16 -25968, [2 x i32] [i32 58, i32 9] }, %struct.ath5k_ini_rfgain { i16 -25964, [2 x i32] [i32 122, i32 73] }, %struct.ath5k_ini_rfgain { i16 -25960, [2 x i32] [i32 390, i32 137] }, %struct.ath5k_ini_rfgain { i16 -25956, [2 x i32] [i32 454, i32 377] }, %struct.ath5k_ini_rfgain { i16 -25952, [2 x i32] [i32 6, i32 441] }, %struct.ath5k_ini_rfgain { i16 -25948, [2 x i32] [i32 70, i32 505] }, %struct.ath5k_ini_rfgain { i16 -25944, [2 x i32] [i32 134, i32 57] }, %struct.ath5k_ini_rfgain { i16 -25940, [2 x i32] [i32 198, i32 121] }, %struct.ath5k_ini_rfgain { i16 -25936, [2 x i32] [i32 198, i32 185] }, %struct.ath5k_ini_rfgain { i16 -25932, [2 x i32] [i32 198, i32 445] }, %struct.ath5k_ini_rfgain { i16 -25928, [2 x i32] [i32 198, i32 509] }, %struct.ath5k_ini_rfgain { i16 -25924, [2 x i32] [i32 198, i32 61] }, %struct.ath5k_ini_rfgain { i16 -25920, [2 x i32] [i32 198, i32 125] }, %struct.ath5k_ini_rfgain { i16 -25916, [2 x i32] [i32 198, i32 189] }, %struct.ath5k_ini_rfgain { i16 -25912, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25908, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25904, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25900, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25896, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25892, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25888, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25884, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25880, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25876, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25872, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25868, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25864, [2 x i32] [i32 198, i32 253] }, %struct.ath5k_ini_rfgain { i16 -25860, [2 x i32] [i32 198, i32 253] }], [192 x i8] zeroinitializer }, align 32
@rfgain_5112 = internal constant { [64 x %struct.ath5k_ini_rfgain], [192 x i8] } { [64 x %struct.ath5k_ini_rfgain] [%struct.ath5k_ini_rfgain { i16 -26112, [2 x i32] [i32 7, i32 7] }, %struct.ath5k_ini_rfgain { i16 -26108, [2 x i32] [i32 71, i32 71] }, %struct.ath5k_ini_rfgain { i16 -26104, [2 x i32] [i32 135, i32 135] }, %struct.ath5k_ini_rfgain { i16 -26100, [2 x i32] [i32 416, i32 416] }, %struct.ath5k_ini_rfgain { i16 -26096, [2 x i32] [i32 480, i32 480] }, %struct.ath5k_ini_rfgain { i16 -26092, [2 x i32] [i32 32, i32 32] }, %struct.ath5k_ini_rfgain { i16 -26088, [2 x i32] [i32 96, i32 96] }, %struct.ath5k_ini_rfgain { i16 -26084, [2 x i32] [i32 417, i32 417] }, %struct.ath5k_ini_rfgain { i16 -26080, [2 x i32] [i32 481, i32 481] }, %struct.ath5k_ini_rfgain { i16 -26076, [2 x i32] [i32 33, i32 33] }, %struct.ath5k_ini_rfgain { i16 -26072, [2 x i32] [i32 97, i32 97] }, %struct.ath5k_ini_rfgain { i16 -26068, [2 x i32] [i32 354, i32 354] }, %struct.ath5k_ini_rfgain { i16 -26064, [2 x i32] [i32 418, i32 418] }, %struct.ath5k_ini_rfgain { i16 -26060, [2 x i32] [i32 482, i32 482] }, %struct.ath5k_ini_rfgain { i16 -26056, [2 x i32] [i32 34, i32 34] }, %struct.ath5k_ini_rfgain { i16 -26052, [2 x i32] [i32 98, i32 98] }, %struct.ath5k_ini_rfgain { i16 -26048, [2 x i32] [i32 355, i32 355] }, %struct.ath5k_ini_rfgain { i16 -26044, [2 x i32] [i32 419, i32 419] }, %struct.ath5k_ini_rfgain { i16 -26040, [2 x i32] [i32 483, i32 483] }, %struct.ath5k_ini_rfgain { i16 -26036, [2 x i32] [i32 35, i32 35] }, %struct.ath5k_ini_rfgain { i16 -26032, [2 x i32] [i32 99, i32 99] }, %struct.ath5k_ini_rfgain { i16 -26028, [2 x i32] [i32 388, i32 388] }, %struct.ath5k_ini_rfgain { i16 -26024, [2 x i32] [i32 452, i32 452] }, %struct.ath5k_ini_rfgain { i16 -26020, [2 x i32] [i32 4, i32 4] }, %struct.ath5k_ini_rfgain { i16 -26016, [2 x i32] [i32 490, i32 11] }, %struct.ath5k_ini_rfgain { i16 -26012, [2 x i32] [i32 42, i32 75] }, %struct.ath5k_ini_rfgain { i16 -26008, [2 x i32] [i32 106, i32 139] }, %struct.ath5k_ini_rfgain { i16 -26004, [2 x i32] [i32 170, i32 428] }, %struct.ath5k_ini_rfgain { i16 -26000, [2 x i32] [i32 427, i32 492] }, %struct.ath5k_ini_rfgain { i16 -25996, [2 x i32] [i32 491, i32 44] }, %struct.ath5k_ini_rfgain { i16 -25992, [2 x i32] [i32 43, i32 18] }, %struct.ath5k_ini_rfgain { i16 -25988, [2 x i32] [i32 107, i32 82] }, %struct.ath5k_ini_rfgain { i16 -25984, [2 x i32] [i32 171, i32 146] }, %struct.ath5k_ini_rfgain { i16 -25980, [2 x i32] [i32 428, i32 403] }, %struct.ath5k_ini_rfgain { i16 -25976, [2 x i32] [i32 492, i32 467] }, %struct.ath5k_ini_rfgain { i16 -25972, [2 x i32] [i32 44, i32 19] }, %struct.ath5k_ini_rfgain { i16 -25968, [2 x i32] [i32 58, i32 83] }, %struct.ath5k_ini_rfgain { i16 -25964, [2 x i32] [i32 122, i32 147] }, %struct.ath5k_ini_rfgain { i16 -25960, [2 x i32] [i32 186, i32 404] }, %struct.ath5k_ini_rfgain { i16 -25956, [2 x i32] [i32 443, i32 468] }, %struct.ath5k_ini_rfgain { i16 -25952, [2 x i32] [i32 507, i32 20] }, %struct.ath5k_ini_rfgain { i16 -25948, [2 x i32] [i32 59, i32 58] }, %struct.ath5k_ini_rfgain { i16 -25944, [2 x i32] [i32 123, i32 122] }, %struct.ath5k_ini_rfgain { i16 -25940, [2 x i32] [i32 187, i32 186] }, %struct.ath5k_ini_rfgain { i16 -25936, [2 x i32] [i32 444, i32 443] }, %struct.ath5k_ini_rfgain { i16 -25932, [2 x i32] [i32 508, i32 507] }, %struct.ath5k_ini_rfgain { i16 -25928, [2 x i32] [i32 60, i32 59] }, %struct.ath5k_ini_rfgain { i16 -25924, [2 x i32] [i32 124, i32 123] }, %struct.ath5k_ini_rfgain { i16 -25920, [2 x i32] [i32 188, i32 187] }, %struct.ath5k_ini_rfgain { i16 -25916, [2 x i32] [i32 252, i32 444] }, %struct.ath5k_ini_rfgain { i16 -25912, [2 x i32] [i32 252, i32 508] }, %struct.ath5k_ini_rfgain { i16 -25908, [2 x i32] [i32 252, i32 60] }, %struct.ath5k_ini_rfgain { i16 -25904, [2 x i32] [i32 252, i32 124] }, %struct.ath5k_ini_rfgain { i16 -25900, [2 x i32] [i32 252, i32 188] }, %struct.ath5k_ini_rfgain { i16 -25896, [2 x i32] [i32 252, i32 252] }, %struct.ath5k_ini_rfgain { i16 -25892, [2 x i32] [i32 252, i32 252] }, %struct.ath5k_ini_rfgain { i16 -25888, [2 x i32] [i32 252, i32 252] }, %struct.ath5k_ini_rfgain { i16 -25884, [2 x i32] [i32 252, i32 252] }, %struct.ath5k_ini_rfgain { i16 -25880, [2 x i32] [i32 252, i32 252] }, %struct.ath5k_ini_rfgain { i16 -25876, [2 x i32] [i32 252, i32 252] }, %struct.ath5k_ini_rfgain { i16 -25872, [2 x i32] [i32 252, i32 252] }, %struct.ath5k_ini_rfgain { i16 -25868, [2 x i32] [i32 252, i32 252] }, %struct.ath5k_ini_rfgain { i16 -25864, [2 x i32] [i32 252, i32 252] }, %struct.ath5k_ini_rfgain { i16 -25860, [2 x i32] [i32 252, i32 252] }], [192 x i8] zeroinitializer }, align 32
@rfgain_2413 = internal constant { [64 x %struct.ath5k_ini_rfgain], [192 x i8] } { [64 x %struct.ath5k_ini_rfgain] [%struct.ath5k_ini_rfgain { i16 -26112, [2 x i32] zeroinitializer }, %struct.ath5k_ini_rfgain { i16 -26108, [2 x i32] [i32 0, i32 64] }, %struct.ath5k_ini_rfgain { i16 -26104, [2 x i32] [i32 0, i32 128] }, %struct.ath5k_ini_rfgain { i16 -26100, [2 x i32] [i32 0, i32 385] }, %struct.ath5k_ini_rfgain { i16 -26096, [2 x i32] [i32 0, i32 449] }, %struct.ath5k_ini_rfgain { i16 -26092, [2 x i32] [i32 0, i32 1] }, %struct.ath5k_ini_rfgain { i16 -26088, [2 x i32] [i32 0, i32 65] }, %struct.ath5k_ini_rfgain { i16 -26084, [2 x i32] [i32 0, i32 129] }, %struct.ath5k_ini_rfgain { i16 -26080, [2 x i32] [i32 0, i32 360] }, %struct.ath5k_ini_rfgain { i16 -26076, [2 x i32] [i32 0, i32 424] }, %struct.ath5k_ini_rfgain { i16 -26072, [2 x i32] [i32 0, i32 488] }, %struct.ath5k_ini_rfgain { i16 -26068, [2 x i32] [i32 0, i32 40] }, %struct.ath5k_ini_rfgain { i16 -26064, [2 x i32] [i32 0, i32 104] }, %struct.ath5k_ini_rfgain { i16 -26060, [2 x i32] [i32 0, i32 393] }, %struct.ath5k_ini_rfgain { i16 -26056, [2 x i32] [i32 0, i32 457] }, %struct.ath5k_ini_rfgain { i16 -26052, [2 x i32] [i32 0, i32 9] }, %struct.ath5k_ini_rfgain { i16 -26048, [2 x i32] [i32 0, i32 73] }, %struct.ath5k_ini_rfgain { i16 -26044, [2 x i32] [i32 0, i32 137] }, %struct.ath5k_ini_rfgain { i16 -26040, [2 x i32] [i32 0, i32 400] }, %struct.ath5k_ini_rfgain { i16 -26036, [2 x i32] [i32 0, i32 464] }, %struct.ath5k_ini_rfgain { i16 -26032, [2 x i32] [i32 0, i32 16] }, %struct.ath5k_ini_rfgain { i16 -26028, [2 x i32] [i32 0, i32 80] }, %struct.ath5k_ini_rfgain { i16 -26024, [2 x i32] [i32 0, i32 144] }, %struct.ath5k_ini_rfgain { i16 -26020, [2 x i32] [i32 0, i32 401] }, %struct.ath5k_ini_rfgain { i16 -26016, [2 x i32] [i32 0, i32 465] }, %struct.ath5k_ini_rfgain { i16 -26012, [2 x i32] [i32 0, i32 17] }, %struct.ath5k_ini_rfgain { i16 -26008, [2 x i32] [i32 0, i32 81] }, %struct.ath5k_ini_rfgain { i16 -26004, [2 x i32] [i32 0, i32 145] }, %struct.ath5k_ini_rfgain { i16 -26000, [2 x i32] [i32 0, i32 376] }, %struct.ath5k_ini_rfgain { i16 -25996, [2 x i32] [i32 0, i32 440] }, %struct.ath5k_ini_rfgain { i16 -25992, [2 x i32] [i32 0, i32 504] }, %struct.ath5k_ini_rfgain { i16 -25988, [2 x i32] [i32 0, i32 56] }, %struct.ath5k_ini_rfgain { i16 -25984, [2 x i32] [i32 0, i32 120] }, %struct.ath5k_ini_rfgain { i16 -25980, [2 x i32] [i32 0, i32 409] }, %struct.ath5k_ini_rfgain { i16 -25976, [2 x i32] [i32 0, i32 473] }, %struct.ath5k_ini_rfgain { i16 -25972, [2 x i32] [i32 0, i32 25] }, %struct.ath5k_ini_rfgain { i16 -25968, [2 x i32] [i32 0, i32 89] }, %struct.ath5k_ini_rfgain { i16 -25964, [2 x i32] [i32 0, i32 153] }, %struct.ath5k_ini_rfgain { i16 -25960, [2 x i32] [i32 0, i32 217] }, %struct.ath5k_ini_rfgain { i16 -25956, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25952, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25948, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25944, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25940, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25936, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25932, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25928, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25924, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25920, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25916, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25912, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25908, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25904, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25900, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25896, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25892, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25888, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25884, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25880, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25876, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25872, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25868, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25864, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25860, [2 x i32] [i32 0, i32 249] }], [192 x i8] zeroinitializer }, align 32
@rfgain_2316 = internal constant { [64 x %struct.ath5k_ini_rfgain], [192 x i8] } { [64 x %struct.ath5k_ini_rfgain] [%struct.ath5k_ini_rfgain { i16 -26112, [2 x i32] zeroinitializer }, %struct.ath5k_ini_rfgain { i16 -26108, [2 x i32] [i32 0, i32 64] }, %struct.ath5k_ini_rfgain { i16 -26104, [2 x i32] [i32 0, i32 128] }, %struct.ath5k_ini_rfgain { i16 -26100, [2 x i32] [i32 0, i32 192] }, %struct.ath5k_ini_rfgain { i16 -26096, [2 x i32] [i32 0, i32 224] }, %struct.ath5k_ini_rfgain { i16 -26092, [2 x i32] [i32 0, i32 224] }, %struct.ath5k_ini_rfgain { i16 -26088, [2 x i32] [i32 0, i32 296] }, %struct.ath5k_ini_rfgain { i16 -26084, [2 x i32] [i32 0, i32 296] }, %struct.ath5k_ini_rfgain { i16 -26080, [2 x i32] [i32 0, i32 296] }, %struct.ath5k_ini_rfgain { i16 -26076, [2 x i32] [i32 0, i32 360] }, %struct.ath5k_ini_rfgain { i16 -26072, [2 x i32] [i32 0, i32 424] }, %struct.ath5k_ini_rfgain { i16 -26068, [2 x i32] [i32 0, i32 488] }, %struct.ath5k_ini_rfgain { i16 -26064, [2 x i32] [i32 0, i32 40] }, %struct.ath5k_ini_rfgain { i16 -26060, [2 x i32] [i32 0, i32 104] }, %struct.ath5k_ini_rfgain { i16 -26056, [2 x i32] [i32 0, i32 168] }, %struct.ath5k_ini_rfgain { i16 -26052, [2 x i32] [i32 0, i32 232] }, %struct.ath5k_ini_rfgain { i16 -26048, [2 x i32] [i32 0, i32 232] }, %struct.ath5k_ini_rfgain { i16 -26044, [2 x i32] [i32 0, i32 304] }, %struct.ath5k_ini_rfgain { i16 -26040, [2 x i32] [i32 0, i32 304] }, %struct.ath5k_ini_rfgain { i16 -26036, [2 x i32] [i32 0, i32 368] }, %struct.ath5k_ini_rfgain { i16 -26032, [2 x i32] [i32 0, i32 432] }, %struct.ath5k_ini_rfgain { i16 -26028, [2 x i32] [i32 0, i32 496] }, %struct.ath5k_ini_rfgain { i16 -26024, [2 x i32] [i32 0, i32 48] }, %struct.ath5k_ini_rfgain { i16 -26020, [2 x i32] [i32 0, i32 112] }, %struct.ath5k_ini_rfgain { i16 -26016, [2 x i32] [i32 0, i32 176] }, %struct.ath5k_ini_rfgain { i16 -26012, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -26008, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -26004, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -26000, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25996, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25992, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25988, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25984, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25980, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25976, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25972, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25968, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25964, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25960, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25956, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25952, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25948, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25944, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25940, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25936, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25932, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25928, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25924, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25920, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25916, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25912, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25908, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25904, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25900, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25896, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25892, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25888, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25884, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25880, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25876, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25872, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25868, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25864, [2 x i32] [i32 0, i32 240] }, %struct.ath5k_ini_rfgain { i16 -25860, [2 x i32] [i32 0, i32 240] }], [192 x i8] zeroinitializer }, align 32
@rfgain_5413 = internal constant { [64 x %struct.ath5k_ini_rfgain], [192 x i8] } { [64 x %struct.ath5k_ini_rfgain] [%struct.ath5k_ini_rfgain { i16 -26112, [2 x i32] zeroinitializer }, %struct.ath5k_ini_rfgain { i16 -26108, [2 x i32] [i32 64, i32 64] }, %struct.ath5k_ini_rfgain { i16 -26104, [2 x i32] [i32 128, i32 128] }, %struct.ath5k_ini_rfgain { i16 -26100, [2 x i32] [i32 417, i32 353] }, %struct.ath5k_ini_rfgain { i16 -26096, [2 x i32] [i32 481, i32 417] }, %struct.ath5k_ini_rfgain { i16 -26092, [2 x i32] [i32 33, i32 481] }, %struct.ath5k_ini_rfgain { i16 -26088, [2 x i32] [i32 97, i32 33] }, %struct.ath5k_ini_rfgain { i16 -26084, [2 x i32] [i32 392, i32 97] }, %struct.ath5k_ini_rfgain { i16 -26080, [2 x i32] [i32 456, i32 392] }, %struct.ath5k_ini_rfgain { i16 -26076, [2 x i32] [i32 8, i32 456] }, %struct.ath5k_ini_rfgain { i16 -26072, [2 x i32] [i32 72, i32 8] }, %struct.ath5k_ini_rfgain { i16 -26068, [2 x i32] [i32 136, i32 72] }, %struct.ath5k_ini_rfgain { i16 -26064, [2 x i32] [i32 425, i32 136] }, %struct.ath5k_ini_rfgain { i16 -26060, [2 x i32] [i32 489, i32 361] }, %struct.ath5k_ini_rfgain { i16 -26056, [2 x i32] [i32 41, i32 425] }, %struct.ath5k_ini_rfgain { i16 -26052, [2 x i32] [i32 105, i32 489] }, %struct.ath5k_ini_rfgain { i16 -26048, [2 x i32] [i32 464, i32 41] }, %struct.ath5k_ini_rfgain { i16 -26044, [2 x i32] [i32 16, i32 105] }, %struct.ath5k_ini_rfgain { i16 -26040, [2 x i32] [i32 80, i32 400] }, %struct.ath5k_ini_rfgain { i16 -26036, [2 x i32] [i32 144, i32 464] }, %struct.ath5k_ini_rfgain { i16 -26032, [2 x i32] [i32 433, i32 16] }, %struct.ath5k_ini_rfgain { i16 -26028, [2 x i32] [i32 497, i32 80] }, %struct.ath5k_ini_rfgain { i16 -26024, [2 x i32] [i32 49, i32 144] }, %struct.ath5k_ini_rfgain { i16 -26020, [2 x i32] [i32 113, i32 369] }, %struct.ath5k_ini_rfgain { i16 -26016, [2 x i32] [i32 440, i32 433] }, %struct.ath5k_ini_rfgain { i16 -26012, [2 x i32] [i32 504, i32 497] }, %struct.ath5k_ini_rfgain { i16 -26008, [2 x i32] [i32 56, i32 49] }, %struct.ath5k_ini_rfgain { i16 -26004, [2 x i32] [i32 120, i32 113] }, %struct.ath5k_ini_rfgain { i16 -26000, [2 x i32] [i32 409, i32 408] }, %struct.ath5k_ini_rfgain { i16 -25996, [2 x i32] [i32 473, i32 472] }, %struct.ath5k_ini_rfgain { i16 -25992, [2 x i32] [i32 25, i32 24] }, %struct.ath5k_ini_rfgain { i16 -25988, [2 x i32] [i32 89, i32 88] }, %struct.ath5k_ini_rfgain { i16 -25984, [2 x i32] [i32 153, i32 152] }, %struct.ath5k_ini_rfgain { i16 -25980, [2 x i32] [i32 217, i32 377] }, %struct.ath5k_ini_rfgain { i16 -25976, [2 x i32] [i32 249, i32 441] }, %struct.ath5k_ini_rfgain { i16 -25972, [2 x i32] [i32 249, i32 505] }, %struct.ath5k_ini_rfgain { i16 -25968, [2 x i32] [i32 249, i32 57] }, %struct.ath5k_ini_rfgain { i16 -25964, [2 x i32] [i32 249, i32 121] }, %struct.ath5k_ini_rfgain { i16 -25960, [2 x i32] [i32 249, i32 185] }, %struct.ath5k_ini_rfgain { i16 -25956, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25952, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25948, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25944, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25940, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25936, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25932, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25928, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25924, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25920, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25916, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25912, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25908, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25904, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25900, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25896, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25892, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25888, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25884, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25880, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25876, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25872, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25868, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25864, [2 x i32] [i32 249, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25860, [2 x i32] [i32 249, i32 249] }], [192 x i8] zeroinitializer }, align 32
@rfgain_2425 = internal constant { [64 x %struct.ath5k_ini_rfgain], [192 x i8] } { [64 x %struct.ath5k_ini_rfgain] [%struct.ath5k_ini_rfgain { i16 -26112, [2 x i32] zeroinitializer }, %struct.ath5k_ini_rfgain { i16 -26108, [2 x i32] [i32 0, i32 64] }, %struct.ath5k_ini_rfgain { i16 -26104, [2 x i32] [i32 0, i32 128] }, %struct.ath5k_ini_rfgain { i16 -26100, [2 x i32] [i32 0, i32 385] }, %struct.ath5k_ini_rfgain { i16 -26096, [2 x i32] [i32 0, i32 449] }, %struct.ath5k_ini_rfgain { i16 -26092, [2 x i32] [i32 0, i32 1] }, %struct.ath5k_ini_rfgain { i16 -26088, [2 x i32] [i32 0, i32 65] }, %struct.ath5k_ini_rfgain { i16 -26084, [2 x i32] [i32 0, i32 129] }, %struct.ath5k_ini_rfgain { i16 -26080, [2 x i32] [i32 0, i32 392] }, %struct.ath5k_ini_rfgain { i16 -26076, [2 x i32] [i32 0, i32 456] }, %struct.ath5k_ini_rfgain { i16 -26072, [2 x i32] [i32 0, i32 8] }, %struct.ath5k_ini_rfgain { i16 -26068, [2 x i32] [i32 0, i32 72] }, %struct.ath5k_ini_rfgain { i16 -26064, [2 x i32] [i32 0, i32 136] }, %struct.ath5k_ini_rfgain { i16 -26060, [2 x i32] [i32 0, i32 393] }, %struct.ath5k_ini_rfgain { i16 -26056, [2 x i32] [i32 0, i32 457] }, %struct.ath5k_ini_rfgain { i16 -26052, [2 x i32] [i32 0, i32 9] }, %struct.ath5k_ini_rfgain { i16 -26048, [2 x i32] [i32 0, i32 73] }, %struct.ath5k_ini_rfgain { i16 -26044, [2 x i32] [i32 0, i32 137] }, %struct.ath5k_ini_rfgain { i16 -26040, [2 x i32] [i32 0, i32 432] }, %struct.ath5k_ini_rfgain { i16 -26036, [2 x i32] [i32 0, i32 496] }, %struct.ath5k_ini_rfgain { i16 -26032, [2 x i32] [i32 0, i32 48] }, %struct.ath5k_ini_rfgain { i16 -26028, [2 x i32] [i32 0, i32 112] }, %struct.ath5k_ini_rfgain { i16 -26024, [2 x i32] [i32 0, i32 369] }, %struct.ath5k_ini_rfgain { i16 -26020, [2 x i32] [i32 0, i32 433] }, %struct.ath5k_ini_rfgain { i16 -26016, [2 x i32] [i32 0, i32 497] }, %struct.ath5k_ini_rfgain { i16 -26012, [2 x i32] [i32 0, i32 49] }, %struct.ath5k_ini_rfgain { i16 -26008, [2 x i32] [i32 0, i32 113] }, %struct.ath5k_ini_rfgain { i16 -26004, [2 x i32] [i32 0, i32 440] }, %struct.ath5k_ini_rfgain { i16 -26000, [2 x i32] [i32 0, i32 504] }, %struct.ath5k_ini_rfgain { i16 -25996, [2 x i32] [i32 0, i32 56] }, %struct.ath5k_ini_rfgain { i16 -25992, [2 x i32] [i32 0, i32 120] }, %struct.ath5k_ini_rfgain { i16 -25988, [2 x i32] [i32 0, i32 184] }, %struct.ath5k_ini_rfgain { i16 -25984, [2 x i32] [i32 0, i32 441] }, %struct.ath5k_ini_rfgain { i16 -25980, [2 x i32] [i32 0, i32 505] }, %struct.ath5k_ini_rfgain { i16 -25976, [2 x i32] [i32 0, i32 57] }, %struct.ath5k_ini_rfgain { i16 -25972, [2 x i32] [i32 0, i32 121] }, %struct.ath5k_ini_rfgain { i16 -25968, [2 x i32] [i32 0, i32 185] }, %struct.ath5k_ini_rfgain { i16 -25964, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25960, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25956, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25952, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25948, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25944, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25940, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25936, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25932, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25928, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25924, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25920, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25916, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25912, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25908, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25904, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25900, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25896, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25892, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25888, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25884, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25880, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25876, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25872, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25868, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25864, [2 x i32] [i32 0, i32 249] }, %struct.ath5k_ini_rfgain { i16 -25860, [2 x i32] [i32 0, i32 249] }], [192 x i8] zeroinitializer }, align 32
@rfb_5111 = internal constant { [45 x %struct.ath5k_ini_rfbuffer], [176 x i8] } { [45 x %struct.ath5k_ini_rfbuffer] [%struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] [i32 3670016, i32 3670016, i32 3670016] }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] [i32 0, i32 192, i32 128] }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26468, [3 x i32] [i32 262393, i32 262399, i32 262397] }, %struct.ath5k_ini_rfbuffer { i8 0, i16 -26412, [3 x i32] [i32 0, i32 4, i32 4] }, %struct.ath5k_ini_rfbuffer { i8 1, i16 -26412, [3 x i32] [i32 32, i32 32, i32 32] }, %struct.ath5k_ini_rfbuffer { i8 2, i16 -26412, [3 x i32] [i32 16, i32 16, i32 16] }, %struct.ath5k_ini_rfbuffer { i8 3, i16 -26408, [3 x i32] [i32 6295656, i32 6295656, i32 6295656] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 268435456, i32 268435456, i32 268435456] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 67108864, i32 67108864, i32 67108864] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 0, i32 167772160, i32 0] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 3670208, i32 37224640, i32 3670208] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 131078, i32 6, i32 131078] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 137, i32 137, i32 137] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 160, i32 160, i32 160] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 262151, i32 262151, i32 262151] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26412, [3 x i32] [i32 26, i32 26, i32 26] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 64, i32 64, i32 64] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 16, i32 16, i32 16] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 8, i32 8, i32 8] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 79, i32 79, i32 79] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 241, i32 97, i32 241] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 36943, i32 36940, i32 36943] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 4698, i32 4762, i32 4698] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26420, [3 x i32] [i32 14, i32 15, i32 14] }], [176 x i8] zeroinitializer }, align 32
@rfb_5112a = internal constant { [56 x %struct.ath5k_ini_rfbuffer], [224 x i8] } { [56 x %struct.ath5k_ini_rfbuffer] [%struct.ath5k_ini_rfbuffer { i8 1, i16 -26412, [3 x i32] [i32 32, i32 32, i32 32] }, %struct.ath5k_ini_rfbuffer { i8 2, i16 -26416, [3 x i32] [i32 50725896, i32 50725896, i32 50725896] }, %struct.ath5k_ini_rfbuffer { i8 3, i16 -26404, [3 x i32] [i32 10494144, i32 14688448, i32 14688448] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 251658240, i32 251658240, i32 251658240] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 8388608, i32 8388608, i32 8388608] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2752512, i32 2752512, i32 2752512] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 65536, i32 65536, i32 65536] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1572864, i32 1572864, i32 1572864] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 6291456, i32 7208960, i32 7208960] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 13041664, i32 13041664, i32 13041664] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 4915200, i32 4915200, i32 4915200] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 71827456, i32 71827456, i32 71827456] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 4980736, i32 4980736, i32 4980736] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 14942208, i32 14942208, i32 14942208] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16515072, i32 16515072, i32 16515072] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16711680, i32 16711680, i32 16711680] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 71237632, i32 71237632, i32 71237632] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 786432, i32 786432, i32 786432] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 35192832, i32 35192832, i32 35192832] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2359296, i32 2359296, i32 2359296] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 11796480, i32 11796480, i32 11796480] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 10027008, i32 10027008, i32 10027008] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 5242880, i32 5242880, i32 5242880] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2752512, i32 2752512, i32 2752512] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1179648, i32 1179648, i32 1179648] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 -1070465024, i32 -1070465024, i32 -1070465024] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 24379392, i32 24379392, i32 24379392] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1114112, i32 1114112, i32 1114112] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 -2044198912, i32 -2044198912, i32 -2044198912] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 830734336, i32 830734336, i32 830734336] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 15859840, i32 15859840, i32 15859840] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2555929, i32 2555929, i32 2555929] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 3, i32 3, i32 3] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 178, i32 178, i32 178] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 11542660, i32 11542660, i32 11542660] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 4269476, i32 4269476, i32 4269476] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1151520, i32 1151520, i32 1151520] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1722368, i32 1722368, i32 1722368] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26408, [3 x i32] [i32 721456, i32 721456, i32 721456] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 148, i32 148, i32 148] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 145, i32 145, i32 145] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 18, i32 18, i32 18] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 128, i32 128, i32 128] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 217, i32 217, i32 217] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 96, i32 96, i32 96] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 240, i32 240, i32 240] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 162, i32 162, i32 162] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 82, i32 82, i32 82] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 212, i32 212, i32 212] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 5324, i32 5324, i32 5324] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 1164, i32 1164, i32 1164] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26428, [3 x i32] [i32 3, i32 3, i32 3] }], [224 x i8] zeroinitializer }, align 32
@rfb_5112 = internal constant { [54 x %struct.ath5k_ini_rfbuffer], [192 x i8] } { [54 x %struct.ath5k_ini_rfbuffer] [%struct.ath5k_ini_rfbuffer { i8 1, i16 -26412, [3 x i32] [i32 32, i32 32, i32 32] }, %struct.ath5k_ini_rfbuffer { i8 2, i16 -26416, [3 x i32] [i32 50725896, i32 50725896, i32 50725896] }, %struct.ath5k_ini_rfbuffer { i8 3, i16 -26404, [3 x i32] [i32 10535104, i32 14729408, i32 14729408] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 10485760, i32 10485760, i32 10485760] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 655360, i32 655360, i32 655360] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 6684672, i32 6684672, i32 6684672] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 14352384, i32 14352384, i32 14352384] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 15794176, i32 15794176, i32 15794176] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1179648, i32 1179648, i32 1179648] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1179648, i32 1179648, i32 1179648] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 7536640, i32 7536640, i32 7536640] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 786432, i32 786432, i32 786432] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16711680, i32 16711680, i32 16711680] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16711680, i32 16711680, i32 16711680] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 9109504, i32 9109504, i32 9109504] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 6291456, i32 6291456, i32 6291456] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 786432, i32 786432, i32 786432] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 8650752, i32 8650752, i32 8650752] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 6553600, i32 6553600, i32 6553600] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2097152, i32 2097152, i32 2097152] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2359296, i32 2359296, i32 2359296] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2424832, i32 2424832, i32 2424832] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1114112, i32 1114112, i32 1114112] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1114112, i32 1114112, i32 1114112] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 5308416, i32 5308416, i32 5308416] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 470024192, i32 470024192, i32 470024192] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 655360, i32 655360, i32 655360] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 10551296, i32 10551296, i32 10551296] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 4194304, i32 4194304, i32 4194304] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 50921472, i32 50921472, i32 50921472] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 100663296, i32 100663296, i32 100663296] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 176, i32 168, i32 168] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 46, i32 46, i32 46] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 7096897, i32 7097073, i32 7096929] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 5277994, i32 5277995, i32 5277995] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 8659968, i32 8659968, i32 8659968] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 13013504, i32 13013504, i32 13013504] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26416, [3 x i32] [i32 131084, i32 131084, i32 131084] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 148, i32 148, i32 148] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 145, i32 145, i32 145] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 10, i32 18, i32 18] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 128, i32 128, i32 128] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 193, i32 193, i32 193] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 96, i32 96, i32 96] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 240, i32 240, i32 240] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 34, i32 34, i32 34] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 146, i32 146, i32 146] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 212, i32 212, i32 212] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 5324, i32 5324, i32 5324] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 1164, i32 1164, i32 1164] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26428, [3 x i32] [i32 3, i32 3, i32 3] }], [192 x i8] zeroinitializer }, align 32
@rf_regs_2413 = internal constant { [3 x %struct.ath5k_rf_reg], [40 x i8] } { [3 x %struct.ath5k_rf_reg] [%struct.ath5k_rf_reg { i8 2, i8 0, %struct.ath5k_rfb_field { i8 1, i16 1, i8 2 } }, %struct.ath5k_rf_reg { i8 6, i8 1, %struct.ath5k_rfb_field { i8 3, i16 168, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 3, %struct.ath5k_rfb_field { i8 3, i16 165, i8 0 } }], [40 x i8] zeroinitializer }, align 32
@rfb_2413 = internal constant { [33 x %struct.ath5k_ini_rfbuffer], [144 x i8] } { [33 x %struct.ath5k_ini_rfbuffer] [%struct.ath5k_ini_rfbuffer { i8 1, i16 -26412, [3 x i32] [i32 32, i32 32, i32 32] }, %struct.ath5k_ini_rfbuffer { i8 2, i16 -26416, [3 x i32] [i32 33559560, i32 33559560, i32 33559560] }, %struct.ath5k_ini_rfbuffer { i8 3, i16 -26404, [3 x i32] [i32 10494144, i32 14688448, i32 14688448] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 -268435456, i32 -268435456, i32 -268435456] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 50331648, i32 50331648, i32 50331648] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1077936128, i32 1077936128, i32 1077936128] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1694826496, i32 1694826496, i32 1694826496] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 4325376, i32 4325376, i32 4325376] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 11862016, i32 11862016, i32 11862016] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 196608, i32 196608, i32 196608] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16187392, i32 16187392, i32 16187392] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 10289152, i32 10289152, i32 10289152] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2228224, i32 2228224, i32 2228224] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 69337088, i32 69337088, i32 69337088] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2293784, i32 2293784, i32 2293784] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2621440, i32 2621536, i32 2621536] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 5243072, i32 5243075, i32 5243075] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 262271, i32 262271, i32 262271] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1112, i32 1112, i32 1112] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 49152, i32 49152, i32 49152] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26408, [3 x i32] [i32 4194864, i32 4194864, i32 4194864] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 25600, i32 25600, i32 25600] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 2048, i32 2048, i32 2048] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26420, [3 x i32] [i32 14, i32 14, i32 14] }], [144 x i8] zeroinitializer }, align 32
@rf_regs_2316 = internal constant { [3 x %struct.ath5k_rf_reg], [40 x i8] } { [3 x %struct.ath5k_rf_reg] [%struct.ath5k_rf_reg { i8 2, i8 0, %struct.ath5k_rfb_field { i8 1, i16 1, i8 2 } }, %struct.ath5k_rf_reg { i8 6, i8 1, %struct.ath5k_rfb_field { i8 3, i16 178, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 3, %struct.ath5k_rfb_field { i8 3, i16 175, i8 0 } }], [40 x i8] zeroinitializer }, align 32
@rfb_2316 = internal constant { [35 x %struct.ath5k_ini_rfbuffer], [144 x i8] } { [35 x %struct.ath5k_ini_rfbuffer] [%struct.ath5k_ini_rfbuffer { i8 1, i16 -26412, [3 x i32] [i32 32, i32 32, i32 32] }, %struct.ath5k_ini_rfbuffer { i8 2, i16 -26416, [3 x i32] [i32 33559560, i32 33559560, i32 33559560] }, %struct.ath5k_ini_rfbuffer { i8 3, i16 -26404, [3 x i32] [i32 10494144, i32 14688448, i32 14688448] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 -1073741824, i32 -1073741824, i32 -1073741824] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 251658240, i32 251658240, i32 251658240] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 33554432, i32 33554432, i32 33554432] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 -134217728, i32 -134217728, i32 -134217728] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 -1793785856, i32 -1793785856, i32 -1793785856] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 -1056964608, i32 -1056964608, i32 -1056964608] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 524288, i32 524288, i32 524288] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 13959168, i32 13959168, i32 13959168] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 917504, i32 917504, i32 917504] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 14417920, i32 14417920, i32 14417920] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 7798784, i32 7798784, i32 7798784] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 9043968, i32 9043968, i32 9043968] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 277348352, i32 277348352, i32 277348352] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 9175136, i32 9175136, i32 9175136] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 10485760, i32 10485888, i32 10485888] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 4194304, i32 4194317, i32 4194317] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1115136, i32 1115136, i32 1115136] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 96, i32 96, i32 96] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1, i32 1, i32 1] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2816, i32 2816, i32 2816] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 3048, i32 3048, i32 3048] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26432, [3 x i32] [i32 65536, i32 65536, i32 65536] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 25600, i32 25600, i32 25600] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 2048, i32 2048, i32 2048] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26420, [3 x i32] [i32 14, i32 14, i32 14] }], [144 x i8] zeroinitializer }, align 32
@rf_regs_5413 = internal constant { [6 x %struct.ath5k_rf_reg], [48 x i8] } { [6 x %struct.ath5k_rf_reg] [%struct.ath5k_rf_reg { i8 6, i8 1, %struct.ath5k_rfb_field { i8 3, i16 241, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 3, %struct.ath5k_rfb_field { i8 3, i16 238, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 2, %struct.ath5k_rfb_field { i8 3, i16 247, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 4, %struct.ath5k_rfb_field { i8 3, i16 244, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 19, %struct.ath5k_rfb_field { i8 3, i16 131, i8 3 } }, %struct.ath5k_rf_reg { i8 6, i8 30, %struct.ath5k_rfb_field { i8 1, i16 291, i8 2 } }], [48 x i8] zeroinitializer }, align 32
@rfb_5413 = internal constant { [43 x %struct.ath5k_ini_rfbuffer], [176 x i8] } { [43 x %struct.ath5k_ini_rfbuffer] [%struct.ath5k_ini_rfbuffer { i8 1, i16 -26412, [3 x i32] [i32 32, i32 32, i32 32] }, %struct.ath5k_ini_rfbuffer { i8 2, i16 -26416, [3 x i32] [i32 8, i32 8, i32 8] }, %struct.ath5k_ini_rfbuffer { i8 3, i16 -26404, [3 x i32] [i32 10485952, i32 14680256, i32 14680256] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 855638016, i32 855638016, i32 855638016] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16777216, i32 16777216, i32 16777216] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 520093696, i32 520093696, i32 520093696] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 12058624, i32 12058624, i32 12058624] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 11993088, i32 11993088, i32 11993088] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 8650752, i32 8650752, i32 8650752] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 9961472, i32 9961472, i32 9961472] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 12582912, i32 12582912, i32 12582912] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16711680, i32 16711680, i32 16711680] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16711680, i32 16711680, i32 16711680] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16711680, i32 16711680, i32 16711680] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16711680, i32 16711680, i32 16711680] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 14090240, i32 14090240, i32 14090240] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 6356992, i32 6356992, i32 6356992] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16646144, i32 16646144, i32 16646144] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 14548992, i32 14548992, i32 14548992] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 8323072, i32 8323072, i32 8323072] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 71106560, i32 71106560, i32 71106560] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 7798784, i32 7798784, i32 7798784] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 4456448, i32 4456448, i32 4456448] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 9961472, i32 9961472, i32 9961472] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1048704, i32 1048704, i32 1048704] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 376884, i32 376884, i32 376884] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 3211504, i32 3211504, i32 3211504] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 786719, i32 786719, i32 786719] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 5308480, i32 5308480, i32 5308480] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 5243098, i32 5243098, i32 5243098] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16452, i32 16452, i32 16452] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 24768, i32 24768, i32 24768] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 11264, i32 13824, i32 13824] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26424, [3 x i32] [i32 1027, i32 263171, i32 263171] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 25600, i32 25600, i32 25600] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 2048, i32 2048, i32 2048] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26420, [3 x i32] [i32 14, i32 14, i32 14] }], [176 x i8] zeroinitializer }, align 32
@rf_regs_2425 = internal constant { [3 x %struct.ath5k_rf_reg], [40 x i8] } { [3 x %struct.ath5k_rf_reg] [%struct.ath5k_rf_reg { i8 2, i8 0, %struct.ath5k_rfb_field { i8 1, i16 1, i8 2 } }, %struct.ath5k_rf_reg { i8 6, i8 1, %struct.ath5k_rfb_field { i8 3, i16 193, i8 0 } }, %struct.ath5k_rf_reg { i8 6, i8 3, %struct.ath5k_rfb_field { i8 3, i16 190, i8 0 } }], [40 x i8] zeroinitializer }, align 32
@rfb_2317 = internal constant { [36 x %struct.ath5k_ini_rfbuffer], [128 x i8] } { [36 x %struct.ath5k_ini_rfbuffer] [%struct.ath5k_ini_rfbuffer { i8 1, i16 -26412, [3 x i32] [i32 32, i32 32, i32 32] }, %struct.ath5k_ini_rfbuffer { i8 2, i16 -26416, [3 x i32] [i32 33559560, i32 33559560, i32 33559560] }, %struct.ath5k_ini_rfbuffer { i8 3, i16 -26404, [3 x i32] [i32 10494144, i32 14688448, i32 14688448] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 268435456, i32 268435456, i32 268435456] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2752512, i32 2752512, i32 2752512] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1048576, i32 1048576, i32 1048576] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 131072, i32 131072, i32 131072] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 7536640, i32 7536640, i32 7536640] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16252928, i32 16252928, i32 16252928] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 15138816, i32 15138816, i32 15138816] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1310976, i32 1310976, i32 1310976] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 9502784, i32 9502784, i32 9502784] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 458778, i32 458778, i32 458778] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 4259840, i32 4259840, i32 4259840] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 8454144, i32 8454240, i32 8454240] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 133120, i32 133123, i32 133123] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 5728, i32 5728, i32 5728] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 38536, i32 38536, i32 38536] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26428, [3 x i32] [i32 1, i32 1, i32 1] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 25600, i32 25600, i32 25600] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 2048, i32 2048, i32 2048] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26420, [3 x i32] [i32 14, i32 14, i32 14] }], [128 x i8] zeroinitializer }, align 32
@rfb_2425 = internal constant { [36 x %struct.ath5k_ini_rfbuffer], [128 x i8] } { [36 x %struct.ath5k_ini_rfbuffer] [%struct.ath5k_ini_rfbuffer { i8 1, i16 -26412, [3 x i32] [i32 32, i32 32, i32 32] }, %struct.ath5k_ini_rfbuffer { i8 2, i16 -26416, [3 x i32] [i32 33559560, i32 33559560, i32 33559560] }, %struct.ath5k_ini_rfbuffer { i8 3, i16 -26404, [3 x i32] [i32 10494144, i32 14688448, i32 14688448] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 268435456, i32 268435456, i32 268435456] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2752512, i32 2752512, i32 2752512] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1048576, i32 1048576, i32 1048576] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 131072, i32 131072, i32 131072] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 7536640, i32 7536640, i32 7536640] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16252928, i32 16252928, i32 16252928] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 15138816, i32 15138816, i32 15138816] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1310720, i32 1310720, i32 1310720] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 9502784, i32 9502784, i32 9502784] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 458778, i32 458778, i32 458778] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 4259840, i32 4259840, i32 4259840] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 8454144, i32 8454240, i32 8454240] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 133120, i32 133123, i32 133123] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 5728, i32 5728, i32 5728] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 5768, i32 5768, i32 5768] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26428, [3 x i32] [i32 1, i32 1, i32 1] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 25600, i32 25600, i32 25600] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 2048, i32 2048, i32 2048] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26420, [3 x i32] [i32 14, i32 14, i32 14] }], [128 x i8] zeroinitializer }, align 32
@rfb_2417 = internal constant { [36 x %struct.ath5k_ini_rfbuffer], [128 x i8] } { [36 x %struct.ath5k_ini_rfbuffer] [%struct.ath5k_ini_rfbuffer { i8 1, i16 -26412, [3 x i32] [i32 32, i32 32, i32 32] }, %struct.ath5k_ini_rfbuffer { i8 2, i16 -26416, [3 x i32] [i32 33559560, i32 33559560, i32 33559560] }, %struct.ath5k_ini_rfbuffer { i8 3, i16 -26404, [3 x i32] [i32 10494144, i32 14688448, i32 14688448] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 268435456, i32 268435456, i32 268435456] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 2752512, i32 2752512, i32 2752512] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1048576, i32 1048576, i32 1048576] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 131072, i32 131072, i32 131072] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 7536640, i32 7536640, i32 7536640] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 16252928, i32 16252928, i32 16252928] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 15138816, i32 -2132344832, i32 -2132344832] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 1310720, i32 1310720, i32 1310720] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 9502784, i32 9502784, i32 9502784] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 458778, i32 34013210, i32 34013210] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 4259840, i32 4259840, i32 4259840] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 8454144, i32 8454240, i32 8454240] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 133120, i32 133123, i32 133123] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] zeroinitializer }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 5728, i32 5728, i32 5728] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26468, [3 x i32] [i32 5768, i32 5768, i32 5768] }, %struct.ath5k_ini_rfbuffer { i8 6, i16 -26428, [3 x i32] [i32 1, i32 1, i32 1] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 25600, i32 25600, i32 25600] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26468, [3 x i32] [i32 2048, i32 2048, i32 2048] }, %struct.ath5k_ini_rfbuffer { i8 7, i16 -26420, [3 x i32] [i32 14, i32 14, i32 14] }], [128 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid bank\0A\00", [18 x i8] zeroinitializer }, align 32
@switch.table.ath5k_hw_phy_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 419430400, i32 838860800, i32 1207959552], [20 x i8] zeroinitializer }, align 32
@switch.table.ath5k_hw_phy_init.24 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @rfgain_5111, ptr @rfgain_5112, ptr @rfgain_2413, ptr @rfgain_5413, ptr @rfgain_2316, ptr @rfgain_2425, ptr @rfgain_2425], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 6, i64 7]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"rfgain_opt_5111\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 493, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"rfgain_opt_5112\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 520, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1603, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1618, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1657, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1863, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 3726, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 3953, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"rf_regs_5112a\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 415, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 215, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 233, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"rf_regs_5111\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 190, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"rf_regs_5112\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 298, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 659, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1579, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1752, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1782, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1795, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1825, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 3608, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1441, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"rfgain_5111\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 36, i32 38 }
@___asan_gen_.129 = private unnamed_addr constant [12 x i8] c"rfgain_5112\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 105, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant [12 x i8] c"rfgain_2413\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 174, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"rfgain_2316\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 242, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"rfgain_5413\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 311, i32 38 }
@___asan_gen_.141 = private unnamed_addr constant [12 x i8] c"rfgain_2425\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [43 x i8] c"../drivers/net/wireless/ath/ath5k/rfgain.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 381, i32 38 }
@___asan_gen_.144 = private unnamed_addr constant [9 x i8] c"rfb_5111\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 210, i32 40 }
@___asan_gen_.147 = private unnamed_addr constant [10 x i8] c"rfb_5112a\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 454, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"rfb_5112\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 327, i32 40 }
@___asan_gen_.153 = private unnamed_addr constant [13 x i8] c"rf_regs_2413\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 527, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant [9 x i8] c"rfb_2413\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 536, i32 40 }
@___asan_gen_.159 = private unnamed_addr constant [13 x i8] c"rf_regs_2316\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 586, i32 34 }
@___asan_gen_.162 = private unnamed_addr constant [9 x i8] c"rfb_2316\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 593, i32 40 }
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"rf_regs_5413\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 648, i32 34 }
@___asan_gen_.168 = private unnamed_addr constant [9 x i8] c"rfb_5413\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 658, i32 40 }
@___asan_gen_.171 = private unnamed_addr constant [13 x i8] c"rf_regs_2425\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 719, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant [9 x i8] c"rfb_2317\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 771, i32 40 }
@___asan_gen_.177 = private unnamed_addr constant [9 x i8] c"rfb_2425\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 727, i32 40 }
@___asan_gen_.180 = private unnamed_addr constant [9 x i8] c"rfb_2417\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ath/ath5k/rfbuffer.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 815, i32 40 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 892, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath5k/phy.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 902, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant [31 x i8] c"switch.table.ath5k_hw_phy_init\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [34 x i8] c"switch.table.ath5k_hw_phy_init.24\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @ath5k_hw_rfb_op._entry, ptr @ath5k_hw_rfb_op._entry.11, ptr @ath5k_hw_rfb_op._entry_ptr, ptr @ath5k_hw_rfb_op._entry_ptr.13, ptr @rfgain_opt_5111, ptr @rfgain_opt_5112, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rf_regs_5112a, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @rf_regs_5111, ptr @rf_regs_5112, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @rfgain_5111, ptr @rfgain_5112, ptr @rfgain_2413, ptr @rfgain_2316, ptr @rfgain_5413, ptr @rfgain_2425, ptr @rfb_5111, ptr @rfb_5112a, ptr @rfb_5112, ptr @rf_regs_2413, ptr @rfb_2413, ptr @rf_regs_2316, ptr @rfb_2316, ptr @rf_regs_5413, ptr @rfb_5413, ptr @rf_regs_2425, ptr @rfb_2317, ptr @rfb_2425, ptr @rfb_2417, ptr @.str.22, ptr @.str.23, ptr @switch.table.ath5k_hw_phy_init, ptr @switch.table.ath5k_hw_phy_init.24], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfgain_opt_5111 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfgain_opt_5112 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_regs_5112a to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_hw_rfb_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_hw_rfb_op._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_regs_5111 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_regs_5112 to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfgain_5111 to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfgain_5112 to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfgain_2413 to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfgain_2316 to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfgain_5413 to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfgain_2425 to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfb_5111 to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfb_5112a to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfb_5112 to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_regs_2413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfb_2413 to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_regs_2316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfb_2316 to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_regs_5413 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfb_5413 to i32), i32 688, i32 864, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_regs_2425 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfb_2317 to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfb_2425 to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfb_2417 to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_hw_phy_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_hw_phy_init.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ath5k_hw_radio_revision(ptr nocapture noundef readonly %ah, i32 noundef %band) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %band to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %band, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %1 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 38912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 121634816) #9, !srcloc !108
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iobase.i26 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %3 = ptrtoint ptr %iobase.i26 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %4, i32 38912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 117440512) #9, !srcloc !108
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #9
  %iobase.i28 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %5 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i28, align 4
  %add.ptr.i29 = getelementptr i8, ptr %6, i32 39120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 370933760) #9, !srcloc !108
  %7 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i28, align 4
  %add.ptr.i31 = getelementptr i8, ptr %8, i32 39040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 256) #9, !srcloc !108
  %9 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i28, align 4
  %add.ptr.i31.1 = getelementptr i8, ptr %10, i32 39040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.1, i32 256) #9, !srcloc !108
  %11 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i28, align 4
  %add.ptr.i31.2 = getelementptr i8, ptr %12, i32 39040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.2, i32 256) #9, !srcloc !108
  %13 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i28, align 4
  %add.ptr.i31.3 = getelementptr i8, ptr %14, i32 39040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.3, i32 256) #9, !srcloc !108
  %15 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i28, align 4
  %add.ptr.i31.4 = getelementptr i8, ptr %16, i32 39040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.4, i32 256) #9, !srcloc !108
  %17 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i28, align 4
  %add.ptr.i31.5 = getelementptr i8, ptr %18, i32 39040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.5, i32 256) #9, !srcloc !108
  %19 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i28, align 4
  %add.ptr.i31.6 = getelementptr i8, ptr %20, i32 39040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.6, i32 256) #9, !srcloc !108
  %21 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i28, align 4
  %add.ptr.i31.7 = getelementptr i8, ptr %22, i32 39040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.7, i32 256) #9, !srcloc !108
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %23 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2 = icmp eq i32 %24, 0
  %25 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase.i28, align 4
  %add.ptr.i33 = getelementptr i8, ptr %26, i32 39936
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #9
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %shr.i.1 = lshr i32 %27, 5
  %and.i.1 = and i32 %shr.i.1, 1
  %28 = lshr i32 %27, 3
  %shl.i.1 = and i32 %28, 2
  %or.i.1 = or i32 %and.i.1, %shl.i.1
  %shr = lshr i32 %27, 7
  %shr.i.3 = and i32 %shr, 1
  %29 = shl nuw nsw i32 %or.i.1, 2
  %30 = lshr i32 %27, 5
  %31 = and i32 %30, 2
  %shl.i.3 = or i32 %29, %31
  %or.i.3 = or i32 %shr.i.3, %shl.i.3
  %add = add nuw nsw i32 %or.i.3, 1
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %33 = lshr i32 %32, 23
  %shl = and i32 %33, 2
  %shr.i38.1 = lshr i32 %32, 29
  %and.i39.1 = and i32 %shr.i38.1, 1
  %34 = lshr i32 %32, 27
  %shl.i40.1 = and i32 %34, 2
  %or.i41.1 = or i32 %and.i39.1, %shl.i40.1
  %shr.i38.3 = lshr i32 %32, 31
  %35 = shl nuw nsw i32 %or.i41.1, 2
  %36 = lshr i32 %32, 29
  %37 = and i32 %36, 2
  %shl.i40.3 = or i32 %35, %37
  %or.i41.3 = or i32 %shr.i38.3, %shl.i40.3
  %shl.i40.4 = shl nuw nsw i32 %or.i41.3, 2
  %or.i41.4 = or i32 %shl, %shl.i40.4
  %shr.i38.5 = lshr i32 %32, 25
  %and.i39.5 = and i32 %shr.i38.5, 1
  %or.i41.5 = or i32 %and.i39.5, %or.i41.4
  %shr.i38.7 = lshr i32 %32, 27
  %and.i39.7 = and i32 %shr.i38.7, 1
  %38 = shl i32 %or.i41.5, 2
  %39 = lshr i32 %32, 25
  %40 = and i32 %39, 2
  %shl.i40.7 = or i32 %38, %40
  %or.i41.7 = or i32 %and.i39.7, %shl.i40.7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0.in = phi i32 [ %add, %if.then ], [ %or.i41.7, %if.else ]
  %ret.0 = trunc i32 %ret.0.in to i16
  %41 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iobase.i28, align 4
  %add.ptr.i47 = getelementptr i8, ptr %42, i32 38912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 117440512) #9, !srcloc !108
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %ret.0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ath5k_channel_ok(ptr nocapture noundef readonly %ah, ptr nocapture noundef readonly %channel) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %center_freq, align 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %3, label %entry.if.end33_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then16
  ]

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then:                                          ; preds = %entry
  %conv2 = and i32 %1, 65535
  %cap_range = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1
  %5 = ptrtoint ptr %cap_range to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cap_range, align 4
  %conv3 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3)
  %cmp4.not = icmp ult i32 %conv2, %conv3
  br i1 %cmp4.not, label %if.then.if.end33_crit_edge, label %land.lhs.true

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then
  %range_2ghz_max = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 1
  %7 = ptrtoint ptr %range_2ghz_max to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %range_2ghz_max, align 2
  %conv9 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv9)
  %cmp10.not = icmp ugt i32 %conv2, %conv9
  br i1 %cmp10.not, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then16:                                        ; preds = %entry
  %conv17 = and i32 %1, 65535
  %range_5ghz_min = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 2
  %9 = ptrtoint ptr %range_5ghz_min to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %range_5ghz_min, align 4
  %conv20 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17, i32 %conv20)
  %cmp21.not = icmp ult i32 %conv17, %conv20
  br i1 %cmp21.not, label %if.then16.if.end33_crit_edge, label %land.lhs.true23

if.then16.if.end33_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true23:                                  ; preds = %if.then16
  %range_5ghz_max = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 3
  %11 = ptrtoint ptr %range_5ghz_max to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %range_5ghz_max, align 2
  %conv27 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17, i32 %conv27)
  %cmp28.not = icmp ugt i32 %conv17, %conv27
  br i1 %cmp28.not, label %land.lhs.true23.if.end33_crit_edge, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true23.if.end33_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true23.if.end33_crit_edge, %if.then16.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.then.if.end33_crit_edge, %entry.if.end33_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %land.lhs.true23.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end33 ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true23.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ath5k_hw_chan_has_spur_noise(ptr nocapture noundef readonly %ah, ptr nocapture noundef readonly %channel) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_radio = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %0 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_radio, align 8
  %.off = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %entry.if.end_crit_edge, label %lor.lhs.false6

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false6:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ah_mac_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 71
  %2 = ptrtoint ptr %ah_mac_version to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ah_mac_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %3)
  %cmp7 = icmp eq i16 %3, 15
  %spec.select = select i1 %cmp7, i32 40, i32 32
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false6, %entry.if.end_crit_edge
  %refclk_freq.0 = phi i32 [ 40, %entry.if.end_crit_edge ], [ %spec.select, %lor.lhs.false6 ]
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %4 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %center_freq, align 4
  %rem = urem i32 %5, %refclk_freq.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp10.not = icmp ne i32 %rem, 0
  %6 = add nsw i32 %rem, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %6)
  %7 = icmp ult i32 %6, -13
  %or.cond = select i1 %cmp10.not, i1 %7, i1 false
  ret i1 %or.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_phy_disable(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 38940
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #9, !srcloc !108
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath5k_hw_rfgain_opt_init(ptr nocapture noundef %ah) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_radio = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %0 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_radio, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %entry.return.sink.split_crit_edge
    i32 2, label %sw.bb4
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb4, %entry.return.sink.split_crit_edge
  %.sink21 = phi i8 [ 1, %sw.bb4 ], [ 4, %entry.return.sink.split_crit_edge ]
  %.sink = phi i8 [ 85, %sw.bb4 ], [ 35, %entry.return.sink.split_crit_edge ]
  %ah_gain = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106
  %3 = ptrtoint ptr %ah_gain to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink21, ptr %ah_gain, align 8
  %g_low = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 3
  %4 = ptrtoint ptr %g_low to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 20, ptr %g_low, align 1
  %g_high = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 4
  %5 = ptrtoint ptr %g_high to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %g_high, align 4
  %g_state = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 6
  %6 = ptrtoint ptr %g_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %g_state, align 2
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_gainf_calibrate(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_rf_banks = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 103
  %0 = ptrtoint ptr %ah_rf_banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah_rf_banks, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %g_state = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 6
  %2 = ptrtoint ptr %g_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %g_state, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %3, label %lor.lhs.false.done_crit_edge [
    i8 0, label %lor.lhs.false.cleanup_crit_edge
    i8 2, label %if.end9
  ]

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end9:                                          ; preds = %lor.lhs.false
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 39216
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !110
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %and = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then10, label %if.end9.done_crit_edge

if.end9.done_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then10:                                        ; preds = %if.end9
  %shr = lshr i32 %8, 25
  %conv11 = trunc i32 %shr to i8
  %g_current = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 1
  %9 = ptrtoint ptr %g_current to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv11, ptr %g_current, align 1
  %10 = and i32 %8, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %10)
  %cmp15 = icmp eq i32 %10, 16777216
  br i1 %cmp15, label %if.then17, label %if.then10.if.end33_crit_edge

if.then10.if.end33_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then17:                                        ; preds = %if.then10
  %ah_radio_5ghz_revision = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 73
  %11 = ptrtoint ptr %ah_radio_5ghz_revision to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ah_radio_5ghz_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %12)
  %cmp19 = icmp ugt i16 %12, 52
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %ee_cck_ofdm_gain_delta = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 17
  %13 = ptrtoint ptr %ee_cck_ofdm_gain_delta to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ee_cck_ofdm_gain_delta, align 2
  %conv22 = zext i16 %14 to i32
  %add = add nuw nsw i32 %shr, %conv22
  %conv26 = trunc i32 %add to i8
  br label %if.end33.sink.split

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %conv31 = add nuw i8 %conv11, 5
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.else, %if.then21
  %conv26.sink = phi i8 [ %conv26, %if.then21 ], [ %conv31, %if.else ]
  %15 = ptrtoint ptr %g_current to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv26.sink, ptr %g_current, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.then10.if.end33_crit_edge
  %ah_radio_5ghz_revision34 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 73
  %16 = ptrtoint ptr %ah_radio_5ghz_revision34 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ah_radio_5ghz_revision34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %17)
  %cmp36 = icmp ugt i16 %17, 52
  br i1 %cmp36, label %if.then38, label %if.end33.if.end56_crit_edge

if.end33.if.end56_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then38:                                        ; preds = %if.end33
  %ah_radio.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %18 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ah_radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i = icmp ne i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 53, i16 %17)
  %cmp1.i = icmp eq i16 %17, 53
  %or.cond = select i1 %cmp.not.i, i1 true, i1 %cmp1.i
  br i1 %or.cond, label %if.then38.ath5k_hw_rf_gainf_corr.exit_crit_edge, label %if.end.i

if.then38.ath5k_hw_rf_gainf_corr.exit_crit_edge:  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_hw_rf_gainf_corr.exit

if.end.i:                                         ; preds = %if.then38
  %ah_rf_regs_count.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 105
  %20 = ptrtoint ptr %ah_rf_regs_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 35, ptr %ah_rf_regs_count.i, align 4
  %ah_gain.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106
  %21 = ptrtoint ptr %ah_gain.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ah_gain.i, align 8
  %idxprom.i = zext i8 %22 to i32
  %arrayidx.i = getelementptr %struct.ath5k_gain_opt, ptr @rfgain_opt_5112, i32 0, i32 2, i32 %idxprom.i
  %23 = ptrtoint ptr %ah_rf_banks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ah_rf_banks, align 4
  %cmp3.i = icmp eq ptr %24, null
  br i1 %cmp3.i, label %if.end.i.ath5k_hw_rf_gainf_corr.exit_crit_edge, label %if.end6.i

if.end.i.ath5k_hw_rf_gainf_corr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_hw_rf_gainf_corr.exit

if.end6.i:                                        ; preds = %if.end.i
  %g_f_corr.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 5
  %25 = ptrtoint ptr %g_f_corr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %g_f_corr.i, align 1
  %call.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull @rf_regs_5112a, i32 noundef 0, i8 noundef zeroext 38, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp8.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp8.not.i, label %if.end11.i, label %if.end6.i.ath5k_hw_rf_gainf_corr.exit_crit_edge

if.end6.i.ath5k_hw_rf_gainf_corr.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_hw_rf_gainf_corr.exit

if.end11.i:                                       ; preds = %if.end6.i
  %call12.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull @rf_regs_5112a, i32 noundef 0, i8 noundef zeroext 40, i1 noundef zeroext false) #9
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = sext i8 %27 to i32
  %28 = zext i32 %conv14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %conv14.i, label %if.end11.i.cleanup.sink.split.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb18.i
    i32 1, label %sw.bb23.i
  ]

if.end11.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

sw.bb.i:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.tr1.i = trunc i32 %call12.i to i8
  %conv15.i = shl i8 %call12.tr1.i, 1
  br label %cleanup.sink.split.i

sw.bb18.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.tr.i = trunc i32 %call12.i to i8
  %29 = shl i8 %call12.tr.i, 1
  %conv20.i = add i8 %29, -10
  br label %cleanup.sink.split.i

sw.bb23.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv24.i = trunc i32 %call12.i to i8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb23.i, %sw.bb18.i, %sw.bb.i, %if.end11.i.cleanup.sink.split.i_crit_edge
  %conv15.sink.i = phi i8 [ %conv15.i, %sw.bb.i ], [ %conv20.i, %sw.bb18.i ], [ %conv24.i, %sw.bb23.i ], [ 0, %if.end11.i.cleanup.sink.split.i_crit_edge ]
  %30 = ptrtoint ptr %g_f_corr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv15.sink.i, ptr %g_f_corr.i, align 1
  br label %ath5k_hw_rf_gainf_corr.exit

ath5k_hw_rf_gainf_corr.exit:                      ; preds = %cleanup.sink.split.i, %if.end6.i.ath5k_hw_rf_gainf_corr.exit_crit_edge, %if.end.i.ath5k_hw_rf_gainf_corr.exit_crit_edge, %if.then38.ath5k_hw_rf_gainf_corr.exit_crit_edge
  %31 = ptrtoint ptr %g_current to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %g_current, align 1
  %g_f_corr = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 5
  %33 = ptrtoint ptr %g_f_corr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %g_f_corr, align 1
  %35 = tail call i8 @llvm.usub.sat.i8(i8 %32, i8 %34)
  %36 = ptrtoint ptr %g_current to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %g_current, align 1
  br label %if.end56

if.end56:                                         ; preds = %ath5k_hw_rf_gainf_corr.exit, %if.end33.if.end56_crit_edge
  %37 = ptrtoint ptr %ah_rf_banks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ah_rf_banks, align 4
  %cmp.i = icmp eq ptr %38, null
  br i1 %cmp.i, label %if.end56.if.else81_crit_edge, label %if.end.i121

if.end56.if.else81_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

if.end.i121:                                      ; preds = %if.end56
  %ah_radio.i118 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %39 = ptrtoint ptr %ah_radio.i118 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ah_radio.i118, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp1.i119 = icmp eq i32 %40, 1
  %ah_rf_regs_count.i120 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 105
  br i1 %cmp1.i119, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %ah_rf_regs_count.i120 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16, ptr %ah_rf_regs_count.i120, align 4
  %call.i122 = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull @rf_regs_5111, i32 noundef 0, i8 noundef zeroext 34, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call.i122)
  %cmp3.i123 = icmp eq i32 %call.i122, 63
  %add.i = add i32 %call.i122, 4
  %spec.select.i = select i1 %cmp3.i123, i32 50, i32 %add.i
  %cond10.i = select i1 %cmp3.i123, i32 0, i32 64
  %add13.i = or i32 %cond10.i, 50
  %cond17.neg.i = select i1 %cmp3.i123, i32 241, i32 5
  %sub.i = add nuw nsw i32 %add13.i, %cond17.neg.i
  %conv.i = trunc i32 %sub.i to i8
  %g_high.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 4
  %42 = ptrtoint ptr %g_high.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i, ptr %g_high.i, align 4
  %conv23.i = select i1 %cmp3.i123, i8 20, i8 0
  %g_low.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 3
  %43 = ptrtoint ptr %g_low.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv23.i, ptr %g_low.i, align 1
  br label %if.end40.i

if.else.i:                                        ; preds = %if.end.i121
  %44 = ptrtoint ptr %ah_rf_regs_count.i120 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 25, ptr %ah_rf_regs_count.i120, align 4
  %call26.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull @rf_regs_5112, i32 noundef 0, i8 noundef zeroext 38, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26.i)
  %cmp29.i = icmp eq i32 %call26.i, 1
  br i1 %cmp29.i, label %if.else.i.if.end40.i_crit_edge, label %if.else34.i

if.else.i.if.end40.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.else34.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %g_high38.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 4
  %45 = ptrtoint ptr %g_high38.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 55, ptr %g_high38.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else34.i, %if.else.i.if.end40.i_crit_edge, %if.then2.i
  %level.sroa.18.0.i = phi i32 [ %add13.i, %if.then2.i ], [ 107, %if.else34.i ], [ 83, %if.else.i.if.end40.i_crit_edge ]
  %level.sroa.13.0.i = phi i32 [ %cond10.i, %if.then2.i ], [ 0, %if.else34.i ], [ 0, %if.else.i.if.end40.i_crit_edge ]
  %level.sroa.8.0.i = phi i32 [ %spec.select.i, %if.then2.i ], [ 107, %if.else34.i ], [ 83, %if.else.i.if.end40.i_crit_edge ]
  %46 = ptrtoint ptr %g_current to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %g_current, align 1
  %conv42.i = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %level.sroa.8.0.i, i32 %conv42.i)
  %cmp50.not.i = icmp ult i32 %level.sroa.8.0.i, %conv42.i
  br i1 %cmp50.not.i, label %ath5k_hw_rf_check_gainf_readback.exit, label %if.end40.i.land.lhs.true_crit_edge

if.end40.i.land.lhs.true_crit_edge:               ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

ath5k_hw_rf_check_gainf_readback.exit:            ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_cmp4(i32 %level.sroa.13.0.i, i32 %conv42.i)
  %cmp56.not.i = icmp ule i32 %level.sroa.13.0.i, %conv42.i
  call void @__sanitizer_cov_trace_cmp4(i32 %level.sroa.18.0.i, i32 %conv42.i)
  %cmp62.i = icmp uge i32 %level.sroa.18.0.i, %conv42.i
  %spec.select88.i = select i1 %cmp56.not.i, i1 %cmp62.i, i1 false
  br i1 %spec.select88.i, label %ath5k_hw_rf_check_gainf_readback.exit.land.lhs.true_crit_edge, label %ath5k_hw_rf_check_gainf_readback.exit.if.else81_crit_edge

ath5k_hw_rf_check_gainf_readback.exit.if.else81_crit_edge: ; preds = %ath5k_hw_rf_check_gainf_readback.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

ath5k_hw_rf_check_gainf_readback.exit.land.lhs.true_crit_edge: ; preds = %ath5k_hw_rf_check_gainf_readback.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %ath5k_hw_rf_check_gainf_readback.exit.land.lhs.true_crit_edge, %if.end40.i.land.lhs.true_crit_edge
  %48 = ptrtoint ptr %g_current to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %g_current, align 1
  %g_low = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 3
  %50 = ptrtoint ptr %g_low to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %g_low, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp64.not = icmp ugt i8 %49, %51
  br i1 %cmp64.not, label %lor.lhs.false66, label %land.lhs.true.land.lhs.true74_crit_edge

land.lhs.true.land.lhs.true74_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true74

lor.lhs.false66:                                  ; preds = %land.lhs.true
  %g_high = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 4
  %52 = ptrtoint ptr %g_high to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %g_high, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %53)
  %cmp72.not = icmp ult i8 %49, %53
  br i1 %cmp72.not, label %lor.lhs.false66.if.else81_crit_edge, label %lor.lhs.false66.land.lhs.true74_crit_edge

lor.lhs.false66.land.lhs.true74_crit_edge:        ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true74

lor.lhs.false66.if.else81_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

land.lhs.true74:                                  ; preds = %lor.lhs.false66.land.lhs.true74_crit_edge, %land.lhs.true.land.lhs.true74_crit_edge
  %54 = ptrtoint ptr %ah_radio.i118 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ah_radio.i118, align 8
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %55, label %land.lhs.true74.if.else81_crit_edge [
    i32 1, label %land.lhs.true74.sw.epilog.i_crit_edge
    i32 2, label %sw.bb1.i
  ]

land.lhs.true74.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

land.lhs.true74.if.else81_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

sw.bb1.i:                                         ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %land.lhs.true74.sw.epilog.i_crit_edge
  %go.0.i = phi ptr [ @rfgain_opt_5112, %sw.bb1.i ], [ @rfgain_opt_5111, %land.lhs.true74.sw.epilog.i_crit_edge ]
  %ah_gain.i125 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106
  %57 = ptrtoint ptr %ah_gain.i125 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ah_gain.i125, align 8
  %idxprom.i126 = zext i8 %58 to i32
  %g_high.i128 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 4
  %59 = ptrtoint ptr %g_high.i128 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %g_high.i128, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %60)
  %cmp.not.i129 = icmp ult i8 %49, %60
  br i1 %cmp.not.i129, label %if.end46.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp9.i = icmp eq i8 %58, 0
  br i1 %cmp9.i, label %if.then.i.done.sink.split_crit_edge, label %land.rhs.preheader.i

if.then.i.done.sink.split_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.sink.split

land.rhs.preheader.i:                             ; preds = %if.then.i
  %g_target.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 2
  %61 = ptrtoint ptr %g_target.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %49, ptr %g_target.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %land.rhs.preheader.i
  %62 = phi i32 [ %idxprom31.i, %for.body.i.land.rhs.i_crit_edge ], [ %idxprom.i126, %land.rhs.preheader.i ]
  %storemerge170.i = phi i8 [ %sub39.i, %for.body.i.land.rhs.i_crit_edge ], [ %49, %land.rhs.preheader.i ]
  %63 = ptrtoint ptr %ah_gain.i125 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ah_gain.i125, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp26.not.i = icmp eq i8 %64, 0
  br i1 %cmp26.not.i, label %land.rhs.i.do.body.i_crit_edge, label %for.body.i

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %dec.i = add i8 %64, -1
  %65 = ptrtoint ptr %ah_gain.i125 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %dec.i, ptr %ah_gain.i125, align 8
  %idxprom31.i = zext i8 %dec.i to i32
  %gos_gain.i = getelementptr %struct.ath5k_gain_opt, ptr %go.0.i, i32 0, i32 2, i32 %idxprom31.i, i32 1
  %66 = ptrtoint ptr %gos_gain.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %gos_gain.i, align 1
  %gos_gain34.i = getelementptr %struct.ath5k_gain_opt, ptr %go.0.i, i32 0, i32 2, i32 %62, i32 1
  %68 = ptrtoint ptr %gos_gain34.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %gos_gain34.i, align 1
  %sub.neg.i = sub i8 %69, %67
  %mul.neg.i = shl i8 %sub.neg.i, 1
  %sub39.i = add i8 %mul.neg.i, %storemerge170.i
  %70 = ptrtoint ptr %g_target.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %sub39.i, ptr %g_target.i, align 2
  %cmp21.not.i = icmp ult i8 %sub39.i, %60
  br i1 %cmp21.not.i, label %for.body.i.do.body.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end46.i:                                       ; preds = %sw.epilog.i
  br i1 %cmp64.not, label %if.end46.i.do.body.i_crit_edge, label %if.then54.i

if.end46.i.do.body.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then54.i:                                      ; preds = %if.end46.i
  %go_steps_count.i = getelementptr inbounds %struct.ath5k_gain_opt, ptr %go.0.i, i32 0, i32 1
  %71 = ptrtoint ptr %go_steps_count.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %go_steps_count.i, align 1
  %conv58.i = zext i8 %72 to i32
  %sub59.i = add nsw i32 %conv58.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub59.i, i32 %idxprom.i126)
  %cmp60.i = icmp eq i32 %sub59.i, %idxprom.i126
  br i1 %cmp60.i, label %if.then54.i.done.sink.split_crit_edge, label %land.rhs77.preheader.i

if.then54.i.done.sink.split_crit_edge:            ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.sink.split

land.rhs77.preheader.i:                           ; preds = %if.then54.i
  %g_target67.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 2
  %73 = ptrtoint ptr %g_target67.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %49, ptr %g_target67.i, align 2
  br label %land.rhs77.i

land.rhs77.i:                                     ; preds = %for.body87.i.land.rhs77.i_crit_edge, %land.rhs77.preheader.i
  %idxprom.pn173.i = phi i32 [ %idxprom91.i, %for.body87.i.land.rhs77.i_crit_edge ], [ %idxprom.i126, %land.rhs77.preheader.i ]
  %storemerge167172.i = phi i8 [ %sub102.i, %for.body87.i.land.rhs77.i_crit_edge ], [ %49, %land.rhs77.preheader.i ]
  %74 = ptrtoint ptr %ah_gain.i125 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ah_gain.i125, align 8
  %conv80.i = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub59.i, i32 %conv80.i)
  %cmp84.i = icmp sgt i32 %sub59.i, %conv80.i
  br i1 %cmp84.i, label %for.body87.i, label %land.rhs77.i.do.body.i_crit_edge

land.rhs77.i.do.body.i_crit_edge:                 ; preds = %land.rhs77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.body87.i:                                     ; preds = %land.rhs77.i
  %inc.i = add i8 %75, 1
  %76 = ptrtoint ptr %ah_gain.i125 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %inc.i, ptr %ah_gain.i125, align 8
  %idxprom91.i = zext i8 %inc.i to i32
  %gos_gain93.i = getelementptr %struct.ath5k_gain_opt, ptr %go.0.i, i32 0, i32 2, i32 %idxprom91.i, i32 1
  %77 = ptrtoint ptr %gos_gain93.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %gos_gain93.i, align 1
  %gos_gain95.i = getelementptr %struct.ath5k_gain_opt, ptr %go.0.i, i32 0, i32 2, i32 %idxprom.pn173.i, i32 1
  %79 = ptrtoint ptr %gos_gain95.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %gos_gain95.i, align 1
  %sub97.neg.i = sub i8 %80, %78
  %mul98.neg.i = shl i8 %sub97.neg.i, 1
  %sub102.i = add i8 %mul98.neg.i, %storemerge167172.i
  %81 = ptrtoint ptr %g_target67.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %sub102.i, ptr %g_target67.i, align 2
  %cmp75.not.i = icmp ugt i8 %sub102.i, %51
  br i1 %cmp75.not.i, label %for.body87.i.do.body.i_crit_edge, label %for.body87.i.land.rhs77.i_crit_edge

for.body87.i.land.rhs77.i_crit_edge:              ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs77.i

for.body87.i.do.body.i_crit_edge:                 ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %for.body87.i.do.body.i_crit_edge, %land.rhs77.i.do.body.i_crit_edge, %if.end46.i.do.body.i_crit_edge, %for.body.i.do.body.i_crit_edge, %land.rhs.i.do.body.i_crit_edge
  %tobool77.not = phi i1 [ true, %if.end46.i.do.body.i_crit_edge ], [ false, %land.rhs77.i.do.body.i_crit_edge ], [ false, %for.body87.i.do.body.i_crit_edge ], [ false, %land.rhs.i.do.body.i_crit_edge ], [ false, %for.body.i.do.body.i_crit_edge ]
  %ret.0.i = phi i32 [ 0, %if.end46.i.do.body.i_crit_edge ], [ 2, %land.rhs77.i.do.body.i_crit_edge ], [ 2, %for.body87.i.do.body.i_crit_edge ], [ 1, %land.rhs.i.do.body.i_crit_edge ], [ 1, %for.body.i.do.body.i_crit_edge ]
  %debug.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %82 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %debug.i, align 4
  %and.i = and i32 %83, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.ath5k_hw_rf_gainf_adjust.exit_crit_edge, label %land.rhs112.i

do.body.i.ath5k_hw_rf_gainf_adjust.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_hw_rf_gainf_adjust.exit

land.rhs112.i:                                    ; preds = %do.body.i
  %call.i131 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool113.not.i = icmp eq i32 %call.i131, 0
  br i1 %tobool113.not.i, label %land.rhs112.i.ath5k_hw_rf_gainf_adjust.exit_crit_edge, label %if.then117.i, !prof !111

land.rhs112.i.ath5k_hw_rf_gainf_adjust.exit_crit_edge: ; preds = %land.rhs112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_hw_rf_gainf_adjust.exit

if.then117.i:                                     ; preds = %land.rhs112.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %ah_gain.i125 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ah_gain.i125, align 8
  %conv120.i = zext i8 %85 to i32
  %86 = ptrtoint ptr %g_current to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %g_current, align 1
  %conv123.i = zext i8 %87 to i32
  %g_target125.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 2
  %88 = ptrtoint ptr %g_target125.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %g_target125.i, align 2
  %conv126.i = zext i8 %89 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ath5k_hw_rf_gainf_adjust, i32 noundef 662, i32 noundef %ret.0.i, i32 noundef %conv120.i, i32 noundef %conv123.i, i32 noundef %conv126.i) #9
  br label %ath5k_hw_rf_gainf_adjust.exit

ath5k_hw_rf_gainf_adjust.exit:                    ; preds = %if.then117.i, %land.rhs112.i.ath5k_hw_rf_gainf_adjust.exit_crit_edge, %do.body.i.ath5k_hw_rf_gainf_adjust.exit_crit_edge
  br i1 %tobool77.not, label %ath5k_hw_rf_gainf_adjust.exit.if.else81_crit_edge, label %ath5k_hw_rf_gainf_adjust.exit.done.sink.split_crit_edge

ath5k_hw_rf_gainf_adjust.exit.done.sink.split_crit_edge: ; preds = %ath5k_hw_rf_gainf_adjust.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.sink.split

ath5k_hw_rf_gainf_adjust.exit.if.else81_crit_edge: ; preds = %ath5k_hw_rf_gainf_adjust.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

if.else81:                                        ; preds = %ath5k_hw_rf_gainf_adjust.exit.if.else81_crit_edge, %land.lhs.true74.if.else81_crit_edge, %lor.lhs.false66.if.else81_crit_edge, %ath5k_hw_rf_check_gainf_readback.exit.if.else81_crit_edge, %if.end56.if.else81_crit_edge
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.else81, %ath5k_hw_rf_gainf_adjust.exit.done.sink.split_crit_edge, %if.then54.i.done.sink.split_crit_edge, %if.then.i.done.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.else81 ], [ 3, %if.then54.i.done.sink.split_crit_edge ], [ 3, %if.then.i.done.sink.split_crit_edge ], [ 3, %ath5k_hw_rf_gainf_adjust.exit.done.sink.split_crit_edge ]
  %90 = ptrtoint ptr %g_state to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %.sink, ptr %g_state, align 2
  br label %done

done:                                             ; preds = %done.sink.split, %if.end9.done_crit_edge, %lor.lhs.false.done_crit_edge
  %91 = ptrtoint ptr %g_state to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %g_state, align 2
  %conv88 = zext i8 %92 to i32
  br label %cleanup

cleanup:                                          ; preds = %done, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv88, %done ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @ath5k_hw_init_nfcal_hist(ptr nocapture noundef writeonly %ah) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_nfcal_hist = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 109
  %0 = ptrtoint ptr %ah_nfcal_hist to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %ah_nfcal_hist, align 8
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -95, ptr %arrayidx, align 2
  %arrayidx.1 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -95, ptr %arrayidx.1, align 2
  %arrayidx.2 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 2
  %3 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -95, ptr %arrayidx.2, align 2
  %arrayidx.3 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 3
  %4 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -95, ptr %arrayidx.3, align 2
  %arrayidx.4 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 4
  %5 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -95, ptr %arrayidx.4, align 2
  %arrayidx.5 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 5
  %6 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -95, ptr %arrayidx.5, align 2
  %arrayidx.6 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 6
  %7 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -95, ptr %arrayidx.6, align 2
  %arrayidx.7 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 7
  %8 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -95, ptr %arrayidx.7, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_update_noise_floor(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 39008
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  %and1 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %land.rhs

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %call3 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.cleanup_crit_edge, label %if.then7, !prof !111

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ath5k_hw_update_noise_floor, i32 noundef 1604) #9
  br label %cleanup

if.end8:                                          ; preds = %entry
  %ah_cal_mask = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 115
  %6 = ptrtoint ptr %ah_cal_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ah_cal_mask, align 8
  %8 = or i8 %7, 4
  store i8 %8, ptr %ah_cal_mask, align 8
  %ah_current_channel = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %9 = ptrtoint ptr %ah_current_channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah_current_channel, align 4
  %call10 = tail call i32 @ath5k_eeprom_mode_from_channel(ptr noundef %ah, ptr noundef %10) #9
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 39012
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !110
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %15 = shl i32 %14, 4
  %16 = ashr i32 %15, 23
  %conv13 = trunc i32 %16 to i16
  %idxprom = and i32 %call10, 255
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 56, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %conv15 = sext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv15)
  %cmp = icmp sgt i32 %16, %conv15
  br i1 %cmp, label %do.body18, label %if.end8.if.end39_crit_edge

if.end8.if.end39_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.body18:                                        ; preds = %if.end8
  %debug19 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %19 = ptrtoint ptr %debug19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug19, align 4
  %and21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body18.if.end39_crit_edge, label %land.rhs23

do.body18.if.end39_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.rhs23:                                       ; preds = %do.body18
  %call24 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.rhs23.if.end39_crit_edge, label %if.then33, !prof !111

land.rhs23.if.end39_crit_edge:                    ; preds = %land.rhs23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then33:                                        ; preds = %land.rhs23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ath5k_hw_update_noise_floor, i32 noundef 1621, i32 noundef %16, i32 noundef %conv15) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %land.rhs23.if.end39_crit_edge, %do.body18.if.end39_crit_edge, %if.end8.if.end39_crit_edge
  %nf.0 = phi i16 [ %conv13, %if.end8.if.end39_crit_edge ], [ -95, %do.body18.if.end39_crit_edge ], [ -95, %if.then33 ], [ -95, %land.rhs23.if.end39_crit_edge ]
  %ah_nfcal_hist.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 109
  %21 = ptrtoint ptr %ah_nfcal_hist.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ah_nfcal_hist.i, align 2
  %23 = add i16 %22, 1
  %24 = and i16 %23, 7
  store i16 %24, ptr %ah_nfcal_hist.i, align 2
  %25 = zext i16 %24 to i32
  %arrayidx.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %nf.0, ptr %arrayidx.i, align 2
  %nfval.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1
  %27 = ptrtoint ptr %nfval.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %sort.i.sroa.0.0.copyload = load i16, ptr %nfval.i, align 2
  %sort.i.sroa.18.0.nfval.i.sroa_idx = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 1
  %28 = ptrtoint ptr %sort.i.sroa.18.0.nfval.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %28)
  %sort.i.sroa.18.0.copyload = load i16, ptr %sort.i.sroa.18.0.nfval.i.sroa_idx, align 2
  %sort.i.sroa.45.0.nfval.i.sroa_idx = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 2
  %29 = ptrtoint ptr %sort.i.sroa.45.0.nfval.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %29)
  %sort.i.sroa.45.0.copyload = load i16, ptr %sort.i.sroa.45.0.nfval.i.sroa_idx, align 2
  %sort.i.sroa.68.0.nfval.i.sroa_idx = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 3
  %30 = ptrtoint ptr %sort.i.sroa.68.0.nfval.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %30)
  %sort.i.sroa.68.0.copyload = load i16, ptr %sort.i.sroa.68.0.nfval.i.sroa_idx, align 2
  %sort.i.sroa.88.0.nfval.i.sroa_idx = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 4
  %31 = ptrtoint ptr %sort.i.sroa.88.0.nfval.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %31)
  %sort.i.sroa.88.0.copyload = load i16, ptr %sort.i.sroa.88.0.nfval.i.sroa_idx, align 2
  %sort.i.sroa.103.0.nfval.i.sroa_idx = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 5
  %32 = ptrtoint ptr %sort.i.sroa.103.0.nfval.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %32)
  %sort.i.sroa.103.0.copyload = load i16, ptr %sort.i.sroa.103.0.nfval.i.sroa_idx, align 2
  %sort.i.sroa.114.0.nfval.i.sroa_idx = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 6
  %33 = ptrtoint ptr %sort.i.sroa.114.0.nfval.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %33)
  %sort.i.sroa.114.0.copyload = load i16, ptr %sort.i.sroa.114.0.nfval.i.sroa_idx, align 2
  %sort.i.sroa.121.0.nfval.i.sroa_idx = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 109, i32 1, i32 7
  %34 = ptrtoint ptr %sort.i.sroa.121.0.nfval.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %34)
  %sort.i.sroa.121.0.copyload = load i16, ptr %sort.i.sroa.121.0.nfval.i.sroa_idx, align 2
  %35 = tail call i16 @llvm.smin.i16(i16 %sort.i.sroa.18.0.copyload, i16 %sort.i.sroa.0.0.copyload)
  %36 = tail call i16 @llvm.smax.i16(i16 %sort.i.sroa.18.0.copyload, i16 %sort.i.sroa.0.0.copyload)
  %37 = tail call i16 @llvm.smin.i16(i16 %sort.i.sroa.45.0.copyload, i16 %35)
  %38 = tail call i16 @llvm.smax.i16(i16 %sort.i.sroa.45.0.copyload, i16 %35)
  %39 = tail call i16 @llvm.smin.i16(i16 %sort.i.sroa.68.0.copyload, i16 %37)
  %40 = tail call i16 @llvm.smax.i16(i16 %sort.i.sroa.68.0.copyload, i16 %37)
  %41 = tail call i16 @llvm.smin.i16(i16 %sort.i.sroa.88.0.copyload, i16 %39)
  %42 = tail call i16 @llvm.smax.i16(i16 %sort.i.sroa.88.0.copyload, i16 %39)
  %43 = tail call i16 @llvm.smin.i16(i16 %sort.i.sroa.103.0.copyload, i16 %41)
  %44 = tail call i16 @llvm.smax.i16(i16 %sort.i.sroa.103.0.copyload, i16 %41)
  %45 = tail call i16 @llvm.smin.i16(i16 %sort.i.sroa.114.0.copyload, i16 %43)
  %46 = tail call i16 @llvm.smax.i16(i16 %sort.i.sroa.114.0.copyload, i16 %43)
  %47 = tail call i16 @llvm.smin.i16(i16 %sort.i.sroa.121.0.copyload, i16 %45)
  %48 = tail call i16 @llvm.smax.i16(i16 %sort.i.sroa.121.0.copyload, i16 %45)
  %49 = tail call i16 @llvm.smin.i16(i16 %38, i16 %36)
  %50 = tail call i16 @llvm.smax.i16(i16 %38, i16 %36)
  %51 = tail call i16 @llvm.smin.i16(i16 %40, i16 %49)
  %52 = tail call i16 @llvm.smax.i16(i16 %40, i16 %49)
  %53 = tail call i16 @llvm.smin.i16(i16 %42, i16 %51)
  %54 = tail call i16 @llvm.smax.i16(i16 %42, i16 %51)
  %55 = tail call i16 @llvm.smin.i16(i16 %44, i16 %53)
  %56 = tail call i16 @llvm.smax.i16(i16 %44, i16 %53)
  %57 = tail call i16 @llvm.smin.i16(i16 %46, i16 %55)
  %58 = tail call i16 @llvm.smax.i16(i16 %46, i16 %55)
  %59 = tail call i16 @llvm.smin.i16(i16 %48, i16 %57)
  %60 = tail call i16 @llvm.smax.i16(i16 %48, i16 %57)
  %61 = tail call i16 @llvm.smin.i16(i16 %52, i16 %50)
  %62 = tail call i16 @llvm.smax.i16(i16 %52, i16 %50)
  %63 = tail call i16 @llvm.smin.i16(i16 %54, i16 %61)
  %64 = tail call i16 @llvm.smax.i16(i16 %54, i16 %61)
  %65 = tail call i16 @llvm.smin.i16(i16 %56, i16 %63)
  %66 = tail call i16 @llvm.smax.i16(i16 %56, i16 %63)
  %67 = tail call i16 @llvm.smin.i16(i16 %58, i16 %65)
  %68 = tail call i16 @llvm.smax.i16(i16 %58, i16 %65)
  %69 = tail call i16 @llvm.smin.i16(i16 %60, i16 %67)
  %70 = tail call i16 @llvm.smax.i16(i16 %60, i16 %67)
  %71 = tail call i16 @llvm.smin.i16(i16 %64, i16 %62)
  %72 = tail call i16 @llvm.smax.i16(i16 %64, i16 %62)
  %73 = tail call i16 @llvm.smin.i16(i16 %66, i16 %71)
  %74 = tail call i16 @llvm.smax.i16(i16 %66, i16 %71)
  %75 = tail call i16 @llvm.smin.i16(i16 %68, i16 %73)
  %76 = tail call i16 @llvm.smax.i16(i16 %68, i16 %73)
  %77 = tail call i16 @llvm.smin.i16(i16 %70, i16 %75)
  %78 = tail call i16 @llvm.smax.i16(i16 %70, i16 %75)
  %79 = tail call i16 @llvm.smin.i16(i16 %74, i16 %72)
  %80 = tail call i16 @llvm.smax.i16(i16 %74, i16 %72)
  %81 = tail call i16 @llvm.smin.i16(i16 %76, i16 %79)
  %82 = tail call i16 @llvm.smax.i16(i16 %76, i16 %79)
  %83 = tail call i16 @llvm.smin.i16(i16 %78, i16 %81)
  %84 = tail call i16 @llvm.smax.i16(i16 %78, i16 %81)
  %85 = tail call i16 @llvm.smin.i16(i16 %82, i16 %80)
  %86 = tail call i16 @llvm.smax.i16(i16 %82, i16 %80)
  %87 = tail call i16 @llvm.smin.i16(i16 %84, i16 %85)
  %88 = tail call i16 @llvm.smax.i16(i16 %84, i16 %85)
  %89 = tail call i16 @llvm.smin.i16(i16 %88, i16 %86)
  %90 = tail call i16 @llvm.smax.i16(i16 %88, i16 %86)
  %debug.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %91 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %debug.i, align 4
  %and.i = and i32 %92, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end39.for.inc30.i_crit_edge, label %land.rhs.i

if.end39.for.inc30.i_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.i

land.rhs.i:                                       ; preds = %if.end39
  %call.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool23.not.i, label %land.rhs.i.for.inc30.i_crit_edge, label %if.then26.i, !prof !111

land.rhs.i.for.inc30.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.i

if.then26.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv28.i = sext i16 %90 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ath5k_hw_get_median_noise_floor, i32 noundef 1580, i32 noundef 0, i32 noundef %conv28.i) #9
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %if.then26.i, %land.rhs.i.for.inc30.i_crit_edge, %if.end39.for.inc30.i_crit_edge
  %93 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %debug.i, align 4
  %and.1.i = and i32 %94, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc30.i.for.inc30.1.i_crit_edge, label %land.rhs.1.i

for.inc30.i.for.inc30.1.i_crit_edge:              ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.1.i

land.rhs.1.i:                                     ; preds = %for.inc30.i
  %call.1.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool23.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool23.not.1.i, label %land.rhs.1.i.for.inc30.1.i_crit_edge, label %if.then26.1.i, !prof !111

land.rhs.1.i.for.inc30.1.i_crit_edge:             ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.1.i

if.then26.1.i:                                    ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv28.1.i = sext i16 %89 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ath5k_hw_get_median_noise_floor, i32 noundef 1580, i32 noundef 1, i32 noundef %conv28.1.i) #9
  br label %for.inc30.1.i

for.inc30.1.i:                                    ; preds = %if.then26.1.i, %land.rhs.1.i.for.inc30.1.i_crit_edge, %for.inc30.i.for.inc30.1.i_crit_edge
  %95 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %debug.i, align 4
  %and.2.i = and i32 %96, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc30.1.i.for.inc30.2.i_crit_edge, label %land.rhs.2.i

for.inc30.1.i.for.inc30.2.i_crit_edge:            ; preds = %for.inc30.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.2.i

land.rhs.2.i:                                     ; preds = %for.inc30.1.i
  %call.2.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool23.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool23.not.2.i, label %land.rhs.2.i.for.inc30.2.i_crit_edge, label %if.then26.2.i, !prof !111

land.rhs.2.i.for.inc30.2.i_crit_edge:             ; preds = %land.rhs.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.2.i

if.then26.2.i:                                    ; preds = %land.rhs.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv28.2.i = sext i16 %87 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ath5k_hw_get_median_noise_floor, i32 noundef 1580, i32 noundef 2, i32 noundef %conv28.2.i) #9
  br label %for.inc30.2.i

for.inc30.2.i:                                    ; preds = %if.then26.2.i, %land.rhs.2.i.for.inc30.2.i_crit_edge, %for.inc30.1.i.for.inc30.2.i_crit_edge
  %97 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %debug.i, align 4
  %and.3.i = and i32 %98, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc30.2.i.for.inc30.3.i_crit_edge, label %land.rhs.3.i

for.inc30.2.i.for.inc30.3.i_crit_edge:            ; preds = %for.inc30.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.3.i

land.rhs.3.i:                                     ; preds = %for.inc30.2.i
  %call.3.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool23.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool23.not.3.i, label %land.rhs.3.i.for.inc30.3.i_crit_edge, label %if.then26.3.i, !prof !111

land.rhs.3.i.for.inc30.3.i_crit_edge:             ; preds = %land.rhs.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.3.i

if.then26.3.i:                                    ; preds = %land.rhs.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv28.3.i = sext i16 %83 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ath5k_hw_get_median_noise_floor, i32 noundef 1580, i32 noundef 3, i32 noundef %conv28.3.i) #9
  br label %for.inc30.3.i

for.inc30.3.i:                                    ; preds = %if.then26.3.i, %land.rhs.3.i.for.inc30.3.i_crit_edge, %for.inc30.2.i.for.inc30.3.i_crit_edge
  %99 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %debug.i, align 4
  %and.4.i = and i32 %100, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc30.3.i.for.inc30.4.i_crit_edge, label %land.rhs.4.i

for.inc30.3.i.for.inc30.4.i_crit_edge:            ; preds = %for.inc30.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.4.i

land.rhs.4.i:                                     ; preds = %for.inc30.3.i
  %call.4.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool23.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool23.not.4.i, label %land.rhs.4.i.for.inc30.4.i_crit_edge, label %if.then26.4.i, !prof !111

land.rhs.4.i.for.inc30.4.i_crit_edge:             ; preds = %land.rhs.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.4.i

if.then26.4.i:                                    ; preds = %land.rhs.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv28.4.i = sext i16 %77 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ath5k_hw_get_median_noise_floor, i32 noundef 1580, i32 noundef 4, i32 noundef %conv28.4.i) #9
  br label %for.inc30.4.i

for.inc30.4.i:                                    ; preds = %if.then26.4.i, %land.rhs.4.i.for.inc30.4.i_crit_edge, %for.inc30.3.i.for.inc30.4.i_crit_edge
  %101 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %debug.i, align 4
  %and.5.i = and i32 %102, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc30.4.i.for.inc30.5.i_crit_edge, label %land.rhs.5.i

for.inc30.4.i.for.inc30.5.i_crit_edge:            ; preds = %for.inc30.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.5.i

land.rhs.5.i:                                     ; preds = %for.inc30.4.i
  %call.5.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool23.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool23.not.5.i, label %land.rhs.5.i.for.inc30.5.i_crit_edge, label %if.then26.5.i, !prof !111

land.rhs.5.i.for.inc30.5.i_crit_edge:             ; preds = %land.rhs.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.5.i

if.then26.5.i:                                    ; preds = %land.rhs.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv28.5.i = sext i16 %69 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ath5k_hw_get_median_noise_floor, i32 noundef 1580, i32 noundef 5, i32 noundef %conv28.5.i) #9
  br label %for.inc30.5.i

for.inc30.5.i:                                    ; preds = %if.then26.5.i, %land.rhs.5.i.for.inc30.5.i_crit_edge, %for.inc30.4.i.for.inc30.5.i_crit_edge
  %103 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %debug.i, align 4
  %and.6.i = and i32 %104, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc30.5.i.for.inc30.6.i_crit_edge, label %land.rhs.6.i

for.inc30.5.i.for.inc30.6.i_crit_edge:            ; preds = %for.inc30.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.6.i

land.rhs.6.i:                                     ; preds = %for.inc30.5.i
  %call.6.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool23.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool23.not.6.i, label %land.rhs.6.i.for.inc30.6.i_crit_edge, label %if.then26.6.i, !prof !111

land.rhs.6.i.for.inc30.6.i_crit_edge:             ; preds = %land.rhs.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.6.i

if.then26.6.i:                                    ; preds = %land.rhs.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv28.6.i = sext i16 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ath5k_hw_get_median_noise_floor, i32 noundef 1580, i32 noundef 6, i32 noundef %conv28.6.i) #9
  br label %for.inc30.6.i

for.inc30.6.i:                                    ; preds = %if.then26.6.i, %land.rhs.6.i.for.inc30.6.i_crit_edge, %for.inc30.5.i.for.inc30.6.i_crit_edge
  %105 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %debug.i, align 4
  %and.7.i = and i32 %106, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool.not.7.i, label %for.inc30.6.i.ath5k_hw_get_median_noise_floor.exit_crit_edge, label %land.rhs.7.i

for.inc30.6.i.ath5k_hw_get_median_noise_floor.exit_crit_edge: ; preds = %for.inc30.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_hw_get_median_noise_floor.exit

land.rhs.7.i:                                     ; preds = %for.inc30.6.i
  %call.7.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool23.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool23.not.7.i, label %land.rhs.7.i.ath5k_hw_get_median_noise_floor.exit_crit_edge, label %if.then26.7.i, !prof !111

land.rhs.7.i.ath5k_hw_get_median_noise_floor.exit_crit_edge: ; preds = %land.rhs.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_hw_get_median_noise_floor.exit

if.then26.7.i:                                    ; preds = %land.rhs.7.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv28.7.i = sext i16 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ath5k_hw_get_median_noise_floor, i32 noundef 1580, i32 noundef 7, i32 noundef %conv28.7.i) #9
  br label %ath5k_hw_get_median_noise_floor.exit

ath5k_hw_get_median_noise_floor.exit:             ; preds = %if.then26.7.i, %land.rhs.7.i.ath5k_hw_get_median_noise_floor.exit_crit_edge, %for.inc30.6.i.ath5k_hw_get_median_noise_floor.exit_crit_edge
  %107 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %108, i32 39012
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %110 = and i32 %109, 16711679
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  %conv43 = sext i16 %83 to i32
  %mul = shl nsw i32 %conv43, 1
  %and44 = and i32 %mul, 510
  %or45 = or i32 %111, %and44
  %112 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %113, i32 39012
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %114 = tail call i32 @llvm.bswap.i32(i32 %or45) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %114) #9, !srcloc !108
  %115 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %116, i32 39008
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %118 = and i32 %117, -41943553
  %119 = or i32 %118, 33554432
  %120 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %121, i32 39008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %119) #9, !srcloc !108
  %call49 = tail call i32 @ath5k_hw_register_timeout(ptr noundef %ah, i32 noundef 39008, i32 noundef 2, i32 noundef 0, i1 noundef zeroext false) #9
  %or51 = or i32 %111, 412
  %122 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %123, i32 39012
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %124 = tail call i32 @llvm.bswap.i32(i32 %or51) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %124) #9, !srcloc !108
  %125 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %126, i32 39008
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %128 = or i32 %127, 41943552
  %129 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %130, i32 39008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %128) #9, !srcloc !108
  %ah_noise_floor = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 111
  %131 = ptrtoint ptr %ah_noise_floor to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %conv43, ptr %ah_noise_floor, align 8
  %132 = ptrtoint ptr %ah_cal_mask to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %ah_cal_mask, align 8
  %134 = and i8 %133, -5
  store i8 %134, ptr %ah_cal_mask, align 8
  %135 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %debug.i, align 4
  %and62 = and i32 %136, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %ath5k_hw_get_median_noise_floor.exit.cleanup_crit_edge, label %land.rhs64

ath5k_hw_get_median_noise_floor.exit.cleanup_crit_edge: ; preds = %ath5k_hw_get_median_noise_floor.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs64:                                       ; preds = %ath5k_hw_get_median_noise_floor.exit
  %call65 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.rhs64.cleanup_crit_edge, label %if.then74, !prof !111

land.rhs64.cleanup_crit_edge:                     ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then74:                                        ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ath5k_hw_update_noise_floor, i32 noundef 1658, i32 noundef %conv43) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %land.rhs64.cleanup_crit_edge, %ath5k_hw_get_median_noise_floor.exit.cleanup_crit_edge, %if.then7, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_eeprom_mode_from_channel(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_register_timeout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_phy_calibrate(ptr noundef %ah, ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_radio = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %0 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ah_cal_mask.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 115
  %2 = ptrtoint ptr %ah_cal_mask.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ah_cal_mask.i, align 8
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %iobase.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %5 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 32872
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %8 = or i32 %7, 1610612736
  %9 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %10, i32 32872
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 %8) #9, !srcloc !108
  %11 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %12, i32 32804
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %14 = and i32 %13, -32769
  %15 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %16, i32 32804
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 %14) #9, !srcloc !108
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #9
  %17 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %18, i32 38920
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %20 = or i32 %19, 8
  %21 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %22, i32 38920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %20) #9, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #9
  %call5.i = tail call fastcc i32 @ath5k_hw_channel(ptr noundef %ah, ptr noundef %channel) #9
  %24 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %25, i32 38940
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 16777216) #9, !srcloc !108
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #9
  %26 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %27, i32 38920
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %29 = and i32 %28, -9
  %30 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %31, i32 38920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96.i, i32 %29) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool8.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %32 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %33, i32 39000
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %35 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %36, i32 39004
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %38 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %39, i32 39016
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %41 = or i32 %34, 64515
  %42 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %43, i32 39000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i, i32 %41) #9, !srcloc !108
  %44 = and i32 %37, 2130755839
  %45 = or i32 %44, -2134884608
  %46 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %47, i32 39004
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %45) #9, !srcloc !108
  %48 = and i32 %40, 520158975
  %49 = or i32 %48, -2146369536
  %50 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %51, i32 39016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 %49) #9, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 4294960) #9
  %53 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %54, i32 38920
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %56 = or i32 %55, 8
  %57 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %58, i32 38920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112.i, i32 %56) #9, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #9
  %60 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i114.i = getelementptr i8, ptr %61, i32 39124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i, i32 553648128) #9, !srcloc !108
  %62 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i116.i = getelementptr i8, ptr %63, i32 38920
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %65 = and i32 %64, -9
  %66 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i118.i = getelementptr i8, ptr %67, i32 38920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i, i32 %65) #9, !srcloc !108
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #9
  %68 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i120.i = getelementptr i8, ptr %69, i32 39008
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %71 = or i32 %70, 16777216
  %72 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i122.i = getelementptr i8, ptr %73, i32 39008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i, i32 %71) #9, !srcloc !108
  %call28.i = tail call i32 @ath5k_hw_register_timeout(ptr noundef %ah, i32 noundef 39008, i32 noundef 1, i32 noundef 0, i1 noundef zeroext false) #9
  %74 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i124.i = getelementptr i8, ptr %75, i32 39000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124.i, i32 %34) #9, !srcloc !108
  %76 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i126.i = getelementptr i8, ptr %77, i32 39004
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.i, i32 %37) #9, !srcloc !108
  %78 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %79, i32 39016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 %40) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end35.i, label %do.body.i

do.body.i:                                        ; preds = %if.end10.i
  %call31.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %do.body.i.cleanup_crit_edge, label %if.then33.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %80 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %center_freq.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.16, i32 noundef %81) #9
  br label %cleanup

if.end35.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i130.i = getelementptr i8, ptr %83, i32 32872
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %85 = and i32 %84, -1610612737
  %86 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i132.i = getelementptr i8, ptr %87, i32 32872
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132.i, i32 %85) #9, !srcloc !108
  %88 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %89, i32 32804
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 %13) #9, !srcloc !108
  br label %cleanup

if.end:                                           ; preds = %entry
  %ah_iq_cal_needed.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 66
  %90 = ptrtoint ptr %ah_iq_cal_needed.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ah_iq_cal_needed.i, align 8, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i42 = icmp eq i8 %91, 0
  br i1 %tobool.not.i42, label %if.end.do.body_crit_edge, label %if.else.i

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else.i:                                        ; preds = %if.end
  %iobase.i.i43 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %92 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %93, i32 39200
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %95 = and i32 %94, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool1.not.i = icmp eq i32 %95, 0
  %debug14.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  br i1 %tobool1.not.i, label %if.else.i.for.body.i_crit_edge, label %do.body.i45

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

do.body.i45:                                      ; preds = %if.else.i
  %96 = ptrtoint ptr %debug14.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %debug14.i, align 4
  %and3.i = and i32 %97, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.body.i45.do.body_crit_edge, label %if.then7.i, !prof !111

do.body.i45.do.body_crit_edge:                    ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then7.i:                                       ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.ath5k_hw_rf511x_iq_calibrate, i32 noundef 1783) #9
  br label %do.body

for.body.i:                                       ; preds = %do.end27.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %i.0185.i = phi i32 [ %inc.i, %do.end27.i.for.body.i_crit_edge ], [ 0, %if.else.i.for.body.i_crit_edge ]
  %98 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i160.i = getelementptr i8, ptr %99, i32 39960
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160.i) #9, !srcloc !110
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %102 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i162.i = getelementptr i8, ptr %103, i32 39952
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162.i) #9, !srcloc !110
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %106 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i164.i = getelementptr i8, ptr %107, i32 39956
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164.i) #9, !srcloc !110
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %110 = ptrtoint ptr %debug14.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %debug14.i, align 4
  %and16.i = and i32 %111, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %for.body.i.do.end27.i_crit_edge, label %if.then24.i, !prof !111

for.body.i.do.end27.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27.i

if.then24.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ath5k_hw_rf511x_iq_calibrate, i32 noundef 1796, i32 noundef %101, i32 noundef %105, i32 noundef %109) #9
  br label %do.end27.i

do.end27.i:                                       ; preds = %if.then24.i, %for.body.i.do.end27.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool28.not.i = icmp ne i32 %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool29.not.i46 = icmp ne i32 %108, 0
  %or.cond.i = select i1 %tobool28.not.i, i1 %tobool29.not.i46, i1 false
  %inc.i = add nuw nsw i32 %i.0185.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  %or.cond190.i = select i1 %or.cond.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond190.i, label %for.end.i, label %do.end27.i.for.body.i_crit_edge

do.end27.i.for.body.i_crit_edge:                  ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %do.end27.i
  %shr.i = lshr i32 %105, 1
  %shr32.i = lshr i32 %109, 1
  %add.i = add nuw i32 %shr32.i, %shr.i
  %shr33.i = lshr i32 %add.i, 7
  %ah_version.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %112 = ptrtoint ptr %ah_version.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ah_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp34.i = icmp eq i32 %113, 1
  %q_coffd.0.v.i = select i1 %cmp34.i, i32 6, i32 7
  %q_coffd.0.i = lshr i32 %109, %q_coffd.0.v.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp40.i = icmp ult i32 %add.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %q_coffd.0.i)
  %cmp41.i = icmp ult i32 %q_coffd.0.i, 2
  %or.cond158.i = select i1 %cmp40.i, i1 true, i1 %cmp41.i
  br i1 %or.cond158.i, label %for.end.i.do.body_crit_edge, label %if.end43.i

for.end.i.do.body_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end43.i:                                       ; preds = %for.end.i
  %sub.i = sub i32 0, %101
  %div.i = sdiv i32 %sub.i, %shr33.i
  %114 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 -32) #9
  %115 = tail call i32 @llvm.smin.i32(i32 %114, i32 31) #9
  %div54.i = udiv i32 %105, %q_coffd.0.i
  %..i = select i1 %cmp34.i, i32 -64, i32 -128
  %sub58.i = add nsw i32 %div54.i, %..i
  %116 = tail call i32 @llvm.smax.i32(i32 %sub58.i, i32 -16) #9
  %117 = tail call i32 @llvm.smin.i32(i32 %116, i32 15) #9
  %118 = ptrtoint ptr %debug14.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %debug14.i, align 4
  %and75.i = and i32 %119, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %if.end43.i.ath5k_hw_rf511x_iq_calibrate.exit_crit_edge, label %if.then83.i, !prof !111

if.end43.i.ath5k_hw_rf511x_iq_calibrate.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_hw_rf511x_iq_calibrate.exit

if.then83.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.ath5k_hw_rf511x_iq_calibrate, i32 noundef 1827, i32 noundef %115, i32 noundef %117, i32 noundef %shr33.i, i32 noundef %q_coffd.0.i) #9
  br label %ath5k_hw_rf511x_iq_calibrate.exit

ath5k_hw_rf511x_iq_calibrate.exit:                ; preds = %if.then83.i, %if.end43.i.ath5k_hw_rf511x_iq_calibrate.exit_crit_edge
  %120 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i166.i = getelementptr i8, ptr %121, i32 39200
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %123 = and i32 %122, 536412159
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #9
  %shl.i = shl nsw i32 %115, 5
  %and89.i = and i32 %shl.i, 2016
  %or.i = or i32 %124, %and89.i
  %125 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %126, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %127 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168.i, i32 %127) #9, !srcloc !108
  %128 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i170.i = getelementptr i8, ptr %129, i32 39200
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %131 = and i32 %130, -520093697
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #9
  %and93.i = and i32 %117, 31
  %or94.i = or i32 %132, %and93.i
  %133 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i172.i = getelementptr i8, ptr %134, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %135 = tail call i32 @llvm.bswap.i32(i32 %or94.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172.i, i32 %135) #9, !srcloc !108
  %136 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i174.i = getelementptr i8, ptr %137, i32 39200
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %139 = or i32 %138, 524288
  %140 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i176.i = getelementptr i8, ptr %141, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176.i, i32 %139) #9, !srcloc !108
  %142 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %143, i32 39200
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %145 = or i32 %144, 15728640
  %146 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %147, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 %145) #9, !srcloc !108
  %148 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %149, i32 39200
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i182.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %151 = or i32 %150, 256
  %152 = ptrtoint ptr %iobase.i.i43 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %iobase.i.i43, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %153, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 %151) #9, !srcloc !108
  br label %if.end8

do.body:                                          ; preds = %for.end.i.do.body_crit_edge, %if.then7.i, %do.body.i45.do.body_crit_edge, %if.end.do.body_crit_edge
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %154 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %debug, align 4
  %and = and i32 %155, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.if.end8_crit_edge, label %if.then6, !prof !111

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %156 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ath5k_hw_phy_calibrate, i32 noundef 1865, i32 noundef %157) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body.if.end8_crit_edge, %ath5k_hw_rf511x_iq_calibrate.exit
  %ah_cal_mask = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 115
  %158 = ptrtoint ptr %ah_cal_mask to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %ah_cal_mask, align 8
  %160 = and i8 %159, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool10.not = icmp eq i8 %160, 0
  br i1 %tobool10.not, label %if.end8.if.end22_crit_edge, label %land.lhs.true

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end8
  %161 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ah_radio, align 8
  %.off = add i32 %162, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true17, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true17:                                  ; preds = %land.lhs.true
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %163 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %164)
  %cmp19.not = icmp eq i16 %164, 1
  br i1 %cmp19.not, label %land.lhs.true17.if.end22_crit_edge, label %if.then21

land.lhs.true17.if.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %land.lhs.true17
  %g_state.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 6
  %165 = ptrtoint ptr %g_state.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %g_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %166)
  %cmp.not.i = icmp eq i8 %166, 1
  br i1 %cmp.not.i, label %if.end.i52, label %if.then21.if.end22_crit_edge

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end.i52:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %txp_ofdm.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 10
  %167 = ptrtoint ptr %txp_ofdm.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %txp_ofdm.i, align 2
  %conv28.i = zext i16 %168 to i32
  %sub.i48 = shl i32 %conv28.i, 17
  %iobase.i.i49 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %169 = ptrtoint ptr %iobase.i.i49 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %iobase.i.i49, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %170, i32 39216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %and.i = add i32 %sub.i48, 7864320
  %or.i51 = and i32 %and.i, 8257536
  %171 = or i32 %or.i51, 8388608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i50, i32 %171) #9, !srcloc !108
  %172 = ptrtoint ptr %g_state.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 2, ptr %g_state.i, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.end.i52, %if.then21.if.end22_crit_edge, %land.lhs.true17.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  %173 = ptrtoint ptr %ah_cal_mask to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %ah_cal_mask, align 8
  %175 = and i8 %174, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool26.not = icmp eq i8 %175, 0
  br i1 %tobool26.not, label %if.then27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ath5k_hw_update_noise_floor(ptr noundef %ah)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end22.cleanup_crit_edge, %if.end35.i, %if.then33.i, %do.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then27 ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %if.end35.i ], [ 0, %if.then.cleanup_crit_edge ], [ %call5.i, %if.end.i.cleanup_crit_edge ], [ %call28.i, %if.then33.i ], [ %call28.i, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_set_antenna_switch(ptr nocapture noundef readonly %ah, i8 noundef zeroext %ee_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_ant_mode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 83
  %0 = ptrtoint ptr %ah_ant_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ah_ant_mode, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %1, label %if.else7 [
    i8 1, label %entry.if.end8_crit_edge
    i8 2, label %if.then6
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6, %entry.if.end8_crit_edge
  %ant0.0 = phi i32 [ 2, %if.then6 ], [ 1, %if.else7 ], [ 1, %entry.if.end8_crit_edge ]
  %ant1.0 = phi i32 [ 2, %if.then6 ], [ 2, %if.else7 ], [ 1, %entry.if.end8_crit_edge ]
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 39184
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %6 = and i32 %5, 268238847
  %idxprom = zext i8 %ee_mode to i32
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 82, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %or = shl i32 %8, 4
  %shl = and i32 %or, 992
  %9 = or i32 %6, 268435456
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %or11 = or i32 %10, %shl
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %12, i32 39184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %or11) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %13) #9, !srcloc !108
  %arrayidx16 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 82, i32 %idxprom, i32 %ant0.0
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %17, i32 39264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %18) #9, !srcloc !108
  %arrayidx21 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 82, i32 %idxprom, i32 %ant1.0
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx21, align 4
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %22, i32 39268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %23) #9, !srcloc !108
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_set_antenna_mode(ptr noundef %ah, i8 noundef zeroext %ant_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_current_channel = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %0 = ptrtoint ptr %ah_current_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah_current_channel, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ah_ant_mode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 83
  %2 = ptrtoint ptr %ah_ant_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %ant_mode, ptr %ah_ant_mode, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %ah_def_ant = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 85
  %3 = ptrtoint ptr %ah_def_ant to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ah_def_ant, align 2
  %call = tail call i32 @ath5k_eeprom_mode_from_channel(ptr noundef %ah, ptr noundef nonnull %1) #9
  %5 = zext i8 %ant_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %ant_mode, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.sw.epilog_crit_edge
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
    i8 4, label %sw.bb4
    i8 5, label %sw.bb5
    i8 6, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %if.end.sw.epilog_crit_edge
  %use_def_for_tx.0.off0 = phi i32 [ 0, %sw.bb6 ], [ 2097152, %sw.bb5 ], [ 0, %sw.bb4 ], [ 2097152, %sw.bb3 ], [ 2097152, %sw.bb2 ], [ 2097152, %sw.bb1 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %update_def_on_tx.0.off0 = phi i32 [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 4194304, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %use_def_for_rts.0.off0 = phi i32 [ 0, %sw.bb6 ], [ 8388608, %sw.bb5 ], [ 8388608, %sw.bb4 ], [ 8388608, %sw.bb3 ], [ 8388608, %sw.bb2 ], [ 8388608, %sw.bb1 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %fast_div.0.off0 = phi i1 [ false, %sw.bb6 ], [ true, %sw.bb5 ], [ false, %sw.bb4 ], [ true, %sw.bb3 ], [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ true, %if.end.sw.epilog_crit_edge ]
  %use_def_for_sg.0.off0 = phi i32 [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 67108864, %sw.bb3 ], [ 67108864, %sw.bb2 ], [ 67108864, %sw.bb1 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %def_ant.0 = phi i8 [ 1, %sw.bb6 ], [ %4, %sw.bb5 ], [ %4, %sw.bb4 ], [ 1, %sw.bb3 ], [ %ant_mode, %sw.bb2 ], [ %ant_mode, %sw.bb1 ], [ %4, %if.end.sw.epilog_crit_edge ]
  %tx_ant.0 = phi i8 [ 2, %sw.bb6 ], [ 1, %sw.bb5 ], [ 1, %sw.bb4 ], [ 0, %sw.bb3 ], [ %ant_mode, %sw.bb2 ], [ %ant_mode, %sw.bb1 ], [ %ant_mode, %if.end.sw.epilog_crit_edge ]
  %ah_tx_ant = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 84
  %6 = ptrtoint ptr %ah_tx_ant to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %tx_ant.0, ptr %ah_tx_ant, align 1
  %ah_ant_mode7 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 83
  %7 = ptrtoint ptr %ah_ant_mode7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %ant_mode, ptr %ah_ant_mode7, align 4
  %8 = ptrtoint ptr %ah_def_ant to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %def_ant.0, ptr %ah_def_ant, align 2
  %or13 = or i32 %update_def_on_tx.0.off0, %use_def_for_tx.0.off0
  %or17 = or i32 %or13, %use_def_for_rts.0.off0
  %or21 = or i32 %or17, %use_def_for_sg.0.off0
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 32772
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %12 = and i32 %11, -57349
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %14, i32 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %12) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or21)
  %tobool23.not = icmp eq i32 %or21, 0
  br i1 %tobool23.not, label %sw.epilog.if.end27_crit_edge, label %if.then24

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %16, i32 32772
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #9, !srcloc !110
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %or26 = or i32 %18, %or21
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %20, i32 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %or26) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %21) #9, !srcloc !108
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %sw.epilog.if.end27_crit_edge
  %conv28 = trunc i32 %call to i8
  tail call void @ath5k_hw_set_antenna_switch(ptr noundef %ah, i8 noundef zeroext %conv28)
  %22 = zext i8 %conv28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %conv28, label %if.end27.ath5k_hw_set_fast_div.exit_crit_edge [
    i8 2, label %if.end27.sw.bb.i_crit_edge
    i8 0, label %if.end27.sw.bb.i_crit_edge72
    i8 1, label %sw.bb2.i
  ]

if.end27.sw.bb.i_crit_edge72:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end27.sw.bb.i_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end27.ath5k_hw_set_fast_div.exit_crit_edge:    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_hw_set_fast_div.exit

sw.bb.i:                                          ; preds = %if.end27.sw.bb.i_crit_edge, %if.end27.sw.bb.i_crit_edge72
  %23 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 39008
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %fast_div.0.off0, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = and i32 %25, -134217729
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %28, i32 39008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %26) #9, !srcloc !108
  br label %if.then6.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = or i32 %25, 134217728
  %30 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %31, i32 39008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 %29) #9, !srcloc !108
  br label %if.else12.i

sw.bb2.i:                                         ; preds = %if.end27
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %33, i32 39008
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %35 = or i32 %34, 134217728
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %37, i32 39008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 %35) #9, !srcloc !108
  br i1 %fast_div.0.off0, label %sw.bb2.i.if.then6.i_crit_edge, label %sw.bb2.i.if.else12.i_crit_edge

sw.bb2.i.if.else12.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else12.i

sw.bb2.i.if.then6.i_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %sw.bb2.i.if.then6.i_crit_edge, %if.then.i
  %38 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %39, i32 39280
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %41 = and i32 %40, -7169
  %42 = or i32 %41, 4096
  %43 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %44, i32 39280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 %42) #9, !srcloc !108
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %46, i32 41480
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %48 = or i32 %47, 2097152
  %49 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %50, i32 41480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %48) #9, !srcloc !108
  br label %ath5k_hw_set_fast_div.exit

if.else12.i:                                      ; preds = %sw.bb2.i.if.else12.i_crit_edge, %if.else.i
  %51 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %52, i32 39280
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %54 = and i32 %53, -7169
  %55 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %56, i32 39280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 %54) #9, !srcloc !108
  %57 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %58, i32 41480
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %60 = and i32 %59, -2097153
  %61 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %62, i32 41480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 %60) #9, !srcloc !108
  br label %ath5k_hw_set_fast_div.exit

ath5k_hw_set_fast_div.exit:                       ; preds = %if.else12.i, %if.then6.i, %if.end27.ath5k_hw_set_fast_div.exit_crit_edge
  %ah_version.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %63 = ptrtoint ptr %ah_version.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ah_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.not.i = icmp eq i32 %64, 0
  br i1 %cmp.not.i, label %ath5k_hw_set_fast_div.exit.cleanup_crit_edge, label %if.then.i71

ath5k_hw_set_fast_div.exit.cleanup_crit_edge:     ; preds = %ath5k_hw_set_fast_div.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i71:                                      ; preds = %ath5k_hw_set_fast_div.exit
  call void @__sanitizer_cov_trace_pc() #11
  %65 = and i8 %def_ant.0, 7
  %and.i = zext i8 %65 to i32
  %66 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %67, i32 32856
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %68 = shl nuw nsw i32 %and.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70, i32 %68) #9, !srcloc !108
  br label %cleanup

cleanup:                                          ; preds = %if.then.i71, %ath5k_hw_set_fast_div.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_set_txpower_limit(ptr noundef %ah, i8 noundef zeroext %txpower) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.rhs.do.end_crit_edge, label %if.then, !prof !111

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %txpower to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ath5k_hw_set_txpower_limit, i32 noundef 3727, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %ah_current_channel = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %2 = ptrtoint ptr %ah_current_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah_current_channel, align 4
  %call4 = tail call fastcc i32 @ath5k_hw_txpower(ptr noundef %ah, ptr noundef %3, i8 noundef zeroext %txpower)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath5k_hw_txpower(ptr noundef %ah, ptr noundef %channel, i8 noundef zeroext %txpower) unnamed_addr #0 align 64 {
entry:
  %gain_boundaries.i.i = alloca [4 x i8], align 4
  %table_min.i = alloca [4 x i16], align 8
  %table_max.i = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_current_channel = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %0 = ptrtoint ptr %ah_current_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah_current_channel, align 4
  %conv = zext i8 %txpower to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %txpower)
  %cmp = icmp ugt i8 %txpower, 63
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup150_crit_edge, label %if.then2

do.body.cleanup150_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup150

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i32 noundef %conv) #9
  br label %cleanup150

if.end4:                                          ; preds = %entry
  %call5 = tail call i32 @ath5k_eeprom_mode_from_channel(ptr noundef %ah, ptr noundef %channel) #9
  %ah_radio = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %2 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ah_radio, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %3, label %sw.default [
    i32 0, label %if.end4.cleanup150_crit_edge
    i32 1, label %if.end4.sw.epilog_crit_edge
    i32 2, label %sw.bb7
    i32 3, label %if.end4.sw.bb8_crit_edge
    i32 4, label %if.end4.sw.bb8_crit_edge336
    i32 5, label %if.end4.sw.bb8_crit_edge337
    i32 6, label %if.end4.sw.bb8_crit_edge338
    i32 7, label %if.end4.sw.bb8_crit_edge339
  ]

if.end4.sw.bb8_crit_edge339:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

if.end4.sw.bb8_crit_edge338:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

if.end4.sw.bb8_crit_edge337:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

if.end4.sw.bb8_crit_edge336:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

if.end4.sw.bb8_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end4.cleanup150_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup150

sw.bb7:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end4.sw.bb8_crit_edge, %if.end4.sw.bb8_crit_edge336, %if.end4.sw.bb8_crit_edge337, %if.end4.sw.bb8_crit_edge338, %if.end4.sw.bb8_crit_edge339
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup150

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %if.end4.sw.epilog_crit_edge
  %cmp5.i.i = phi i1 [ false, %if.end4.sw.epilog_crit_edge ], [ false, %sw.bb8 ], [ true, %sw.bb7 ]
  %cmp.i204 = phi i1 [ false, %if.end4.sw.epilog_crit_edge ], [ true, %sw.bb8 ], [ false, %sw.bb7 ]
  %type.0.off0 = phi i2 [ 0, %if.end4.sw.epilog_crit_edge ], [ -2, %sw.bb8 ], [ 1, %sw.bb7 ]
  %ah_txpower = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108
  %txp_setup = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 13
  %5 = ptrtoint ptr %txp_setup to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %txp_setup, align 8, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %sw.epilog.if.then19_crit_edge, label %lor.lhs.false

sw.epilog.if.then19_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false:                                    ; preds = %sw.epilog
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %7 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hw_value, align 2
  %hw_value11 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %hw_value11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hw_value11, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp13.not = icmp eq i16 %8, %10
  br i1 %cmp13.not, label %lor.lhs.false15, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %11 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq, align 4
  %center_freq16 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %center_freq16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %center_freq16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp17.not = icmp eq i32 %12, %14
  br i1 %cmp17.not, label %lor.lhs.false15.if.end30_crit_edge, label %lor.lhs.false15.if.then19_crit_edge

lor.lhs.false15.if.then19_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false15.if.end30_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then19:                                        ; preds = %lor.lhs.false15.if.then19_crit_edge, %lor.lhs.false.if.then19_crit_edge, %sw.epilog.if.then19_crit_edge
  %txp_requested = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 14
  %15 = ptrtoint ptr %txp_requested to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txp_requested, align 4
  %17 = call ptr @memset(ptr %ah_txpower, i32 0, i32 728)
  store i32 %16, ptr %txp_requested, align 4
  %idxprom.i = and i32 %call5, 255
  %arrayidx.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 44, i32 %idxprom.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %table_min.i) #9
  %18 = getelementptr inbounds [4 x i16], ptr %table_min.i, i32 0, i32 1
  %19 = ptrtoint ptr %table_min.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %table_min.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %table_max.i) #9
  %20 = getelementptr inbounds [4 x i16], ptr %table_max.i, i32 0, i32 1
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %21 = ptrtoint ptr %table_max.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %table_max.i, align 8
  %22 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %center_freq.i, align 4
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %24 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hw_value.i.i, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %25, label %sw.default.i.i [
    i16 0, label %sw.bb.i.i
    i16 1, label %sw.bb1.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %ee_pwr_cal_a.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %ee_pwr_cal_b.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 47
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %ee_pwr_cal_g.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 48
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %pcinfo.0.i.i = phi ptr [ %ee_pwr_cal_g.i.i, %sw.default.i.i ], [ %ee_pwr_cal_b.i.i, %sw.bb1.i.i ], [ %ee_pwr_cal_a.i.i, %sw.bb.i.i ]
  %mode.0.i.i = phi i32 [ 2, %sw.default.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %sw.bb.i.i ]
  %arrayidx.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45, i32 %mode.0.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i, align 1
  %sub.i.i = add i8 %28, -1
  %29 = ptrtoint ptr %pcinfo.0.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pcinfo.0.i.i, align 4
  %conv8.i.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv8.i.i)
  %cmp.i.i = icmp ult i32 %23, %conv8.i.i
  br i1 %cmp.i.i, label %sw.epilog.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge, label %if.end.i.i

sw.epilog.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_chan_pcal_surrounding_piers.exit.i

if.end.i.i:                                       ; preds = %sw.epilog.i.i
  %idxprom10.i.i = zext i8 %sub.i.i to i32
  %arrayidx11.i.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcinfo.0.i.i, i32 %idxprom10.i.i
  %31 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx11.i.i, align 4
  %conv13.i.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv13.i.i)
  %cmp14.i.i = icmp ugt i32 %23, %conv13.i.i
  br i1 %cmp14.i.i, label %if.end.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_chan_pcal_surrounding_piers.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.066.i.i = phi i8 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %conv18.i.i = zext i8 %i.066.i.i to i32
  %arrayidx23.i.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcinfo.0.i.i, i32 %conv18.i.i
  %33 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx23.i.i, align 4
  %conv25.i.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv25.i.i)
  %cmp26.i.i = icmp eq i32 %23, %conv25.i.i
  br i1 %cmp26.i.i, label %for.body.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge, label %if.end29.i.i

for.body.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_chan_pcal_surrounding_piers.exit.i

if.end29.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv25.i.i)
  %cmp34.i.i = icmp ult i32 %23, %conv25.i.i
  br i1 %cmp34.i.i, label %if.then36.i.i, label %for.inc.i.i

if.then36.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub38.i.i = add i8 %i.066.i.i, -1
  br label %ath5k_get_chan_pcal_surrounding_piers.exit.i

for.inc.i.i:                                      ; preds = %if.end29.i.i
  %inc.i.i = add i8 %i.066.i.i, 1
  %cmp20.not.i.i = icmp ugt i8 %inc.i.i, %sub.i.i
  br i1 %cmp20.not.i.i, label %for.inc.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_chan_pcal_surrounding_piers.exit.i

ath5k_get_chan_pcal_surrounding_piers.exit.i:     ; preds = %for.inc.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge, %if.then36.i.i, %for.body.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge, %if.end.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge, %sw.epilog.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge
  %idx_l.0.i.i = phi i8 [ %sub38.i.i, %if.then36.i.i ], [ 0, %sw.epilog.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge ], [ %sub.i.i, %if.end.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge ], [ %i.066.i.i, %for.body.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge ], [ 0, %for.inc.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge ]
  %idx_r.0.i.i = phi i8 [ %i.066.i.i, %if.then36.i.i ], [ 0, %sw.epilog.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge ], [ %sub.i.i, %if.end.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge ], [ %i.066.i.i, %for.body.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge ], [ 0, %for.inc.i.i.ath5k_get_chan_pcal_surrounding_piers.exit.i_crit_edge ]
  %idxprom41.i.i = zext i8 %idx_l.0.i.i to i32
  %arrayidx42.i.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcinfo.0.i.i, i32 %idxprom41.i.i
  %idxprom43.i.i = zext i8 %idx_r.0.i.i to i32
  %arrayidx44.i.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcinfo.0.i.i, i32 %idxprom43.i.i
  %arrayidx2.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 43, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp495.not.i = icmp eq i8 %36, 0
  br i1 %cmp495.not.i, label %ath5k_get_chan_pcal_surrounding_piers.exit.i.for.end156.i_crit_edge, label %for.body.lr.ph.i

ath5k_get_chan_pcal_surrounding_piers.exit.i.for.end156.i_crit_edge: ; preds = %ath5k_get_chan_pcal_surrounding_piers.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end156.i

for.body.lr.ph.i:                                 ; preds = %ath5k_get_chan_pcal_surrounding_piers.exit.i
  %pd_curves.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcinfo.0.i.i, i32 %idxprom41.i.i, i32 4
  %pd_curves7.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcinfo.0.i.i, i32 %idxprom43.i.i, i32 4
  %not.cmp5.i.i = xor i1 %cmp5.i.i, true
  %mul.i.i = zext i1 %not.cmp5.i.i to i16
  %cmp123.i = icmp eq ptr %arrayidx42.i.i, %arrayidx44.i.i
  %sext481.i = shl i32 %23, 16
  %conv16.i.i = ashr exact i32 %sext481.i, 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc154.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %37 = phi i8 [ %36, %for.body.lr.ph.i ], [ %142, %for.inc154.i.for.body.i_crit_edge ]
  %pdg.0496.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc155.i, %for.inc154.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr i8, ptr %arrayidx.i, i32 %pdg.0496.i
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx4.i, align 1
  %40 = ptrtoint ptr %pd_curves.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pd_curves.i, align 4
  %idxprom5.i = zext i8 %39 to i32
  %arrayidx6.i = getelementptr %struct.ath5k_pdgain_info, ptr %41, i32 %idxprom5.i
  %42 = ptrtoint ptr %pd_curves7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pd_curves7.i, align 4
  %arrayidx9.i = getelementptr %struct.ath5k_pdgain_info, ptr %43, i32 %idxprom5.i
  %arrayidx11.i = getelementptr [4 x [64 x i8]], ptr %ah_txpower, i32 0, i32 %pdg.0496.i
  %arrayidx15.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 1, i32 %pdg.0496.i
  %pd_pwr.i = getelementptr %struct.ath5k_pdgain_info, ptr %41, i32 %idxprom5.i, i32 2
  %44 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pd_pwr.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %45, align 2
  %pd_pwr18.i = getelementptr %struct.ath5k_pdgain_info, ptr %43, i32 %idxprom5.i, i32 2
  %48 = ptrtoint ptr %pd_pwr18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pd_pwr18.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %52 = tail call i16 @llvm.smin.i16(i16 %47, i16 %51) #9
  %53 = sdiv i16 %52, 2
  %arrayidx27.i = getelementptr [4 x i16], ptr %table_min.i, i32 0, i32 %pdg.0496.i
  %54 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %arrayidx27.i, align 2
  %55 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx6.i, align 4
  %conv29.i = zext i8 %56 to i32
  %sub.i = add nsw i32 %conv29.i, -1
  %arrayidx30.i = getelementptr i16, ptr %45, i32 %sub.i
  %57 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx30.i, align 2
  %59 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx9.i, align 4
  %conv33.i = zext i8 %60 to i32
  %sub34.i = add nsw i32 %conv33.i, -1
  %arrayidx35.i = getelementptr i16, ptr %49, i32 %sub34.i
  %61 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx35.i, align 2
  %63 = tail call i16 @llvm.smax.i16(i16 %58, i16 %62) #9
  %64 = sdiv i16 %63, 2
  %arrayidx49.i = getelementptr [4 x i16], ptr %table_max.i, i32 0, i32 %pdg.0496.i
  %65 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %arrayidx49.i, align 2
  %66 = zext i2 %type.0.off0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.35)
  switch i2 %type.0.off0, label %for.body.i.ath5k_setup_channel_powertable.exit.thread_crit_edge [
    i2 1, label %sw.bb.i
    i2 0, label %for.body.i.sw.bb117.i_crit_edge
    i2 -2, label %for.body.i.sw.bb117.i_crit_edge340
  ]

for.body.i.sw.bb117.i_crit_edge340:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb117.i

for.body.i.sw.bb117.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb117.i

for.body.i.ath5k_setup_channel_powertable.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_setup_channel_powertable.exit.thread

sw.bb.i:                                          ; preds = %for.body.i
  %67 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %52, ptr %arrayidx27.i, align 2
  %68 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %63, ptr %arrayidx49.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp95.i = icmp ugt i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pdg.0496.i)
  %cmp97.i = icmp eq i32 %pdg.0496.i, 0
  %or.cond.i = select i1 %cmp95.i, i1 %cmp97.i, i1 false
  br i1 %or.cond.i, label %sw.bb.i.sw.bb117.i_crit_edge, label %if.then.i

sw.bb.i.sw.bb117.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb117.i

if.then.i:                                        ; preds = %sw.bb.i
  %pd_step.i = getelementptr %struct.ath5k_pdgain_info, ptr %41, i32 %idxprom5.i, i32 1
  %69 = ptrtoint ptr %pd_step.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pd_step.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %70, i32 1
  %73 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %74)
  %cmp.i299.i = icmp eq i8 %72, %74
  br i1 %cmp.i299.i, label %if.then.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %pd_step99.i = getelementptr %struct.ath5k_pdgain_info, ptr %43, i32 %idxprom5.i, i32 1
  %75 = ptrtoint ptr %pd_step99.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pd_step99.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  %arrayidx6.i.i = getelementptr i8, ptr %76, i32 1
  %79 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx6.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %80)
  %cmp8.i.i = icmp eq i8 %78, %80
  br i1 %cmp8.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %if.end.i300.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %81 = tail call i16 @llvm.smax.i16(i16 %47, i16 %51) #9
  br label %ath5k_get_linear_pcdac_min.exit.i

if.end.i300.i:                                    ; preds = %lor.lhs.false.i.i
  %arrayidx22.i.i = getelementptr i16, ptr %45, i32 1
  %82 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx22.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %83)
  %cmp24.i.i = icmp eq i16 %47, %83
  br i1 %cmp24.i.i, label %if.end.i300.i.if.end39.i.i_crit_edge, label %do.body.preheader.i.i

if.end.i300.i.if.end39.i.i_crit_edge:             ; preds = %if.end.i300.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i

do.body.preheader.i.i:                            ; preds = %if.end.i300.i
  %conv32.i.i = zext i8 %72 to i32
  %conv1.i.i.i = sext i16 %83 to i32
  %conv.i.i.i = sext i16 %47 to i32
  %conv4.i133.i.i = zext i8 %74 to i32
  %reass.add.i.i.i = sub nsw i32 %conv4.i133.i.i, %conv32.i.i
  %reass.mul.i.i.i = mul nsw i32 %reass.add.i.i.i, 100
  %sub12.i.i.i = sub nsw i32 %conv1.i.i.i, %conv.i.i.i
  %div.i.i.i = sdiv i32 %reass.mul.i.i.i, %sub12.i.i.i
  br label %ath5k_get_interpolated_value.exit.i.i

ath5k_get_interpolated_value.exit.i.i:            ; preds = %ath5k_get_interpolated_value.exit.i.i.ath5k_get_interpolated_value.exit.i.i_crit_edge, %do.body.preheader.i.i
  %pwr_i.0.i.i = phi i16 [ %dec.i.i, %ath5k_get_interpolated_value.exit.i.i.ath5k_get_interpolated_value.exit.i.i_crit_edge ], [ %47, %do.body.preheader.i.i ]
  %dec.i.i = add i16 %pwr_i.0.i.i, -1
  %conv16.i.i.i = sext i16 %dec.i.i to i32
  %sub18.i.i.i = sub nsw i32 %conv16.i.i.i, %conv.i.i.i
  %mul19.i.i.i = mul nsw i32 %sub18.i.i.i, %div.i.i.i
  %div20.i.i.i = sdiv i32 %mul19.i.i.i, 100
  %conv21.i.i.i = add nsw i32 %div20.i.i.i, %conv32.i.i
  %sext.i.i = shl i32 %conv21.i.i.i, 24
  %cmp37.i.i = icmp sgt i32 %sext.i.i, 16777216
  br i1 %cmp37.i.i, label %ath5k_get_interpolated_value.exit.i.i.ath5k_get_interpolated_value.exit.i.i_crit_edge, label %ath5k_get_interpolated_value.exit.i.i.if.end39.i.i_crit_edge

ath5k_get_interpolated_value.exit.i.i.if.end39.i.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i

ath5k_get_interpolated_value.exit.i.i.ath5k_get_interpolated_value.exit.i.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_interpolated_value.exit.i.i

if.end39.i.i:                                     ; preds = %ath5k_get_interpolated_value.exit.i.i.if.end39.i.i_crit_edge, %if.end.i300.i.if.end39.i.i_crit_edge
  %min_pwrL.0.i.i = phi i16 [ %47, %if.end.i300.i.if.end39.i.i_crit_edge ], [ %dec.i.i, %ath5k_get_interpolated_value.exit.i.i.if.end39.i.i_crit_edge ]
  %arrayidx42.i301.i = getelementptr i16, ptr %49, i32 1
  %84 = ptrtoint ptr %arrayidx42.i301.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx42.i301.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %85)
  %cmp44.i.i = icmp eq i16 %51, %85
  br i1 %cmp44.i.i, label %if.end39.i.i.if.end65.i.i_crit_edge, label %do.body50.preheader.i.i

if.end39.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i.i

do.body50.preheader.i.i:                          ; preds = %if.end39.i.i
  %conv55.i.i = zext i8 %78 to i32
  %conv1.i113.i.i = sext i16 %85 to i32
  %conv.i114.i.i = sext i16 %51 to i32
  %conv4.i115131.i.i = zext i8 %80 to i32
  %reass.add.i117.i.i = sub nsw i32 %conv4.i115131.i.i, %conv55.i.i
  %reass.mul.i118.i.i = mul nsw i32 %reass.add.i117.i.i, 100
  %sub12.i119.i.i = sub nsw i32 %conv1.i113.i.i, %conv.i114.i.i
  %div.i120.i.i = sdiv i32 %reass.mul.i118.i.i, %sub12.i119.i.i
  br label %ath5k_get_interpolated_value.exit130.i.i

ath5k_get_interpolated_value.exit130.i.i:         ; preds = %ath5k_get_interpolated_value.exit130.i.i.ath5k_get_interpolated_value.exit130.i.i_crit_edge, %do.body50.preheader.i.i
  %pwr_i.1.i.i = phi i16 [ %dec51.i.i, %ath5k_get_interpolated_value.exit130.i.i.ath5k_get_interpolated_value.exit130.i.i_crit_edge ], [ %51, %do.body50.preheader.i.i ]
  %dec51.i.i = add i16 %pwr_i.1.i.i, -1
  %conv16.i123.i.i = sext i16 %dec51.i.i to i32
  %sub18.i124.i.i = sub nsw i32 %conv16.i123.i.i, %conv.i114.i.i
  %mul19.i125.i.i = mul nsw i32 %sub18.i124.i.i, %div.i120.i.i
  %div20.i126.i.i = sdiv i32 %mul19.i125.i.i, 100
  %conv21.i127.i.i = add nsw i32 %div20.i126.i.i, %conv55.i.i
  %sext109.i.i = shl i32 %conv21.i127.i.i, 24
  %cmp62.i.i = icmp sgt i32 %sext109.i.i, 16777216
  br i1 %cmp62.i.i, label %ath5k_get_interpolated_value.exit130.i.i.ath5k_get_interpolated_value.exit130.i.i_crit_edge, label %ath5k_get_interpolated_value.exit130.i.i.if.end65.i.i_crit_edge

ath5k_get_interpolated_value.exit130.i.i.if.end65.i.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit130.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i.i

ath5k_get_interpolated_value.exit130.i.i.ath5k_get_interpolated_value.exit130.i.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit130.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_interpolated_value.exit130.i.i

if.end65.i.i:                                     ; preds = %ath5k_get_interpolated_value.exit130.i.i.if.end65.i.i_crit_edge, %if.end39.i.i.if.end65.i.i_crit_edge
  %min_pwrR.0.i.i = phi i16 [ %51, %if.end39.i.i.if.end65.i.i_crit_edge ], [ %dec51.i.i, %ath5k_get_interpolated_value.exit130.i.i.if.end65.i.i_crit_edge ]
  %86 = tail call i16 @llvm.smax.i16(i16 %min_pwrL.0.i.i, i16 %min_pwrR.0.i.i) #9
  br label %ath5k_get_linear_pcdac_min.exit.i

ath5k_get_linear_pcdac_min.exit.i:                ; preds = %if.end65.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %81, %if.then.i.i ], [ %86, %if.end65.i.i ]
  %87 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %retval.0.i.i, ptr %arrayidx27.i, align 2
  %conv104.i = sext i16 %63 to i32
  %conv106.i = sext i16 %retval.0.i.i to i32
  %sub107.i = sub nsw i32 %conv104.i, %conv106.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %sub107.i)
  %cmp108.i = icmp sgt i32 %sub107.i, 126
  br i1 %cmp108.i, label %if.then110.i, label %ath5k_get_linear_pcdac_min.exit.i.sw.bb117.i_crit_edge

ath5k_get_linear_pcdac_min.exit.i.sw.bb117.i_crit_edge: ; preds = %ath5k_get_linear_pcdac_min.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb117.i

if.then110.i:                                     ; preds = %ath5k_get_linear_pcdac_min.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub113.i = add i16 %63, -126
  %88 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %sub113.i, ptr %arrayidx27.i, align 2
  br label %sw.bb117.i

sw.bb117.i:                                       ; preds = %if.then110.i, %ath5k_get_linear_pcdac_min.exit.i.sw.bb117.i_crit_edge, %sw.bb.i.sw.bb117.i_crit_edge, %for.body.i.sw.bb117.i_crit_edge, %for.body.i.sw.bb117.i_crit_edge340
  %89 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx27.i, align 2
  %91 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx49.i, align 2
  %pd_step121.i = getelementptr %struct.ath5k_pdgain_info, ptr %41, i32 %idxprom5.i, i32 1
  %93 = ptrtoint ptr %pd_step121.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pd_step121.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp.i302.i = icmp ult i8 %56, 2
  br i1 %cmp.i302.i, label %sw.bb117.i.ath5k_create_power_curve.exit.i_crit_edge, label %if.end.i304.i

sw.bb117.i.ath5k_create_power_curve.exit.i_crit_edge: ; preds = %sw.bb117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_create_power_curve.exit.i

if.end.i304.i:                                    ; preds = %sw.bb117.i
  %pwr_i.0.i303.i = shl i16 %90, %mul.i.i
  %95 = sub i16 %92, %90
  %96 = tail call i16 @llvm.umin.i16(i16 %95, i16 63) #9
  %narrow.i.i = add nuw nsw i16 %96, 1
  %.op.i.i = zext i16 %narrow.i.i to i32
  %97 = select i1 %cmp5.i.i, i32 64, i32 %.op.i.i
  br label %for.body.i306.i

for.body.i306.i:                                  ; preds = %ath5k_get_interpolated_value.exit.i318.i.for.body.i306.i_crit_edge, %if.end.i304.i
  %i.079.i.i = phi i32 [ 0, %if.end.i304.i ], [ %inc51.i.i, %ath5k_get_interpolated_value.exit.i318.i.for.body.i306.i_crit_edge ]
  %pwr_i.177.i.i = phi i16 [ %pwr_i.0.i303.i, %if.end.i304.i ], [ %add.i.i, %ath5k_get_interpolated_value.exit.i318.i.for.body.i306.i_crit_edge ]
  %idx.sroa.0.076.i.i = phi i8 [ 0, %if.end.i304.i ], [ %idx.sroa.0.1.i.i, %ath5k_get_interpolated_value.exit.i318.i.for.body.i306.i_crit_edge ]
  %idx.sroa.7.075.i.i = phi i8 [ 1, %if.end.i304.i ], [ %idx.sroa.7.1.i.i, %ath5k_get_interpolated_value.exit.i318.i.for.body.i306.i_crit_edge ]
  %idxprom.i.i = zext i8 %idx.sroa.7.075.i.i to i32
  %arrayidx18.i.i = getelementptr i16, ptr %45, i32 %idxprom.i.i
  %98 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx18.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %pwr_i.177.i.i, i16 %99)
  %cmp20.i.i = icmp sgt i16 %pwr_i.177.i.i, %99
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %idxprom.i.i)
  %cmp26.i305.i = icmp sgt i32 %sub.i, %idxprom.i.i
  %or.cond71.i.i = select i1 %cmp20.i.i, i1 %cmp26.i305.i, i1 false
  %inc31.i.i = zext i1 %or.cond71.i.i to i8
  %idx.sroa.7.1.i.i = add i8 %idx.sroa.7.075.i.i, %inc31.i.i
  %idx.sroa.0.1.i.i = add i8 %idx.sroa.0.076.i.i, %inc31.i.i
  %idxprom34.i.i = zext i8 %idx.sroa.0.1.i.i to i32
  %arrayidx35.i.i = getelementptr i16, ptr %45, i32 %idxprom34.i.i
  %100 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx35.i.i, align 2
  %idxprom37.i.i = zext i8 %idx.sroa.7.1.i.i to i32
  %arrayidx38.i.i = getelementptr i16, ptr %45, i32 %idxprom37.i.i
  %102 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx38.i.i, align 2
  %arrayidx41.i.i = getelementptr i8, ptr %94, i32 %idxprom34.i.i
  %104 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx41.i.i, align 1
  %arrayidx45.i.i = getelementptr i8, ptr %94, i32 %idxprom37.i.i
  %106 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx45.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %103, i16 %101)
  %cmp.i.i.i = icmp eq i16 %103, %101
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %107)
  %cmp5.i.i.i = icmp eq i8 %105, %107
  %or.cond.i.i.i = or i1 %cmp.i.i.i, %cmp5.i.i.i
  br i1 %or.cond.i.i.i, label %for.body.i306.i.ath5k_get_interpolated_value.exit.i318.i_crit_edge, label %if.end.i.i.i

for.body.i306.i.ath5k_get_interpolated_value.exit.i318.i_crit_edge: ; preds = %for.body.i306.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_interpolated_value.exit.i318.i

if.end.i.i.i:                                     ; preds = %for.body.i306.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i307.i = sext i16 %103 to i32
  %conv.i.i308.i = sext i16 %101 to i32
  %conv4.i72.i.i = zext i8 %107 to i32
  %conv3.i73.i.i = zext i8 %105 to i32
  %reass.add.i.i309.i = sub nsw i32 %conv4.i72.i.i, %conv3.i73.i.i
  %reass.mul.i.i310.i = mul nsw i32 %reass.add.i.i309.i, 100
  %sub12.i.i311.i = sub nsw i32 %conv1.i.i307.i, %conv.i.i308.i
  %div.i.i312.i = sdiv i32 %reass.mul.i.i310.i, %sub12.i.i311.i
  %conv16.i.i313.i = sext i16 %pwr_i.177.i.i to i32
  %sub18.i.i314.i = sub nsw i32 %conv16.i.i313.i, %conv.i.i308.i
  %mul19.i.i315.i = mul nsw i32 %div.i.i312.i, %sub18.i.i314.i
  %div20.i.i316.i = sdiv i32 %mul19.i.i315.i, 100
  %108 = trunc i32 %div20.i.i316.i to i8
  %conv21.i.i317.i = add i8 %105, %108
  br label %ath5k_get_interpolated_value.exit.i318.i

ath5k_get_interpolated_value.exit.i318.i:         ; preds = %if.end.i.i.i, %for.body.i306.i.ath5k_get_interpolated_value.exit.i318.i_crit_edge
  %retval.0.i.off0.i.i = phi i8 [ %conv21.i.i317.i, %if.end.i.i.i ], [ %105, %for.body.i306.i.ath5k_get_interpolated_value.exit.i318.i_crit_edge ]
  %arrayidx48.i.i = getelementptr i8, ptr %arrayidx11.i, i32 %i.079.i.i
  %109 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %retval.0.i.off0.i.i, ptr %arrayidx48.i.i, align 1
  %add.i.i = add i16 %pwr_i.177.i.i, 2
  %inc51.i.i = add nuw nsw i32 %i.079.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc51.i.i, %97
  br i1 %exitcond.not.i.i, label %ath5k_get_interpolated_value.exit.i318.i.ath5k_create_power_curve.exit.i_crit_edge, label %ath5k_get_interpolated_value.exit.i318.i.for.body.i306.i_crit_edge

ath5k_get_interpolated_value.exit.i318.i.for.body.i306.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit.i318.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i306.i

ath5k_get_interpolated_value.exit.i318.i.ath5k_create_power_curve.exit.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit.i318.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_create_power_curve.exit.i

ath5k_create_power_curve.exit.i:                  ; preds = %ath5k_get_interpolated_value.exit.i318.i.ath5k_create_power_curve.exit.i_crit_edge, %sw.bb117.i.ath5k_create_power_curve.exit.i_crit_edge
  br i1 %cmp123.i, label %ath5k_create_power_curve.exit.i.for.inc154.i_crit_edge, label %if.end126.i

ath5k_create_power_curve.exit.i.for.inc154.i_crit_edge: ; preds = %ath5k_create_power_curve.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc154.i

if.end126.i:                                      ; preds = %ath5k_create_power_curve.exit.i
  %110 = ptrtoint ptr %pd_pwr18.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pd_pwr18.i, align 4
  %pd_step130.i = getelementptr %struct.ath5k_pdgain_info, ptr %43, i32 %idxprom5.i, i32 1
  %112 = ptrtoint ptr %pd_step130.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pd_step130.i, align 4
  %114 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %115)
  %cmp.i319.i = icmp ult i8 %115, 2
  br i1 %cmp.i319.i, label %if.end126.ath5k_create_power_curve.exit371_crit_edge.i, label %if.end.i328.i

if.end126.ath5k_create_power_curve.exit371_crit_edge.i: ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  %.pre.i = sub i16 %92, %90
  br label %ath5k_create_power_curve.exit371.i

if.end.i328.i:                                    ; preds = %if.end126.i
  %conv2.i320.i = zext i8 %115 to i32
  %pwr_i.0.i324.i = shl i16 %90, %mul.i.i
  %116 = sub i16 %92, %90
  %sub25.i325.i = add nsw i32 %conv2.i320.i, -1
  %117 = tail call i16 @llvm.umin.i16(i16 %116, i16 63) #9
  %narrow.i326.i = add nuw nsw i16 %117, 1
  %.op.i327.i = zext i16 %narrow.i326.i to i32
  %118 = select i1 %cmp5.i.i, i32 64, i32 %.op.i327.i
  br label %for.body.i350.i

for.body.i350.i:                                  ; preds = %ath5k_get_interpolated_value.exit.i370.i.for.body.i350.i_crit_edge, %if.end.i328.i
  %i.079.i329.i = phi i32 [ 0, %if.end.i328.i ], [ %inc51.i368.i, %ath5k_get_interpolated_value.exit.i370.i.for.body.i350.i_crit_edge ]
  %pwr_i.177.i330.i = phi i16 [ %pwr_i.0.i324.i, %if.end.i328.i ], [ %add.i367.i, %ath5k_get_interpolated_value.exit.i370.i.for.body.i350.i_crit_edge ]
  %idx.sroa.0.076.i331.i = phi i8 [ 0, %if.end.i328.i ], [ %idx.sroa.0.1.i340.i, %ath5k_get_interpolated_value.exit.i370.i.for.body.i350.i_crit_edge ]
  %idx.sroa.7.075.i332.i = phi i8 [ 1, %if.end.i328.i ], [ %idx.sroa.7.1.i339.i, %ath5k_get_interpolated_value.exit.i370.i.for.body.i350.i_crit_edge ]
  %idxprom.i333.i = zext i8 %idx.sroa.7.075.i332.i to i32
  %arrayidx18.i334.i = getelementptr i16, ptr %111, i32 %idxprom.i333.i
  %119 = ptrtoint ptr %arrayidx18.i334.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx18.i334.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %pwr_i.177.i330.i, i16 %120)
  %cmp20.i335.i = icmp sgt i16 %pwr_i.177.i330.i, %120
  call void @__sanitizer_cov_trace_cmp4(i32 %sub25.i325.i, i32 %idxprom.i333.i)
  %cmp26.i336.i = icmp sgt i32 %sub25.i325.i, %idxprom.i333.i
  %or.cond71.i337.i = select i1 %cmp20.i335.i, i1 %cmp26.i336.i, i1 false
  %inc31.i338.i = zext i1 %or.cond71.i337.i to i8
  %idx.sroa.7.1.i339.i = add i8 %idx.sroa.7.075.i332.i, %inc31.i338.i
  %idx.sroa.0.1.i340.i = add i8 %idx.sroa.0.076.i331.i, %inc31.i338.i
  %idxprom34.i341.i = zext i8 %idx.sroa.0.1.i340.i to i32
  %arrayidx35.i342.i = getelementptr i16, ptr %111, i32 %idxprom34.i341.i
  %121 = ptrtoint ptr %arrayidx35.i342.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx35.i342.i, align 2
  %idxprom37.i343.i = zext i8 %idx.sroa.7.1.i339.i to i32
  %arrayidx38.i344.i = getelementptr i16, ptr %111, i32 %idxprom37.i343.i
  %123 = ptrtoint ptr %arrayidx38.i344.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx38.i344.i, align 2
  %arrayidx41.i345.i = getelementptr i8, ptr %113, i32 %idxprom34.i341.i
  %125 = ptrtoint ptr %arrayidx41.i345.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx41.i345.i, align 1
  %arrayidx45.i346.i = getelementptr i8, ptr %113, i32 %idxprom37.i343.i
  %127 = ptrtoint ptr %arrayidx45.i346.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx45.i346.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %124, i16 %122)
  %cmp.i.i347.i = icmp eq i16 %124, %122
  call void @__sanitizer_cov_trace_cmp1(i8 %126, i8 %128)
  %cmp5.i.i348.i = icmp eq i8 %126, %128
  %or.cond.i.i349.i = or i1 %cmp.i.i347.i, %cmp5.i.i348.i
  br i1 %or.cond.i.i349.i, label %for.body.i350.i.ath5k_get_interpolated_value.exit.i370.i_crit_edge, label %if.end.i.i364.i

for.body.i350.i.ath5k_get_interpolated_value.exit.i370.i_crit_edge: ; preds = %for.body.i350.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_interpolated_value.exit.i370.i

if.end.i.i364.i:                                  ; preds = %for.body.i350.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i351.i = sext i16 %124 to i32
  %conv.i.i352.i = sext i16 %122 to i32
  %conv4.i72.i353.i = zext i8 %128 to i32
  %conv3.i73.i354.i = zext i8 %126 to i32
  %reass.add.i.i355.i = sub nsw i32 %conv4.i72.i353.i, %conv3.i73.i354.i
  %reass.mul.i.i356.i = mul nsw i32 %reass.add.i.i355.i, 100
  %sub12.i.i357.i = sub nsw i32 %conv1.i.i351.i, %conv.i.i352.i
  %div.i.i358.i = sdiv i32 %reass.mul.i.i356.i, %sub12.i.i357.i
  %conv16.i.i359.i = sext i16 %pwr_i.177.i330.i to i32
  %sub18.i.i360.i = sub nsw i32 %conv16.i.i359.i, %conv.i.i352.i
  %mul19.i.i361.i = mul nsw i32 %div.i.i358.i, %sub18.i.i360.i
  %div20.i.i362.i = sdiv i32 %mul19.i.i361.i, 100
  %129 = trunc i32 %div20.i.i362.i to i8
  %conv21.i.i363.i = add i8 %126, %129
  br label %ath5k_get_interpolated_value.exit.i370.i

ath5k_get_interpolated_value.exit.i370.i:         ; preds = %if.end.i.i364.i, %for.body.i350.i.ath5k_get_interpolated_value.exit.i370.i_crit_edge
  %retval.0.i.off0.i365.i = phi i8 [ %conv21.i.i363.i, %if.end.i.i364.i ], [ %126, %for.body.i350.i.ath5k_get_interpolated_value.exit.i370.i_crit_edge ]
  %arrayidx48.i366.i = getelementptr i8, ptr %arrayidx15.i, i32 %i.079.i329.i
  %130 = ptrtoint ptr %arrayidx48.i366.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %retval.0.i.off0.i365.i, ptr %arrayidx48.i366.i, align 1
  %add.i367.i = add i16 %pwr_i.177.i330.i, 2
  %inc51.i368.i = add nuw nsw i32 %i.079.i329.i, 1
  %exitcond.not.i369.i = icmp eq i32 %inc51.i368.i, %118
  br i1 %exitcond.not.i369.i, label %ath5k_get_interpolated_value.exit.i370.i.ath5k_create_power_curve.exit371.i_crit_edge, label %ath5k_get_interpolated_value.exit.i370.i.for.body.i350.i_crit_edge

ath5k_get_interpolated_value.exit.i370.i.for.body.i350.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit.i370.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i350.i

ath5k_get_interpolated_value.exit.i370.i.ath5k_create_power_curve.exit371.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit.i370.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_create_power_curve.exit371.i

ath5k_create_power_curve.exit371.i:               ; preds = %ath5k_get_interpolated_value.exit.i370.i.ath5k_create_power_curve.exit371.i_crit_edge, %if.end126.ath5k_create_power_curve.exit371_crit_edge.i
  %sub137.pre-phi.i = phi i16 [ %.pre.i, %if.end126.ath5k_create_power_curve.exit371_crit_edge.i ], [ %116, %ath5k_get_interpolated_value.exit.i370.i.ath5k_create_power_curve.exit371.i_crit_edge ]
  %conv139.i = zext i16 %sub137.pre-phi.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %90)
  %cmp140490.not.i = icmp eq i16 %92, %90
  br i1 %cmp140490.not.i, label %ath5k_create_power_curve.exit371.i.for.inc154.i_crit_edge, label %ath5k_create_power_curve.exit371.i.for.body144.i_crit_edge

ath5k_create_power_curve.exit371.i.for.body144.i_crit_edge: ; preds = %ath5k_create_power_curve.exit371.i
  br label %for.body144.i

ath5k_create_power_curve.exit371.i.for.inc154.i_crit_edge: ; preds = %ath5k_create_power_curve.exit371.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc154.i

for.body144.i:                                    ; preds = %ath5k_get_interpolated_value.exit.i.for.body144.i_crit_edge, %ath5k_create_power_curve.exit371.i.for.body144.i_crit_edge
  %i.0492.i = phi i32 [ %inc.i, %ath5k_get_interpolated_value.exit.i.for.body144.i_crit_edge ], [ 0, %ath5k_create_power_curve.exit371.i.for.body144.i_crit_edge ]
  %131 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx42.i.i, align 4
  %133 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx44.i.i, align 4
  %arrayidx147.i = getelementptr i8, ptr %arrayidx11.i, i32 %i.0492.i
  %135 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx147.i, align 1
  %arrayidx149.i = getelementptr i8, ptr %arrayidx15.i, i32 %i.0492.i
  %137 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx149.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %134, i16 %132)
  %cmp.i372.i = icmp eq i16 %134, %132
  call void @__sanitizer_cov_trace_cmp1(i8 %136, i8 %138)
  %cmp5.i373.i = icmp eq i8 %136, %138
  %or.cond.i.i = or i1 %cmp.i372.i, %cmp5.i373.i
  br i1 %or.cond.i.i, label %for.body144.i.ath5k_get_interpolated_value.exit.i_crit_edge, label %if.end.i375.i

for.body144.i.ath5k_get_interpolated_value.exit.i_crit_edge: ; preds = %for.body144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_interpolated_value.exit.i

if.end.i375.i:                                    ; preds = %for.body144.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = sext i16 %134 to i32
  %conv.i.i = sext i16 %132 to i32
  %conv4.i478.i = zext i8 %138 to i32
  %conv3.i479.i = zext i8 %136 to i32
  %reass.add.i.i = sub nsw i32 %conv4.i478.i, %conv3.i479.i
  %reass.mul.i.i = mul nsw i32 %reass.add.i.i, 100
  %sub12.i.i = sub nsw i32 %conv1.i.i, %conv.i.i
  %div.i.i = sdiv i32 %reass.mul.i.i, %sub12.i.i
  %sub18.i.i = sub nsw i32 %conv16.i.i, %conv.i.i
  %mul19.i.i = mul nsw i32 %div.i.i, %sub18.i.i
  %div20.i.i = sdiv i32 %mul19.i.i, 100
  %139 = trunc i32 %div20.i.i to i8
  %conv21.i.i = add i8 %136, %139
  br label %ath5k_get_interpolated_value.exit.i

ath5k_get_interpolated_value.exit.i:              ; preds = %if.end.i375.i, %for.body144.i.ath5k_get_interpolated_value.exit.i_crit_edge
  %retval.0.i376.off0.i = phi i8 [ %conv21.i.i, %if.end.i375.i ], [ %136, %for.body144.i.ath5k_get_interpolated_value.exit.i_crit_edge ]
  %140 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %retval.0.i376.off0.i, ptr %arrayidx147.i, align 1
  %inc.i = add nuw nsw i32 %i.0492.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv139.i)
  %cmp140.i = icmp ult i32 %inc.i, %conv139.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.0492.i)
  %cmp142.i = icmp ult i32 %i.0492.i, 63
  %or.cond298.i = and i1 %cmp142.i, %cmp140.i
  br i1 %or.cond298.i, label %ath5k_get_interpolated_value.exit.i.for.body144.i_crit_edge, label %ath5k_get_interpolated_value.exit.i.for.inc154.i_crit_edge

ath5k_get_interpolated_value.exit.i.for.inc154.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc154.i

ath5k_get_interpolated_value.exit.i.for.body144.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body144.i

for.inc154.i:                                     ; preds = %ath5k_get_interpolated_value.exit.i.for.inc154.i_crit_edge, %ath5k_create_power_curve.exit371.i.for.inc154.i_crit_edge, %ath5k_create_power_curve.exit.i.for.inc154.i_crit_edge
  %inc155.i = add nuw nsw i32 %pdg.0496.i, 1
  %141 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = zext i8 %142 to i32
  %cmp.i = icmp ult i32 %inc155.i, %conv.i
  br i1 %cmp.i, label %for.inc154.i.for.body.i_crit_edge, label %for.inc154.i.for.end156.i_crit_edge

for.inc154.i.for.end156.i_crit_edge:              ; preds = %for.inc154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end156.i

for.inc154.i.for.body.i_crit_edge:                ; preds = %for.inc154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end156.i:                                     ; preds = %for.inc154.i.for.end156.i_crit_edge, %ath5k_get_chan_pcal_surrounding_piers.exit.i.for.end156.i_crit_edge
  %.lcssa493.i = phi i8 [ 0, %ath5k_get_chan_pcal_surrounding_piers.exit.i.for.end156.i_crit_edge ], [ %142, %for.inc154.i.for.end156.i_crit_edge ]
  %conv.le.i = zext i8 %.lcssa493.i to i32
  %143 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %arrayidx42.i.i, align 4
  %145 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx44.i.i, align 4
  %min_pwr.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcinfo.0.i.i, i32 %idxprom41.i.i, i32 2
  %147 = ptrtoint ptr %min_pwr.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %min_pwr.i, align 4
  %min_pwr160.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcinfo.0.i.i, i32 %idxprom43.i.i, i32 2
  %149 = ptrtoint ptr %min_pwr160.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %min_pwr160.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %146, i16 %144)
  %cmp.i377.i = icmp eq i16 %146, %144
  call void @__sanitizer_cov_trace_cmp2(i16 %148, i16 %150)
  %cmp5.i378.i = icmp eq i16 %148, %150
  %or.cond.i379.i = or i1 %cmp.i377.i, %cmp5.i378.i
  br i1 %or.cond.i379.i, label %for.end156.i.ath5k_get_interpolated_value.exit397.i_crit_edge, label %if.end.i395.i

for.end156.i.ath5k_get_interpolated_value.exit397.i_crit_edge: ; preds = %for.end156.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_interpolated_value.exit397.i

if.end.i395.i:                                    ; preds = %for.end156.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i380.i = sext i16 %146 to i32
  %conv.i381.i = sext i16 %144 to i32
  %conv4.i382.i = sext i16 %150 to i32
  %conv3.i383.i = sext i16 %148 to i32
  %reass.add.i384.i = sub nsw i32 %conv4.i382.i, %conv3.i383.i
  %reass.mul.i385.i = mul nsw i32 %reass.add.i384.i, 100
  %sub12.i386.i = sub nsw i32 %conv1.i380.i, %conv.i381.i
  %div.i387.i = sdiv i32 %reass.mul.i385.i, %sub12.i386.i
  %sext.i388.i = shl i32 %div.i387.i, 16
  %conv15.i389.i = ashr exact i32 %sext.i388.i, 16
  %sext.i = shl i32 %23, 16
  %conv16.i390.i = ashr exact i32 %sext.i, 16
  %sub18.i391.i = sub nsw i32 %conv16.i390.i, %conv.i381.i
  %mul19.i392.i = mul nsw i32 %conv15.i389.i, %sub18.i391.i
  %div20.i393.i = sdiv i32 %mul19.i392.i, 100
  %151 = trunc i32 %div20.i393.i to i16
  %conv21.i394.i = add i16 %148, %151
  br label %ath5k_get_interpolated_value.exit397.i

ath5k_get_interpolated_value.exit397.i:           ; preds = %if.end.i395.i, %for.end156.i.ath5k_get_interpolated_value.exit397.i_crit_edge
  %retval.0.i396.i = phi i16 [ %conv21.i394.i, %if.end.i395.i ], [ %148, %for.end156.i.ath5k_get_interpolated_value.exit397.i_crit_edge ]
  %txp_min_pwr.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 6
  %152 = ptrtoint ptr %txp_min_pwr.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %retval.0.i396.i, ptr %txp_min_pwr.i, align 2
  %153 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx42.i.i, align 4
  %155 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %arrayidx44.i.i, align 4
  %max_pwr.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcinfo.0.i.i, i32 %idxprom41.i.i, i32 1
  %157 = ptrtoint ptr %max_pwr.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %max_pwr.i, align 2
  %max_pwr166.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcinfo.0.i.i, i32 %idxprom43.i.i, i32 1
  %159 = ptrtoint ptr %max_pwr166.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %max_pwr166.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %156, i16 %154)
  %cmp.i398.i = icmp eq i16 %156, %154
  call void @__sanitizer_cov_trace_cmp2(i16 %158, i16 %160)
  %cmp5.i399.i = icmp eq i16 %158, %160
  %or.cond.i400.i = or i1 %cmp.i398.i, %cmp5.i399.i
  br i1 %or.cond.i400.i, label %ath5k_get_interpolated_value.exit397.i.ath5k_get_interpolated_value.exit418.i_crit_edge, label %if.end.i416.i

ath5k_get_interpolated_value.exit397.i.ath5k_get_interpolated_value.exit418.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit397.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_interpolated_value.exit418.i

if.end.i416.i:                                    ; preds = %ath5k_get_interpolated_value.exit397.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i401.i = sext i16 %156 to i32
  %conv.i402.i = sext i16 %154 to i32
  %conv4.i403.i = sext i16 %160 to i32
  %conv3.i404.i = sext i16 %158 to i32
  %reass.add.i405.i = sub nsw i32 %conv4.i403.i, %conv3.i404.i
  %reass.mul.i406.i = mul nsw i32 %reass.add.i405.i, 100
  %sub12.i407.i = sub nsw i32 %conv1.i401.i, %conv.i402.i
  %div.i408.i = sdiv i32 %reass.mul.i406.i, %sub12.i407.i
  %sext.i409.i = shl i32 %div.i408.i, 16
  %conv15.i410.i = ashr exact i32 %sext.i409.i, 16
  %sext480.i = shl i32 %23, 16
  %conv16.i411.i = ashr exact i32 %sext480.i, 16
  %sub18.i412.i = sub nsw i32 %conv16.i411.i, %conv.i402.i
  %mul19.i413.i = mul nsw i32 %conv15.i410.i, %sub18.i412.i
  %div20.i414.i = sdiv i32 %mul19.i413.i, 100
  %161 = trunc i32 %div20.i414.i to i16
  %conv21.i415.i = add i16 %158, %161
  br label %ath5k_get_interpolated_value.exit418.i

ath5k_get_interpolated_value.exit418.i:           ; preds = %if.end.i416.i, %ath5k_get_interpolated_value.exit397.i.ath5k_get_interpolated_value.exit418.i_crit_edge
  %retval.0.i417.i = phi i16 [ %conv21.i415.i, %if.end.i416.i ], [ %158, %ath5k_get_interpolated_value.exit397.i.ath5k_get_interpolated_value.exit418.i_crit_edge ]
  %txp_max_pwr.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 7
  %162 = ptrtoint ptr %txp_max_pwr.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %retval.0.i417.i, ptr %txp_max_pwr.i, align 4
  %163 = zext i2 %type.0.off0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.36)
  switch i2 %type.0.off0, label %ath5k_get_interpolated_value.exit418.i.ath5k_setup_channel_powertable.exit.thread_crit_edge [
    i2 1, label %sw.bb170.i
    i2 0, label %sw.bb182.i
    i2 -2, label %sw.bb188.i
  ]

ath5k_get_interpolated_value.exit418.i.ath5k_setup_channel_powertable.exit.thread_crit_edge: ; preds = %ath5k_get_interpolated_value.exit418.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_setup_channel_powertable.exit.thread

sw.bb170.i:                                       ; preds = %ath5k_get_interpolated_value.exit418.i
  %txp_pd_table.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.lcssa493.i)
  %cmp.i419.i = icmp ugt i8 %.lcssa493.i, 1
  br i1 %cmp.i419.i, label %if.then.i423.i, label %if.else33.i.i

if.then.i423.i:                                   ; preds = %sw.bb170.i
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %20, align 2
  %166 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %18, align 2
  %conv11.i.i = sext i16 %167 to i32
  %168 = xor i16 %167, -1
  %sub12.i420.i = add i16 %165, %168
  %169 = ptrtoint ptr %table_max.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %table_max.i, align 8
  %conv15.i421.i = sext i16 %170 to i32
  %171 = ptrtoint ptr %table_min.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %table_min.i, align 8
  %conv17.i.i = sext i16 %172 to i32
  %sub18.i422.i = sub nsw i32 %conv15.i421.i, %conv17.i.i
  %sub24.i.i = sub nsw i32 %conv15.i421.i, %conv11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %sub24.i.i)
  %cmp25.i.i = icmp sgt i32 %sub24.i.i, 126
  %sub30.i.i = add i16 %170, -126
  %min_pwr_idx.0.i.i = select i1 %cmp25.i.i, i16 %sub30.i.i, i16 %167
  %phi.bo157.i.i = sdiv i16 %sub12.i420.i, 2
  %phi.cast144.i.i = trunc i16 %phi.bo157.i.i to i8
  br label %if.end50.i.i

if.else33.i.i:                                    ; preds = %sw.bb170.i
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %table_min.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %table_min.i, align 8
  %175 = ptrtoint ptr %table_max.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %table_max.i, align 8
  %conv44.i.i = sext i16 %176 to i32
  %conv46.i.i = sext i16 %174 to i32
  %sub47.i.i = sub nsw i32 %conv44.i.i, %conv46.i.i
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.else33.i.i, %if.then.i423.i
  %max_pwr_idx.0.in.in.i.i = phi i32 [ %sub18.i422.i, %if.then.i423.i ], [ %sub47.i.i, %if.else33.i.i ]
  %min_pwr_idx.1.i.i = phi i16 [ %min_pwr_idx.0.i.i, %if.then.i423.i ], [ %174, %if.else33.i.i ]
  %mid_pwr_idx.0.i.i = phi i8 [ %phi.cast144.i.i, %if.then.i423.i ], [ 0, %if.else33.i.i ]
  %edge_flag.0.i.i = phi i8 [ 64, %if.then.i423.i ], [ 0, %if.else33.i.i ]
  %pcdac_low_pwr.0.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 0, i32 1
  %max_pwr_idx.0.in.i.i = sdiv i32 %max_pwr_idx.0.in.in.i.i, 2
  %177 = sdiv i16 %min_pwr_idx.1.i.i, 2
  %conv53.i.i = trunc i16 %177 to i8
  %txp_min_idx.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 4
  %178 = ptrtoint ptr %txp_min_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv53.i.i, ptr %txp_min_idx.i.i, align 8
  %conv55.i424.i = trunc i32 %max_pwr_idx.0.in.i.i to i8
  br label %for.body.i425.i

for.body.i425.i:                                  ; preds = %if.end90.i.i.for.body.i425.i_crit_edge, %if.end50.i.i
  %i.0163.i.i = phi i32 [ 63, %if.end50.i.i ], [ %dec105.i.i, %if.end90.i.i.for.body.i425.i_crit_edge ]
  %edge_flag.1162.i.i = phi i8 [ %edge_flag.0.i.i, %if.end50.i.i ], [ %edge_flag.2156.i.i, %if.end90.i.i.for.body.i425.i_crit_edge ]
  %pwr.0161.i.i = phi i8 [ %conv55.i424.i, %if.end50.i.i ], [ %dec104.i.i, %if.end90.i.i.for.body.i425.i_crit_edge ]
  %pcdac_tmp.1160.i.i = phi ptr [ %ah_txpower, %if.end50.i.i ], [ %pcdac_tmp.2154.i.i, %if.end90.i.i.for.body.i425.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %edge_flag.1162.i.i)
  %cmp59.i.i = icmp eq i8 %edge_flag.1162.i.i, 64
  br i1 %cmp59.i.i, label %land.lhs.true.i.i, label %for.body.i425.i.if.end76.i.i_crit_edge

for.body.i425.i.if.end76.i.i_crit_edge:           ; preds = %for.body.i425.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i425.i
  %conv61.i.i = zext i8 %pwr.0161.i.i to i32
  %mul.i426.i = shl nuw nsw i32 %conv61.i.i, 1
  %179 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %20, align 2
  %conv63.i.i = sext i16 %180 to i32
  %181 = ptrtoint ptr %table_min.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %table_min.i, align 8
  %conv65.i.i = sext i16 %182 to i32
  %sub66.i.i = sub nsw i32 %conv63.i.i, %conv65.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i426.i, i32 %sub66.i.i)
  %cmp67.not.i.i = icmp sle i32 %mul.i426.i, %sub66.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pwr.0161.i.i)
  %cmp70.i.i = icmp eq i8 %pwr.0161.i.i, 0
  %or.cond.i427.i = select i1 %cmp67.not.i.i, i1 true, i1 %cmp70.i.i
  br i1 %or.cond.i427.i, label %land.lhs.true.i.i.if.end76.i.i_crit_edge, label %if.end76.thread.i.i

land.lhs.true.i.i.if.end76.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i.i

if.end76.thread.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx77150.i.i = getelementptr i8, ptr %pcdac_tmp.1160.i.i, i32 %conv61.i.i
  %183 = ptrtoint ptr %arrayidx77150.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx77150.i.i, align 1
  br label %if.end90.i.i

if.end76.i.i:                                     ; preds = %land.lhs.true.i.i.if.end76.i.i_crit_edge, %for.body.i425.i.if.end76.i.i_crit_edge
  %pcdac_tmp.2.i.i = phi ptr [ %pcdac_tmp.1160.i.i, %for.body.i425.i.if.end76.i.i_crit_edge ], [ %pcdac_low_pwr.0.i.i, %land.lhs.true.i.i.if.end76.i.i_crit_edge ]
  %pwr.1.i.i = phi i8 [ %pwr.0161.i.i, %for.body.i425.i.if.end76.i.i_crit_edge ], [ %mid_pwr_idx.0.i.i, %land.lhs.true.i.i.if.end76.i.i_crit_edge ]
  %edge_flag.2.i.i = phi i8 [ %edge_flag.1162.i.i, %for.body.i425.i.if.end76.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.if.end76.i.i_crit_edge ]
  %idxprom.i428.i = zext i8 %pwr.1.i.i to i32
  %arrayidx77.i.i = getelementptr i8, ptr %pcdac_tmp.2.i.i, i32 %idxprom.i428.i
  %185 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx77.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %cmp79.i.i = icmp eq i8 %186, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %edge_flag.2.i.i)
  %cmp83.i.i = icmp eq i8 %edge_flag.2.i.i, 0
  %or.cond145.i.i = select i1 %cmp79.i.i, i1 %cmp83.i.i, i1 false
  br i1 %or.cond145.i.i, label %while.cond.preheader.i.i, label %if.end76.i.i.if.end90.i.i_crit_edge

if.end76.i.i.if.end90.i.i_crit_edge:              ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i.i

while.cond.preheader.i.i:                         ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0163.i.i)
  %cmp86165.i.i = icmp sgt i32 %i.0163.i.i, -1
  br i1 %cmp86165.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.ath5k_combine_linear_pcdac_curves.exit.i_crit_edge

while.cond.preheader.i.i.ath5k_combine_linear_pcdac_curves.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_combine_linear_pcdac_curves.exit.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %i.1166.i.i = phi i32 [ %dec.i430.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %i.0163.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %add.i429.i = add nuw nsw i32 %i.1166.i.i, 1
  %arrayidx88.i.i = getelementptr i8, ptr %txp_pd_table.i.i, i32 %add.i429.i
  %187 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx88.i.i, align 1
  %arrayidx89.i.i = getelementptr i8, ptr %txp_pd_table.i.i, i32 %i.1166.i.i
  %189 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %arrayidx89.i.i, align 1
  %dec.i430.i = add nsw i32 %i.1166.i.i, -1
  %cmp86.not.i.i = icmp eq i32 %i.1166.i.i, 0
  br i1 %cmp86.not.i.i, label %while.body.i.i.ath5k_combine_linear_pcdac_curves.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.ath5k_combine_linear_pcdac_curves.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_combine_linear_pcdac_curves.exit.i

if.end90.i.i:                                     ; preds = %if.end76.i.i.if.end90.i.i_crit_edge, %if.end76.thread.i.i
  %190 = phi i8 [ %184, %if.end76.thread.i.i ], [ %186, %if.end76.i.i.if.end90.i.i_crit_edge ]
  %edge_flag.2156.i.i = phi i8 [ 64, %if.end76.thread.i.i ], [ %edge_flag.2.i.i, %if.end76.i.i.if.end90.i.i_crit_edge ]
  %pwr.1155.i.i = phi i8 [ %pwr.0161.i.i, %if.end76.thread.i.i ], [ %pwr.1.i.i, %if.end76.i.i.if.end90.i.i_crit_edge ]
  %pcdac_tmp.2154.i.i = phi ptr [ %pcdac_tmp.1160.i.i, %if.end76.thread.i.i ], [ %pcdac_tmp.2.i.i, %if.end76.i.i.if.end90.i.i_crit_edge ]
  %or142.i.i = or i8 %edge_flag.2156.i.i, %190
  %arrayidx96.i.i = getelementptr i8, ptr %txp_pd_table.i.i, i32 %i.0163.i.i
  %191 = tail call i8 @llvm.umin.i8(i8 %or142.i.i, i8 126) #9
  %192 = ptrtoint ptr %arrayidx96.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %arrayidx96.i.i, align 1
  %dec104.i.i = add i8 %pwr.1155.i.i, -1
  %dec105.i.i = add nsw i32 %i.0163.i.i, -1
  %cmp56.not.i.i = icmp eq i32 %i.0163.i.i, 0
  br i1 %cmp56.not.i.i, label %if.end90.i.i.ath5k_combine_linear_pcdac_curves.exit.i_crit_edge, label %if.end90.i.i.for.body.i425.i_crit_edge

if.end90.i.i.for.body.i425.i_crit_edge:           ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i425.i

if.end90.i.i.ath5k_combine_linear_pcdac_curves.exit.i_crit_edge: ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_combine_linear_pcdac_curves.exit.i

ath5k_combine_linear_pcdac_curves.exit.i:         ; preds = %if.end90.i.i.ath5k_combine_linear_pcdac_curves.exit.i_crit_edge, %while.body.i.i.ath5k_combine_linear_pcdac_curves.exit.i_crit_edge, %while.cond.preheader.i.i.ath5k_combine_linear_pcdac_curves.exit.i_crit_edge
  %193 = ptrtoint ptr %table_max.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %table_max.i, align 8
  %.neg.i = sdiv i16 %194, -2
  %narrow.i = add nsw i16 %.neg.i, 64
  br label %ath5k_setup_channel_powertable.exit

sw.bb182.i:                                       ; preds = %ath5k_get_interpolated_value.exit418.i
  %txp_pd_table.i432.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 2
  %195 = ptrtoint ptr %table_min.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %table_min.i, align 8
  %197 = ptrtoint ptr %ah_txpower to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %ah_txpower, align 1
  %199 = ptrtoint ptr %table_max.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %table_max.i, align 8
  %conv.i433.i = sext i16 %200 to i32
  %conv8.i434.i = sext i16 %196 to i32
  %sub.i435.i = sub nsw i32 %conv.i433.i, %conv8.i434.i
  %arrayidx9.i.i = getelementptr i8, ptr %ah_txpower, i32 %sub.i435.i
  %201 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx9.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %cmp56.i.i = icmp sgt i16 %196, 0
  br i1 %cmp56.i.i, label %sw.bb182.i.for.body.i438.i_crit_edge, label %sw.bb182.i.for.end.i.i_crit_edge

sw.bb182.i.for.end.i.i_crit_edge:                 ; preds = %sw.bb182.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

sw.bb182.i.for.body.i438.i_crit_edge:             ; preds = %sw.bb182.i
  br label %for.body.i438.i

for.body.i438.i:                                  ; preds = %for.body.i438.i.for.body.i438.i_crit_edge, %sw.bb182.i.for.body.i438.i_crit_edge
  %i.058.i.i = phi i8 [ %inc14.i.i, %for.body.i438.i.for.body.i438.i_crit_edge ], [ 0, %sw.bb182.i.for.body.i438.i_crit_edge ]
  %inc14.i.i = add i8 %i.058.i.i, 1
  %idxprom.i436.i = zext i8 %i.058.i.i to i32
  %arrayidx13.i.i = getelementptr i8, ptr %txp_pd_table.i432.i, i32 %idxprom.i436.i
  %203 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %198, ptr %arrayidx13.i.i, align 1
  %conv10.i.i = zext i8 %inc14.i.i to i32
  %cmp.i437.i = icmp slt i32 %conv10.i.i, %conv8.i434.i
  br i1 %cmp.i437.i, label %for.body.i438.i.for.body.i438.i_crit_edge, label %for.body.i438.i.for.end.i.i_crit_edge

for.body.i438.i.for.end.i.i_crit_edge:            ; preds = %for.body.i438.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i438.i.for.body.i438.i_crit_edge:        ; preds = %for.body.i438.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i438.i

for.end.i.i:                                      ; preds = %for.body.i438.i.for.end.i.i_crit_edge, %sw.bb182.i.for.end.i.i_crit_edge
  %pcdac_i.0.lcssa.i.i = phi i8 [ 0, %sw.bb182.i.for.end.i.i_crit_edge ], [ %inc14.i.i, %for.body.i438.i.for.end.i.i_crit_edge ]
  %conv15.mask.i.i = and i16 %196, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %conv15.mask.i.i, i16 %200)
  %cmp19.not60.i.i = icmp sle i16 %conv15.mask.i.i, %200
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %pcdac_i.0.lcssa.i.i)
  %cmp2261.i.i = icmp ult i8 %pcdac_i.0.lcssa.i.i, 64
  %or.cond62.i.i = select i1 %cmp19.not60.i.i, i1 %cmp2261.i.i, i1 false
  br i1 %or.cond62.i.i, label %for.body24.preheader.i.i, label %for.end.i.i.while.cond.preheader.i440.i_crit_edge

for.end.i.i.while.cond.preheader.i440.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.i440.i

for.body24.preheader.i.i:                         ; preds = %for.end.i.i
  %conv15.i439.i = trunc i16 %196 to i8
  %204 = zext i8 %pcdac_i.0.lcssa.i.i to i32
  br label %for.body24.i.i

while.cond.preheader.loopexit.i.i:                ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %205 = trunc i32 %indvars.iv.next70.i.i to i8
  br label %while.cond.preheader.i440.i

while.cond.preheader.i440.i:                      ; preds = %while.cond.preheader.loopexit.i.i, %for.end.i.i.while.cond.preheader.i440.i_crit_edge
  %pcdac_i.1.lcssa.i.i = phi i8 [ %pcdac_i.0.lcssa.i.i, %for.end.i.i.while.cond.preheader.i440.i_crit_edge ], [ %205, %while.cond.preheader.loopexit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %pcdac_i.1.lcssa.i.i)
  %cmp3567.i.i = icmp ult i8 %pcdac_i.1.lcssa.i.i, 64
  br i1 %cmp3567.i.i, label %while.body.preheader.i.i, label %while.cond.preheader.i440.i.ath5k_fill_pwr_to_pcdac_table.exit.i_crit_edge

while.cond.preheader.i440.i.ath5k_fill_pwr_to_pcdac_table.exit.i_crit_edge: ; preds = %while.cond.preheader.i440.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_fill_pwr_to_pcdac_table.exit.i

while.body.preheader.i.i:                         ; preds = %while.cond.preheader.i440.i
  call void @__sanitizer_cov_trace_pc() #11
  %206 = zext i8 %pcdac_i.1.lcssa.i.i to i32
  %207 = add nuw nsw i32 %206, 28544
  %uglygep.i.i = getelementptr i8, ptr %ah, i32 %207
  %208 = sub nuw nsw i8 63, %pcdac_i.1.lcssa.i.i
  %209 = zext i8 %208 to i32
  %210 = add nuw nsw i32 %209, 1
  %211 = zext i8 %202 to i32
  %212 = call ptr @memset(ptr %uglygep.i.i, i32 %211, i32 %210)
  br label %ath5k_fill_pwr_to_pcdac_table.exit.i

for.body24.i.i:                                   ; preds = %for.body24.i.i.for.body24.i.i_crit_edge, %for.body24.preheader.i.i
  %indvars.iv69.i.i = phi i32 [ %204, %for.body24.preheader.i.i ], [ %indvars.iv.next70.i.i, %for.body24.i.i.for.body24.i.i_crit_edge ]
  %indvars.iv.i.i = phi i32 [ 0, %for.body24.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body24.i.i.for.body24.i.i_crit_edge ]
  %pwr_idx.064.i.i = phi i8 [ %conv15.i439.i, %for.body24.preheader.i.i ], [ %inc30.i.i, %for.body24.i.i.for.body24.i.i_crit_edge ]
  %arrayidx26.i.i = getelementptr i8, ptr %ah_txpower, i32 %indvars.iv.i.i
  %213 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx26.i.i, align 1
  %indvars.iv.next70.i.i = add nuw nsw i32 %indvars.iv69.i.i, 1
  %arrayidx29.i.i = getelementptr i8, ptr %txp_pd_table.i432.i, i32 %indvars.iv69.i.i
  %215 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %arrayidx29.i.i, align 1
  %inc30.i.i = add i8 %pwr_idx.064.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %conv17.i441.i = zext i8 %inc30.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17.i441.i, i32 %conv.i433.i)
  %cmp19.not.i.i = icmp sle i32 %conv17.i441.i, %conv.i433.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %indvars.iv69.i.i)
  %cmp22.i.i = icmp ult i32 %indvars.iv69.i.i, 63
  %or.cond.i442.i = select i1 %cmp19.not.i.i, i1 %cmp22.i.i, i1 false
  br i1 %or.cond.i442.i, label %for.body24.i.i.for.body24.i.i_crit_edge, label %while.cond.preheader.loopexit.i.i

for.body24.i.i.for.body24.i.i_crit_edge:          ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body24.i.i

ath5k_fill_pwr_to_pcdac_table.exit.i:             ; preds = %while.body.preheader.i.i, %while.cond.preheader.i440.i.ath5k_fill_pwr_to_pcdac_table.exit.i_crit_edge
  %txp_min_idx.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 4
  %216 = ptrtoint ptr %txp_min_idx.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %txp_min_idx.i, align 8
  br label %ath5k_setup_channel_powertable.exit

sw.bb188.i:                                       ; preds = %ath5k_get_interpolated_value.exit418.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gain_boundaries.i.i) #9
  %txp_pd_table.i444.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 2
  %iobase.i.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %217 = ptrtoint ptr %gain_boundaries.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 -1, ptr %gain_boundaries.i.i, align 4
  %218 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %219, i32 41580
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !110
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %222 = trunc i32 %221 to i8
  %conv2.i445.i = and i8 %222, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa493.i)
  %cmp369.not.i.i = icmp eq i8 %.lcssa493.i, 0
  br i1 %cmp369.not.i.i, label %sw.bb188.i.while.body213.preheader.i.i_crit_edge, label %for.body.lr.ph.i.i

sw.bb188.i.while.body213.preheader.i.i_crit_edge: ; preds = %sw.bb188.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body213.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb188.i
  %sub.i447.i = add nsw i32 %conv.le.i, -1
  %conv51.i.i = zext i8 %conv2.i445.i to i16
  %arrayidx13.i448.i = getelementptr i16, ptr %table_max.i, i32 %sub.i447.i
  br label %for.body.i450.i

while.cond209.preheader.i.i:                      ; preds = %for.inc.i467.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.lcssa493.i)
  %cmp211376.i.i = icmp ult i8 %.lcssa493.i, 4
  br i1 %cmp211376.i.i, label %while.cond209.preheader.i.i.while.body213.preheader.i.i_crit_edge, label %while.cond209.preheader.i.i.while.cond221.preheader.i.i_crit_edge

while.cond209.preheader.i.i.while.cond221.preheader.i.i_crit_edge: ; preds = %while.cond209.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond221.preheader.i.i

while.cond209.preheader.i.i.while.body213.preheader.i.i_crit_edge: ; preds = %while.cond209.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body213.preheader.i.i

while.body213.preheader.i.i:                      ; preds = %while.cond209.preheader.i.i.while.body213.preheader.i.i_crit_edge, %sw.bb188.i.while.body213.preheader.i.i_crit_edge
  %pdadc_i.0.lcssa398.i.i = phi i8 [ %pdadc_i.4.i.i, %while.cond209.preheader.i.i.while.body213.preheader.i.i_crit_edge ], [ 0, %sw.bb188.i.while.body213.preheader.i.i_crit_edge ]
  %223 = add nsw i32 %conv.le.i, -1
  %uglygep = getelementptr i8, ptr %gain_boundaries.i.i, i32 %223
  %224 = ptrtoint ptr %uglygep to i32
  call void @__asan_load1_noabort(i32 %224)
  %load_initial = load i8, ptr %uglygep, align 1
  br label %while.body213.i.i

for.body.i450.i:                                  ; preds = %for.inc.i467.i.for.body.i450.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv386.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next387.i.i, %for.inc.i467.i.for.body.i450.i_crit_edge ]
  %pdadc_i.0370.i.i = phi i8 [ 0, %for.body.lr.ph.i.i ], [ %pdadc_i.4.i.i, %for.inc.i467.i.for.body.i450.i_crit_edge ]
  %arrayidx.i449.i = getelementptr [4 x [64 x i8]], ptr %ah_txpower, i32 0, i32 %indvars.iv386.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i447.i, i32 %indvars.iv386.i.i)
  %cmp10.i.i = icmp eq i32 %sub.i447.i, %indvars.iv386.i.i
  br i1 %cmp10.i.i, label %if.then.i452.i, label %if.else.i.i

if.then.i452.i:                                   ; preds = %for.body.i450.i
  call void @__sanitizer_cov_trace_pc() #11
  %225 = ptrtoint ptr %arrayidx13.i448.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %arrayidx13.i448.i, align 2
  %conv14.i.i = trunc i16 %226 to i8
  %add.i451.i = add i8 %conv14.i.i, 4
  br label %if.end.i455.i

if.else.i.i:                                      ; preds = %for.body.i450.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx19.i.i = getelementptr i16, ptr %table_max.i, i32 %indvars.iv386.i.i
  %227 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %arrayidx19.i.i, align 2
  %conv20.i.i = sext i16 %228 to i32
  %add22.i.i = add nuw nsw i32 %indvars.iv386.i.i, 1
  %arrayidx23.i453.i = getelementptr i16, ptr %table_min.i, i32 %add22.i.i
  %229 = ptrtoint ptr %arrayidx23.i453.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %arrayidx23.i453.i, align 2
  %conv24.i.i = sext i16 %230 to i32
  %add25.i.i = add nsw i32 %conv24.i.i, %conv20.i.i
  %div.i454.i = sdiv i32 %add25.i.i, 2
  %conv26.i.i = trunc i32 %div.i454.i to i8
  br label %if.end.i455.i

if.end.i455.i:                                    ; preds = %if.else.i.i, %if.then.i452.i
  %conv26.sink.i.i = phi i8 [ %add.i451.i, %if.then.i452.i ], [ %conv26.i.i, %if.else.i.i ]
  %231 = getelementptr [4 x i8], ptr %gain_boundaries.i.i, i32 0, i32 %indvars.iv386.i.i
  %232 = tail call i8 @llvm.umin.i8(i8 %conv26.sink.i.i, i8 63) #9
  %233 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %231, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv386.i.i)
  %cmp39.i.i = icmp eq i32 %indvars.iv386.i.i, 0
  br i1 %cmp39.i.i, label %if.end.i455.i.while.end.i.i_crit_edge, label %if.end54.i.i

if.end.i455.i.while.end.i.i_crit_edge:            ; preds = %if.end.i455.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

if.end54.i.i:                                     ; preds = %if.end.i455.i
  %sub44.i.i = add nsw i32 %indvars.iv386.i.i, -1
  %arrayidx45.i456.i = getelementptr [4 x i8], ptr %gain_boundaries.i.i, i32 0, i32 %sub44.i.i
  %234 = ptrtoint ptr %arrayidx45.i456.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx45.i456.i, align 1
  %conv46.i457.i = zext i8 %235 to i16
  %arrayidx48.i458.i = getelementptr i16, ptr %table_min.i, i32 %indvars.iv386.i.i
  %236 = ptrtoint ptr %arrayidx48.i458.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %arrayidx48.i458.i, align 2
  %238 = add i16 %237, %conv51.i.i
  %sub52.i.i = sub i16 %conv46.i457.i, %238
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub52.i.i)
  %cmp72345.i.i = icmp slt i16 %sub52.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %pdadc_i.0370.i.i)
  %cmp75346.i.i = icmp sgt i8 %pdadc_i.0370.i.i, -1
  %or.cond341347.i.i = select i1 %cmp72345.i.i, i1 %cmp75346.i.i, i1 false
  br i1 %or.cond341347.i.i, label %while.body.lr.ph.i.i, label %if.end54.i.i.while.end.i.i_crit_edge

if.end54.i.i.while.end.i.i_crit_edge:             ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end54.i.i
  %arrayidx55.i.i = getelementptr i8, ptr %arrayidx.i449.i, i32 1
  %239 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx55.i.i, align 1
  %conv56.i.i = zext i8 %240 to i32
  %241 = ptrtoint ptr %arrayidx.i449.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx.i449.i, align 1
  %conv58.i.i = zext i8 %242 to i32
  %sub59.i.i = sub nsw i32 %conv56.i.i, %conv58.i.i
  %243 = tail call i32 @llvm.smax.i32(i32 %sub59.i.i, i32 1) #9
  %244 = zext i8 %pdadc_i.0370.i.i to i32
  %245 = zext i16 %sub52.i.i to i32
  br label %while.body.i462.i

while.body.i462.i:                                ; preds = %while.body.i462.i.while.body.i462.i_crit_edge, %while.body.lr.ph.i.i
  %indvars.iv380.i.i = phi i32 [ %245, %while.body.lr.ph.i.i ], [ %indvars.iv.next381.i.i, %while.body.i462.i.while.body.i462.i_crit_edge ]
  %indvars.iv.i459.i = phi i32 [ %244, %while.body.lr.ph.i.i ], [ %indvars.iv.next.i461.i, %while.body.i462.i.while.body.i462.i_crit_edge ]
  %pdadc_0.1348.i.i = phi i16 [ %sub52.i.i, %while.body.lr.ph.i.i ], [ %inc91.i.i, %while.body.i462.i.while.body.i462.i_crit_edge ]
  %246 = ptrtoint ptr %arrayidx.i449.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx.i449.i, align 1
  %conv78.i.i = zext i8 %247 to i32
  %mul.i460.i = mul nuw nsw i32 %indvars.iv380.i.i, %243
  %add81.i.i = add nuw nsw i32 %mul.i460.i, %conv78.i.i
  %sext337.mask.i.i = and i32 %add81.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext337.mask.i.i)
  %cmp84.not.i.i = icmp eq i32 %sext337.mask.i.i, 0
  %248 = trunc i32 %add81.i.i to i8
  %conv88.i.i = select i1 %cmp84.not.i.i, i8 %248, i8 0
  %indvars.iv.next.i461.i = add nuw nsw i32 %indvars.iv.i459.i, 1
  %arrayidx90.i.i = getelementptr i8, ptr %txp_pd_table.i444.i, i32 %indvars.iv.i459.i
  %249 = ptrtoint ptr %arrayidx90.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv88.i.i, ptr %arrayidx90.i.i, align 1
  %inc91.i.i = add nsw i16 %pdadc_0.1348.i.i, 1
  %250 = trunc i32 %indvars.iv380.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %250)
  %cmp72.i.i = icmp slt i16 %250, -1
  %251 = and i32 %indvars.iv.next.i461.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp75.i.i = icmp eq i32 %251, 0
  %or.cond341.i.i = select i1 %cmp72.i.i, i1 %cmp75.i.i, i1 false
  %indvars.iv.next381.i.i = add nuw nsw i32 %indvars.iv380.i.i, 1
  br i1 %or.cond341.i.i, label %while.body.i462.i.while.body.i462.i_crit_edge, label %while.end.loopexit.i.i

while.body.i462.i.while.body.i462.i_crit_edge:    ; preds = %while.body.i462.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i462.i

while.end.loopexit.i.i:                           ; preds = %while.body.i462.i
  call void @__sanitizer_cov_trace_pc() #11
  %252 = trunc i32 %indvars.iv.next.i461.i to i8
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.loopexit.i.i, %if.end54.i.i.while.end.i.i_crit_edge, %if.end.i455.i.while.end.i.i_crit_edge
  %pdadc_0.1.lcssa.i.i = phi i16 [ %sub52.i.i, %if.end54.i.i.while.end.i.i_crit_edge ], [ 0, %if.end.i455.i.while.end.i.i_crit_edge ], [ %inc91.i.i, %while.end.loopexit.i.i ]
  %pdadc_i.1.lcssa.i.i = phi i8 [ %pdadc_i.0370.i.i, %if.end54.i.i.while.end.i.i_crit_edge ], [ %pdadc_i.0370.i.i, %if.end.i455.i.while.end.i.i_crit_edge ], [ %252, %while.end.loopexit.i.i ]
  %narrow.i463.i = add nuw nsw i8 %232, %conv2.i445.i
  %add96.i.i = zext i8 %narrow.i463.i to i16
  %arrayidx98.i.i = getelementptr i16, ptr %table_min.i, i32 %indvars.iv386.i.i
  %253 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %arrayidx98.i.i, align 2
  %conv99.i.i = zext i16 %254 to i32
  %sub100.i.i = sub i16 %add96.i.i, %254
  %arrayidx103.i.i = getelementptr i16, ptr %table_max.i, i32 %indvars.iv386.i.i
  %255 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %arrayidx103.i.i, align 2
  %conv104.i.i = zext i16 %256 to i32
  %sub108.i.i = sub nsw i32 %conv104.i.i, %conv99.i.i
  %conv101.mask.i.i = and i16 %sub100.i.i, 255
  %conv110.i.i = zext i16 %conv101.mask.i.i to i32
  %conv111.i.i = and i32 %sub108.i.i, 255
  %257 = tail call i32 @llvm.umin.i32(i32 %conv111.i.i, i32 %conv110.i.i) #9
  %conv122352.i.i = sext i16 %pdadc_0.1.lcssa.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %conv122352.i.i)
  %cmp124353.i.i = icmp sgt i32 %257, %conv122352.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %pdadc_i.1.lcssa.i.i)
  %cmp128354.i.i = icmp sgt i8 %pdadc_i.1.lcssa.i.i, -1
  %or.cond355.i.i = select i1 %cmp124353.i.i, i1 %cmp128354.i.i, i1 false
  br i1 %or.cond355.i.i, label %while.body131.preheader.i.i, label %while.end.i.i.while.end138.i.i_crit_edge

while.end.i.i.while.end138.i.i_crit_edge:         ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end138.i.i

while.body131.preheader.i.i:                      ; preds = %while.end.i.i
  %258 = zext i8 %pdadc_i.1.lcssa.i.i to i32
  br label %while.body131.i.i

while.body131.i.i:                                ; preds = %while.body131.i.i.while.body131.i.i_crit_edge, %while.body131.preheader.i.i
  %indvars.iv382.i.i = phi i32 [ %258, %while.body131.preheader.i.i ], [ %indvars.iv.next383.i.i, %while.body131.i.i.while.body131.i.i_crit_edge ]
  %conv122358.i.i = phi i32 [ %conv122352.i.i, %while.body131.preheader.i.i ], [ %conv122.i.i, %while.body131.i.i.while.body131.i.i_crit_edge ]
  %pdadc_0.2356.i.i = phi i16 [ %pdadc_0.1.lcssa.i.i, %while.body131.preheader.i.i ], [ %inc132.i.i, %while.body131.i.i.while.body131.i.i_crit_edge ]
  %inc132.i.i = add i16 %pdadc_0.2356.i.i, 1
  %arrayidx134.i.i = getelementptr i8, ptr %arrayidx.i449.i, i32 %conv122358.i.i
  %259 = ptrtoint ptr %arrayidx134.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx134.i.i, align 1
  %indvars.iv.next383.i.i = add nuw i32 %indvars.iv382.i.i, 1
  %arrayidx137.i.i = getelementptr i8, ptr %txp_pd_table.i444.i, i32 %indvars.iv382.i.i
  %261 = ptrtoint ptr %arrayidx137.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %260, ptr %arrayidx137.i.i, align 1
  %conv122.i.i = sext i16 %inc132.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %conv122.i.i)
  %cmp124.i.i = icmp sgt i32 %257, %conv122.i.i
  %262 = and i32 %indvars.iv.next383.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %cmp128.i.i = icmp eq i32 %262, 0
  %or.cond.i464.i = select i1 %cmp124.i.i, i1 %cmp128.i.i, i1 false
  br i1 %or.cond.i464.i, label %while.body131.i.i.while.body131.i.i_crit_edge, label %while.end138.loopexit.i.i

while.body131.i.i.while.body131.i.i_crit_edge:    ; preds = %while.body131.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body131.i.i

while.end138.loopexit.i.i:                        ; preds = %while.body131.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %263 = trunc i32 %indvars.iv.next383.i.i to i8
  br label %while.end138.i.i

while.end138.i.i:                                 ; preds = %while.end138.loopexit.i.i, %while.end.i.i.while.end138.i.i_crit_edge
  %pdadc_0.2.lcssa.i.i = phi i16 [ %pdadc_0.1.lcssa.i.i, %while.end.i.i.while.end138.i.i_crit_edge ], [ %inc132.i.i, %while.end138.loopexit.i.i ]
  %pdadc_i.2.lcssa.i.i = phi i8 [ %pdadc_i.1.lcssa.i.i, %while.end.i.i.while.end138.i.i_crit_edge ], [ %263, %while.end138.loopexit.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %conv111.i.i, i32 %conv110.i.i)
  %cmp141.not.i.i = icmp ult i32 %conv111.i.i, %conv110.i.i
  br i1 %cmp141.not.i.i, label %if.end144.i.i, label %while.end138.i.i.for.inc.i467.i_crit_edge

while.end138.i.i.for.inc.i467.i_crit_edge:        ; preds = %while.end138.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i467.i

if.end144.i.i:                                    ; preds = %while.end138.i.i
  %sub146.i.i = add nsw i32 %conv111.i.i, -1
  %arrayidx147.i.i = getelementptr i8, ptr %arrayidx.i449.i, i32 %sub146.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %pdadc_0.2.lcssa.i.i, i16 %conv101.mask.i.i)
  %cmp173362.i.i = icmp slt i16 %pdadc_0.2.lcssa.i.i, %conv101.mask.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %pdadc_i.2.lcssa.i.i)
  %cmp177363.i.i = icmp sgt i8 %pdadc_i.2.lcssa.i.i, -1
  %or.cond342364.i.i = select i1 %cmp173362.i.i, i1 %cmp177363.i.i, i1 false
  br i1 %or.cond342364.i.i, label %while.body180.lr.ph.i.i, label %if.end144.i.i.for.inc.i467.i_crit_edge

if.end144.i.i.for.inc.i467.i_crit_edge:           ; preds = %if.end144.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i467.i

while.body180.lr.ph.i.i:                          ; preds = %if.end144.i.i
  %264 = ptrtoint ptr %arrayidx147.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx147.i.i, align 1
  %conv148.i.i = zext i8 %265 to i32
  %sub150.i.i = add nsw i32 %conv111.i.i, -2
  %arrayidx151.i.i = getelementptr i8, ptr %arrayidx.i449.i, i32 %sub150.i.i
  %266 = ptrtoint ptr %arrayidx151.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx151.i.i, align 1
  %conv152.i.i = zext i8 %267 to i32
  %sub153.i.i = sub nsw i32 %conv148.i.i, %conv152.i.i
  %268 = tail call i32 @llvm.smax.i32(i32 %sub153.i.i, i32 1) #9
  %269 = zext i8 %pdadc_i.2.lcssa.i.i to i32
  br label %while.body180.i.i

while.body180.i.i:                                ; preds = %while.body180.i.i.while.body180.i.i_crit_edge, %while.body180.lr.ph.i.i
  %indvars.iv384.i.i = phi i32 [ %269, %while.body180.lr.ph.i.i ], [ %indvars.iv.next385.i.i, %while.body180.i.i.while.body180.i.i_crit_edge ]
  %pdadc_0.3365.i.i = phi i16 [ %pdadc_0.2.lcssa.i.i, %while.body180.lr.ph.i.i ], [ %inc206.i.i, %while.body180.i.i.while.body180.i.i_crit_edge ]
  %conv170335367.i.i = zext i16 %pdadc_0.3365.i.i to i32
  %270 = ptrtoint ptr %arrayidx147.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx147.i.i, align 1
  %conv185.i.i = zext i8 %271 to i32
  %sub188.i.i = sub nsw i32 %conv170335367.i.i, %257
  %mul190.i.i = mul nsw i32 %sub188.i.i, %268
  %add191.i.i = add nsw i32 %mul190.i.i, %conv185.i.i
  %sext.i465.i = shl i32 %add191.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8323072, i32 %sext.i465.i)
  %cmp194.i.i = icmp sgt i32 %sext.i465.i, 8323072
  %272 = trunc i32 %add191.i.i to i8
  %conv202.i.i = select i1 %cmp194.i.i, i8 127, i8 %272
  %indvars.iv.next385.i.i = add nuw nsw i32 %indvars.iv384.i.i, 1
  %arrayidx205.i.i = getelementptr i8, ptr %txp_pd_table.i444.i, i32 %indvars.iv384.i.i
  %273 = ptrtoint ptr %arrayidx205.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %conv202.i.i, ptr %arrayidx205.i.i, align 1
  %inc206.i.i = add nsw i16 %pdadc_0.3365.i.i, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc206.i.i, i16 %conv101.mask.i.i)
  %cmp173.i.i = icmp slt i16 %inc206.i.i, %conv101.mask.i.i
  %274 = and i32 %indvars.iv.next385.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %cmp177.i.i = icmp eq i32 %274, 0
  %or.cond342.i.i = select i1 %cmp173.i.i, i1 %cmp177.i.i, i1 false
  br i1 %or.cond342.i.i, label %while.body180.i.i.while.body180.i.i_crit_edge, label %for.inc.loopexit.i.i

while.body180.i.i.while.body180.i.i_crit_edge:    ; preds = %while.body180.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body180.i.i

for.inc.loopexit.i.i:                             ; preds = %while.body180.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %275 = trunc i32 %indvars.iv.next385.i.i to i8
  br label %for.inc.i467.i

for.inc.i467.i:                                   ; preds = %for.inc.loopexit.i.i, %if.end144.i.i.for.inc.i467.i_crit_edge, %while.end138.i.i.for.inc.i467.i_crit_edge
  %pdadc_i.4.i.i = phi i8 [ %pdadc_i.2.lcssa.i.i, %while.end138.i.i.for.inc.i467.i_crit_edge ], [ %pdadc_i.2.lcssa.i.i, %if.end144.i.i.for.inc.i467.i_crit_edge ], [ %275, %for.inc.loopexit.i.i ]
  %indvars.iv.next387.i.i = add nuw nsw i32 %indvars.iv386.i.i, 1
  %exitcond.not.i466.i = icmp eq i32 %indvars.iv.next387.i.i, %conv.le.i
  br i1 %exitcond.not.i466.i, label %while.cond209.preheader.i.i, label %for.inc.i467.i.for.body.i450.i_crit_edge

for.inc.i467.i.for.body.i450.i_crit_edge:         ; preds = %for.inc.i467.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i450.i

while.cond221.preheader.i.i:                      ; preds = %while.body213.i.i.while.cond221.preheader.i.i_crit_edge, %while.cond209.preheader.i.i.while.cond221.preheader.i.i_crit_edge
  %pdadc_i.0.lcssa397.i.i = phi i8 [ %pdadc_i.4.i.i, %while.cond209.preheader.i.i.while.cond221.preheader.i.i_crit_edge ], [ %pdadc_i.0.lcssa398.i.i, %while.body213.i.i.while.cond221.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %pdadc_i.0.lcssa397.i.i)
  %cmp223378.i.i = icmp sgt i8 %pdadc_i.0.lcssa397.i.i, -1
  br i1 %cmp223378.i.i, label %while.body225.preheader.i.i, label %while.cond221.preheader.i.i.ath5k_combine_pwr_to_pdadc_curves.exit.i_crit_edge

while.cond221.preheader.i.i.ath5k_combine_pwr_to_pdadc_curves.exit.i_crit_edge: ; preds = %while.cond221.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_combine_pwr_to_pdadc_curves.exit.i

while.body225.preheader.i.i:                      ; preds = %while.cond221.preheader.i.i
  %276 = zext i8 %pdadc_i.0.lcssa397.i.i to i32
  br label %while.body225.i.i

while.body213.i.i:                                ; preds = %while.body213.i.i.while.body213.i.i_crit_edge, %while.body213.preheader.i.i
  %indvars.iv389.i.i = phi i32 [ %conv.le.i, %while.body213.preheader.i.i ], [ %indvars.iv.next390.i.i, %while.body213.i.i.while.body213.i.i_crit_edge ]
  %arrayidx218.i.i = getelementptr [4 x i8], ptr %gain_boundaries.i.i, i32 0, i32 %indvars.iv389.i.i
  %277 = ptrtoint ptr %arrayidx218.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %load_initial, ptr %arrayidx218.i.i, align 1
  %indvars.iv.next390.i.i = add nuw nsw i32 %indvars.iv389.i.i, 1
  %lftr.wideiv.i.i = trunc i32 %indvars.iv.next390.i.i to i8
  %exitcond391.not.i.i = icmp eq i8 %lftr.wideiv.i.i, 4
  br i1 %exitcond391.not.i.i, label %while.body213.i.i.while.cond221.preheader.i.i_crit_edge, label %while.body213.i.i.while.body213.i.i_crit_edge

while.body213.i.i.while.body213.i.i_crit_edge:    ; preds = %while.body213.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body213.i.i

while.body213.i.i.while.cond221.preheader.i.i_crit_edge: ; preds = %while.body213.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond221.preheader.i.i

while.body225.i.i:                                ; preds = %while.body225.i.i.while.body225.i.i_crit_edge, %while.body225.preheader.i.i
  %indvars.iv392.i.i = phi i32 [ %276, %while.body225.preheader.i.i ], [ %indvars.iv.next393.i.i, %while.body225.i.i.while.body225.i.i_crit_edge ]
  %sub227.i.i = add nsw i32 %indvars.iv392.i.i, -1
  %arrayidx228.i.i = getelementptr i8, ptr %txp_pd_table.i444.i, i32 %sub227.i.i
  %278 = ptrtoint ptr %arrayidx228.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx228.i.i, align 1
  %arrayidx230.i.i = getelementptr i8, ptr %txp_pd_table.i444.i, i32 %indvars.iv392.i.i
  %280 = ptrtoint ptr %arrayidx230.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %arrayidx230.i.i, align 1
  %indvars.iv.next393.i.i = add nuw i32 %indvars.iv392.i.i, 1
  %281 = and i32 %indvars.iv.next393.i.i, 128
  %cmp223.i.i = icmp eq i32 %281, 0
  br i1 %cmp223.i.i, label %while.body225.i.i.while.body225.i.i_crit_edge, label %while.body225.i.i.ath5k_combine_pwr_to_pdadc_curves.exit.i_crit_edge

while.body225.i.i.ath5k_combine_pwr_to_pdadc_curves.exit.i_crit_edge: ; preds = %while.body225.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_combine_pwr_to_pdadc_curves.exit.i

while.body225.i.i.while.body225.i.i_crit_edge:    ; preds = %while.body225.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body225.i.i

ath5k_combine_pwr_to_pdadc_curves.exit.i:         ; preds = %while.body225.i.i.ath5k_combine_pwr_to_pdadc_curves.exit.i_crit_edge, %while.cond221.preheader.i.i.ath5k_combine_pwr_to_pdadc_curves.exit.i_crit_edge
  %282 = getelementptr inbounds [4 x i8], ptr %gain_boundaries.i.i, i32 0, i32 3
  %283 = getelementptr inbounds [4 x i8], ptr %gain_boundaries.i.i, i32 0, i32 2
  %284 = getelementptr inbounds [4 x i8], ptr %gain_boundaries.i.i, i32 0, i32 1
  %and234.i.i = and i32 %221, 15
  %285 = ptrtoint ptr %gain_boundaries.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %gain_boundaries.i.i, align 4
  %conv236.i.i = zext i8 %286 to i32
  %shl237.i.i = shl nuw nsw i32 %conv236.i.i, 4
  %and238.i.i = and i32 %shl237.i.i, 1008
  %or.i.i = or i32 %and238.i.i, %and234.i.i
  %287 = ptrtoint ptr %284 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %284, align 1
  %conv240.i.i = zext i8 %288 to i32
  %shl241.i.i = shl nuw nsw i32 %conv240.i.i, 10
  %and242.i.i = and i32 %shl241.i.i, 64512
  %or243.i.i = or i32 %or.i.i, %and242.i.i
  %289 = ptrtoint ptr %283 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %283, align 2
  %conv245.i.i = zext i8 %290 to i32
  %shl246.i.i = shl nuw nsw i32 %conv245.i.i, 16
  %and247.i.i = and i32 %shl246.i.i, 4128768
  %or248.i.i = or i32 %or243.i.i, %and247.i.i
  %291 = ptrtoint ptr %282 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %282, align 1
  %conv250.i.i = zext i8 %292 to i32
  %shl251.i.i = shl nuw nsw i32 %conv250.i.i, 22
  %and252.i.i = and i32 %shl251.i.i, 264241152
  %or253.i.i = or i32 %or248.i.i, %and252.i.i
  %293 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i340.i.i = getelementptr i8, ptr %294, i32 41580
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %295 = tail call i32 @llvm.bswap.i32(i32 %or253.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i340.i.i, i32 %295) #9, !srcloc !108
  %296 = ptrtoint ptr %table_min.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %table_min.i, align 8
  %conv255.i.i = trunc i16 %297 to i8
  %txp_min_idx.i468.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 4
  %298 = ptrtoint ptr %txp_min_idx.i468.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %conv255.i.i, ptr %txp_min_idx.i468.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gain_boundaries.i.i) #9
  br label %ath5k_setup_channel_powertable.exit

ath5k_setup_channel_powertable.exit.thread:       ; preds = %ath5k_get_interpolated_value.exit418.i.ath5k_setup_channel_powertable.exit.thread_crit_edge, %for.body.i.ath5k_setup_channel_powertable.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %table_max.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %table_min.i) #9
  br label %cleanup150

ath5k_setup_channel_powertable.exit:              ; preds = %ath5k_combine_pwr_to_pdadc_curves.exit.i, %ath5k_fill_pwr_to_pcdac_table.exit.i, %ath5k_combine_linear_pcdac_curves.exit.i
  %.sink.i = phi i16 [ %297, %ath5k_combine_pwr_to_pdadc_curves.exit.i ], [ 0, %ath5k_fill_pwr_to_pcdac_table.exit.i ], [ %narrow.i, %ath5k_combine_linear_pcdac_curves.exit.i ]
  %txp_offset196.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 9
  %299 = ptrtoint ptr %txp_offset196.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 %.sink.i, ptr %txp_offset196.i, align 8
  %300 = ptrtoint ptr %txp_setup to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 1, ptr %txp_setup, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %table_max.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %table_min.i) #9
  br label %if.end30

if.end30:                                         ; preds = %ath5k_setup_channel_powertable.exit, %lor.lhs.false15.if.end30_crit_edge
  %conv31 = trunc i32 %call5 to i8
  %txp_pd_table.i.i205 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 2
  br i1 %cmp.i204, label %if.then.i212, label %if.else.i

if.then.i212:                                     ; preds = %if.end30
  %idxprom.i.i206 = and i32 %call5, 255
  %arrayidx.i.i207 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 44, i32 %idxprom.i.i206
  %arrayidx3.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 43, i32 %idxprom.i.i206
  %301 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx3.i.i, align 1
  %iobase.i.i.i208 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %303 = ptrtoint ptr %iobase.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %iobase.i.i.i208, align 4
  %add.ptr.i.i.i209 = getelementptr i8, ptr %304, i32 41560
  %305 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i209) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %306 = and i32 %305, -12599041
  %307 = tail call i32 @llvm.bswap.i32(i32 %306) #9
  %conv.i.i210 = zext i8 %302 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i210, 14
  %and4.i.i = and i32 %shl.i.i, 49152
  %or.i.i211 = or i32 %307, %and4.i.i
  %308 = zext i8 %302 to i64
  call void @__sanitizer_cov_trace_switch(i64 %308, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %302, label %if.then.i212.sw.epilog.i.i216_crit_edge [
    i8 3, label %sw.bb.i.i214
    i8 2, label %if.then.i212.sw.bb11.i.i_crit_edge
    i8 1, label %if.then.i212.sw.bb17.i.i_crit_edge
  ]

if.then.i212.sw.bb17.i.i_crit_edge:               ; preds = %if.then.i212
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i.i

if.then.i212.sw.bb11.i.i_crit_edge:               ; preds = %if.then.i212
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i.i

if.then.i212.sw.epilog.i.i216_crit_edge:          ; preds = %if.then.i212
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i216

sw.bb.i.i214:                                     ; preds = %if.then.i212
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx6.i.i213 = getelementptr i8, ptr %arrayidx.i.i207, i32 2
  %309 = ptrtoint ptr %arrayidx6.i.i213 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx6.i.i213, align 1
  %conv7.i.i = zext i8 %310 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 20
  %and9.i.i = and i32 %shl8.i.i, 3145728
  %or10.i.i = or i32 %and9.i.i, %or.i.i211
  br label %sw.bb11.i.i

sw.bb11.i.i:                                      ; preds = %sw.bb.i.i214, %if.then.i212.sw.bb11.i.i_crit_edge
  %reg.0.i.i = phi i32 [ %or.i.i211, %if.then.i212.sw.bb11.i.i_crit_edge ], [ %or10.i.i, %sw.bb.i.i214 ]
  %arrayidx12.i.i = getelementptr i8, ptr %arrayidx.i.i207, i32 1
  %311 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx12.i.i, align 1
  %conv13.i.i215 = zext i8 %312 to i32
  %shl14.i.i = shl nuw nsw i32 %conv13.i.i215, 18
  %and15.i.i = and i32 %shl14.i.i, 786432
  %or16.i.i = or i32 %and15.i.i, %reg.0.i.i
  br label %sw.bb17.i.i

sw.bb17.i.i:                                      ; preds = %sw.bb11.i.i, %if.then.i212.sw.bb17.i.i_crit_edge
  %reg.1.i.i = phi i32 [ %or.i.i211, %if.then.i212.sw.bb17.i.i_crit_edge ], [ %or16.i.i, %sw.bb11.i.i ]
  %313 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx.i.i207, align 1
  %conv19.i.i = zext i8 %314 to i32
  %shl20.i.i = shl nuw nsw i32 %conv19.i.i, 16
  %and21.i.i = and i32 %shl20.i.i, 196608
  %or22.i.i = or i32 %and21.i.i, %reg.1.i.i
  br label %sw.epilog.i.i216

sw.epilog.i.i216:                                 ; preds = %sw.bb17.i.i, %if.then.i212.sw.epilog.i.i216_crit_edge
  %reg.2.i.i = phi i32 [ %or.i.i211, %if.then.i212.sw.epilog.i.i216_crit_edge ], [ %or22.i.i, %sw.bb17.i.i ]
  %315 = ptrtoint ptr %iobase.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %iobase.i.i.i208, align 4
  %add.ptr.i49.i.i = getelementptr i8, ptr %316, i32 41560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %317 = tail call i32 @llvm.bswap.i32(i32 %reg.2.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i.i, i32 %317) #9, !srcloc !108
  br label %for.body.i.i222

for.body.i.i222:                                  ; preds = %for.body.i.i222.for.body.i.i222_crit_edge, %sw.epilog.i.i216
  %indvars.iv.i.i217 = phi i32 [ 0, %sw.epilog.i.i216 ], [ %indvars.iv.next.i.i220, %for.body.i.i222.for.body.i.i222_crit_edge ]
  %mul.i.i218 = shl nuw nsw i32 %indvars.iv.i.i217, 2
  %arrayidx26.i.i219 = getelementptr i8, ptr %txp_pd_table.i.i205, i32 %mul.i.i218
  %318 = ptrtoint ptr %arrayidx26.i.i219 to i32
  call void @__asan_loadN_noabort(i32 %318, i32 4)
  %319 = load i32, ptr %arrayidx26.i.i219, align 1
  %conv30.i.i = add nuw nsw i32 %mul.i.i218, 41600
  %320 = ptrtoint ptr %iobase.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %iobase.i.i.i208, align 4
  %add.ptr.i51.i.i = getelementptr i8, ptr %321, i32 %conv30.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i.i, i32 %319) #9, !srcloc !108
  %indvars.iv.next.i.i220 = add nuw nsw i32 %indvars.iv.i.i217, 1
  %exitcond.not.i.i221 = icmp eq i32 %indvars.iv.next.i.i220, 32
  br i1 %exitcond.not.i.i221, label %for.body.i.i222.ath5k_write_channel_powertable.exit_crit_edge, label %for.body.i.i222.for.body.i.i222_crit_edge

for.body.i.i222.for.body.i.i222_crit_edge:        ; preds = %for.body.i.i222
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i222

for.body.i.i222.ath5k_write_channel_powertable.exit_crit_edge: ; preds = %for.body.i.i222
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_write_channel_powertable.exit

if.else.i:                                        ; preds = %if.end30
  %iobase.i.i4.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  br label %for.body.i13.i

for.body.i13.i:                                   ; preds = %for.body.i13.i.for.body.i13.i_crit_edge, %if.else.i
  %i.020.i.i = phi i32 [ 0, %if.else.i ], [ %inc.i.i223, %for.body.i13.i.for.body.i13.i_crit_edge ]
  %mul.i5.i = shl nuw i32 %i.020.i.i, 1
  %arrayidx.i6.i = getelementptr i8, ptr %txp_pd_table.i.i205, i32 %mul.i5.i
  %322 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx.i6.i, align 1
  %conv.i7.i = zext i8 %323 to i32
  %shl.i8.i = shl nuw nsw i32 %conv.i7.i, 8
  %add3.i.i = or i32 %mul.i5.i, 1
  %arrayidx4.i.i = getelementptr i8, ptr %txp_pd_table.i.i205, i32 %add3.i.i
  %324 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %325 to i32
  %shl6.i.i = shl nuw i32 %conv5.i.i, 24
  %or7.i.i = or i32 %shl.i8.i, %shl6.i.i
  %or10.i9.i = or i32 %or7.i.i, 16711935
  %326 = shl i32 %i.020.i.i, 2
  %conv13.i10.i = add nuw nsw i32 %326, 41344
  %327 = ptrtoint ptr %iobase.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %iobase.i.i4.i, align 4
  %add.ptr.i.i11.i = getelementptr i8, ptr %328, i32 %conv13.i10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %329 = tail call i32 @llvm.bswap.i32(i32 %or10.i9.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11.i, i32 %329) #9, !srcloc !108
  %inc.i.i223 = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i12.i = icmp eq i32 %inc.i.i223, 32
  br i1 %exitcond.not.i12.i, label %for.body.i13.i.ath5k_write_channel_powertable.exit_crit_edge, label %for.body.i13.i.for.body.i13.i_crit_edge

for.body.i13.i.for.body.i13.i_crit_edge:          ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i13.i

for.body.i13.i.ath5k_write_channel_powertable.exit_crit_edge: ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_write_channel_powertable.exit

ath5k_write_channel_powertable.exit:              ; preds = %for.body.i13.i.ath5k_write_channel_powertable.exit_crit_edge, %for.body.i.i222.ath5k_write_channel_powertable.exit_crit_edge
  %regulatory.i.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 22
  %ee_ctl_pwr.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 55
  %ee_ctl.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 54
  %txp_max_pwr.i224 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 7
  %330 = ptrtoint ptr %txp_max_pwr.i224 to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %txp_max_pwr.i224, align 4
  %332 = sdiv i16 %331, 4
  %center_freq.i225 = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %333 = ptrtoint ptr %center_freq.i225 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %center_freq.i225, align 4
  %335 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %channel, align 4
  %call3.i = tail call i32 @ath_regd_get_band_ctl(ptr noundef %regulatory.i.i, i32 noundef %336) #9
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %337 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %hw_value.i, align 2
  %339 = zext i16 %338 to i64
  call void @__sanitizer_cov_trace_switch(i64 %339, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %338, label %ath5k_write_channel_powertable.exit.ath5k_get_max_ctl_power.exit_crit_edge [
    i16 0, label %sw.bb.i227
    i16 2, label %sw.bb13.i
    i16 1, label %sw.bb27.i
  ]

ath5k_write_channel_powertable.exit.ath5k_get_max_ctl_power.exit_crit_edge: ; preds = %ath5k_write_channel_powertable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_max_ctl_power.exit

sw.bb.i227:                                       ; preds = %ath5k_write_channel_powertable.exit
  %ah_bwmode.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %340 = ptrtoint ptr %ah_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %ah_bwmode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %341)
  %cmp.i226 = icmp eq i8 %341, 3
  br i1 %cmp.i226, label %if.then.i228, label %sw.bb.i227.sw.epilog.i_crit_edge

sw.bb.i227.sw.epilog.i_crit_edge:                 ; preds = %sw.bb.i227
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then.i228:                                     ; preds = %sw.bb.i227
  call void @__sanitizer_cov_trace_pc() #11
  %conv8.i = and i32 %call3.i, 252
  %or.i = or i32 %conv8.i, 3
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %ath5k_write_channel_powertable.exit
  %ah_bwmode14.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %342 = ptrtoint ptr %ah_bwmode14.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %ah_bwmode14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %343)
  %cmp16.i = icmp eq i8 %343, 3
  br i1 %cmp16.i, label %if.then18.i, label %if.else22.i

if.then18.i:                                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv19.i = and i32 %call3.i, 251
  %or20.i = or i32 %conv19.i, 4
  br label %sw.epilog.i

if.else22.i:                                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv23.i = and i32 %call3.i, 253
  %or24.i = or i32 %conv23.i, 2
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %ath5k_write_channel_powertable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv30.i = or i32 %call3.i, 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb27.i, %if.else22.i, %if.then18.i, %if.then.i228, %sw.bb.i227.sw.epilog.i_crit_edge
  %ctl_mode.0.i = phi i32 [ %conv30.i, %sw.bb27.i ], [ %or20.i, %if.then18.i ], [ %or24.i, %if.else22.i ], [ %or.i, %if.then.i228 ], [ %call3.i, %sw.bb.i227.sw.epilog.i_crit_edge ]
  %ee_ctls.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 53
  %344 = ptrtoint ptr %ee_ctls.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %ee_ctls.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %345)
  %cmp33120.not.i = icmp eq i8 %345, 0
  br i1 %cmp33120.not.i, label %sw.epilog.i.ath5k_get_max_ctl_power.exitthread-pre-split_crit_edge, label %for.body.lr.ph.i229

sw.epilog.i.ath5k_get_max_ctl_power.exitthread-pre-split_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_max_ctl_power.exitthread-pre-split

for.body.lr.ph.i229:                              ; preds = %sw.epilog.i
  %346 = trunc i32 %ctl_mode.0.i to i8
  %wide.trip.count = zext i8 %345 to i32
  br label %for.body.i231

for.body.i231:                                    ; preds = %for.inc.i.for.body.i231_crit_edge, %for.body.lr.ph.i229
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.i.for.body.i231_crit_edge ], [ 0, %for.body.lr.ph.i229 ]
  %arrayidx.i230 = getelementptr i8, ptr %ee_ctl.i, i32 %indvars.iv
  %347 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %arrayidx.i230, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %348, i8 %346)
  %cmp37.i = icmp eq i8 %348, %346
  br i1 %cmp37.i, label %if.end45.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i231
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.i.ath5k_get_max_ctl_power.exitthread-pre-split_crit_edge, label %for.inc.i.for.body.i231_crit_edge

for.inc.i.for.body.i231_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i231

for.inc.i.ath5k_get_max_ctl_power.exitthread-pre-split_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_max_ctl_power.exitthread-pre-split

if.end45.i:                                       ; preds = %for.body.i231
  %349 = trunc i32 %indvars.iv to i8
  %mul.i = shl i8 %349, 3
  %idxprom56.i = zext i8 %mul.i to i32
  %arrayidx57.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.i
  %350 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %arrayidx57.i, align 2
  %conv58.i = zext i16 %351 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %conv58.i)
  %cmp59.not.i = icmp ugt i32 %334, %conv58.i
  br i1 %cmp59.not.i, label %if.end45.i.for.inc65.i_crit_edge, label %if.then61.i

if.end45.i.for.inc65.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.i

if.then61.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %edge.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.i, i32 1
  %352 = ptrtoint ptr %edge.i to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %edge.i, align 2
  br label %for.inc65.i

for.inc65.i:                                      ; preds = %if.then61.i, %if.end45.i.for.inc65.i_crit_edge
  %edge_pwr.1.i = phi i16 [ %353, %if.then61.i ], [ 0, %if.end45.i.for.inc65.i_crit_edge ]
  %add.1.i = or i8 %mul.i, 1
  %idxprom56.1.i = zext i8 %add.1.i to i32
  %arrayidx57.1.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.1.i
  %354 = ptrtoint ptr %arrayidx57.1.i to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %arrayidx57.1.i, align 2
  %conv58.1.i = zext i16 %355 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %conv58.1.i)
  %cmp59.not.1.i = icmp ugt i32 %334, %conv58.1.i
  br i1 %cmp59.not.1.i, label %for.inc65.i.for.inc65.1.i_crit_edge, label %if.then61.1.i

for.inc65.i.for.inc65.1.i_crit_edge:              ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.1.i

if.then61.1.i:                                    ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #11
  %edge.1.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.1.i, i32 1
  %356 = ptrtoint ptr %edge.1.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %edge.1.i, align 2
  br label %for.inc65.1.i

for.inc65.1.i:                                    ; preds = %if.then61.1.i, %for.inc65.i.for.inc65.1.i_crit_edge
  %edge_pwr.1.1.i = phi i16 [ %357, %if.then61.1.i ], [ %edge_pwr.1.i, %for.inc65.i.for.inc65.1.i_crit_edge ]
  %add.2.i = or i8 %mul.i, 3
  %idxprom56.2.i = zext i8 %add.2.i to i32
  %arrayidx57.2.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.2.i
  %358 = ptrtoint ptr %arrayidx57.2.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %arrayidx57.2.i, align 2
  %conv58.2.i = zext i16 %359 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %conv58.2.i)
  %cmp59.not.2.i = icmp ugt i32 %334, %conv58.2.i
  br i1 %cmp59.not.2.i, label %for.inc65.1.i.for.inc65.2.i_crit_edge, label %if.then61.2.i

for.inc65.1.i.for.inc65.2.i_crit_edge:            ; preds = %for.inc65.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.2.i

if.then61.2.i:                                    ; preds = %for.inc65.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %edge.2.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.2.i, i32 1
  %360 = ptrtoint ptr %edge.2.i to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %edge.2.i, align 2
  br label %for.inc65.2.i

for.inc65.2.i:                                    ; preds = %if.then61.2.i, %for.inc65.1.i.for.inc65.2.i_crit_edge
  %edge_pwr.1.2.i = phi i16 [ %361, %if.then61.2.i ], [ %edge_pwr.1.1.i, %for.inc65.1.i.for.inc65.2.i_crit_edge ]
  %add.3.i = or i8 %mul.i, 6
  %idxprom56.3.i = zext i8 %add.3.i to i32
  %arrayidx57.3.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.3.i
  %362 = ptrtoint ptr %arrayidx57.3.i to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %arrayidx57.3.i, align 2
  %conv58.3.i = zext i16 %363 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %conv58.3.i)
  %cmp59.not.3.i = icmp ugt i32 %334, %conv58.3.i
  br i1 %cmp59.not.3.i, label %for.inc65.2.i.for.inc65.3.i_crit_edge, label %if.then61.3.i

for.inc65.2.i.for.inc65.3.i_crit_edge:            ; preds = %for.inc65.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.3.i

if.then61.3.i:                                    ; preds = %for.inc65.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %edge.3.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.3.i, i32 1
  %364 = ptrtoint ptr %edge.3.i to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %edge.3.i, align 2
  br label %for.inc65.3.i

for.inc65.3.i:                                    ; preds = %if.then61.3.i, %for.inc65.2.i.for.inc65.3.i_crit_edge
  %edge_pwr.1.3.i = phi i16 [ %365, %if.then61.3.i ], [ %edge_pwr.1.2.i, %for.inc65.2.i.for.inc65.3.i_crit_edge ]
  %add.4.i = add i8 %mul.i, 10
  %idxprom56.4.i = zext i8 %add.4.i to i32
  %arrayidx57.4.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.4.i
  %366 = ptrtoint ptr %arrayidx57.4.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %arrayidx57.4.i, align 2
  %conv58.4.i = zext i16 %367 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %conv58.4.i)
  %cmp59.not.4.i = icmp ugt i32 %334, %conv58.4.i
  br i1 %cmp59.not.4.i, label %for.inc65.3.i.for.inc65.4.i_crit_edge, label %if.then61.4.i

for.inc65.3.i.for.inc65.4.i_crit_edge:            ; preds = %for.inc65.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.4.i

if.then61.4.i:                                    ; preds = %for.inc65.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %edge.4.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.4.i, i32 1
  %368 = ptrtoint ptr %edge.4.i to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %edge.4.i, align 2
  br label %for.inc65.4.i

for.inc65.4.i:                                    ; preds = %if.then61.4.i, %for.inc65.3.i.for.inc65.4.i_crit_edge
  %edge_pwr.1.4.i = phi i16 [ %369, %if.then61.4.i ], [ %edge_pwr.1.3.i, %for.inc65.3.i.for.inc65.4.i_crit_edge ]
  %add.5.i = add i8 %mul.i, 15
  %idxprom56.5.i = zext i8 %add.5.i to i32
  %arrayidx57.5.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.5.i
  %370 = ptrtoint ptr %arrayidx57.5.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %arrayidx57.5.i, align 2
  %conv58.5.i = zext i16 %371 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %conv58.5.i)
  %cmp59.not.5.i = icmp ugt i32 %334, %conv58.5.i
  br i1 %cmp59.not.5.i, label %for.inc65.4.i.for.inc65.5.i_crit_edge, label %if.then61.5.i

for.inc65.4.i.for.inc65.5.i_crit_edge:            ; preds = %for.inc65.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.5.i

if.then61.5.i:                                    ; preds = %for.inc65.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %edge.5.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.5.i, i32 1
  %372 = ptrtoint ptr %edge.5.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %edge.5.i, align 2
  br label %for.inc65.5.i

for.inc65.5.i:                                    ; preds = %if.then61.5.i, %for.inc65.4.i.for.inc65.5.i_crit_edge
  %edge_pwr.1.5.i = phi i16 [ %373, %if.then61.5.i ], [ %edge_pwr.1.4.i, %for.inc65.4.i.for.inc65.5.i_crit_edge ]
  %add.6.i = add i8 %mul.i, 21
  %idxprom56.6.i = zext i8 %add.6.i to i32
  %arrayidx57.6.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.6.i
  %374 = ptrtoint ptr %arrayidx57.6.i to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %arrayidx57.6.i, align 2
  %conv58.6.i = zext i16 %375 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %conv58.6.i)
  %cmp59.not.6.i = icmp ugt i32 %334, %conv58.6.i
  br i1 %cmp59.not.6.i, label %for.inc65.5.i.for.inc65.6.i_crit_edge, label %if.then61.6.i

for.inc65.5.i.for.inc65.6.i_crit_edge:            ; preds = %for.inc65.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.6.i

if.then61.6.i:                                    ; preds = %for.inc65.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %edge.6.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.6.i, i32 1
  %376 = ptrtoint ptr %edge.6.i to i32
  call void @__asan_load2_noabort(i32 %376)
  %377 = load i16, ptr %edge.6.i, align 2
  br label %for.inc65.6.i

for.inc65.6.i:                                    ; preds = %if.then61.6.i, %for.inc65.5.i.for.inc65.6.i_crit_edge
  %edge_pwr.1.6.i = phi i16 [ %377, %if.then61.6.i ], [ %edge_pwr.1.5.i, %for.inc65.5.i.for.inc65.6.i_crit_edge ]
  %add.7.i = add i8 %mul.i, 28
  %idxprom56.7.i = zext i8 %add.7.i to i32
  %arrayidx57.7.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.7.i
  %378 = ptrtoint ptr %arrayidx57.7.i to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %arrayidx57.7.i, align 2
  %conv58.7.i = zext i16 %379 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %conv58.7.i)
  %cmp59.not.7.i = icmp ugt i32 %334, %conv58.7.i
  br i1 %cmp59.not.7.i, label %for.inc65.6.i.for.inc65.7.i_crit_edge, label %if.then61.7.i

for.inc65.6.i.for.inc65.7.i_crit_edge:            ; preds = %for.inc65.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.7.i

if.then61.7.i:                                    ; preds = %for.inc65.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %edge.7.i = getelementptr %struct.ath5k_edge_power, ptr %ee_ctl_pwr.i, i32 %idxprom56.7.i, i32 1
  %380 = ptrtoint ptr %edge.7.i to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %edge.7.i, align 2
  br label %for.inc65.7.i

for.inc65.7.i:                                    ; preds = %if.then61.7.i, %for.inc65.6.i.for.inc65.7.i_crit_edge
  %edge_pwr.1.7.i = phi i16 [ %381, %if.then61.7.i ], [ %edge_pwr.1.6.i, %for.inc65.6.i.for.inc65.7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %edge_pwr.1.7.i)
  %tobool.not.i = icmp eq i16 %edge_pwr.1.7.i, 0
  br i1 %tobool.not.i, label %for.inc65.7.i.ath5k_get_max_ctl_power.exitthread-pre-split_crit_edge, label %if.then68.i

for.inc65.7.i.ath5k_get_max_ctl_power.exitthread-pre-split_crit_edge: ; preds = %for.inc65.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_max_ctl_power.exitthread-pre-split

if.then68.i:                                      ; preds = %for.inc65.7.i
  call void @__sanitizer_cov_trace_pc() #11
  %382 = tail call i16 @llvm.smin.i16(i16 %edge_pwr.1.7.i, i16 %332) #9
  %mul75.i = shl i16 %382, 2
  %383 = ptrtoint ptr %txp_max_pwr.i224 to i32
  call void @__asan_store2_noabort(i32 %383)
  store i16 %mul75.i, ptr %txp_max_pwr.i224, align 4
  br label %ath5k_get_max_ctl_power.exitthread-pre-split

ath5k_get_max_ctl_power.exitthread-pre-split:     ; preds = %if.then68.i, %for.inc65.7.i.ath5k_get_max_ctl_power.exitthread-pre-split_crit_edge, %for.inc.i.ath5k_get_max_ctl_power.exitthread-pre-split_crit_edge, %sw.epilog.i.ath5k_get_max_ctl_power.exitthread-pre-split_crit_edge
  %384 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %.pr = load i16, ptr %hw_value.i, align 2
  br label %ath5k_get_max_ctl_power.exit

ath5k_get_max_ctl_power.exit:                     ; preds = %ath5k_get_max_ctl_power.exitthread-pre-split, %ath5k_write_channel_powertable.exit.ath5k_get_max_ctl_power.exit_crit_edge
  %385 = phi i16 [ %.pr, %ath5k_get_max_ctl_power.exitthread-pre-split ], [ %338, %ath5k_write_channel_powertable.exit.ath5k_get_max_ctl_power.exit_crit_edge ]
  %386 = ptrtoint ptr %center_freq.i225 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %center_freq.i225, align 4
  %388 = zext i16 %385 to i64
  call void @__sanitizer_cov_trace_switch(i64 %388, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %385, label %sw.default.i [
    i16 0, label %sw.bb.i235
    i16 1, label %sw.bb1.i
  ]

sw.bb.i235:                                       ; preds = %ath5k_get_max_ctl_power.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ee_rate_tpwr_a.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 50
  br label %sw.epilog.i240

sw.bb1.i:                                         ; preds = %ath5k_get_max_ctl_power.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ee_rate_tpwr_b.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 51
  br label %sw.epilog.i240

sw.default.i:                                     ; preds = %ath5k_get_max_ctl_power.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ee_rate_tpwr_g.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 52
  br label %sw.epilog.i240

sw.epilog.i240:                                   ; preds = %sw.default.i, %sw.bb1.i, %sw.bb.i235
  %rpinfo.0.i = phi ptr [ %ee_rate_tpwr_g.i, %sw.default.i ], [ %ee_rate_tpwr_b.i, %sw.bb1.i ], [ %ee_rate_tpwr_a.i, %sw.bb.i235 ]
  %mode.0.i = phi i32 [ 2, %sw.default.i ], [ 1, %sw.bb1.i ], [ 0, %sw.bb.i235 ]
  %arrayidx.i236 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 49, i32 %mode.0.i
  %389 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %arrayidx.i236, align 1
  %sub.i237 = add i8 %390, -1
  %391 = ptrtoint ptr %rpinfo.0.i to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %rpinfo.0.i, align 2
  %conv8.i238 = zext i16 %392 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %387, i32 %conv8.i238)
  %cmp.i239 = icmp ult i32 %387, %conv8.i238
  br i1 %cmp.i239, label %sw.epilog.i240.done.i_crit_edge, label %if.end.i

sw.epilog.i240.done.i_crit_edge:                  ; preds = %sw.epilog.i240
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.end.i:                                         ; preds = %sw.epilog.i240
  %idxprom10.i = zext i8 %sub.i237 to i32
  %arrayidx11.i241 = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %idxprom10.i
  %393 = ptrtoint ptr %arrayidx11.i241 to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %arrayidx11.i241, align 2
  %conv13.i = zext i16 %394 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %387, i32 %conv13.i)
  %cmp14.i = icmp ugt i32 %387, %conv13.i
  br i1 %cmp14.i, label %if.end.i.done.i_crit_edge, label %if.end.i.for.body.i242_crit_edge

if.end.i.for.body.i242_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i242

if.end.i.done.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

for.body.i242:                                    ; preds = %for.inc.i244.for.body.i242_crit_edge, %if.end.i.for.body.i242_crit_edge
  %i.0222.i = phi i8 [ %inc.i243, %for.inc.i244.for.body.i242_crit_edge ], [ 0, %if.end.i.for.body.i242_crit_edge ]
  %conv18.i = zext i8 %i.0222.i to i32
  %arrayidx23.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %conv18.i
  %395 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %arrayidx23.i, align 2
  %conv25.i = zext i16 %396 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %387, i32 %conv25.i)
  %cmp26.i = icmp eq i32 %387, %conv25.i
  br i1 %cmp26.i, label %for.body.i242.done.i_crit_edge, label %if.end29.i

for.body.i242.done.i_crit_edge:                   ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.end29.i:                                       ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_cmp4(i32 %387, i32 %conv25.i)
  %cmp34.i = icmp ult i32 %387, %conv25.i
  br i1 %cmp34.i, label %if.then36.i, label %for.inc.i244

if.then36.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub38.i = add i8 %i.0222.i, -1
  br label %done.i

for.inc.i244:                                     ; preds = %if.end29.i
  %inc.i243 = add i8 %i.0222.i, 1
  %cmp20.not.i = icmp ugt i8 %inc.i243, %sub.i237
  br i1 %cmp20.not.i, label %for.inc.i244.done.i_crit_edge, label %for.inc.i244.for.body.i242_crit_edge

for.inc.i244.for.body.i242_crit_edge:             ; preds = %for.inc.i244
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i242

for.inc.i244.done.i_crit_edge:                    ; preds = %for.inc.i244
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

done.i:                                           ; preds = %for.inc.i244.done.i_crit_edge, %if.then36.i, %for.body.i242.done.i_crit_edge, %if.end.i.done.i_crit_edge, %sw.epilog.i240.done.i_crit_edge
  %idx_l.0.i = phi i8 [ %sub38.i, %if.then36.i ], [ 0, %sw.epilog.i240.done.i_crit_edge ], [ %sub.i237, %if.end.i.done.i_crit_edge ], [ 0, %for.inc.i244.done.i_crit_edge ], [ %i.0222.i, %for.body.i242.done.i_crit_edge ]
  %idx_r.0.i = phi i8 [ %i.0222.i, %if.then36.i ], [ 0, %sw.epilog.i240.done.i_crit_edge ], [ %sub.i237, %if.end.i.done.i_crit_edge ], [ 0, %for.inc.i244.done.i_crit_edge ], [ %i.0222.i, %for.body.i242.done.i_crit_edge ]
  %idxprom44.i = zext i8 %idx_l.0.i to i32
  %arrayidx45.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %idxprom44.i
  %397 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load2_noabort(i32 %397)
  %398 = load i16, ptr %arrayidx45.i, align 2
  %idxprom47.i = zext i8 %idx_r.0.i to i32
  %arrayidx48.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %idxprom47.i
  %399 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %arrayidx48.i, align 2
  %target_power_6to24.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %idxprom44.i, i32 1
  %401 = ptrtoint ptr %target_power_6to24.i to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %target_power_6to24.i, align 2
  %target_power_6to2454.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %idxprom47.i, i32 1
  %403 = ptrtoint ptr %target_power_6to2454.i to i32
  call void @__asan_load2_noabort(i32 %403)
  %404 = load i16, ptr %target_power_6to2454.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %400, i16 %398)
  %cmp.i.i245 = icmp eq i16 %400, %398
  call void @__sanitizer_cov_trace_cmp2(i16 %402, i16 %404)
  %cmp5.i.i246 = icmp eq i16 %402, %404
  %or.cond.i.i247 = or i1 %cmp.i.i245, %cmp5.i.i246
  br i1 %or.cond.i.i247, label %done.i.ath5k_get_interpolated_value.exit.i263_crit_edge, label %if.end.i.i261

done.i.ath5k_get_interpolated_value.exit.i263_crit_edge: ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_interpolated_value.exit.i263

if.end.i.i261:                                    ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i248 = sext i16 %400 to i32
  %conv.i.i249 = sext i16 %398 to i32
  %conv4.i.i = sext i16 %404 to i32
  %conv3.i.i = sext i16 %402 to i32
  %reass.add.i.i250 = sub nsw i32 %conv4.i.i, %conv3.i.i
  %reass.mul.i.i251 = mul nsw i32 %reass.add.i.i250, 100
  %sub12.i.i252 = sub nsw i32 %conv1.i.i248, %conv.i.i249
  %div.i.i253 = sdiv i32 %reass.mul.i.i251, %sub12.i.i252
  %sext.i.i254 = shl i32 %div.i.i253, 16
  %conv15.i.i = ashr exact i32 %sext.i.i254, 16
  %sext.i255 = shl i32 %387, 16
  %conv16.i.i256 = ashr exact i32 %sext.i255, 16
  %sub18.i.i257 = sub nsw i32 %conv16.i.i256, %conv.i.i249
  %mul19.i.i258 = mul nsw i32 %conv15.i.i, %sub18.i.i257
  %div20.i.i259 = sdiv i32 %mul19.i.i258, 100
  %405 = trunc i32 %div20.i.i259 to i16
  %conv21.i.i260 = add i16 %402, %405
  br label %ath5k_get_interpolated_value.exit.i263

ath5k_get_interpolated_value.exit.i263:           ; preds = %if.end.i.i261, %done.i.ath5k_get_interpolated_value.exit.i263_crit_edge
  %retval.0.i.i262 = phi i16 [ %conv21.i.i260, %if.end.i.i261 ], [ %402, %done.i.ath5k_get_interpolated_value.exit.i263_crit_edge ]
  %target_power_36.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %idxprom44.i, i32 2
  %406 = ptrtoint ptr %target_power_36.i to i32
  call void @__asan_load2_noabort(i32 %406)
  %407 = load i16, ptr %target_power_36.i, align 2
  %target_power_3667.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %idxprom47.i, i32 2
  %408 = ptrtoint ptr %target_power_3667.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %target_power_3667.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %407, i16 %409)
  %cmp5.i156.i = icmp eq i16 %407, %409
  %or.cond.i157.i = or i1 %cmp.i.i245, %cmp5.i156.i
  br i1 %or.cond.i157.i, label %ath5k_get_interpolated_value.exit.i263.ath5k_get_interpolated_value.exit175.i_crit_edge, label %if.end.i173.i

ath5k_get_interpolated_value.exit.i263.ath5k_get_interpolated_value.exit175.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit.i263
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_interpolated_value.exit175.i

if.end.i173.i:                                    ; preds = %ath5k_get_interpolated_value.exit.i263
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i158.i = sext i16 %400 to i32
  %conv.i159.i = sext i16 %398 to i32
  %conv4.i160.i = sext i16 %409 to i32
  %conv3.i161.i = sext i16 %407 to i32
  %reass.add.i162.i = sub nsw i32 %conv4.i160.i, %conv3.i161.i
  %reass.mul.i163.i = mul nsw i32 %reass.add.i162.i, 100
  %sub12.i164.i = sub nsw i32 %conv1.i158.i, %conv.i159.i
  %div.i165.i = sdiv i32 %reass.mul.i163.i, %sub12.i164.i
  %sext.i166.i = shl i32 %div.i165.i, 16
  %conv15.i167.i = ashr exact i32 %sext.i166.i, 16
  %sext218.i = shl i32 %387, 16
  %conv16.i168.i = ashr exact i32 %sext218.i, 16
  %sub18.i169.i = sub nsw i32 %conv16.i168.i, %conv.i159.i
  %mul19.i170.i = mul nsw i32 %conv15.i167.i, %sub18.i169.i
  %div20.i171.i = sdiv i32 %mul19.i170.i, 100
  %410 = trunc i32 %div20.i171.i to i16
  %conv21.i172.i = add i16 %407, %410
  br label %ath5k_get_interpolated_value.exit175.i

ath5k_get_interpolated_value.exit175.i:           ; preds = %if.end.i173.i, %ath5k_get_interpolated_value.exit.i263.ath5k_get_interpolated_value.exit175.i_crit_edge
  %retval.0.i174.i = phi i16 [ %conv21.i172.i, %if.end.i173.i ], [ %407, %ath5k_get_interpolated_value.exit.i263.ath5k_get_interpolated_value.exit175.i_crit_edge ]
  %target_power_48.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %idxprom44.i, i32 3
  %411 = ptrtoint ptr %target_power_48.i to i32
  call void @__asan_load2_noabort(i32 %411)
  %412 = load i16, ptr %target_power_48.i, align 2
  %target_power_4881.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %idxprom47.i, i32 3
  %413 = ptrtoint ptr %target_power_4881.i to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %target_power_4881.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %412, i16 %414)
  %cmp5.i177.i = icmp eq i16 %412, %414
  %or.cond.i178.i = or i1 %cmp.i.i245, %cmp5.i177.i
  br i1 %or.cond.i178.i, label %ath5k_get_interpolated_value.exit175.i.ath5k_get_interpolated_value.exit196.i_crit_edge, label %if.end.i194.i

ath5k_get_interpolated_value.exit175.i.ath5k_get_interpolated_value.exit196.i_crit_edge: ; preds = %ath5k_get_interpolated_value.exit175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_interpolated_value.exit196.i

if.end.i194.i:                                    ; preds = %ath5k_get_interpolated_value.exit175.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i179.i = sext i16 %400 to i32
  %conv.i180.i = sext i16 %398 to i32
  %conv4.i181.i = sext i16 %414 to i32
  %conv3.i182.i = sext i16 %412 to i32
  %reass.add.i183.i = sub nsw i32 %conv4.i181.i, %conv3.i182.i
  %reass.mul.i184.i = mul nsw i32 %reass.add.i183.i, 100
  %sub12.i185.i = sub nsw i32 %conv1.i179.i, %conv.i180.i
  %div.i186.i = sdiv i32 %reass.mul.i184.i, %sub12.i185.i
  %sext.i187.i = shl i32 %div.i186.i, 16
  %conv15.i188.i = ashr exact i32 %sext.i187.i, 16
  %sext219.i = shl i32 %387, 16
  %conv16.i189.i = ashr exact i32 %sext219.i, 16
  %sub18.i190.i = sub nsw i32 %conv16.i189.i, %conv.i180.i
  %mul19.i191.i = mul nsw i32 %conv15.i188.i, %sub18.i190.i
  %div20.i192.i = sdiv i32 %mul19.i191.i, 100
  %415 = trunc i32 %div20.i192.i to i16
  %conv21.i193.i = add i16 %412, %415
  br label %ath5k_get_interpolated_value.exit196.i

ath5k_get_interpolated_value.exit196.i:           ; preds = %if.end.i194.i, %ath5k_get_interpolated_value.exit175.i.ath5k_get_interpolated_value.exit196.i_crit_edge
  %retval.0.i195.i = phi i16 [ %conv21.i193.i, %if.end.i194.i ], [ %412, %ath5k_get_interpolated_value.exit175.i.ath5k_get_interpolated_value.exit196.i_crit_edge ]
  %target_power_54.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %idxprom44.i, i32 4
  %416 = ptrtoint ptr %target_power_54.i to i32
  call void @__asan_load2_noabort(i32 %416)
  %417 = load i16, ptr %target_power_54.i, align 2
  %target_power_5495.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rpinfo.0.i, i32 %idxprom47.i, i32 4
  %418 = ptrtoint ptr %target_power_5495.i to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %target_power_5495.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %417, i16 %419)
  %cmp5.i198.i = icmp eq i16 %417, %419
  %or.cond.i199.i = or i1 %cmp.i.i245, %cmp5.i198.i
  br i1 %or.cond.i199.i, label %ath5k_get_interpolated_value.exit196.i.ath5k_get_rate_pcal_data.exit_crit_edge, label %if.end.i215.i

ath5k_get_interpolated_value.exit196.i.ath5k_get_rate_pcal_data.exit_crit_edge: ; preds = %ath5k_get_interpolated_value.exit196.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath5k_get_rate_pcal_data.exit

if.end.i215.i:                                    ; preds = %ath5k_get_interpolated_value.exit196.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i200.i = sext i16 %400 to i32
  %conv.i201.i = sext i16 %398 to i32
  %conv4.i202.i = sext i16 %419 to i32
  %conv3.i203.i = sext i16 %417 to i32
  %reass.add.i204.i = sub nsw i32 %conv4.i202.i, %conv3.i203.i
  %reass.mul.i205.i = mul nsw i32 %reass.add.i204.i, 100
  %sub12.i206.i = sub nsw i32 %conv1.i200.i, %conv.i201.i
  %div.i207.i = sdiv i32 %reass.mul.i205.i, %sub12.i206.i
  %sext.i208.i = shl i32 %div.i207.i, 16
  %conv15.i209.i = ashr exact i32 %sext.i208.i, 16
  %sext220.i = shl i32 %387, 16
  %conv16.i210.i = ashr exact i32 %sext220.i, 16
  %sub18.i211.i = sub nsw i32 %conv16.i210.i, %conv.i201.i
  %mul19.i212.i = mul nsw i32 %conv15.i209.i, %sub18.i211.i
  %div20.i213.i = sdiv i32 %mul19.i212.i, 100
  %420 = trunc i32 %div20.i213.i to i16
  %conv21.i214.i = add i16 %417, %420
  br label %ath5k_get_rate_pcal_data.exit

ath5k_get_rate_pcal_data.exit:                    ; preds = %if.end.i215.i, %ath5k_get_interpolated_value.exit196.i.ath5k_get_rate_pcal_data.exit_crit_edge
  %retval.0.i216.i = phi i16 [ %conv21.i214.i, %if.end.i215.i ], [ %417, %ath5k_get_interpolated_value.exit196.i.ath5k_get_rate_pcal_data.exit_crit_edge ]
  %conv32 = zext i8 %txpower to i16
  %mul.i264 = shl nuw nsw i16 %conv32, 1
  %421 = ptrtoint ptr %txp_max_pwr.i224 to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %txp_max_pwr.i224, align 4
  %423 = tail call i16 @llvm.umin.i16(i16 %mul.i264, i16 %422) #9
  %424 = lshr i16 %423, 1
  %txp_rates_power_table.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3
  %425 = tail call i16 @llvm.umin.i16(i16 %424, i16 %retval.0.i.i262) #9
  %426 = ptrtoint ptr %txp_rates_power_table.i to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 %425, ptr %txp_rates_power_table.i, align 2
  %arrayidx.1.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 1
  %427 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 %425, ptr %arrayidx.1.i, align 2
  %arrayidx.2.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 2
  %428 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store2_noabort(i32 %428)
  store i16 %425, ptr %arrayidx.2.i, align 2
  %arrayidx.3.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 3
  %429 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store2_noabort(i32 %429)
  store i16 %425, ptr %arrayidx.3.i, align 2
  %arrayidx.4.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 4
  %430 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store2_noabort(i32 %430)
  store i16 %425, ptr %arrayidx.4.i, align 2
  %431 = tail call i16 @llvm.umin.i16(i16 %425, i16 %retval.0.i174.i) #9
  %arrayidx36.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 5
  %432 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store2_noabort(i32 %432)
  store i16 %431, ptr %arrayidx36.i, align 2
  %433 = tail call i16 @llvm.umin.i16(i16 %425, i16 %retval.0.i195.i) #9
  %arrayidx50.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 6
  %434 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store2_noabort(i32 %434)
  store i16 %433, ptr %arrayidx50.i, align 2
  %435 = tail call i16 @llvm.umin.i16(i16 %425, i16 %retval.0.i216.i) #9
  %arrayidx64.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 7
  %436 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 %435, ptr %arrayidx64.i, align 2
  %arrayidx79.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 8
  %437 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 %425, ptr %arrayidx79.i, align 2
  %arrayidx94.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 9
  %438 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store2_noabort(i32 %438)
  store i16 %431, ptr %arrayidx94.i, align 2
  %arrayidx109.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 10
  %439 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 %431, ptr %arrayidx109.i, align 2
  %arrayidx124.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 11
  %440 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store2_noabort(i32 %440)
  store i16 %433, ptr %arrayidx124.i, align 2
  %arrayidx139.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 12
  %441 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 %433, ptr %arrayidx139.i, align 2
  %arrayidx154.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 13
  %442 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 %435, ptr %arrayidx154.i, align 2
  %arrayidx169.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 14
  %443 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 %435, ptr %arrayidx169.i, align 2
  %arrayidx184.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 3, i32 15
  %444 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_store2_noabort(i32 %444)
  store i16 %425, ptr %arrayidx184.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv31)
  %cmp186.i = icmp eq i8 %conv31, 2
  br i1 %cmp186.i, label %land.lhs.true.i, label %ath5k_get_rate_pcal_data.exit.if.end.i272_crit_edge

ath5k_get_rate_pcal_data.exit.if.end.i272_crit_edge: ; preds = %ath5k_get_rate_pcal_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i272

land.lhs.true.i:                                  ; preds = %ath5k_get_rate_pcal_data.exit
  %ah_phy_revision.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 72
  %445 = ptrtoint ptr %ah_phy_revision.i to i32
  call void @__asan_load2_noabort(i32 %445)
  %446 = load i16, ptr %ah_phy_revision.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 66, i16 %446)
  %cmp189.i = icmp ult i16 %446, 66
  br i1 %cmp189.i, label %for.cond191.preheader.i, label %land.lhs.true.i.if.end.i272_crit_edge

land.lhs.true.i.if.end.i272_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i272

for.cond191.preheader.i:                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %txp_cck_ofdm_gainf_delta.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 11
  %447 = ptrtoint ptr %txp_cck_ofdm_gainf_delta.i to i32
  call void @__asan_load2_noabort(i32 %447)
  %448 = load i16, ptr %txp_cck_ofdm_gainf_delta.i, align 4
  %sub.i270 = sub i16 %425, %448
  %449 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 %sub.i270, ptr %arrayidx79.i, align 2
  %sub.1.i = sub i16 %431, %448
  %450 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store2_noabort(i32 %450)
  store i16 %sub.1.i, ptr %arrayidx94.i, align 2
  %451 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store2_noabort(i32 %451)
  store i16 %sub.1.i, ptr %arrayidx109.i, align 2
  %sub.3.i = sub i16 %433, %448
  %452 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store2_noabort(i32 %452)
  store i16 %sub.3.i, ptr %arrayidx124.i, align 2
  %453 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store2_noabort(i32 %453)
  store i16 %sub.3.i, ptr %arrayidx139.i, align 2
  %sub.5.i = sub i16 %435, %448
  %454 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_store2_noabort(i32 %454)
  store i16 %sub.5.i, ptr %arrayidx154.i, align 2
  %455 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store2_noabort(i32 %455)
  store i16 %sub.5.i, ptr %arrayidx169.i, align 2
  %456 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_store2_noabort(i32 %456)
  store i16 %sub.i270, ptr %arrayidx184.i, align 2
  br label %if.end.i272

if.end.i272:                                      ; preds = %for.cond191.preheader.i, %land.lhs.true.i.if.end.i272_crit_edge, %ath5k_get_rate_pcal_data.exit.if.end.i272_crit_edge
  %mul205.i = shl nuw nsw i16 %435, 1
  %txp_min_pwr.i271 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 6
  %457 = ptrtoint ptr %txp_min_pwr.i271 to i32
  call void @__asan_store2_noabort(i32 %457)
  store i16 %mul205.i, ptr %txp_min_pwr.i271, align 2
  %mul210.i = shl nuw nsw i16 %425, 1
  %txp_cur_pwr.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 8
  %458 = ptrtoint ptr %txp_cur_pwr.i to i32
  call void @__asan_store2_noabort(i32 %458)
  store i16 %mul210.i, ptr %txp_cur_pwr.i, align 2
  %txp_ofdm.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 10
  %459 = ptrtoint ptr %txp_ofdm.i to i32
  call void @__asan_store2_noabort(i32 %459)
  store i16 %435, ptr %txp_ofdm.i, align 2
  %txp_offset.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 9
  br label %for.body218.i

for.body218.i:                                    ; preds = %for.body218.i.for.body218.i_crit_edge, %if.end.i272
  %i.2327.i = phi i32 [ 0, %if.end.i272 ], [ %inc236.i, %for.body218.i.for.body218.i_crit_edge ]
  %arrayidx219.i = getelementptr i16, ptr %txp_rates_power_table.i, i32 %i.2327.i
  %460 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_load2_noabort(i32 %460)
  %461 = load i16, ptr %arrayidx219.i, align 2
  %462 = ptrtoint ptr %txp_offset.i to i32
  call void @__asan_load2_noabort(i32 %462)
  %463 = load i16, ptr %txp_offset.i, align 8
  %add.i = add i16 %463, %461
  %464 = tail call i16 @llvm.smin.i16(i16 %add.i, i16 63) #9
  %465 = tail call i16 @llvm.smax.i16(i16 %464, i16 0) #9
  %466 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_store2_noabort(i32 %466)
  store i16 %465, ptr %arrayidx219.i, align 2
  %inc236.i = add nuw nsw i32 %i.2327.i, 1
  %exitcond.not.i = icmp eq i32 %inc236.i, 16
  br i1 %exitcond.not.i, label %ath5k_setup_rate_powertable.exit, label %for.body218.i.for.body218.i_crit_edge

for.body218.i.for.body218.i_crit_edge:            ; preds = %for.body218.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body218.i

ath5k_setup_rate_powertable.exit:                 ; preds = %for.body218.i
  %467 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %467)
  %468 = load i16, ptr %arrayidx.3.i, align 2
  %469 = and i16 %468, 63
  %and = zext i16 %469 to i32
  %shl = shl nuw nsw i32 %and, 24
  %470 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %470)
  %471 = load i16, ptr %arrayidx.2.i, align 4
  %472 = and i16 %471, 63
  %and40 = zext i16 %472 to i32
  %shl41 = shl nuw nsw i32 %and40, 16
  %or43 = or i32 %shl41, %shl
  %473 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %473)
  %474 = load i16, ptr %arrayidx.1.i, align 2
  %475 = shl i16 %474, 8
  %476 = and i16 %475, 16128
  %shl49 = zext i16 %476 to i32
  %or51 = or i32 %or43, %shl49
  %477 = ptrtoint ptr %txp_rates_power_table.i to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %txp_rates_power_table.i, align 8
  %479 = and i16 %478, 63
  %and56 = zext i16 %479 to i32
  %or59 = or i32 %or51, %and56
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %480 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %481, i32 39220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %482 = tail call i32 @llvm.bswap.i32(i32 %or59) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %482) #9, !srcloc !108
  %483 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load2_noabort(i32 %483)
  %484 = load i16, ptr %arrayidx64.i, align 2
  %485 = and i16 %484, 63
  %and64 = zext i16 %485 to i32
  %shl65 = shl nuw nsw i32 %and64, 24
  %486 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load2_noabort(i32 %486)
  %487 = load i16, ptr %arrayidx50.i, align 4
  %488 = and i16 %487, 63
  %and71 = zext i16 %488 to i32
  %shl72 = shl nuw nsw i32 %and71, 16
  %or74 = or i32 %shl72, %shl65
  %489 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load2_noabort(i32 %489)
  %490 = load i16, ptr %arrayidx36.i, align 2
  %491 = shl i16 %490, 8
  %492 = and i16 %491, 16128
  %shl80 = zext i16 %492 to i32
  %or82 = or i32 %or74, %shl80
  %493 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %493)
  %494 = load i16, ptr %arrayidx.4.i, align 8
  %495 = and i16 %494, 63
  %and87 = zext i16 %495 to i32
  %or90 = or i32 %or82, %and87
  %496 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i274 = getelementptr i8, ptr %497, i32 39224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %498 = tail call i32 @llvm.bswap.i32(i32 %or90) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274, i32 %498) #9, !srcloc !108
  %499 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load2_noabort(i32 %499)
  %500 = load i16, ptr %arrayidx109.i, align 4
  %501 = and i16 %500, 63
  %and95 = zext i16 %501 to i32
  %shl96 = shl nuw nsw i32 %and95, 24
  %502 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load2_noabort(i32 %502)
  %503 = load i16, ptr %arrayidx94.i, align 2
  %504 = and i16 %503, 63
  %and101 = zext i16 %504 to i32
  %shl102 = shl nuw nsw i32 %and101, 16
  %or103 = or i32 %shl102, %shl96
  %505 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_load2_noabort(i32 %505)
  %506 = load i16, ptr %arrayidx184.i, align 2
  %507 = shl i16 %506, 8
  %508 = and i16 %507, 16128
  %shl109 = zext i16 %508 to i32
  %or110 = or i32 %or103, %shl109
  %509 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load2_noabort(i32 %509)
  %510 = load i16, ptr %arrayidx79.i, align 8
  %511 = and i16 %510, 63
  %and115 = zext i16 %511 to i32
  %or117 = or i32 %or110, %and115
  %512 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i276 = getelementptr i8, ptr %513, i32 41524
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %514 = tail call i32 @llvm.bswap.i32(i32 %or117) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276, i32 %514) #9, !srcloc !108
  %515 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load2_noabort(i32 %515)
  %516 = load i16, ptr %arrayidx169.i, align 4
  %517 = and i16 %516, 63
  %and122 = zext i16 %517 to i32
  %shl123 = shl nuw nsw i32 %and122, 24
  %518 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load2_noabort(i32 %518)
  %519 = load i16, ptr %arrayidx154.i, align 2
  %520 = and i16 %519, 63
  %and128 = zext i16 %520 to i32
  %shl129 = shl nuw nsw i32 %and128, 16
  %or130 = or i32 %shl129, %shl123
  %521 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load2_noabort(i32 %521)
  %522 = load i16, ptr %arrayidx139.i, align 8
  %523 = shl i16 %522, 8
  %524 = and i16 %523, 16128
  %shl136 = zext i16 %524 to i32
  %or137 = or i32 %or130, %shl136
  %525 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load2_noabort(i32 %525)
  %526 = load i16, ptr %arrayidx124.i, align 2
  %527 = and i16 %526, 63
  %and142 = zext i16 %527 to i32
  %or144 = or i32 %or137, %and142
  %528 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i278 = getelementptr i8, ptr %529, i32 41528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %530 = tail call i32 @llvm.bswap.i32(i32 %or144) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 %530) #9, !srcloc !108
  %txp_tpc146 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 5
  %531 = ptrtoint ptr %txp_tpc146 to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %txp_tpc146, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %532)
  %tobool147.not = icmp eq i8 %532, 0
  %533 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i284 = getelementptr i8, ptr %534, i32 39228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool147.not, label %if.else, label %if.then148

if.then148:                                       ; preds = %ath5k_setup_rate_powertable.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 2130706432) #9, !srcloc !108
  %535 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i282 = getelementptr i8, ptr %536, i32 33000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 1056964608) #9, !srcloc !108
  br label %cleanup150

if.else:                                          ; preds = %ath5k_setup_rate_powertable.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 1056964608) #9, !srcloc !108
  br label %cleanup150

cleanup150:                                       ; preds = %if.else, %if.then148, %ath5k_setup_channel_powertable.exit.thread, %sw.default, %if.end4.cleanup150_crit_edge, %if.then2, %do.body.cleanup150_crit_edge
  %retval.1 = phi i32 [ -22, %sw.default ], [ -22, %if.then2 ], [ -22, %do.body.cleanup150_crit_edge ], [ %3, %if.end4.cleanup150_crit_edge ], [ 0, %if.else ], [ 0, %if.then148 ], [ -22, %ath5k_setup_channel_powertable.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_phy_init(ptr noundef %ah, ptr noundef %channel, i8 noundef zeroext %mode, i1 noundef zeroext %fast) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %fast, label %land.lhs.true, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %entry
  %ah_current_channel = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %0 = ptrtoint ptr %ah_current_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah_current_channel, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  %hw_value1 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %hw_value1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_value1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not = icmp eq i16 %3, %5
  br i1 %cmp.not, label %if.then5.critedge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.critedge:                                ; preds = %land.lhs.true
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 39292
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i205 = getelementptr i8, ptr %11, i32 39292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 %9) #9, !srcloc !108
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %if.then5.critedge
  %i.0285 = phi i32 [ 0, %if.then5.critedge ], [ %inc, %if.end11.for.body_crit_edge ]
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i207 = getelementptr i8, ptr %13, i32 39968
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %if.end11, label %if.end15

if.end11:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1073740) #9
  %inc = add nuw nsw i32 %i.0285, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end11.cleanup_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %for.body
  %call16 = tail call fastcc i32 @ath5k_hw_channel(ptr noundef %ah, ptr noundef %channel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %ah_version.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %16 = ptrtoint ptr %ah_version.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ah_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 39188
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %21 = and i32 %20, -12648448
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %23 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %24)
  %cmp1.i = icmp eq i16 %24, 1
  %.tr.i = trunc i32 %22 to i16
  %div.lhs.trunc.i = shl nuw i16 %.tr.i, 2
  %div26.i = udiv i16 %div.lhs.trunc.i, 22
  %div327.i = udiv i16 %.tr.i, 10
  %cond.v.i = select i1 %cmp1.i, i16 %div26.i, i16 %div327.i
  %cond.i = zext i16 %cond.v.i to i32
  %ah_bwmode.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %25 = ptrtoint ptr %ah_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ah_bwmode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp5.i = icmp eq i8 %26, 2
  %shl8.i = zext i1 %cmp5.i to i32
  %delay.0.i = shl nuw nsw i32 %cond.i, %shl8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp11.i = icmp eq i8 %26, 1
  %shl14.i = shl nuw nsw i32 %delay.0.i, 2
  %delay.1.i = select i1 %cmp11.i, i32 %shl14.i, i32 %delay.0.i
  %add.i = add nuw nsw i32 %delay.1.i, 100
  %mul.i = shl nuw nsw i32 %delay.1.i, 1
  %add16.i = add nuw nsw i32 %mul.i, 100
  tail call void @usleep_range_state(i32 noundef %add.i, i32 noundef %add16.i, i32 noundef 2) #9
  br label %if.end20

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #9
  br label %if.end20

if.end20:                                         ; preds = %if.else.i, %if.then.i, %entry.if.end20_crit_edge
  %txp_requested = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 14
  %27 = ptrtoint ptr %txp_requested to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %txp_requested, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool21.not = icmp eq i32 %28, 0
  %.tr = trunc i32 %28 to i8
  %29 = shl i8 %.tr, 1
  %conv24 = select i1 %tobool21.not, i8 63, i8 %29
  %call25 = tail call fastcc i32 @ath5k_hw_txpower(ptr noundef %ah, ptr noundef %channel, i8 noundef zeroext %conv24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %30 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp29 = icmp eq i32 %31, 2
  br i1 %cmp29, label %land.lhs.true31, label %if.end28.if.end45_crit_edge

if.end28.if.end45_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true31:                                  ; preds = %if.end28
  %hw_value32 = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %32 = ptrtoint ptr %hw_value32 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hw_value32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %33)
  %cmp34.not = icmp eq i16 %33, 1
  br i1 %cmp34.not, label %land.lhs.true31.if.end45_crit_edge, label %do.end9.i

land.lhs.true31.if.end45_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.end9.i:                                        ; preds = %land.lhs.true31
  %ah_bwmode.i211 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %34 = ptrtoint ptr %ah_bwmode.i211 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ah_bwmode.i211, align 1
  %switch.tableidx = add i8 %35, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %36 = icmp ult i8 %switch.tableidx, 3
  br i1 %36, label %switch.lookup, label %do.end9.i.sw.epilog.i_crit_edge

do.end9.i.sw.epilog.i_crit_edge:                  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ath5k_hw_phy_init, i32 0, i32 %37
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %do.end9.i.sw.epilog.i_crit_edge
  %clock.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 1677721600, %do.end9.i.sw.epilog.i_crit_edge ]
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %39 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %center_freq.i, align 4
  %div13.i = udiv i32 %clock.0.i, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %clock.0.i)
  %tobool.not.i.i.i = icmp ugt i32 %40, %clock.0.i
  %41 = tail call i32 @llvm.ctlz.i32(i32 %div13.i, i1 true) #9, !range !113
  %sub.i.op.i.i = xor i32 %41, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %clock.0.i)
  %tobool21.not.i = icmp ugt i32 %40, %clock.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool22.not.i = icmp eq i32 %sub.i.i, 0
  %or.cond.i = select i1 %tobool21.not.i, i1 true, i1 %tobool22.not.i
  br i1 %or.cond.i, label %sw.epilog.i.cleanup_crit_edge, label %if.end40

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %sw.epilog.i
  %sub27.i = add nsw i32 %sub.i.i, -14
  %sub28.i = add nsw i32 %sub.i.i, -15
  %shl29.i = shl nuw i32 1, %sub28.i
  %add.i212 = add nuw i32 %shl29.i, %div13.i
  %shr.i = lshr i32 %add.i212, %sub27.i
  %iobase.i.i213 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %42 = ptrtoint ptr %iobase.i.i213 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase.i.i213, align 4
  %add.ptr.i.i214 = getelementptr i8, ptr %43, i32 38932
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i214) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %45 = and i32 %44, -65280
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  %shl33.i = shl i32 %shr.i, 17
  %or.i = or i32 %46, %shl33.i
  %47 = ptrtoint ptr %iobase.i.i213 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i.i213, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %48, i32 38932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %49) #9, !srcloc !108
  %50 = ptrtoint ptr %iobase.i.i213 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iobase.i.i213, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %51, i32 38932
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %53 = and i32 %52, -14680321
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %.neg.i = mul nsw i32 %sub.i.i, 122880
  %shl37.i = add nsw i32 %.neg.i, 49152
  %and38.i = and i32 %shl37.i, 122880
  %or39.i = or i32 %54, %and38.i
  %55 = ptrtoint ptr %iobase.i.i213 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iobase.i.i213, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %56, i32 38932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %57 = tail call i32 @llvm.bswap.i32(i32 %or39.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %57) #9, !srcloc !108
  %ah_mac_srev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 70
  %58 = ptrtoint ptr %ah_mac_srev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ah_mac_srev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %59)
  %cmp41 = icmp ugt i32 %59, 143
  br i1 %cmp41, label %if.then43, label %if.end40.if.end45_crit_edge

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ath5k_hw_set_spur_mitigation_filter(ptr noundef %ah, ptr noundef %channel)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40.if.end45_crit_edge, %land.lhs.true31.if.end45_crit_edge, %if.end28.if.end45_crit_edge
  br i1 %fast, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %iobase.i215 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %60 = ptrtoint ptr %iobase.i215 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iobase.i215, align 4
  %add.ptr.i216 = getelementptr i8, ptr %61, i32 39292
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i216) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %63 = and i32 %62, -16777217
  %64 = ptrtoint ptr %iobase.i215 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iobase.i215, align 4
  %add.ptr.i218 = getelementptr i8, ptr %65, i32 39292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 %63) #9, !srcloc !108
  %66 = ptrtoint ptr %iobase.i215 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %iobase.i215, align 4
  %add.ptr.i220 = getelementptr i8, ptr %67, i32 39008
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i220) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %69 = or i32 %68, 33554432
  %70 = ptrtoint ptr %iobase.i215 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iobase.i215, align 4
  %add.ptr.i222 = getelementptr i8, ptr %71, i32 39008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 %69) #9, !srcloc !108
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  %72 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp53.not = icmp eq i32 %73, 0
  br i1 %cmp53.not, label %if.then82, label %if.then55

if.then55:                                        ; preds = %if.end51
  %ah_radio.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %74 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ah_radio.i, align 8
  %switch.tableidx289 = add i32 %75, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx289)
  %76 = icmp ult i32 %switch.tableidx289, 7
  br i1 %76, label %switch.lookup288, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup288:                                 ; preds = %if.then55
  %77 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %channel, align 4
  %switch.gep290 = getelementptr inbounds [7 x ptr], ptr @switch.table.ath5k_hw_phy_init.24, i32 0, i32 %switch.tableidx289
  %79 = ptrtoint ptr %switch.gep290 to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load291 = load ptr, ptr %switch.gep290, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i223 = icmp eq i32 %78, 0
  %cond.i224 = zext i1 %cmp.i223 to i32
  %iobase.i.i225 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %arrayidx7.peel.i = getelementptr %struct.ath5k_ini_rfgain, ptr %switch.load291, i32 0, i32 1, i32 %cond.i224
  %80 = ptrtoint ptr %arrayidx7.peel.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx7.peel.i, align 4
  %82 = ptrtoint ptr %switch.load291 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %switch.load291, align 4
  %84 = ptrtoint ptr %iobase.i.i225 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %iobase.i.i225, align 4
  %conv.i.peel.i = zext i16 %83 to i32
  %add.ptr.i.peel.i = getelementptr i8, ptr %85, i32 %conv.i.peel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %86 = tail call i32 @llvm.bswap.i32(i32 %81) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.peel.i, i32 %86) #9, !srcloc !108
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %switch.lookup288
  %i.019.i = phi i32 [ 1, %switch.lookup288 ], [ %inc.i, %do.end.i.do.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748) #9
  %arrayidx.i = getelementptr %struct.ath5k_ini_rfgain, ptr %switch.load291, i32 %i.019.i
  %arrayidx7.i = getelementptr %struct.ath5k_ini_rfgain, ptr %switch.load291, i32 %i.019.i, i32 1, i32 %cond.i224
  %88 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx7.i, align 4
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx.i, align 4
  %92 = ptrtoint ptr %iobase.i.i225 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iobase.i.i225, align 4
  %conv.i.i = zext i16 %91 to i32
  %add.ptr.i.i226 = getelementptr i8, ptr %93, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %94 = tail call i32 @llvm.bswap.i32(i32 %89) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i226, i32 %94) #9, !srcloc !108
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %if.end59, label %do.end.i.do.end.i_crit_edge, !llvm.loop !114

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end59:                                         ; preds = %do.end.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #9
  %conv60 = zext i8 %mode to i32
  %95 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ah_radio.i, align 8
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %96, label %if.end59.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i230
    i32 3, label %sw.bb7.i
    i32 5, label %sw.bb10.i
    i32 4, label %sw.bb13.i
    i32 6, label %sw.bb16.i
    i32 7, label %sw.bb19.i
  ]

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %ah_rf_regs_count.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 105
  %98 = ptrtoint ptr %ah_rf_regs_count.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 16, ptr %ah_rf_regs_count.i, align 4
  %ah_rf_banks_size.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 104
  %99 = ptrtoint ptr %ah_rf_banks_size.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 45, ptr %ah_rf_banks_size.i, align 8
  br label %sw.epilog.i233

sw.bb1.i230:                                      ; preds = %if.end59
  %ah_radio_5ghz_revision.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 73
  %100 = ptrtoint ptr %ah_radio_5ghz_revision.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %ah_radio_5ghz_revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %101)
  %cmp.i229 = icmp ugt i16 %101, 52
  %ah_rf_regs_count3.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 105
  br i1 %cmp.i229, label %if.then.i231, label %if.else.i232

if.then.i231:                                     ; preds = %sw.bb1.i230
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %ah_rf_regs_count3.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 35, ptr %ah_rf_regs_count3.i, align 4
  %ah_rf_banks_size4.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 104
  %103 = ptrtoint ptr %ah_rf_banks_size4.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 56, ptr %ah_rf_banks_size4.i, align 8
  br label %sw.epilog.i233

if.else.i232:                                     ; preds = %sw.bb1.i230
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %ah_rf_regs_count3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 25, ptr %ah_rf_regs_count3.i, align 4
  %ah_rf_banks_size6.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 104
  %105 = ptrtoint ptr %ah_rf_banks_size6.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 54, ptr %ah_rf_banks_size6.i, align 8
  br label %sw.epilog.i233

sw.bb7.i:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %ah_rf_regs_count8.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 105
  %106 = ptrtoint ptr %ah_rf_regs_count8.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 3, ptr %ah_rf_regs_count8.i, align 4
  %ah_rf_banks_size9.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 104
  %107 = ptrtoint ptr %ah_rf_banks_size9.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 33, ptr %ah_rf_banks_size9.i, align 8
  br label %sw.epilog.i233

sw.bb10.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %ah_rf_regs_count11.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 105
  %108 = ptrtoint ptr %ah_rf_regs_count11.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 3, ptr %ah_rf_regs_count11.i, align 4
  %ah_rf_banks_size12.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 104
  %109 = ptrtoint ptr %ah_rf_banks_size12.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 35, ptr %ah_rf_banks_size12.i, align 8
  br label %sw.epilog.i233

sw.bb13.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %ah_rf_regs_count14.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 105
  %110 = ptrtoint ptr %ah_rf_regs_count14.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 6, ptr %ah_rf_regs_count14.i, align 4
  %ah_rf_banks_size15.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 104
  %111 = ptrtoint ptr %ah_rf_banks_size15.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 43, ptr %ah_rf_banks_size15.i, align 8
  br label %sw.epilog.i233

sw.bb16.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %ah_rf_regs_count17.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 105
  %112 = ptrtoint ptr %ah_rf_regs_count17.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 3, ptr %ah_rf_regs_count17.i, align 4
  %ah_rf_banks_size18.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 104
  %113 = ptrtoint ptr %ah_rf_banks_size18.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 36, ptr %ah_rf_banks_size18.i, align 8
  br label %sw.epilog.i233

sw.bb19.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %ah_rf_regs_count20.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 105
  %114 = ptrtoint ptr %ah_rf_regs_count20.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 3, ptr %ah_rf_regs_count20.i, align 4
  %ah_mac_srev.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 70
  %115 = ptrtoint ptr %ah_mac_srev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ah_mac_srev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %116)
  %cmp21.i = icmp ult i32 %116, 240
  %ah_rf_banks_size24.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 104
  %117 = ptrtoint ptr %ah_rf_banks_size24.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 36, ptr %ah_rf_banks_size24.i, align 8
  %rfb_2425.rfb_2417.i = select i1 %cmp21.i, ptr @rfb_2425, ptr @rfb_2417
  br label %sw.epilog.i233

sw.epilog.i233:                                   ; preds = %sw.bb19.i, %sw.bb16.i, %sw.bb13.i, %sw.bb10.i, %sw.bb7.i, %if.else.i232, %if.then.i231, %sw.bb.i
  %ini_rfb.1.i = phi ptr [ @rfb_2317, %sw.bb16.i ], [ @rfb_5413, %sw.bb13.i ], [ @rfb_2316, %sw.bb10.i ], [ @rfb_2413, %sw.bb7.i ], [ @rfb_5111, %sw.bb.i ], [ @rfb_5112a, %if.then.i231 ], [ @rfb_5112, %if.else.i232 ], [ %rfb_2425.rfb_2417.i, %sw.bb19.i ]
  %go.0.i = phi ptr [ null, %sw.bb16.i ], [ null, %sw.bb13.i ], [ null, %sw.bb10.i ], [ null, %sw.bb7.i ], [ @rfgain_opt_5111, %sw.bb.i ], [ @rfgain_opt_5112, %if.then.i231 ], [ @rfgain_opt_5112, %if.else.i232 ], [ null, %sw.bb19.i ]
  %rf_regs.1.i = phi ptr [ @rf_regs_2425, %sw.bb16.i ], [ @rf_regs_5413, %sw.bb13.i ], [ @rf_regs_2316, %sw.bb10.i ], [ @rf_regs_2413, %sw.bb7.i ], [ @rf_regs_5111, %sw.bb.i ], [ @rf_regs_5112a, %if.then.i231 ], [ @rf_regs_5112, %if.else.i232 ], [ @rf_regs_2425, %sw.bb19.i ]
  %ah_rf_banks.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 103
  %118 = ptrtoint ptr %ah_rf_banks.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ah_rf_banks.i, align 4
  %cmp28.i = icmp eq ptr %119, null
  br i1 %cmp28.i, label %if.then30.i, label %sw.epilog.i233.if.end41.i_crit_edge

sw.epilog.i233.if.end41.i_crit_edge:              ; preds = %sw.epilog.i233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.then30.i:                                      ; preds = %sw.epilog.i233
  %ah_rf_banks_size31.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 104
  %120 = ptrtoint ptr %ah_rf_banks_size31.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ah_rf_banks_size31.i, align 8
  %122 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %121, i32 4) #9
  %123 = extractvalue { i32, i1 } %122, 1
  br i1 %123, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !116

kmalloc_array.exit.thread.i:                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %ah_rf_banks.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %ah_rf_banks.i, align 4
  br label %do.body.i

if.end7.i.i:                                      ; preds = %if.then30.i
  %125 = extractvalue { i32, i1 } %122, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %125, i32 noundef 3264) #12
  %126 = ptrtoint ptr %ah_rf_banks.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call8.i.i, ptr %ah_rf_banks.i, align 4
  %cmp34.i = icmp eq ptr %call8.i.i, null
  br i1 %cmp34.i, label %if.end7.i.i.do.body.i_crit_edge, label %if.end7.i.i.if.end41.i_crit_edge

if.end7.i.i.if.end41.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.end7.i.i.do.body.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.end7.i.i.do.body.i_crit_edge, %kmalloc_array.exit.thread.i
  %call37.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41.i:                                       ; preds = %if.end7.i.i.if.end41.i_crit_edge, %sw.epilog.i233.if.end41.i_crit_edge
  %127 = ptrtoint ptr %ah_rf_banks.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ah_rf_banks.i, align 4
  %ah_rf_banks_size43.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 104
  %129 = ptrtoint ptr %ah_rf_banks_size43.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ah_rf_banks_size43.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp44645.not.i = icmp eq i32 %130, 0
  br i1 %cmp44645.not.i, label %if.end41.i.for.end.i_crit_edge, label %if.end41.i.for.body.i_crit_edge

if.end41.i.for.body.i_crit_edge:                  ; preds = %if.end41.i
  br label %for.body.i

if.end41.i.for.end.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %if.end69.i.for.body.i_crit_edge, %if.end41.i.for.body.i_crit_edge
  %bank.0647.i = phi i32 [ %bank.1.i, %if.end69.i.for.body.i_crit_edge ], [ -1, %if.end41.i.for.body.i_crit_edge ]
  %i.0646.i = phi i32 [ %inc.i235, %if.end69.i.for.body.i_crit_edge ], [ 0, %if.end41.i.for.body.i_crit_edge ]
  %arrayidx.i234 = getelementptr %struct.ath5k_ini_rfbuffer, ptr %ini_rfb.1.i, i32 %i.0646.i
  %131 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.i234, align 4
  %conv46.i = zext i8 %132 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %132)
  %cmp47.i = icmp ugt i8 %132, 7
  br i1 %cmp47.i, label %do.body50.i, label %if.end57.i

do.body50.i:                                      ; preds = %for.body.i
  %call51.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %do.body50.i.cleanup_crit_edge, label %do.body50.i.cleanup.sink.split.i_crit_edge

do.body50.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.body50.i.cleanup_crit_edge:                    ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %bank.0647.i, i32 %conv46.i)
  %cmp61.not.i = icmp eq i32 %bank.0647.i, %conv46.i
  br i1 %cmp61.not.i, label %if.end57.i.if.end69.i_crit_edge, label %if.then63.i

if.end57.i.if.end69.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then63.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv67.i = trunc i32 %i.0646.i to i8
  %arrayidx68.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 107, i32 %conv46.i
  %133 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv67.i, ptr %arrayidx68.i, align 1
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then63.i, %if.end57.i.if.end69.i_crit_edge
  %bank.1.i = phi i32 [ %conv46.i, %if.then63.i ], [ %bank.0647.i, %if.end57.i.if.end69.i_crit_edge ]
  %arrayidx71.i = getelementptr %struct.ath5k_ini_rfbuffer, ptr %ini_rfb.1.i, i32 %i.0646.i, i32 2, i32 %conv60
  %134 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx71.i, align 4
  %arrayidx72.i = getelementptr i32, ptr %128, i32 %i.0646.i
  %136 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx72.i, align 4
  %inc.i235 = add nuw i32 %i.0646.i, 1
  %137 = ptrtoint ptr %ah_rf_banks_size43.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ah_rf_banks_size43.i, align 8
  %cmp44.i = icmp ult i32 %inc.i235, %138
  br i1 %cmp44.i, label %if.end69.i.for.body.i_crit_edge, label %if.end69.i.for.end.i_crit_edge

if.end69.i.for.end.i_crit_edge:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end69.i.for.body.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end69.i.for.end.i_crit_edge, %if.end41.i.for.end.i_crit_edge
  %139 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %channel, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %140, label %lor.lhs.false104.i [
    i32 0, label %if.then75.i
    i32 1, label %for.end.i.if.then108.i_crit_edge
  ]

for.end.i.if.then108.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then108.i

if.then75.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw_value.i236 = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %142 = ptrtoint ptr %hw_value.i236 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %hw_value.i236, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %143)
  %cmp77.i = icmp eq i16 %143, 1
  %144 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ah_radio.i, align 8
  %146 = add i32 %145, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %146)
  %switch.i = icmp ult i32 %146, -2
  %spec.select.i = zext i1 %switch.i to i32
  %idxprom.i = select i1 %cmp77.i, i32 1, i32 2
  %arrayidx92.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 28, i32 %idxprom.i, i32 %spec.select.i
  %147 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx92.i, align 2
  %conv93.i = zext i16 %148 to i32
  %call94.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv93.i, i8 noundef zeroext 1, i1 noundef zeroext true) #9
  %arrayidx97.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 29, i32 %idxprom.i, i32 %spec.select.i
  br label %if.end146.sink.split.i

lor.lhs.false104.i:                               ; preds = %for.end.i
  %149 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ah_radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %cmp106.i = icmp eq i32 %150, 1
  br i1 %cmp106.i, label %lor.lhs.false104.i.if.then108.i_crit_edge, label %lor.lhs.false104.i.if.end146.i_crit_edge

lor.lhs.false104.i.if.end146.i_crit_edge:         ; preds = %lor.lhs.false104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146.i

lor.lhs.false104.i.if.then108.i_crit_edge:        ; preds = %lor.lhs.false104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then108.i

if.then108.i:                                     ; preds = %lor.lhs.false104.i.if.then108.i_crit_edge, %for.end.i.if.then108.i_crit_edge
  %center_freq.i237 = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %151 = ptrtoint ptr %center_freq.i237 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %center_freq.i237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5724, i32 %152)
  %cmp109.i = icmp ugt i32 %152, 5724
  br i1 %cmp109.i, label %if.then108.i.if.end132.i_crit_edge, label %cond.false.i238

if.then108.i.if.end132.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.i

cond.false.i238:                                  ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5499, i32 %152)
  %cmp112.i = icmp ugt i32 %152, 5499
  br i1 %cmp112.i, label %cond.false.i238.if.end132.i_crit_edge, label %cond.false115.i

cond.false.i238.if.end132.i_crit_edge:            ; preds = %cond.false.i238
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.i

cond.false115.i:                                  ; preds = %cond.false.i238
  call void @__sanitizer_cov_trace_const_cmp4(i32 5259, i32 %152)
  %cmp117.i = icmp ugt i32 %152, 5259
  br i1 %cmp117.i, label %cond.false115.i.if.end132.i_crit_edge, label %cond.end127.i

cond.false115.i.if.end132.i_crit_edge:            ; preds = %cond.false115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.i

cond.end127.i:                                    ; preds = %cond.false115.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4001, i32 %152)
  %cmp122.i = icmp ult i32 %152, 4001
  br i1 %cmp122.i, label %cond.end127.i.cleanup_crit_edge, label %cond.end127.i.if.end132.i_crit_edge

cond.end127.i.if.end132.i_crit_edge:              ; preds = %cond.end127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.i

cond.end127.i.cleanup_crit_edge:                  ; preds = %cond.end127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end132.i:                                      ; preds = %cond.end127.i.if.end132.i_crit_edge, %cond.false115.i.if.end132.i_crit_edge, %cond.false.i238.if.end132.i_crit_edge, %if.then108.i.if.end132.i_crit_edge
  %cond128638.i = phi i32 [ 0, %cond.end127.i.if.end132.i_crit_edge ], [ 1, %cond.false115.i.if.end132.i_crit_edge ], [ 2, %cond.false.i238.if.end132.i_crit_edge ], [ 3, %if.then108.i.if.end132.i_crit_edge ]
  %ee_ob133.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 28
  %arrayidx136.i = getelementptr [4 x i16], ptr %ee_ob133.i, i32 0, i32 %cond128638.i
  %153 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx136.i, align 2
  %conv137.i = zext i16 %154 to i32
  %call138.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv137.i, i8 noundef zeroext 2, i1 noundef zeroext true) #9
  %ee_db139.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 29
  %arrayidx142.i = getelementptr [4 x i16], ptr %ee_db139.i, i32 0, i32 %cond128638.i
  br label %if.end146.sink.split.i

if.end146.sink.split.i:                           ; preds = %if.end132.i, %if.then75.i
  %arrayidx142.sink.i = phi ptr [ %arrayidx142.i, %if.end132.i ], [ %arrayidx97.i, %if.then75.i ]
  %.sink.i = phi i8 [ 4, %if.end132.i ], [ 3, %if.then75.i ]
  %ee_mode.1.ph.i = phi i32 [ 0, %if.end132.i ], [ %idxprom.i, %if.then75.i ]
  %155 = ptrtoint ptr %arrayidx142.sink.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %arrayidx142.sink.i, align 2
  %conv143.i = zext i16 %156 to i32
  %call144.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv143.i, i8 noundef zeroext %.sink.i, i1 noundef zeroext true) #9
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.end146.sink.split.i, %lor.lhs.false104.i.if.end146.i_crit_edge
  %ee_mode.1.i = phi i32 [ 0, %lor.lhs.false104.i.if.end146.i_crit_edge ], [ %ee_mode.1.ph.i, %if.end146.sink.split.i ]
  %ah_gain.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106
  %157 = ptrtoint ptr %ah_gain.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %ah_gain.i, align 8
  %idxprom147.i = zext i8 %158 to i32
  %arrayidx148.i = getelementptr %struct.ath5k_gain_opt, ptr %go.0.i, i32 0, i32 2, i32 %idxprom147.i
  %ah_bwmode.i239 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %159 = ptrtoint ptr %ah_bwmode.i239 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %ah_bwmode.i239, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %160)
  %cmp150.i = icmp eq i8 %160, 3
  br i1 %cmp150.i, label %land.lhs.true.i, label %if.end146.i.if.end157.i_crit_edge

if.end146.i.if.end157.i_crit_edge:                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157.i

land.lhs.true.i:                                  ; preds = %if.end146.i
  %161 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ah_radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %162)
  %cmp153.not.i = icmp eq i32 %162, 4
  br i1 %cmp153.not.i, label %land.lhs.true.i.land.lhs.true366.i_crit_edge, label %if.then155.i

land.lhs.true.i.land.lhs.true366.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true366.i

if.then155.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call156.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 1, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  br label %if.end157.i

if.end157.i:                                      ; preds = %if.then155.i, %if.end146.i.if.end157.i_crit_edge
  %163 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pr.i = load i32, ptr %ah_radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp159.i = icmp eq i32 %.pr.i, 1
  br i1 %cmp159.i, label %if.then161.i, label %if.end157.i.if.end232.i_crit_edge

if.end157.i.if.end232.i_crit_edge:                ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end232.i

if.then161.i:                                     ; preds = %if.end157.i
  %hw_value162.i = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %164 = ptrtoint ptr %hw_value162.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %hw_value162.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %165)
  %cmp164.not.i = icmp eq i16 %165, 1
  br i1 %cmp164.not.i, label %if.then161.i.if.end193.i_crit_edge, label %if.then166.i

if.then161.i.if.end193.i_crit_edge:               ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193.i

if.then166.i:                                     ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #11
  %166 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp167.i = icmp eq i32 %167, 0
  %168 = ptrtoint ptr %iobase.i.i225 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %iobase.i.i225, align 4
  %conv.i.i242 = select i1 %cmp167.i, i32 38916, i32 39236
  %add.ptr.i.i243 = getelementptr i8, ptr %169, i32 %conv.i.i242
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i243) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %171 = and i32 %170, -939524097
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #9
  %173 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx148.i, align 1
  %conv173.i = sext i8 %174 to i32
  %shl.i = shl nsw i32 %conv173.i, 3
  %and174.i = and i32 %shl.i, 56
  %or.i244 = or i32 %and174.i, %172
  %175 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp176.i = icmp eq i32 %176, 0
  %177 = ptrtoint ptr %iobase.i.i225 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %iobase.i.i225, align 4
  %conv.i626.i = select i1 %cmp176.i, i32 38916, i32 39236
  %add.ptr.i627.i = getelementptr i8, ptr %178, i32 %conv.i626.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %179 = tail call i32 @llvm.bswap.i32(i32 %or.i244) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i627.i, i32 %179) #9, !srcloc !108
  %arrayidx181.i = getelementptr [7 x i8], ptr %arrayidx148.i, i32 0, i32 1
  %180 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx181.i, align 1
  %conv182.i = sext i8 %181 to i32
  %call183.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv182.i, i8 noundef zeroext 21, i1 noundef zeroext true) #9
  %arrayidx185.i = getelementptr [7 x i8], ptr %arrayidx148.i, i32 0, i32 2
  %182 = ptrtoint ptr %arrayidx185.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx185.i, align 1
  %conv186.i = sext i8 %183 to i32
  %call187.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv186.i, i8 noundef zeroext 20, i1 noundef zeroext true) #9
  %arrayidx189.i = getelementptr [7 x i8], ptr %arrayidx148.i, i32 0, i32 3
  %184 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx189.i, align 1
  %conv190.i = sext i8 %185 to i32
  %call191.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv190.i, i8 noundef zeroext 33, i1 noundef zeroext true) #9
  %g_state.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 6
  %186 = ptrtoint ptr %g_state.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %g_state.i, align 2
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.then166.i, %if.then161.i.if.end193.i_crit_edge
  %arrayidx195.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 35, i32 %ee_mode.1.i
  %187 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx195.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %188)
  %tobool196.not.i = icmp eq i16 %188, 0
  %lnot.ext.i = zext i1 %tobool196.not.i to i32
  %call197.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %lnot.ext.i, i8 noundef zeroext 7, i1 noundef zeroext true) #9
  %arrayidx199.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 36, i32 %ee_mode.1.i
  %189 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %arrayidx199.i, align 2
  %conv200.i = zext i16 %190 to i32
  %call201.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv200.i, i8 noundef zeroext 9, i1 noundef zeroext true) #9
  %arrayidx203.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 37, i32 %ee_mode.1.i
  %191 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %arrayidx203.i, align 2
  %conv204.i = zext i16 %192 to i32
  %call205.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv204.i, i8 noundef zeroext 31, i1 noundef zeroext true) #9
  %193 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %arrayidx195.i, align 2
  %conv209.i = zext i16 %194 to i32
  %call210.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv209.i, i8 noundef zeroext 32, i1 noundef zeroext true) #9
  %195 = ptrtoint ptr %ah_bwmode.i239 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %ah_bwmode.i239, align 1
  %.off621.i = add i8 %196, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off621.i)
  %switch622.i = icmp ult i8 %.off621.i, 2
  br i1 %switch622.i, label %if.then220.i, label %if.end193.i.if.end232thread-pre-split.i_crit_edge

if.end193.i.if.end232thread-pre-split.i_crit_edge: ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end232thread-pre-split.i

if.then220.i:                                     ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #11
  %call221.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 31, i8 noundef zeroext 35, i1 noundef zeroext true) #9
  %197 = ptrtoint ptr %ah_bwmode.i239 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %ah_bwmode.i239, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %198)
  %cmp224.i = icmp eq i8 %198, 1
  %conv227.i = select i1 %cmp224.i, i32 31, i32 16
  %call229.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv227.i, i8 noundef zeroext 36, i1 noundef zeroext true) #9
  %call230.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 3, i8 noundef zeroext 37, i1 noundef zeroext true) #9
  br label %if.end232thread-pre-split.i

if.end232thread-pre-split.i:                      ; preds = %if.then220.i, %if.end193.i.if.end232thread-pre-split.i_crit_edge
  %199 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %.pr640.i = load i32, ptr %ah_radio.i, align 8
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.end232thread-pre-split.i, %if.end157.i.if.end232.i_crit_edge
  %200 = phi i32 [ %.pr640.i, %if.end232thread-pre-split.i ], [ %.pr.i, %if.end157.i.if.end232.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %200)
  %cmp234.i = icmp eq i32 %200, 2
  br i1 %cmp234.i, label %if.then236.i, label %if.end232.i.if.end362.i_crit_edge

if.end232.i.if.end362.i_crit_edge:                ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end362.i

if.then236.i:                                     ; preds = %if.end232.i
  %hw_value237.i = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %201 = ptrtoint ptr %hw_value237.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %hw_value237.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %202)
  %cmp239.not.i = icmp eq i16 %202, 1
  br i1 %cmp239.not.i, label %if.then236.i.if.end272.i_crit_edge, label %if.then241.i

if.then236.i.if.end272.i_crit_edge:               ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end272.i

if.then241.i:                                     ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #11
  %203 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx148.i, align 1
  %conv244.i = sext i8 %204 to i32
  %call245.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv244.i, i8 noundef zeroext 39, i1 noundef zeroext true) #9
  %arrayidx247.i = getelementptr [7 x i8], ptr %arrayidx148.i, i32 0, i32 1
  %205 = ptrtoint ptr %arrayidx247.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx247.i, align 1
  %conv248.i = sext i8 %206 to i32
  %call249.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv248.i, i8 noundef zeroext 27, i1 noundef zeroext true) #9
  %arrayidx251.i = getelementptr [7 x i8], ptr %arrayidx148.i, i32 0, i32 2
  %207 = ptrtoint ptr %arrayidx251.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx251.i, align 1
  %conv252.i = sext i8 %208 to i32
  %call253.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv252.i, i8 noundef zeroext 26, i1 noundef zeroext true) #9
  %arrayidx255.i = getelementptr [7 x i8], ptr %arrayidx148.i, i32 0, i32 3
  %209 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx255.i, align 1
  %conv256.i = sext i8 %210 to i32
  %call257.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv256.i, i8 noundef zeroext 25, i1 noundef zeroext true) #9
  %arrayidx259.i = getelementptr [7 x i8], ptr %arrayidx148.i, i32 0, i32 4
  %211 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx259.i, align 1
  %conv260.i = sext i8 %212 to i32
  %call261.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv260.i, i8 noundef zeroext 24, i1 noundef zeroext true) #9
  %arrayidx263.i = getelementptr [7 x i8], ptr %arrayidx148.i, i32 0, i32 5
  %213 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx263.i, align 1
  %conv264.i = sext i8 %214 to i32
  %call265.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv264.i, i8 noundef zeroext 23, i1 noundef zeroext true) #9
  %arrayidx267.i = getelementptr [7 x i8], ptr %arrayidx148.i, i32 0, i32 6
  %215 = ptrtoint ptr %arrayidx267.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx267.i, align 1
  %conv268.i = sext i8 %216 to i32
  %call269.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv268.i, i8 noundef zeroext 22, i1 noundef zeroext true) #9
  %g_state271.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 106, i32 6
  %217 = ptrtoint ptr %g_state271.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 1, ptr %g_state271.i, align 2
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.then241.i, %if.then236.i.if.end272.i_crit_edge
  %arrayidx275.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 35, i32 %ee_mode.1.i
  %218 = ptrtoint ptr %arrayidx275.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %arrayidx275.i, align 2
  %conv276.i = zext i16 %219 to i32
  %call277.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv276.i, i8 noundef zeroext 8, i1 noundef zeroext true) #9
  %ah_radio_5ghz_revision278.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 73
  %220 = ptrtoint ptr %ah_radio_5ghz_revision278.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %ah_radio_5ghz_revision278.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 53, i16 %221)
  %cmp280.i = icmp ult i16 %221, 53
  br i1 %cmp280.i, label %if.then282.i, label %if.else288.i

if.then282.i:                                     ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx285.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 36, i32 %ee_mode.1.i
  %222 = ptrtoint ptr %arrayidx285.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %arrayidx285.i, align 2
  %conv286.i = zext i16 %223 to i32
  %call287.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv286.i, i8 noundef zeroext 9, i1 noundef zeroext true) #9
  br label %if.end336.i

if.else288.i:                                     ; preds = %if.end272.i
  %arrayidx290.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 44, i32 %ee_mode.1.i
  %arrayidx292.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 43, i32 %ee_mode.1.i
  %224 = ptrtoint ptr %arrayidx292.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx292.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %225)
  %cmp294.i = icmp ugt i8 %225, 1
  %226 = ptrtoint ptr %arrayidx290.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx290.i, align 1
  %conv298.i = zext i8 %227 to i32
  %call299.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv298.i, i8 noundef zeroext 10, i1 noundef zeroext true) #9
  %arrayidx290.sink.idx.i = zext i1 %cmp294.i to i32
  %arrayidx290.sink.i = getelementptr i8, ptr %arrayidx290.i, i32 %arrayidx290.sink.idx.i
  %228 = ptrtoint ptr %arrayidx290.sink.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx290.sink.i, align 1
  %conv308.i = zext i8 %229 to i32
  %call309.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv308.i, i8 noundef zeroext 11, i1 noundef zeroext true) #9
  %230 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %ah_radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %231)
  %cmp312.i = icmp eq i32 %231, 2
  br i1 %cmp312.i, label %land.lhs.true314.i, label %if.else288.i.if.end325.i_crit_edge

if.else288.i.if.end325.i_crit_edge:               ; preds = %if.else288.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end325.i

land.lhs.true314.i:                               ; preds = %if.else288.i
  %232 = ptrtoint ptr %ah_radio_5ghz_revision278.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %ah_radio_5ghz_revision278.i, align 4
  %234 = and i16 %233, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %234)
  %cmp318.not.i = icmp eq i16 %234, 0
  br i1 %cmp318.not.i, label %land.lhs.true314.i.if.end325.i_crit_edge, label %if.then320.i

land.lhs.true314.i.if.end325.i_crit_edge:         ; preds = %land.lhs.true314.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end325.i

if.then320.i:                                     ; preds = %land.lhs.true314.i
  call void @__sanitizer_cov_trace_pc() #11
  %call321.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 2, i8 noundef zeroext 12, i1 noundef zeroext true) #9
  %call322.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 2, i8 noundef zeroext 13, i1 noundef zeroext true) #9
  %call323.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 2, i8 noundef zeroext 14, i1 noundef zeroext true) #9
  %call324.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 2, i8 noundef zeroext 15, i1 noundef zeroext true) #9
  br label %if.end325.i

if.end325.i:                                      ; preds = %if.then320.i, %land.lhs.true314.i.if.end325.i_crit_edge, %if.else288.i.if.end325.i_crit_edge
  %ah_phy_revision.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 72
  %235 = ptrtoint ptr %ah_phy_revision.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %ah_phy_revision.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %236)
  %cmp327.i = icmp ugt i16 %236, 65
  br i1 %cmp327.i, label %if.then329.i, label %if.end325.i.if.end336.i_crit_edge

if.end325.i.if.end336.i_crit_edge:                ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end336.i

if.then329.i:                                     ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #11
  %call330.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 1, i8 noundef zeroext 16, i1 noundef zeroext true) #9
  %call331.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 1, i8 noundef zeroext 17, i1 noundef zeroext true) #9
  %call332.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 1, i8 noundef zeroext 18, i1 noundef zeroext true) #9
  %call333.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 1, i8 noundef zeroext 29, i1 noundef zeroext true) #9
  %call334.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 1, i8 noundef zeroext 28, i1 noundef zeroext true) #9
  br label %if.end336.i

if.end336.i:                                      ; preds = %if.then329.i, %if.end325.i.if.end336.i_crit_edge, %if.then282.i
  %arrayidx339.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 37, i32 %ee_mode.1.i
  %237 = ptrtoint ptr %arrayidx339.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %arrayidx339.i, align 2
  %conv340.i = zext i16 %238 to i32
  %call341.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv340.i, i8 noundef zeroext 31, i1 noundef zeroext true) #9
  %239 = ptrtoint ptr %ah_bwmode.i239 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %ah_bwmode.i239, align 1
  %.off623.i = add i8 %240, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off623.i)
  %switch624.i = icmp ult i8 %.off623.i, 2
  br i1 %switch624.i, label %if.then351.i, label %if.end336.i.if.end362.i_crit_edge

if.end336.i.if.end362.i_crit_edge:                ; preds = %if.end336.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end362.i

if.then351.i:                                     ; preds = %if.end336.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %240)
  %cmp354.i = icmp eq i8 %240, 1
  %conv357.i = select i1 %cmp354.i, i32 15, i32 8
  %call359.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef %conv357.i, i8 noundef zeroext 44, i1 noundef zeroext true) #9
  %call360.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 15, i8 noundef zeroext 41, i1 noundef zeroext true) #9
  br label %if.end362.i

if.end362.i:                                      ; preds = %if.then351.i, %if.end336.i.if.end362.i_crit_edge, %if.end232.i.if.end362.i_crit_edge
  %241 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %.pr642.i = load i32, ptr %ah_radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr642.i)
  %cmp364.i = icmp eq i32 %.pr642.i, 4
  br i1 %cmp364.i, label %if.end362.i.land.lhs.true366.i_crit_edge, label %if.end362.i.if.end383.i_crit_edge

if.end362.i.if.end383.i_crit_edge:                ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end383.i

if.end362.i.land.lhs.true366.i_crit_edge:         ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true366.i

land.lhs.true366.i:                               ; preds = %if.end362.i.land.lhs.true366.i_crit_edge, %land.lhs.true.i.land.lhs.true366.i_crit_edge
  %242 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp368.i = icmp eq i32 %243, 0
  br i1 %cmp368.i, label %if.then370.i, label %land.lhs.true366.i.if.end383.i_crit_edge

land.lhs.true366.i.if.end383.i_crit_edge:         ; preds = %land.lhs.true366.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end383.i

if.then370.i:                                     ; preds = %land.lhs.true366.i
  %call371.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 1, i8 noundef zeroext 30, i1 noundef zeroext true) #9
  %ah_mac_srev372.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 70
  %244 = ptrtoint ptr %ah_mac_srev372.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %ah_mac_srev372.i, align 4
  %246 = add i32 %245, -144
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %246)
  %247 = icmp ult i32 %246, 20
  br i1 %247, label %for.body.i.preheader.i, label %if.then370.i.if.end383.i_crit_edge

if.then370.i.if.end383.i_crit_edge:               ; preds = %if.then370.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end383.i

for.body.i.preheader.i:                           ; preds = %if.then370.i
  call void @__sanitizer_cov_trace_pc() #11
  %call381.i = tail call fastcc i32 @ath5k_hw_rfb_op(ptr noundef %ah, ptr noundef nonnull %rf_regs.1.i, i32 noundef 3, i8 noundef zeroext 19, i1 noundef zeroext true) #9
  br label %if.end383.i

if.end383.i:                                      ; preds = %for.body.i.preheader.i, %if.then370.i.if.end383.i_crit_edge, %land.lhs.true366.i.if.end383.i_crit_edge, %if.end362.i.if.end383.i_crit_edge
  %248 = ptrtoint ptr %ah_rf_banks_size43.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %ah_rf_banks_size43.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp386648.not.i = icmp eq i32 %249, 0
  br i1 %cmp386648.not.i, label %if.end383.i.if.end64_crit_edge, label %if.end383.i.do.body389.i_crit_edge

if.end383.i.do.body389.i_crit_edge:               ; preds = %if.end383.i
  br label %do.body389.i

if.end383.i.if.end64_crit_edge:                   ; preds = %if.end383.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.body389.i:                                     ; preds = %do.end394.i.do.body389.i_crit_edge, %if.end383.i.do.body389.i_crit_edge
  %i.1649.i = phi i32 [ %inc398.i, %do.end394.i.do.body389.i_crit_edge ], [ 0, %if.end383.i.do.body389.i_crit_edge ]
  %250 = and i32 %i.1649.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool390.not.i = icmp eq i32 %250, 0
  br i1 %tobool390.not.i, label %do.body389.i.do.end394.i_crit_edge, label %if.then391.i

do.body389.i.do.end394.i_crit_edge:               ; preds = %do.body389.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end394.i

if.then391.i:                                     ; preds = %do.body389.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %251(i32 noundef 214748) #9
  br label %do.end394.i

do.end394.i:                                      ; preds = %if.then391.i, %do.body389.i.do.end394.i_crit_edge
  %arrayidx395.i = getelementptr i32, ptr %128, i32 %i.1649.i
  %252 = ptrtoint ptr %arrayidx395.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx395.i, align 4
  %rfb_ctrl_register.i = getelementptr %struct.ath5k_ini_rfbuffer, ptr %ini_rfb.1.i, i32 %i.1649.i, i32 1
  %254 = ptrtoint ptr %rfb_ctrl_register.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %rfb_ctrl_register.i, align 2
  %256 = ptrtoint ptr %iobase.i.i225 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %iobase.i.i225, align 4
  %conv.i629.i = zext i16 %255 to i32
  %add.ptr.i630.i = getelementptr i8, ptr %257, i32 %conv.i629.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %258 = tail call i32 @llvm.bswap.i32(i32 %253) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i630.i, i32 %258) #9, !srcloc !108
  %inc398.i = add nuw i32 %i.1649.i, 1
  %259 = ptrtoint ptr %ah_rf_banks_size43.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %ah_rf_banks_size43.i, align 8
  %cmp386.i = icmp ult i32 %inc398.i, %260
  br i1 %cmp386.i, label %do.end394.i.do.body389.i_crit_edge, label %do.end394.i.if.end64_crit_edge

do.end394.i.if.end64_crit_edge:                   ; preds = %do.end394.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end394.i.do.body389.i_crit_edge:               ; preds = %do.end394.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body389.i

cleanup.sink.split.i:                             ; preds = %do.body50.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %.str.23.sink.i = phi ptr [ @.str.22, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @.str.23, %do.body50.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -12, %do.body.i.cleanup.sink.split.i_crit_edge ], [ -22, %do.body50.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull %.str.23.sink.i) #9
  br label %cleanup

if.end64:                                         ; preds = %do.end394.i.if.end64_crit_edge, %if.end383.i.if.end64_crit_edge
  %261 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %ah_radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %262)
  %cmp65 = icmp eq i32 %262, 1
  br i1 %cmp65, label %if.then67, label %if.end64.if.end84_crit_edge

if.end64.if.end84_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp69 = icmp eq i8 %mode, 1
  %263 = ptrtoint ptr %iobase.i.i225 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %iobase.i.i225, align 4
  %add.ptr.i247 = getelementptr i8, ptr %264, i32 48
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i247) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %cmp69, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %266 = or i32 %265, 134217728
  %267 = ptrtoint ptr %iobase.i.i225 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %iobase.i.i225, align 4
  %add.ptr.i249 = getelementptr i8, ptr %268, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249, i32 %266) #9, !srcloc !108
  br label %if.end84

if.else:                                          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %269 = and i32 %265, -134217729
  %270 = ptrtoint ptr %iobase.i.i225 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %iobase.i.i225, align 4
  %add.ptr.i253 = getelementptr i8, ptr %271, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i253, i32 %269) #9, !srcloc !108
  br label %if.end84

if.then82:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #9
  %iobase.i254 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %272 = ptrtoint ptr %iobase.i254 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %iobase.i254, align 4
  %add.ptr.i255 = getelementptr i8, ptr %273, i32 38940
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i255, i32 33554432) #9, !srcloc !108
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #9
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.else, %if.then71, %if.end64.if.end84_crit_edge
  %call85 = tail call fastcc i32 @ath5k_hw_channel(ptr noundef %ah, ptr noundef %channel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end88:                                         ; preds = %if.end84
  %iobase.i256 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %274 = ptrtoint ptr %iobase.i256 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %iobase.i256, align 4
  %add.ptr.i257 = getelementptr i8, ptr %275, i32 38940
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257, i32 16777216) #9, !srcloc !108
  tail call fastcc void @ath5k_hw_wait_for_synth(ptr noundef %ah, ptr noundef %channel)
  %276 = ptrtoint ptr %iobase.i256 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %iobase.i256, align 4
  %add.ptr.i259 = getelementptr i8, ptr %277, i32 38920
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i259) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %279 = ptrtoint ptr %iobase.i256 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %iobase.i256, align 4
  %add.ptr.i261 = getelementptr i8, ptr %280, i32 38920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261, i32 3670016) #9, !srcloc !108
  br label %for.body93

for.body93:                                       ; preds = %if.end98.for.body93_crit_edge, %if.end88
  %i.1286 = phi i32 [ 0, %if.end88 ], [ %inc100, %if.end98.for.body93_crit_edge ]
  %281 = ptrtoint ptr %iobase.i256 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %iobase.i256, align 4
  %add.ptr.i263 = getelementptr i8, ptr %282, i32 39972
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i263) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %284 = and i32 %283, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool96.not = icmp eq i32 %284, 0
  br i1 %tobool96.not, label %for.body93.for.end101_crit_edge, label %if.end98

for.body93.for.end101_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end101

if.end98:                                         ; preds = %for.body93
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 250, i32 noundef 2) #9
  %inc100 = add nuw nsw i32 %i.1286, 1
  %exitcond287.not = icmp eq i32 %inc100, 21
  br i1 %exitcond287.not, label %if.end98.for.end101_crit_edge, label %if.end98.for.body93_crit_edge

if.end98.for.body93_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body93

if.end98.for.end101_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end101

for.end101:                                       ; preds = %if.end98.for.end101_crit_edge, %for.body93.for.end101_crit_edge
  %285 = ptrtoint ptr %iobase.i256 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %iobase.i256, align 4
  %add.ptr.i265 = getelementptr i8, ptr %286, i32 38920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265, i32 %278) #9, !srcloc !108
  %287 = ptrtoint ptr %iobase.i256 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %iobase.i256, align 4
  %add.ptr.i267 = getelementptr i8, ptr %288, i32 39008
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i267) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %290 = or i32 %289, 50331648
  %291 = ptrtoint ptr %iobase.i256 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %iobase.i256, align 4
  %add.ptr.i269 = getelementptr i8, ptr %292, i32 39008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269, i32 %290) #9, !srcloc !108
  %ah_iq_cal_needed = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 66
  %293 = ptrtoint ptr %ah_iq_cal_needed to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %ah_iq_cal_needed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp105 = icmp eq i8 %mode, 1
  br i1 %cmp105, label %for.end101.if.end114_crit_edge, label %if.then107

for.end101.if.end114_crit_edge:                   ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then107:                                       ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #11
  %294 = ptrtoint ptr %ah_iq_cal_needed to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 1, ptr %ah_iq_cal_needed, align 8
  %295 = ptrtoint ptr %iobase.i256 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %iobase.i256, align 4
  %add.ptr.i271 = getelementptr i8, ptr %296, i32 39200
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i271) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %298 = or i32 %297, 15728640
  %299 = ptrtoint ptr %iobase.i256 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %iobase.i256, align 4
  %add.ptr.i273 = getelementptr i8, ptr %300, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273, i32 %298) #9, !srcloc !108
  %301 = ptrtoint ptr %iobase.i256 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %iobase.i256, align 4
  %add.ptr.i275 = getelementptr i8, ptr %302, i32 39200
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %304 = or i32 %303, 256
  %305 = ptrtoint ptr %iobase.i256 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %iobase.i256, align 4
  %add.ptr.i277 = getelementptr i8, ptr %306, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i277, i32 %304) #9, !srcloc !108
  br label %if.end114

if.end114:                                        ; preds = %if.then107, %for.end101.if.end114_crit_edge
  %call115 = tail call i32 @ath5k_hw_register_timeout(ptr noundef %ah, i32 noundef 39008, i32 noundef 1, i32 noundef 0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end114.if.end122_crit_edge, label %do.body

if.end114.if.end122_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

do.body:                                          ; preds = %if.end114
  %call118 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %do.body.if.end122_crit_edge, label %if.then120

do.body.if.end122_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then120:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %307 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %308) #9
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %do.body.if.end122_crit_edge, %if.end114.if.end122_crit_edge
  %ah_ant_mode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 83
  %309 = ptrtoint ptr %ah_ant_mode to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %ah_ant_mode, align 4
  tail call void @ath5k_hw_set_antenna_mode(ptr noundef %ah, i8 noundef zeroext %310)
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.end84.cleanup_crit_edge, %cleanup.sink.split.i, %cond.end127.i.cleanup_crit_edge, %do.body50.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.then47, %sw.epilog.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then47 ], [ 0, %if.end122 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call25, %if.end20.cleanup_crit_edge ], [ %call85, %if.end84.cleanup_crit_edge ], [ -22, %if.then55.cleanup_crit_edge ], [ -22, %sw.epilog.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -22, %cond.end127.i.cleanup_crit_edge ], [ -22, %do.body50.i.cleanup_crit_edge ], [ -12, %do.body.i.cleanup_crit_edge ], [ -22, %if.end59.cleanup_crit_edge ], [ -5, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath5k_hw_channel(ptr noundef %ah, ptr noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %center_freq.i, align 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %3, label %entry.do.body_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then16.i
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then.i:                                        ; preds = %entry
  %conv2.i = and i32 %1, 65535
  %cap_range.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1
  %5 = ptrtoint ptr %cap_range.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cap_range.i, align 4
  %conv3.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv3.i)
  %cmp4.not.i = icmp ult i32 %conv2.i, %conv3.i
  br i1 %cmp4.not.i, label %if.then.i.do.body_crit_edge, label %land.lhs.true.i

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true.i:                                  ; preds = %if.then.i
  %range_2ghz_max.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 1
  %7 = ptrtoint ptr %range_2ghz_max.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %range_2ghz_max.i, align 2
  %conv9.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv9.i)
  %cmp10.not.i = icmp ugt i32 %conv2.i, %conv9.i
  br i1 %cmp10.not.i, label %land.lhs.true.i.do.body_crit_edge, label %land.lhs.true.i.if.end3_crit_edge

land.lhs.true.i.if.end3_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then16.i:                                      ; preds = %entry
  %conv17.i = and i32 %1, 65535
  %range_5ghz_min.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 2
  %9 = ptrtoint ptr %range_5ghz_min.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %range_5ghz_min.i, align 4
  %conv20.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17.i, i32 %conv20.i)
  %cmp21.not.i = icmp ult i32 %conv17.i, %conv20.i
  br i1 %cmp21.not.i, label %if.then16.i.do.body_crit_edge, label %land.lhs.true23.i

if.then16.i.do.body_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true23.i:                                ; preds = %if.then16.i
  %range_5ghz_max.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 3
  %11 = ptrtoint ptr %range_5ghz_max.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %range_5ghz_max.i, align 2
  %conv27.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17.i, i32 %conv27.i)
  %cmp28.not.i = icmp ugt i32 %conv17.i, %conv27.i
  br i1 %cmp28.not.i, label %land.lhs.true23.i.do.body_crit_edge, label %land.lhs.true23.i.if.end3_crit_edge

land.lhs.true23.i.if.end3_crit_edge:              ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

land.lhs.true23.i.do.body_crit_edge:              ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %land.lhs.true23.i.do.body_crit_edge, %if.then16.i.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge, %if.then.i.do.body_crit_edge, %entry.do.body_crit_edge
  %call1 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %center_freq.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, i32 noundef %14) #9
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true23.i.if.end3_crit_edge, %land.lhs.true.i.if.end3_crit_edge
  %ah_radio = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %15 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ah_radio, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 6, label %if.end3.sw.bb7_crit_edge
    i32 7, label %if.end3.sw.bb7_crit_edge84
  ]

if.end3.sw.bb7_crit_edge84:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

if.end3.sw.bb7_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i.i = mul i32 %1, 1000
  %call.i.i.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i.i) #9
  %sub.i.i = add i32 %call.i.i.i, -24
  %div.i.i = sdiv i32 %sub.i.i, 2
  %trunc5.i.i = trunc i32 %div.i.i to i5
  %rev6.i.i = tail call i5 @llvm.bitreverse.i5(i5 %trunc5.i.i) #9
  %or.i.4.i.i = zext i5 %rev6.i.i to i32
  %shl.i.i = shl nuw nsw i32 %or.i.4.i.i, 25
  %or2.i.i = or i32 %shl.i.i, 1090519040
  %iobase.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %18 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 39068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or2.i.i) #9, !srcloc !108
  %20 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %21, i32 39104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #9, !srcloc !108
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #9
  br label %if.end12

sw.bb5:                                           ; preds = %if.end3
  %mul.i.i = mul i32 %1, 1000
  %call.i.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #9
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  br i1 %cmp.i, label %if.then.i39, label %sw.bb5.if.end6.i_crit_edge

sw.bb5.if.end6.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i39:                                      ; preds = %sw.bb5
  %24 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %center_freq.i, align 4
  %mul.i51.i = mul i32 %25, 1000
  %call.i52.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i51.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call.i52.i)
  %cmp.i.i = icmp slt i32 %call.i52.i, 14
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = add nsw i32 %call.i52.i, 115
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call.i52.i)
  %cmp1.i.i = icmp eq i32 %call.i52.i, 14
  br i1 %cmp1.i.i, label %if.else.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %call.i52.i)
  %cmp9.i.i = icmp ult i32 %call.i52.i, 27
  br i1 %cmp9.i.i, label %if.then11.i.i, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = shl nuw nsw i32 %call.i52.i, 2
  %conv13.i.i = add nuw nsw i32 %26, 76
  br label %if.end.i

if.end.i:                                         ; preds = %if.then11.i.i, %if.else.i.i.if.end.i_crit_edge, %if.then.i.i
  %ath5k_channel_2ghz.sroa.5.0.ph.i = phi i32 [ 124, %if.else.i.i.if.end.i_crit_edge ], [ %conv13.i.i, %if.then11.i.i ], [ %conv.i.i, %if.then.i.i ]
  %ath5k_channel_2ghz.sroa.0.0.ph.i = phi i32 [ 1104, %if.else.i.i.if.end.i_crit_edge ], [ 3152, %if.then11.i.i ], [ 3152, %if.then.i.i ]
  %conv.i = and i32 %ath5k_channel_2ghz.sroa.5.0.ph.i, 65535
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %sw.bb5.if.end6.i_crit_edge
  %ath5k_channel.0.i = phi i32 [ %conv.i, %if.end.i ], [ %call.i.i, %sw.bb5.if.end6.i_crit_edge ]
  %data0.0.i = phi i32 [ %ath5k_channel_2ghz.sroa.0.0.ph.i, %if.end.i ], [ 0, %sw.bb5.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 145, i32 %ath5k_channel.0.i)
  %cmp7.i = icmp ult i32 %ath5k_channel.0.i, 145
  %and9.i = and i32 %ath5k_channel.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %or.cond.i = or i1 %cmp7.i, %tobool10.not.i
  %sub.i = add i32 %ath5k_channel.0.i, -24
  br i1 %or.cond.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i55.4.i = lshr i32 %sub.i, 4
  %and.i56.4.i = and i32 %shr.i55.4.i, 1
  %trunc83.i = trunc i32 %ath5k_channel.0.i to i5
  %rev84.i = tail call i5 @llvm.bitreverse.i5(i5 %trunc83.i) #9
  %mask85.i = and i5 %rev84.i, -4
  %27 = zext i5 %mask85.i to i32
  %28 = lshr i32 %sub.i, 2
  %29 = and i32 %28, 2
  %shl.i57.4.i = or i32 %29, %27
  %or.i58.4.i = or i32 %shl.i57.4.i, %and.i56.4.i
  %shr.i55.6.i = lshr i32 %sub.i, 6
  %and.i56.6.i = and i32 %shr.i55.6.i, 1
  %30 = shl nuw nsw i32 %or.i58.4.i, 2
  %31 = and i32 %shr.i55.4.i, 2
  %shl.i57.6.i = or i32 %30, %31
  %or.i58.6.i = or i32 %shl.i57.6.i, %and.i56.6.i
  %32 = shl nuw nsw i32 %or.i58.6.i, 3
  %33 = lshr i32 %sub.i, 5
  %34 = and i32 %33, 4
  %.masked.i = and i32 %32, 1016
  %shl14.i = or i32 %34, %.masked.i
  %or18.i = or i32 %shl14.i, 1027
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %div50.i = lshr i32 %sub.i, 8
  %shr.i65.3.i = lshr i32 %sub.i, 4
  %and.i66.3.i = and i32 %shr.i65.3.i, 1
  %shl.i67.1.i = shl i32 %ath5k_channel.0.i, 2
  %or.i68.181.i = and i32 %shl.i67.1.i, 8
  %sub19.mask.i = and i32 %ath5k_channel.0.i, 4
  %35 = or i32 %or.i68.181.i, %sub19.mask.i
  %36 = lshr i32 %sub.i, 2
  %37 = and i32 %36, 2
  %shl.i67.3.i = or i32 %35, %37
  %or.i68.3.i = or i32 %shl.i67.3.i, %and.i66.3.i
  %shr.i65.5.i = lshr i32 %sub.i, 6
  %and.i66.5.i = and i32 %shr.i65.5.i, 1
  %38 = shl nuw nsw i32 %or.i68.3.i, 2
  %39 = and i32 %shr.i65.3.i, 2
  %shl.i67.5.i = or i32 %38, %39
  %or.i68.5.i = or i32 %shl.i67.5.i, %and.i66.5.i
  %and.i66.7.i = and i32 %div50.i, 1
  %40 = shl i32 %or.i68.5.i, 2
  %41 = and i32 %shr.i65.5.i, 2
  %shl.i67.7.i = or i32 %40, %41
  %or.i68.7.i = or i32 %shl.i67.7.i, %and.i66.7.i
  %and21.i = shl i32 %or.i68.7.i, 2
  %shl22.i = and i32 %and21.i, 1020
  %or26.i = or i32 %shl22.i, 1025
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.then11.i
  %data1.0.i = phi i32 [ %or18.i, %if.then11.i ], [ %or26.i, %if.else.i ]
  %and28.i = and i32 %data1.0.i, 255
  %and29.i = shl nuw nsw i32 %data0.0.i, 8
  %shl30.i = and i32 %and29.i, 65280
  %or31.i = or i32 %and28.i, %shl30.i
  %iobase.i.i40 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %42 = ptrtoint ptr %iobase.i.i40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase.i.i40, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %43, i32 39068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %or31.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41, i32 %44) #9, !srcloc !108
  %shr.i = lshr i32 %data1.0.i, 8
  %and32.i = and i32 %shr.i, 255
  %and33.i = and i32 %data0.0.i, 65280
  %or34.i = or i32 %and32.i, %and33.i
  %45 = ptrtoint ptr %iobase.i.i40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i.i40, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %46, i32 39120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %47 = tail call i32 @llvm.bswap.i32(i32 %or34.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 %47) #9, !srcloc !108
  br label %if.end12

sw.bb7:                                           ; preds = %if.end3.sw.bb7_crit_edge, %if.end3.sw.bb7_crit_edge84
  %conv1.i = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4800, i32 %conv1.i)
  %cmp.i44 = icmp ult i32 %conv1.i, 4800
  br i1 %cmp.i44, label %if.then.i46, label %if.else.i48

if.then.i46:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i45 = add nsw i32 %conv1.i, -2272
  %shr.i.4.i = lshr i32 %sub.i45, 4
  %and.i.4.i = and i32 %shr.i.4.i, 1
  %trunc196.i = trunc i32 %1 to i5
  %rev197.i = tail call i5 @llvm.bitreverse.i5(i5 %trunc196.i) #9
  %mask198.i = and i5 %rev197.i, -4
  %48 = zext i5 %mask198.i to i32
  %49 = lshr i32 %sub.i45, 2
  %50 = and i32 %49, 2
  %shl.i.4.i = or i32 %50, %48
  %or.i.4.i = or i32 %shl.i.4.i, %and.i.4.i
  %shr.i.6.i = lshr i32 %sub.i45, 6
  %and.i.6.i = and i32 %shr.i.6.i, 1
  %51 = shl nuw nsw i32 %or.i.4.i, 2
  %52 = and i32 %shr.i.4.i, 2
  %shl.i.6.i = or i32 %51, %52
  %or.i.6.i = or i32 %shl.i.6.i, %and.i.6.i
  %shr.i.7.i = lshr i32 %sub.i45, 7
  %and.i.7.i = and i32 %shr.i.7.i, 1
  %shl.i.7.i = shl nuw nsw i32 %or.i.6.i, 1
  %or.i.7.i = or i32 %shl.i.7.i, %and.i.7.i
  br label %if.end51.i

if.else.i48:                                      ; preds = %sw.bb7
  %rem.lhs.trunc.i = trunc i32 %1 to i16
  %rem132.i = urem i16 %rem.lhs.trunc.i, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %rem132.i)
  %cmp5.not.i = icmp ne i16 %rem132.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5435, i32 %conv1.i)
  %cmp8.i = icmp ugt i32 %conv1.i, 5435
  %or.cond.i47 = or i1 %cmp8.i, %cmp5.not.i
  br i1 %or.cond.i47, label %if.then10.i, label %if.else43.i

if.then10.i:                                      ; preds = %if.else.i48
  %rem12133.i = urem i16 %rem.lhs.trunc.i, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem12133.i)
  %tobool.not.i = icmp eq i16 %rem12133.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5120, i32 %conv1.i)
  %cmp14.i = icmp ult i32 %conv1.i, 5120
  %or.cond72.i = and i1 %cmp14.i, %tobool.not.i
  br i1 %or.cond72.i, label %if.then16.i49, label %if.else20.i

if.then16.i49:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %div134.lhs.trunc.i = add i16 %rem.lhs.trunc.i, -4800
  %div134135.i = udiv i16 %div134.lhs.trunc.i, 20
  %trunc191.i = trunc i16 %div134135.i to i6
  %rev192.i = tail call i6 @llvm.bitreverse.i6(i6 %trunc191.i) #9
  %or.i78.7.i = zext i6 %rev192.i to i32
  br label %if.end51.i

if.else20.i:                                      ; preds = %if.then10.i
  %rem22136.i = urem i16 %rem.lhs.trunc.i, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem22136.i)
  %tobool23.not.i = icmp eq i16 %rem22136.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.else30.i

if.then24.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #11
  %div27137.lhs.trunc.i = add i16 %rem.lhs.trunc.i, -4800
  %div27137138.i = udiv i16 %div27137.lhs.trunc.i, 10
  %trunc181.i = trunc i16 %div27137138.i to i7
  %rev182.i = tail call i7 @llvm.bitreverse.i7(i7 %trunc181.i) #9
  %or.i88.7.i = zext i7 %rev182.i to i32
  br label %if.end51.i

if.else30.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem132.i)
  %tobool33.not.i = icmp eq i16 %rem132.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.else30.i.cleanup_crit_edge

if.else30.i.cleanup_crit_edge:                    ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #11
  %div37139.lhs.trunc.i = add i16 %rem.lhs.trunc.i, -4800
  %div37139140.i = udiv i16 %div37139.lhs.trunc.i, 5
  %trunc169.i = trunc i16 %div37139140.i to i8
  %rev170.i = tail call i8 @llvm.bitreverse.i8(i8 %trunc169.i) #9
  %or.i98.7.i = zext i8 %rev170.i to i32
  br label %if.end51.i

if.else43.i:                                      ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #11
  %53 = mul i16 %rem.lhs.trunc.i, 10
  %div47.lhs.trunc.i = add i16 %53, 17516
  %div47141.i = sdiv i16 %div47.lhs.trunc.i, 25
  %54 = trunc i16 %div47141.i to i8
  %trunc.i = add i8 %54, 1
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %trunc.i) #9
  %or.i118.7.i = zext i8 %rev.i to i32
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else43.i, %if.then34.i, %if.then24.i, %if.then16.i49, %if.then.i46
  %data0.1.i = phi i32 [ %or.i.7.i, %if.then.i46 ], [ %or.i118.7.i, %if.else43.i ], [ %or.i78.7.i, %if.then16.i49 ], [ %or.i88.7.i, %if.then24.i ], [ %or.i98.7.i, %if.then34.i ]
  %data2.0.i = phi i32 [ 0, %if.then.i46 ], [ 0, %if.else43.i ], [ 8, %if.then16.i49 ], [ 8, %if.then24.i ], [ 8, %if.then34.i ]
  %shl52.i = shl i32 %data0.1.i, 4
  %or.i = or i32 %shl52.i, %data2.0.i
  %or54.i = or i32 %or.i, 4097
  %iobase.i.i50 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %55 = ptrtoint ptr %iobase.i.i50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iobase.i.i50, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %56, i32 39068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %and.i = shl i32 %or54.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i51, i32 %and.i) #9, !srcloc !108
  %57 = ptrtoint ptr %iobase.i.i50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iobase.i.i50, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %58, i32 39128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %59 = shl i32 %or54.i, 16
  %60 = and i32 %59, 2130706432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i, i32 %60) #9, !srcloc !108
  br label %if.end12

sw.default:                                       ; preds = %if.end3
  %conv1.i54 = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4800, i32 %conv1.i54)
  %cmp.i55 = icmp ult i32 %conv1.i54, 4800
  %61 = trunc i32 %1 to i16
  br i1 %cmp.i55, label %if.then.i58, label %if.else20.i66

if.then.i58:                                      ; preds = %sw.default
  %rem.lhs.trunc.i56 = add i16 %61, -2224
  %rem185.i = srem i16 %rem.lhs.trunc.i56, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem185.i)
  %tobool.not.i57 = icmp eq i16 %rem185.i, 0
  br i1 %tobool.not.i57, label %if.then.i58.if.end19.i_crit_edge, label %if.else.i59

if.then.i58.if.end19.i_crit_edge:                 ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.else.i59:                                      ; preds = %if.then.i58
  %rem10.lhs.trunc.i = add i16 %61, -2192
  %rem10187.i = srem i16 %rem10.lhs.trunc.i, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem10187.i)
  %tobool11.not.i = icmp eq i16 %rem10187.i, 0
  br i1 %tobool11.not.i, label %if.else.i59.if.end19.i_crit_edge, label %if.else.i59.cleanup_crit_edge

if.else.i59.cleanup_crit_edge:                    ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i59.if.end19.i_crit_edge:                 ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i59.if.end19.i_crit_edge, %if.then.i58.if.end19.i_crit_edge
  %.sink.i = phi i32 [ -4448, %if.then.i58.if.end19.i_crit_edge ], [ -4384, %if.else.i59.if.end19.i_crit_edge ]
  %data1.0.i60 = phi i32 [ 2, %if.then.i58.if.end19.i_crit_edge ], [ 0, %if.else.i59.if.end19.i_crit_edge ]
  %sub14.i = shl nuw nsw i32 %conv1.i54, 1
  %sub16.i = add nsw i32 %.sink.i, %sub14.i
  %data0.0.lhs.trunc.i = trunc i32 %sub16.i to i16
  %data0.0186.i = sdiv i16 %data0.0.lhs.trunc.i, 10
  %data0.0.sext.i = sext i16 %data0.0186.i to i32
  %shl.i = shl nsw i32 %data0.0.sext.i, 2
  %trunc249.i = trunc i16 %data0.0186.i to i2
  %rev250.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc249.i) #9
  %or.i.3.i = zext i2 %rev250.i to i32
  %shr.i.5.i = lshr i32 %shl.i, 5
  %and.i.5.i = and i32 %shr.i.5.i, 1
  %62 = shl nuw nsw i32 %or.i.3.i, 2
  %63 = lshr i32 %shl.i, 3
  %64 = and i32 %63, 2
  %shl.i.5.i = or i32 %62, %64
  %or.i.5.i = or i32 %shl.i.5.i, %and.i.5.i
  %and.i61 = lshr i32 %shl.i, 7
  %shr.i.7.i62 = and i32 %and.i61, 1
  %65 = shl nuw nsw i32 %or.i.5.i, 2
  %66 = and i32 %shr.i.5.i, 2
  %shl.i.7.i63 = or i32 %65, %66
  %or.i.7.i64 = or i32 %shl.i.7.i63, %shr.i.7.i62
  br label %if.end76.i

if.else20.i66:                                    ; preds = %sw.default
  %rem22188.i = urem i16 %61, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %rem22188.i)
  %cmp23.not.i = icmp ne i16 %rem22188.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5435, i32 %conv1.i54)
  %cmp26.i = icmp ugt i32 %conv1.i54, 5435
  %or.cond.i65 = or i1 %cmp26.i, %cmp23.not.i
  br i1 %or.cond.i65, label %if.then28.i, label %if.else67.i

if.then28.i:                                      ; preds = %if.else20.i66
  %rem30189.i = urem i16 %61, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem30189.i)
  %tobool31.not.i = icmp eq i16 %rem30189.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5119, i32 %conv1.i54)
  %cmp33.i = icmp ugt i32 %conv1.i54, 5119
  %or.cond105.i = and i1 %cmp33.i, %tobool31.not.i
  br i1 %or.cond105.i, label %if.then35.i, label %if.else42.i

if.then35.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  %div38190.lhs.trunc.i = add i16 %61, -4800
  %div38190191.i = udiv i16 %div38190.lhs.trunc.i, 20
  %trunc247.i = trunc i16 %div38190191.i to i6
  %rev248.i = tail call i6 @llvm.bitreverse.i6(i6 %trunc247.i) #9
  %or.i111.7.i = zext i6 %rev248.i to i32
  br label %if.end76.i

if.else42.i:                                      ; preds = %if.then28.i
  %rem44192.i = urem i16 %61, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem44192.i)
  %tobool45.not.i = icmp eq i16 %rem44192.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.else53.i

if.then46.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #11
  %div49193.lhs.trunc.i = add i16 %61, -4800
  %div49193194.i = udiv i16 %div49193.lhs.trunc.i, 10
  %trunc237.i = trunc i16 %div49193194.i to i7
  %rev238.i = tail call i7 @llvm.bitreverse.i7(i7 %trunc237.i) #9
  %or.i131.7.i = zext i7 %rev238.i to i32
  br label %if.end76.i

if.else53.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem22188.i)
  %tobool56.not.i = icmp eq i16 %rem22188.i, 0
  br i1 %tobool56.not.i, label %if.then57.i, label %if.else53.i.cleanup_crit_edge

if.else53.i.cleanup_crit_edge:                    ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57.i:                                      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #11
  %div60195.lhs.trunc.i = add i16 %61, -4800
  %div60195196.i = udiv i16 %div60195.lhs.trunc.i, 5
  %trunc225.i = trunc i16 %div60195196.i to i8
  %rev226.i = tail call i8 @llvm.bitreverse.i8(i8 %trunc225.i) #9
  %or.i151.7.i = zext i8 %rev226.i to i32
  br label %if.end76.i

if.else67.i:                                      ; preds = %if.else20.i66
  call void @__sanitizer_cov_trace_pc() #11
  %67 = mul i16 %61, 10
  %div72.lhs.trunc.i = add i16 %67, 17516
  %div72197.i = sdiv i16 %div72.lhs.trunc.i, 25
  %68 = trunc i16 %div72197.i to i8
  %trunc.i67 = add i8 %68, 1
  %rev.i68 = tail call i8 @llvm.bitreverse.i8(i8 %trunc.i67) #9
  %or.i171.7.i = zext i8 %rev.i68 to i32
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.else67.i, %if.then57.i, %if.then46.i, %if.then35.i, %if.end19.i
  %data0.1.i69 = phi i32 [ %or.i.7.i64, %if.end19.i ], [ %or.i111.7.i, %if.then35.i ], [ %or.i131.7.i, %if.then46.i ], [ %or.i151.7.i, %if.then57.i ], [ %or.i171.7.i, %if.else67.i ]
  %data1.1.i = phi i32 [ %data1.0.i60, %if.end19.i ], [ 0, %if.then35.i ], [ 0, %if.then46.i ], [ 0, %if.then57.i ], [ 0, %if.else67.i ]
  %data2.0.i70 = phi i32 [ 0, %if.end19.i ], [ 12, %if.then35.i ], [ 4, %if.then46.i ], [ 8, %if.then57.i ], [ 0, %if.else67.i ]
  %shl77.i = shl i32 %data0.1.i69, 4
  %or.i71 = or i32 %shl77.i, %data1.1.i
  %or80.i = or i32 %or.i71, %data2.0.i70
  %or81.i = or i32 %or80.i, 4097
  %iobase.i.i72 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %69 = ptrtoint ptr %iobase.i.i72 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iobase.i.i72, align 4
  %add.ptr.i.i73 = getelementptr i8, ptr %70, i32 39068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %and82.i = shl i32 %or81.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i73, i32 %and82.i) #9, !srcloc !108
  %71 = ptrtoint ptr %iobase.i.i72 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iobase.i.i72, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %72, i32 39128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %73 = shl i32 %or81.i, 16
  %74 = and i32 %73, 2130706432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 %74) #9, !srcloc !108
  br label %if.end12

if.end12:                                         ; preds = %if.end76.i, %if.end51.i, %if.end27.i, %sw.bb
  %75 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2484, i32 %76)
  %cmp = icmp eq i32 %76, 2484
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %77 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %78, i32 41476
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %80 = or i32 %79, 268435456
  %81 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %82, i32 41476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %80) #9, !srcloc !108
  br label %if.end18

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %84, i32 41476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %79) #9, !srcloc !108
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %ah_current_channel = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %85 = ptrtoint ptr %ah_current_channel to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %channel, ptr %ah_current_channel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.else53.i.cleanup_crit_edge, %if.else.i59.cleanup_crit_edge, %if.else30.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %land.lhs.true.i.i.cleanup_crit_edge ], [ -22, %if.else30.i.cleanup_crit_edge ], [ -22, %if.else.i59.cleanup_crit_edge ], [ -22, %if.else53.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_hw_wait_for_synth(ptr nocapture noundef readonly %ah, ptr nocapture noundef readonly %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 39188
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %5 = and i32 %4, -12648448
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %7 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp1 = icmp eq i16 %8, 1
  %.tr = trunc i32 %6 to i16
  %div.lhs.trunc = shl nuw i16 %.tr, 2
  %div26 = udiv i16 %div.lhs.trunc, 22
  %div327 = udiv i16 %.tr, 10
  %cond.v = select i1 %cmp1, i16 %div26, i16 %div327
  %cond = zext i16 %cond.v to i32
  %ah_bwmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %9 = ptrtoint ptr %ah_bwmode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ah_bwmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp5 = icmp eq i8 %10, 2
  %shl8 = zext i1 %cmp5 to i32
  %delay.0 = shl nuw nsw i32 %cond, %shl8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp11 = icmp eq i8 %10, 1
  %shl14 = shl nuw nsw i32 %delay.0, 2
  %delay.1 = select i1 %cmp11, i32 %shl14, i32 %delay.0
  %add = add nuw nsw i32 %delay.1, 100
  %mul = shl nuw nsw i32 %delay.1, 1
  %add16 = add nuw nsw i32 %mul, 100
  tail call void @usleep_range_state(i32 noundef %add, i32 noundef %add16, i32 noundef 2) #9
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #9
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_hw_set_spur_mitigation_filter(ptr noundef readonly %ah, ptr nocapture noundef readonly %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %2 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %center_freq, align 4
  %4 = mul i32 %3, 10
  %.499 = select i1 %cmp, i32 42536, i32 16536
  %.500 = zext i1 %cmp to i32
  %conv4 = add i32 %4, %.499
  %ah_bwmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %5 = ptrtoint ptr %ah_bwmode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ah_bwmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp6 = icmp eq i8 %6, 3
  %spec.select = select i1 %cmp6, i32 174, i32 87
  %conv25 = and i32 %conv4, 65534
  %sub27 = sub nsw i32 %conv25, %spec.select
  %add = add nuw nsw i32 %spec.select, %conv25
  %arrayidx17 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 0, i32 %.500
  %7 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp19 = icmp eq i16 %8, -32768
  br i1 %cmp19, label %entry.if.else232_crit_edge, label %if.end24

entry.if.else232_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else232

for.cond:                                         ; preds = %if.end24
  %arrayidx17.1 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 1, i32 %.500
  %9 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx17.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %10)
  %cmp19.1 = icmp eq i16 %10, -32768
  br i1 %cmp19.1, label %for.cond.if.else232_crit_edge, label %if.end24.1

for.cond.if.else232_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else232

if.end24.1:                                       ; preds = %for.cond
  %11 = and i16 %10, 16383
  %and29.1 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27, i32 %and29.1)
  %cmp30.not.1 = icmp sgt i32 %sub27, %and29.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and29.1)
  %cmp36.not.1 = icmp ult i32 %add, %and29.1
  %or.cond.1 = select i1 %cmp30.not.1, i1 true, i1 %cmp36.not.1
  br i1 %or.cond.1, label %for.cond.1, label %if.end24.1.for.end_crit_edge

if.end24.1.for.end_crit_edge:                     ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %if.end24.1
  %arrayidx17.2 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 2, i32 %.500
  %12 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx17.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %13)
  %cmp19.2 = icmp eq i16 %13, -32768
  br i1 %cmp19.2, label %for.cond.1.if.else232_crit_edge, label %if.end24.2

for.cond.1.if.else232_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else232

if.end24.2:                                       ; preds = %for.cond.1
  %14 = and i16 %13, 16383
  %and29.2 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27, i32 %and29.2)
  %cmp30.not.2 = icmp sgt i32 %sub27, %and29.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and29.2)
  %cmp36.not.2 = icmp ult i32 %add, %and29.2
  %or.cond.2 = select i1 %cmp30.not.2, i1 true, i1 %cmp36.not.2
  br i1 %or.cond.2, label %for.cond.2, label %if.end24.2.for.end_crit_edge

if.end24.2.for.end_crit_edge:                     ; preds = %if.end24.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.2:                                       ; preds = %if.end24.2
  %arrayidx17.3 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 3, i32 %.500
  %15 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx17.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %16)
  %cmp19.3 = icmp eq i16 %16, -32768
  br i1 %cmp19.3, label %for.cond.2.if.else232_crit_edge, label %if.end24.3

for.cond.2.if.else232_crit_edge:                  ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else232

if.end24.3:                                       ; preds = %for.cond.2
  %17 = and i16 %16, 16383
  %and29.3 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27, i32 %and29.3)
  %cmp30.not.3 = icmp sgt i32 %sub27, %and29.3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and29.3)
  %cmp36.not.3 = icmp ult i32 %add, %and29.3
  %or.cond.3 = select i1 %cmp30.not.3, i1 true, i1 %cmp36.not.3
  br i1 %or.cond.3, label %for.cond.3, label %if.end24.3.for.end_crit_edge

if.end24.3.for.end_crit_edge:                     ; preds = %if.end24.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.3:                                       ; preds = %if.end24.3
  %arrayidx17.4 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 4, i32 %.500
  %18 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx17.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %19)
  %cmp19.4 = icmp eq i16 %19, -32768
  br i1 %cmp19.4, label %for.cond.3.if.else232_crit_edge, label %if.end24.4

for.cond.3.if.else232_crit_edge:                  ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else232

if.end24.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  %20 = and i16 %19, 16383
  %and29.4 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27, i32 %and29.4)
  %cmp30.not.4 = icmp sgt i32 %sub27, %and29.4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and29.4)
  %cmp36.not.4 = icmp ult i32 %add, %and29.4
  %or.cond.4 = select i1 %cmp30.not.4, i1 true, i1 %cmp36.not.4
  %spec.select498 = select i1 %or.cond.4, i16 %19, i16 %20
  br label %for.end

if.end24:                                         ; preds = %entry
  %21 = and i16 %8, 16383
  %and29 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27, i32 %and29)
  %cmp30.not = icmp sgt i32 %sub27, %and29
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and29)
  %cmp36.not = icmp ult i32 %add, %and29
  %or.cond = select i1 %cmp30.not, i1 true, i1 %cmp36.not
  br i1 %or.cond, label %for.cond, label %if.end24.for.end_crit_edge

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %if.end24.4, %if.end24.3.for.end_crit_edge, %if.end24.2.for.end_crit_edge, %if.end24.1.for.end_crit_edge
  %spur_chan_fbin.1 = phi i16 [ %21, %if.end24.for.end_crit_edge ], [ %11, %if.end24.1.for.end_crit_edge ], [ %14, %if.end24.2.for.end_crit_edge ], [ %17, %if.end24.3.for.end_crit_edge ], [ %spec.select498, %if.end24.4 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spur_chan_fbin.1)
  %tobool.not = icmp eq i16 %spur_chan_fbin.1, 0
  br i1 %tobool.not, label %for.end.if.else232_crit_edge, label %if.then43

for.end.if.else232_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else232

if.then43:                                        ; preds = %for.end
  %conv44 = zext i16 %spur_chan_fbin.1 to i32
  %sub46 = sub nsw i32 %conv44, %conv25
  %22 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %6, label %sw.default [
    i8 3, label %sw.bb
    i8 2, label %sw.bb49
    i8 1, label %sw.bb53
  ]

sw.bb:                                            ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 %sub46, 16
  %div = sdiv i32 %shl, 25
  %shr = ashr i32 %div, 10
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %shl50 = shl i32 %sub46, 18
  %div51 = sdiv i32 %shl50, 25
  %shr52 = ashr i32 %div51, 10
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %shl54 = shl i32 %sub46, 19
  %div55 = sdiv i32 %shl54, 25
  %shr56 = ashr i32 %div55, 10
  br label %sw.epilog

sw.default:                                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp58 = icmp eq i32 %1, 1
  %shl61 = shl i32 %sub46, 17
  %div62 = sdiv i32 %shl61, 25
  br i1 %cmp58, label %if.then60, label %if.else64

if.then60:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %shr63 = ashr i32 %div62, 10
  br label %sw.epilog

if.else64:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %shl67 = shl nsw i32 %sub46, 8
  %div68 = sdiv i32 %shl67, 55
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else64, %if.then60, %sw.bb53, %sw.bb49, %sw.bb
  %symbol_width.0 = phi i32 [ 3125, %if.then60 ], [ 3125, %if.else64 ], [ 781, %sw.bb53 ], [ 1562, %sw.bb49 ], [ 6250, %sw.bb ]
  %spur_delta_phase.0 = phi i32 [ %div62, %if.then60 ], [ %div62, %if.else64 ], [ %div55, %sw.bb53 ], [ %div51, %sw.bb49 ], [ %div, %sw.bb ]
  %spur_freq_sigma_delta.0 = phi i32 [ %shr63, %if.then60 ], [ %div68, %if.else64 ], [ %shr56, %sw.bb53 ], [ %shr52, %sw.bb49 ], [ %shr, %sw.bb ]
  %shl71 = mul nsw i32 %sub46, 16000
  %div73 = sdiv i32 %shl71, %symbol_width.0
  %and74 = and i32 %div73, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %. = select i1 %tobool75.not, i32 3, i32 4
  %div85 = sdiv i32 %div73, 16
  %sub94 = add nsw i32 %., -1
  br label %for.body84

for.body84:                                       ; preds = %if.end186.for.body84_crit_edge, %sw.epilog
  %indvars.iv = phi i32 [ 0, %sw.epilog ], [ %indvars.iv.next, %if.end186.for.body84_crit_edge ]
  %pilot_mask.sroa.9.0492 = phi i32 [ 0, %sw.epilog ], [ %pilot_mask.sroa.9.1477, %if.end186.for.body84_crit_edge ]
  %pilot_mask.sroa.0.0491 = phi i32 [ 0, %sw.epilog ], [ %pilot_mask.sroa.0.1475, %if.end186.for.body84_crit_edge ]
  %mag_mask.sroa.15.0490 = phi i32 [ 0, %sw.epilog ], [ %mag_mask.sroa.15.1, %if.end186.for.body84_crit_edge ]
  %mag_mask.sroa.11.0489 = phi i32 [ 0, %sw.epilog ], [ %mag_mask.sroa.11.1, %if.end186.for.body84_crit_edge ]
  %mag_mask.sroa.7.0488 = phi i32 [ 0, %sw.epilog ], [ %mag_mask.sroa.7.1, %if.end186.for.body84_crit_edge ]
  %mag_mask.sroa.0.0487 = phi i32 [ 0, %sw.epilog ], [ %mag_mask.sroa.0.1, %if.end186.for.body84_crit_edge ]
  %add87 = add nsw i32 %indvars.iv, %div85
  %add88 = add nsw i32 %add87, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %cmp90 = icmp eq i32 %indvars.iv, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub94, i32 %indvars.iv)
  %cmp95 = icmp eq i32 %sub94, %indvars.iv
  %23 = select i1 %cmp90, i1 true, i1 %cmp95
  %conv97 = select i1 %23, i8 1, i8 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add88)
  %24 = icmp ult i32 %add88, 33
  br i1 %24, label %if.then103, label %if.else119

if.then103:                                       ; preds = %for.body84
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add87)
  %cmp104 = icmp slt i32 %add87, 1
  br i1 %cmp104, label %if.then106, label %if.else109

if.then106:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  %shl107 = shl nuw nsw i32 1, %add88
  %or = or i32 %shl107, %pilot_mask.sroa.0.0491
  br label %if.end131

if.else109:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add87)
  %cmp110.not = icmp eq i32 %add87, 1
  br i1 %cmp110.not, label %if.else109.if.then150_crit_edge, label %if.then112

if.else109.if.then150_crit_edge:                  ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then150

if.then112:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #11
  %shl114 = shl nuw i32 16777216, %add87
  %or116 = or i32 %shl114, %pilot_mask.sroa.0.0491
  br label %if.else144

if.else119:                                       ; preds = %for.body84
  %25 = add nsw i32 %add87, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %25)
  %26 = icmp ult i32 %25, 20
  br i1 %26, label %if.else144.thread, label %if.else119.if.end131_crit_edge

if.else119.if.end131_crit_edge:                   ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.else144.thread:                                ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #11
  %shl127 = shl nuw nsw i32 1, %25
  %or129 = or i32 %shl127, %pilot_mask.sroa.9.0492
  br label %if.else157

if.end131:                                        ; preds = %if.else119.if.end131_crit_edge, %if.then106
  %pilot_mask.sroa.0.1 = phi i32 [ %or, %if.then106 ], [ %pilot_mask.sroa.0.0491, %if.else119.if.end131_crit_edge ]
  %27 = add nsw i32 %add87, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %27)
  %28 = icmp ult i32 %27, 16
  br i1 %28, label %if.then137, label %if.end131.if.else144_crit_edge

if.end131.if.else144_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else144

if.then137:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  %conv138 = zext i8 %conv97 to i32
  %add139 = shl nsw i32 %add87, 1
  %mul140 = add nsw i32 %add139, 52
  %shl141 = shl nuw i32 %conv138, %mul140
  %or143 = or i32 %shl141, %mag_mask.sroa.0.0487
  br label %if.end186

if.else144:                                       ; preds = %if.end131.if.else144_crit_edge, %if.then112
  %pilot_mask.sroa.0.1476 = phi i32 [ %pilot_mask.sroa.0.1, %if.end131.if.else144_crit_edge ], [ %or116, %if.then112 ]
  %29 = add nsw i32 %add87, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %29)
  %30 = icmp ult i32 %29, 16
  br i1 %30, label %if.else144.if.then150_crit_edge, label %if.else144.if.else157_crit_edge

if.else144.if.else157_crit_edge:                  ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else157

if.else144.if.then150_crit_edge:                  ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then150

if.then150:                                       ; preds = %if.else144.if.then150_crit_edge, %if.else109.if.then150_crit_edge
  %pilot_mask.sroa.0.1476497 = phi i32 [ %pilot_mask.sroa.0.1476, %if.else144.if.then150_crit_edge ], [ %pilot_mask.sroa.0.0491, %if.else109.if.then150_crit_edge ]
  %conv151 = zext i8 %conv97 to i32
  %sub152 = shl nsw i32 %add87, 1
  %mul153 = add nsw i32 %sub152, 20
  %shl154 = shl i32 %conv151, %mul153
  %or156 = or i32 %shl154, %mag_mask.sroa.7.0488
  br label %if.end186

if.else157:                                       ; preds = %if.else144.if.else157_crit_edge, %if.else144.thread
  %pilot_mask.sroa.0.1476485 = phi i32 [ %pilot_mask.sroa.0.0491, %if.else144.thread ], [ %pilot_mask.sroa.0.1476, %if.else144.if.else157_crit_edge ]
  %pilot_mask.sroa.9.1478484 = phi i32 [ %or129, %if.else144.thread ], [ %pilot_mask.sroa.9.0492, %if.else144.if.else157_crit_edge ]
  %31 = add nsw i32 %add87, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %31)
  %32 = icmp ult i32 %31, 16
  br i1 %32, label %if.then163, label %if.else170

if.then163:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #11
  %conv164 = zext i8 %conv97 to i32
  %sub165 = shl nuw nsw i32 %add87, 1
  %mul166 = add nsw i32 %sub165, -12
  %shl167 = shl nuw i32 %conv164, %mul166
  %or169 = or i32 %shl167, %mag_mask.sroa.11.0489
  br label %if.end186

if.else170:                                       ; preds = %if.else157
  %33 = add nsw i32 %add87, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %34 = icmp ult i32 %33, 7
  br i1 %34, label %if.then176, label %if.else170.if.end186_crit_edge

if.else170.if.end186_crit_edge:                   ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186

if.then176:                                       ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #11
  %conv177 = zext i8 %conv97 to i32
  %sub178 = shl nuw nsw i32 %add87, 1
  %mul179 = add nsw i32 %sub178, -44
  %shl180 = shl nuw nsw i32 %conv177, %mul179
  %or182 = or i32 %shl180, %mag_mask.sroa.15.0490
  br label %if.end186

if.end186:                                        ; preds = %if.then176, %if.else170.if.end186_crit_edge, %if.then163, %if.then150, %if.then137
  %pilot_mask.sroa.9.1477 = phi i32 [ %pilot_mask.sroa.9.0492, %if.then137 ], [ %pilot_mask.sroa.9.0492, %if.then150 ], [ %pilot_mask.sroa.9.1478484, %if.then163 ], [ %pilot_mask.sroa.9.1478484, %if.then176 ], [ %pilot_mask.sroa.9.1478484, %if.else170.if.end186_crit_edge ]
  %pilot_mask.sroa.0.1475 = phi i32 [ %pilot_mask.sroa.0.1, %if.then137 ], [ %pilot_mask.sroa.0.1476497, %if.then150 ], [ %pilot_mask.sroa.0.1476485, %if.then163 ], [ %pilot_mask.sroa.0.1476485, %if.then176 ], [ %pilot_mask.sroa.0.1476485, %if.else170.if.end186_crit_edge ]
  %mag_mask.sroa.0.1 = phi i32 [ %or143, %if.then137 ], [ %mag_mask.sroa.0.0487, %if.then150 ], [ %mag_mask.sroa.0.0487, %if.then163 ], [ %mag_mask.sroa.0.0487, %if.then176 ], [ %mag_mask.sroa.0.0487, %if.else170.if.end186_crit_edge ]
  %mag_mask.sroa.7.1 = phi i32 [ %mag_mask.sroa.7.0488, %if.then137 ], [ %or156, %if.then150 ], [ %mag_mask.sroa.7.0488, %if.then163 ], [ %mag_mask.sroa.7.0488, %if.then176 ], [ %mag_mask.sroa.7.0488, %if.else170.if.end186_crit_edge ]
  %mag_mask.sroa.11.1 = phi i32 [ %mag_mask.sroa.11.0489, %if.then137 ], [ %mag_mask.sroa.11.0489, %if.then150 ], [ %or169, %if.then163 ], [ %mag_mask.sroa.11.0489, %if.then176 ], [ %mag_mask.sroa.11.0489, %if.else170.if.end186_crit_edge ]
  %mag_mask.sroa.15.1 = phi i32 [ %mag_mask.sroa.15.0490, %if.then137 ], [ %mag_mask.sroa.15.0490, %if.then150 ], [ %mag_mask.sroa.15.0490, %if.then163 ], [ %or182, %if.then176 ], [ %mag_mask.sroa.15.0490, %if.else170.if.end186_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %.
  br i1 %exitcond.not, label %for.end189, label %if.end186.for.body84_crit_edge

if.end186.for.body84_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body84

for.end189:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %35 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 39180
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %38 = or i32 %37, 255
  %39 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i385 = getelementptr i8, ptr %40, i32 39180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i385, i32 %38) #9, !srcloc !108
  %41 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i387 = getelementptr i8, ptr %42, i32 39200
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i387) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %44 = or i32 %43, 112
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i389 = getelementptr i8, ptr %46, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i389, i32 %44) #9, !srcloc !108
  %and195 = and i32 %spur_delta_phase.0, 1048575
  %shl196 = shl i32 %spur_freq_sigma_delta.0, 20
  %and197 = and i32 %shl196, 1072693248
  %or198 = or i32 %and195, %and197
  %or199 = or i32 %or198, 1073741824
  %47 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i391 = getelementptr i8, ptr %48, i32 39328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %or199) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i391, i32 %49) #9, !srcloc !108
  %50 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i393 = getelementptr i8, ptr %51, i32 39296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %52 = tail call i32 @llvm.bswap.i32(i32 %pilot_mask.sroa.0.1475) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i393, i32 %52) #9, !srcloc !108
  %53 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i395 = getelementptr i8, ptr %54, i32 39300
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i395) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %56 = and i32 %55, 61695
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %and205 = and i32 %pilot_mask.sroa.9.1477, 1048575
  %or206 = or i32 %57, %and205
  %58 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i397 = getelementptr i8, ptr %59, i32 39300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %60 = tail call i32 @llvm.bswap.i32(i32 %or206) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i397, i32 %60) #9, !srcloc !108
  %61 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i399 = getelementptr i8, ptr %62, i32 39320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i399, i32 %52) #9, !srcloc !108
  %63 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i401 = getelementptr i8, ptr %64, i32 39324
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i401) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %66 = and i32 %65, 61695
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %or213 = or i32 %67, %and205
  %68 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i403 = getelementptr i8, ptr %69, i32 39324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %70 = tail call i32 @llvm.bswap.i32(i32 %or213) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i403, i32 %70) #9, !srcloc !108
  %71 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i405 = getelementptr i8, ptr %72, i32 39168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %73 = tail call i32 @llvm.bswap.i32(i32 %mag_mask.sroa.0.1) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i405, i32 %73) #9, !srcloc !108
  %74 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i407 = getelementptr i8, ptr %75, i32 39172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %76 = tail call i32 @llvm.bswap.i32(i32 %mag_mask.sroa.7.1) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i407, i32 %76) #9, !srcloc !108
  %77 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i409 = getelementptr i8, ptr %78, i32 39176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %79 = tail call i32 @llvm.bswap.i32(i32 %mag_mask.sroa.11.1) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i409, i32 %79) #9, !srcloc !108
  %80 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i411 = getelementptr i8, ptr %81, i32 39180
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i411) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %83 = and i32 %82, 12648447
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %and221 = and i32 %mag_mask.sroa.15.1, 16383
  %or222 = or i32 %84, %and221
  %85 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i413 = getelementptr i8, ptr %86, i32 39180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %87 = tail call i32 @llvm.bswap.i32(i32 %or222) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i413, i32 %87) #9, !srcloc !108
  %88 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i415 = getelementptr i8, ptr %89, i32 39304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i415, i32 %73) #9, !srcloc !108
  %90 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i417 = getelementptr i8, ptr %91, i32 39308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i417, i32 %76) #9, !srcloc !108
  %92 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i419 = getelementptr i8, ptr %93, i32 39312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i419, i32 %79) #9, !srcloc !108
  %94 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i421 = getelementptr i8, ptr %95, i32 39316
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i421) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %97 = and i32 %96, 12648447
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %or231 = or i32 %98, %and221
  %99 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i423 = getelementptr i8, ptr %100, i32 39316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %101 = tail call i32 @llvm.bswap.i32(i32 %or231) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i423, i32 %101) #9, !srcloc !108
  br label %if.end255

if.else232:                                       ; preds = %for.end.if.else232_crit_edge, %for.cond.3.if.else232_crit_edge, %for.cond.2.if.else232_crit_edge, %for.cond.1.if.else232_crit_edge, %for.cond.if.else232_crit_edge, %entry.if.else232_crit_edge
  %iobase.i424 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %102 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i425 = getelementptr i8, ptr %103, i32 39200
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i425) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %105 = and i32 %104, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool235.not = icmp eq i32 %105, 0
  br i1 %tobool235.not, label %if.else232.if.end255_crit_edge, label %if.then236

if.else232.if.end255_crit_edge:                   ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end255

if.then236:                                       ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i427 = getelementptr i8, ptr %107, i32 39180
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i427) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %109 = and i32 %108, -256
  %110 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i429 = getelementptr i8, ptr %111, i32 39180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i429, i32 %109) #9, !srcloc !108
  %112 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i431 = getelementptr i8, ptr %113, i32 39200
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i431) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %115 = and i32 %114, -113
  %116 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i433 = getelementptr i8, ptr %117, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i433, i32 %115) #9, !srcloc !108
  %118 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i435 = getelementptr i8, ptr %119, i32 39328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i435, i32 0) #9, !srcloc !108
  %120 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i437 = getelementptr i8, ptr %121, i32 39296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i437, i32 0) #9, !srcloc !108
  %122 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i439 = getelementptr i8, ptr %123, i32 39300
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i439) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %125 = and i32 %124, 61695
  %126 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i441 = getelementptr i8, ptr %127, i32 39300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i441, i32 %125) #9, !srcloc !108
  %128 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i443 = getelementptr i8, ptr %129, i32 39320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i443, i32 0) #9, !srcloc !108
  %130 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i445 = getelementptr i8, ptr %131, i32 39324
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i445) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %133 = and i32 %132, 61695
  %134 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i447 = getelementptr i8, ptr %135, i32 39324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i447, i32 %133) #9, !srcloc !108
  %136 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i449 = getelementptr i8, ptr %137, i32 39168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i449, i32 0) #9, !srcloc !108
  %138 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i451 = getelementptr i8, ptr %139, i32 39172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i451, i32 0) #9, !srcloc !108
  %140 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i453 = getelementptr i8, ptr %141, i32 39176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i453, i32 0) #9, !srcloc !108
  %142 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i455 = getelementptr i8, ptr %143, i32 39180
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i455) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %145 = and i32 %144, 12648447
  %146 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i457 = getelementptr i8, ptr %147, i32 39180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i457, i32 %145) #9, !srcloc !108
  %148 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i459 = getelementptr i8, ptr %149, i32 39304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i459, i32 0) #9, !srcloc !108
  %150 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i461 = getelementptr i8, ptr %151, i32 39308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i461, i32 0) #9, !srcloc !108
  %152 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i463 = getelementptr i8, ptr %153, i32 39312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i463, i32 0) #9, !srcloc !108
  %154 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i465 = getelementptr i8, ptr %155, i32 39316
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i465) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %157 = and i32 %156, 12648447
  %158 = ptrtoint ptr %iobase.i424 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %iobase.i424, align 4
  %add.ptr.i467 = getelementptr i8, ptr %159, i32 39316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i467, i32 %157) #9, !srcloc !108
  br label %if.end255

if.end255:                                        ; preds = %if.then236, %if.else232.if.end255_crit_edge, %for.end189
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath5k_hw_rfb_op(ptr nocapture noundef readonly %ah, ptr noundef readonly %rf_regs, i32 noundef %val, i8 noundef zeroext %reg_id, i1 noundef zeroext %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_rf_banks = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 103
  %0 = ptrtoint ptr %ah_rf_banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah_rf_banks, align 4
  %ah_rf_regs_count = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 105
  %2 = ptrtoint ptr %ah_rf_regs_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ah_rf_regs_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp185.not = icmp eq i32 %3, 0
  br i1 %cmp185.not, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0186 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %index = getelementptr %struct.ath5k_rf_reg, ptr %rf_regs, i32 %i.0186, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %reg_id)
  %cmp3 = icmp eq i8 %5, %reg_id
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0186, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.end:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.ath5k_rf_reg, ptr %rf_regs, i32 %i.0186
  %cmp6 = icmp eq ptr %1, null
  %cmp8 = icmp eq ptr %arrayidx, null
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8
  br i1 %or.cond, label %for.end.do.end_crit_edge, label %if.end11

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end11:                                         ; preds = %for.end
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 2
  %pos = getelementptr %struct.ath5k_rf_reg, ptr %rf_regs, i32 %i.0186, i32 2, i32 1
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pos, align 2
  %conv14 = zext i16 %9 to i32
  %col16 = getelementptr %struct.ath5k_rf_reg, ptr %rf_regs, i32 %i.0186, i32 2, i32 2
  %10 = ptrtoint ptr %col16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %col16, align 2
  %idxprom = zext i8 %7 to i32
  %arrayidx17 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 107, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp19 = icmp ult i8 %11, 4
  br i1 %cmp19, label %land.lhs.true, label %if.end11.do.end31_crit_edge

if.end11.do.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

land.lhs.true:                                    ; preds = %if.end11
  %field = getelementptr %struct.ath5k_rf_reg, ptr %rf_regs, i32 %i.0186, i32 2
  %14 = ptrtoint ptr %field to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %field, align 2
  %conv21 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %15)
  %cmp22 = icmp ult i8 %15, 33
  %add = add nuw nsw i32 %conv21, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %add)
  %cmp26 = icmp ult i32 %add, 320
  %or.cond166 = select i1 %cmp22, i1 %cmp26, i1 false
  br i1 %or.cond166, label %if.end35, label %land.lhs.true.do.end31_crit_edge

land.lhs.true.do.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end31:                                         ; preds = %land.lhs.true.do.end31_crit_edge, %if.end11.do.end31_crit_edge
  %conv33 = zext i8 %13 to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, i32 noundef %conv33) #13
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true
  %sub = add nsw i32 %conv14, -1
  %div164 = lshr i32 %sub, 3
  %conv36 = zext i8 %13 to i32
  %add37 = add nuw nsw i32 %div164, %conv36
  %conv38 = trunc i32 %add37 to i16
  %conv40 = and i32 %sub, 7
  %set.not = xor i1 %set, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp5.not.i = icmp eq i8 %15, 0
  %or.cond183 = select i1 %set.not, i1 true, i1 %cmp5.not.i
  br i1 %or.cond183, label %if.end35.if.end44_crit_edge, label %if.end35.for.body.i_crit_edge

if.end35.for.body.i_crit_edge:                    ; preds = %if.end35
  br label %for.body.i

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end35.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end35.for.body.i_crit_edge ]
  %retval1.06.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end35.for.body.i_crit_edge ]
  %shr.i = lshr i32 %val, %i.07.i
  %and.i = and i32 %shr.i, 1
  %shl.i = shl i32 %retval1.06.i, 1
  %or.i = or i32 %and.i, %shl.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv21
  br i1 %exitcond.not.i, label %for.body.i.if.end44_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end44_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.end44:                                         ; preds = %for.body.i.if.end44_crit_edge, %if.end35.if.end44_crit_edge
  %data.0 = phi i32 [ 0, %if.end35.if.end44_crit_edge ], [ %or.i, %for.body.i.if.end44_crit_edge ]
  br i1 %cmp5.not.i, label %for.end95.thread200, label %for.body49.lr.ph

for.body49.lr.ph:                                 ; preds = %if.end44
  %mul = shl nuw nsw i32 %conv18, 3
  %add51.peel = add nuw nsw i32 %conv40, %conv21
  %16 = tail call i32 @llvm.smin.i32(i32 %add51.peel, i32 8)
  %notmask.peel = shl nsw i32 -1, %16
  %notmask165.peel = shl nsw i32 -1, %conv40
  %xor.peel = xor i32 %notmask.peel, %notmask165.peel
  %shl61.peel = shl i32 %xor.peel, %mul
  br i1 %set, label %if.end89.peel, label %if.end89.peel.thread

if.end89.peel:                                    ; preds = %for.body49.lr.ph
  %neg.peel = xor i32 %shl61.peel, -1
  %idxprom64.peel = and i32 %add37, 65535
  %arrayidx65.peel = getelementptr i32, ptr %1, i32 %idxprom64.peel
  %17 = ptrtoint ptr %arrayidx65.peel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx65.peel, align 4
  %and.peel = and i32 %18, %neg.peel
  %shl67.peel = shl i32 %data.0, %conv40
  %shl70.peel = shl i32 %shl67.peel, %mul
  %and71.peel = and i32 %shl61.peel, %shl70.peel
  %or.peel = or i32 %and.peel, %and71.peel
  store i32 %or.peel, ptr %arrayidx65.peel, align 4
  %sub75.peel = sub nuw nsw i32 8, %conv40
  %shr.peel = lshr i32 %data.0, %sub75.peel
  %sub91.neg.peel = or i32 %sub, -8
  %sub92.peel = add nsw i32 %sub91.neg.peel, %conv21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub92.peel)
  %cmp47.peel = icmp sgt i32 %sub92.peel, 0
  br i1 %cmp47.peel, label %if.end89.peel.for.body49.outer.preheader_crit_edge, label %if.end89.peel.cleanup_crit_edge

if.end89.peel.cleanup_crit_edge:                  ; preds = %if.end89.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end89.peel.for.body49.outer.preheader_crit_edge: ; preds = %if.end89.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49.outer.preheader

if.end89.peel.thread:                             ; preds = %for.body49.lr.ph
  %idxprom76.peel = and i32 %add37, 65535
  %arrayidx77.peel = getelementptr i32, ptr %1, i32 %idxprom76.peel
  %19 = ptrtoint ptr %arrayidx77.peel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx77.peel, align 4
  %and78.peel = and i32 %20, %shl61.peel
  %shr81.peel = lshr i32 %and78.peel, %mul
  %shr83.peel = lshr i32 %shr81.peel, %conv40
  %or85.peel = or i32 %shr83.peel, %data.0
  %add88.peel = sub nsw i32 %16, %conv40
  %sub91.neg.peel213 = or i32 %sub, -8
  %sub92.peel214 = add nsw i32 %sub91.neg.peel213, %conv21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub92.peel214)
  %cmp47.peel215 = icmp sgt i32 %sub92.peel214, 0
  br i1 %cmp47.peel215, label %if.end89.peel.thread.for.body49.outer.preheader_crit_edge, label %if.end89.peel.thread.for.body.i176.preheader_crit_edge

if.end89.peel.thread.for.body.i176.preheader_crit_edge: ; preds = %if.end89.peel.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i176.preheader

if.end89.peel.thread.for.body49.outer.preheader_crit_edge: ; preds = %if.end89.peel.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49.outer.preheader

for.body49.outer.preheader:                       ; preds = %if.end89.peel.thread.for.body49.outer.preheader_crit_edge, %if.end89.peel.for.body49.outer.preheader_crit_edge
  %bits_left.0193.ph.ph = phi i32 [ %sub92.peel, %if.end89.peel.for.body49.outer.preheader_crit_edge ], [ %sub92.peel214, %if.end89.peel.thread.for.body49.outer.preheader_crit_edge ]
  %bits_shifted.0192.ph.ph = phi i32 [ 0, %if.end89.peel.for.body49.outer.preheader_crit_edge ], [ %add88.peel, %if.end89.peel.thread.for.body49.outer.preheader_crit_edge ]
  %data.1191.ph.ph = phi i32 [ %shr.peel, %if.end89.peel.for.body49.outer.preheader_crit_edge ], [ %or85.peel, %if.end89.peel.thread.for.body49.outer.preheader_crit_edge ]
  br label %for.body49.outer

for.body49.outer:                                 ; preds = %if.end89.thread.for.body49.outer_crit_edge, %for.body49.outer.preheader
  %bits_left.0193.ph = phi i32 [ %sub92206, %if.end89.thread.for.body49.outer_crit_edge ], [ %bits_left.0193.ph.ph, %for.body49.outer.preheader ]
  %bits_shifted.0192.ph = phi i32 [ %add88, %if.end89.thread.for.body49.outer_crit_edge ], [ %bits_shifted.0192.ph.ph, %for.body49.outer.preheader ]
  %data.1191.ph = phi i32 [ %or85, %if.end89.thread.for.body49.outer_crit_edge ], [ %data.1191.ph.ph, %for.body49.outer.preheader ]
  %entry1.0189.in.ph = phi i16 [ %entry1.0189, %if.end89.thread.for.body49.outer_crit_edge ], [ %conv38, %for.body49.outer.preheader ]
  br label %for.body49

for.body49:                                       ; preds = %if.end89.for.body49_crit_edge, %for.body49.outer
  %bits_left.0193 = phi i32 [ %sub92, %if.end89.for.body49_crit_edge ], [ %bits_left.0193.ph, %for.body49.outer ]
  %data.1191 = phi i32 [ %shr, %if.end89.for.body49_crit_edge ], [ %data.1191.ph, %for.body49.outer ]
  %entry1.0189.in = phi i16 [ %entry1.0189, %if.end89.for.body49_crit_edge ], [ %entry1.0189.in.ph, %for.body49.outer ]
  %entry1.0189 = add i16 %entry1.0189.in, 1
  %21 = tail call i32 @llvm.smin.i32(i32 %bits_left.0193, i32 8)
  %notmask = shl nsw i32 -1, %21
  %xor = xor i32 %notmask, -1
  %shl61 = shl i32 %xor, %mul
  br i1 %set, label %if.end89, label %if.end89.thread

if.end89:                                         ; preds = %for.body49
  %neg = xor i32 %shl61, -1
  %idxprom64 = zext i16 %entry1.0189 to i32
  %arrayidx65 = getelementptr i32, ptr %1, i32 %idxprom64
  %22 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx65, align 4
  %and = and i32 %23, %neg
  %shl70 = shl i32 %data.1191, %mul
  %and71 = and i32 %shl61, %shl70
  %or = or i32 %and, %and71
  store i32 %or, ptr %arrayidx65, align 4
  %shr = lshr i32 %data.1191, 8
  %sub92 = add nsw i32 %bits_left.0193, -8
  %cmp47 = icmp sgt i32 %bits_left.0193, 8
  br i1 %cmp47, label %if.end89.for.body49_crit_edge, label %if.end89.cleanup_crit_edge, !llvm.loop !117

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end89.for.body49_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49

if.end89.thread:                                  ; preds = %for.body49
  %idxprom76 = zext i16 %entry1.0189 to i32
  %arrayidx77 = getelementptr i32, ptr %1, i32 %idxprom76
  %24 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx77, align 4
  %and78 = and i32 %25, %shl61
  %shr81 = lshr i32 %and78, %mul
  %shl84 = shl i32 %shr81, %bits_shifted.0192.ph
  %or85 = or i32 %shl84, %data.1191
  %add88 = add i32 %bits_shifted.0192.ph, %21
  %sub92206 = add nsw i32 %bits_left.0193, -8
  %cmp47207 = icmp ugt i32 %bits_left.0193, 8
  br i1 %cmp47207, label %if.end89.thread.for.body49.outer_crit_edge, label %cond.false99, !llvm.loop !117

if.end89.thread.for.body49.outer_crit_edge:       ; preds = %if.end89.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49.outer

for.end95.thread200:                              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select = zext i1 %set to i32
  br label %cleanup

cond.false99:                                     ; preds = %if.end89.thread
  br i1 %cmp5.not.i, label %cond.false99.cleanup_crit_edge, label %cond.false99.for.body.i176.preheader_crit_edge

cond.false99.for.body.i176.preheader_crit_edge:   ; preds = %cond.false99
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i176.preheader

cond.false99.cleanup_crit_edge:                   ; preds = %cond.false99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i176.preheader:                          ; preds = %cond.false99.for.body.i176.preheader_crit_edge, %if.end89.peel.thread.for.body.i176.preheader_crit_edge
  %data.1.lcssa197199 = phi i32 [ %or85, %cond.false99.for.body.i176.preheader_crit_edge ], [ %or85.peel, %if.end89.peel.thread.for.body.i176.preheader_crit_edge ]
  br label %for.body.i176

for.body.i176:                                    ; preds = %for.body.i176.for.body.i176_crit_edge, %for.body.i176.preheader
  %i.07.i168 = phi i32 [ %inc.i174, %for.body.i176.for.body.i176_crit_edge ], [ 0, %for.body.i176.preheader ]
  %retval1.06.i169 = phi i32 [ %or.i173, %for.body.i176.for.body.i176_crit_edge ], [ 0, %for.body.i176.preheader ]
  %shr.i170 = lshr i32 %data.1.lcssa197199, %i.07.i168
  %and.i171 = and i32 %shr.i170, 1
  %shl.i172 = shl i32 %retval1.06.i169, 1
  %or.i173 = or i32 %and.i171, %shl.i172
  %inc.i174 = add nuw nsw i32 %i.07.i168, 1
  %exitcond.not.i175 = icmp eq i32 %inc.i174, %conv21
  br i1 %exitcond.not.i175, label %for.body.i176.cleanup_crit_edge, label %for.body.i176.for.body.i176_crit_edge

for.body.i176.for.body.i176_crit_edge:            ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i176

for.body.i176.cleanup_crit_edge:                  ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.i176.cleanup_crit_edge, %cond.false99.cleanup_crit_edge, %for.end95.thread200, %if.end89.cleanup_crit_edge, %if.end89.peel.cleanup_crit_edge, %do.end31, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end31 ], [ 0, %cond.false99.cleanup_crit_edge ], [ %spec.select, %for.end95.thread200 ], [ 1, %if.end89.peel.cleanup_crit_edge ], [ %or.i173, %for.body.i176.cleanup_crit_edge ], [ 1, %if.end89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_regd_get_band_ctl(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.usub.sat.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i5 @llvm.bitreverse.i5(i5) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i6 @llvm.bitreverse.i6(i6) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i7 @llvm.bitreverse.i7(i7) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !42, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 1603, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.ath5k_hw_update_noise_floor, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 1618, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 1657, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 1863, i32 3}
!10 = !{ptr @__func__.ath5k_hw_phy_calibrate, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 3726, i32 2}
!13 = !{ptr @__func__.ath5k_hw_set_txpower_limit, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 3953, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rfgain_opt_5111, !18, !"rfgain_opt_5111", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath5k/rfgain.h", i32 493, i32 36}
!19 = !{ptr @rfgain_opt_5112, !20, !"rfgain_opt_5112", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath5k/rfgain.h", i32 520, i32 36}
!21 = !{ptr @rf_regs_5112a, !22, !"rf_regs_5112a", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 415, i32 34}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 215, i32 3}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ath5k_hw_rfb_op._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @ath5k_hw_rfb_op._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 233, i32 3}
!31 = !{ptr @ath5k_hw_rfb_op._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ath5k_hw_rfb_op._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @rf_regs_5111, !34, !"rf_regs_5111", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 190, i32 34}
!35 = !{ptr @rf_regs_5112, !36, !"rf_regs_5112", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 298, i32 34}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 659, i32 2}
!39 = !{ptr @__func__.ath5k_hw_rf_gainf_adjust, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 1579, i32 3}
!42 = !{ptr @__func__.ath5k_hw_get_median_noise_floor, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 1752, i32 3}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 1782, i32 3}
!47 = !{ptr @__func__.ath5k_hw_rf511x_iq_calibrate, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 1795, i32 3}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 1825, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 3608, i32 3}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 1441, i32 3}
!56 = !{ptr @rfgain_5111, !57, !"rfgain_5111", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath5k/rfgain.h", i32 36, i32 38}
!58 = !{ptr @rfgain_5112, !59, !"rfgain_5112", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath5k/rfgain.h", i32 105, i32 38}
!60 = !{ptr @rfgain_2413, !61, !"rfgain_2413", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath5k/rfgain.h", i32 174, i32 38}
!62 = !{ptr @rfgain_2316, !63, !"rfgain_2316", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath5k/rfgain.h", i32 242, i32 38}
!64 = !{ptr @rfgain_5413, !65, !"rfgain_5413", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath5k/rfgain.h", i32 311, i32 38}
!66 = !{ptr @rfgain_2425, !67, !"rfgain_2425", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath5k/rfgain.h", i32 381, i32 38}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 892, i32 4}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath5k/phy.c", i32 902, i32 4}
!72 = !{ptr @rfb_5111, !73, !"rfb_5111", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 210, i32 40}
!74 = !{ptr @rfb_5112a, !75, !"rfb_5112a", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 454, i32 40}
!76 = !{ptr @rfb_5112, !77, !"rfb_5112", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 327, i32 40}
!78 = !{ptr @rf_regs_2413, !79, !"rf_regs_2413", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 527, i32 34}
!80 = !{ptr @rfb_2413, !81, !"rfb_2413", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 536, i32 40}
!82 = !{ptr @rf_regs_2316, !83, !"rf_regs_2316", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 586, i32 34}
!84 = !{ptr @rfb_2316, !85, !"rfb_2316", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 593, i32 40}
!86 = !{ptr @rf_regs_5413, !87, !"rf_regs_5413", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 648, i32 34}
!88 = !{ptr @rfb_5413, !89, !"rfb_5413", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 658, i32 40}
!90 = !{ptr @rf_regs_2425, !91, !"rf_regs_2425", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 719, i32 34}
!92 = !{ptr @rfb_2317, !93, !"rfb_2317", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 771, i32 40}
!94 = !{ptr @rfb_2425, !95, !"rfb_2425", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 727, i32 40}
!96 = !{ptr @rfb_2417, !97, !"rfb_2417", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath5k/rfbuffer.h", i32 815, i32 40}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 2152284489}
!108 = !{i64 4742367}
!109 = !{i64 2152283134}
!110 = !{i64 4742785}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i8 0, i8 2}
!113 = !{i32 0, i32 33}
!114 = distinct !{!114, !115}
!115 = !{!"llvm.loop.peeled.count", i32 1}
!116 = !{!"branch_weights", i32 1, i32 2000}
!117 = distinct !{!117, !115}
