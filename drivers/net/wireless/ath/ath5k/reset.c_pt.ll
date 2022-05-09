; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/reset.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ath5k_hw = type { %struct.ath_common, ptr, ptr, i32, i16, ptr, %struct.mutex, ptr, [6 x %struct.ieee80211_supported_band], [314 x %struct.ieee80211_channel], [6 x [32 x %struct.ieee80211_rate]], [6 x [32 x i8]], i32, %struct.ath5k_dbg_info, ptr, ptr, i32, i32, [1 x i32], i32, i32, ptr, i16, i32, %struct.spinlock, i8, i8, [6 x i8], i32, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, %struct.tasklet_struct, %struct.ath5k_led, %struct.list_head, %struct.spinlock, i32, [10 x %struct.ath5k_txq], %struct.tasklet_struct, %struct.ath5k_led, %struct.ath5k_rfkill, %struct.spinlock, %struct.tasklet_struct, %struct.list_head, [4 x ptr], i16, i16, i16, i32, i32, i32, i32, i32, ptr, i8, i8, %struct.ath5k_statistics, %struct.ath5k_ani_state, %struct.tasklet_struct, %struct.delayed_work, %struct.survey_info, i32, ptr, i8, i8, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x [3 x i32]], i8, i8, i8, %struct.ath5k_capabilities, [10 x %struct.ath5k_txq_info], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.ath5k_gain, [8 x i8], %struct.anon.138, %struct.ath5k_nfcal_hist, %struct.ewma_beacon_rssi, i32, i32, i32, i32, i8, ptr, ptr, ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.131, i32 }
%union.anon.131 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath5k_capabilities = type { [1 x i32], %struct.anon.135, %struct.ath5k_eeprom_info, %struct.anon.137, i8, i8, i8 }
%struct.anon.135 = type { i16, i16, i16, i16 }
%struct.ath5k_eeprom_info = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x [11 x i16]], [3 x [4 x i16]], [3 x [4 x i16]], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i8], [3 x [4 x i8]], [3 x i8], [10 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [3 x i8], [10 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], i8, [32 x i8], [256 x %struct.ath5k_edge_power], [3 x i16], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, [5 x [2 x i16]], [3 x [3 x i32]] }
%struct.ath5k_chan_pcal_info = type { i16, i16, i16, %union.anon.136, ptr }
%union.anon.136 = type { %struct.ath5k_chan_pcal_info_rf2413 }
%struct.ath5k_chan_pcal_info_rf2413 = type { [4 x i8], [4 x i8], [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.ath5k_rate_pcal_info = type { i16, i16, i16, i16, i16 }
%struct.ath5k_edge_power = type { i16, i16, i8 }
%struct.anon.137 = type { i8 }
%struct.ath5k_txq_info = type { i32, i32, i16, i8, i16, i16, i32, i32, i32, i32 }
%struct.ath5k_gain = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.138 = type { [4 x [64 x i8]], [4 x [64 x i8]], [128 x i8], [32 x i16], i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i32 }
%struct.ath5k_nfcal_hist = type { i16, [8 x i16] }
%struct.ewma_beacon_rssi = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.129, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.129 = type { ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to wakeup the MAC Chip\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to put device on warm reset\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to put device on hold\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to reset the MAC Chip\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to resume the MAC Chip\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to warm reset the MAC Chip\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid radio frequency mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"G mode not available on 5210/5211\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"B mode not available on 5210\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid channel: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"(%s:%d): fast chan change failed, falling back to normal reset\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_reset = private unnamed_addr constant [15 x i8] c"ath5k_hw_reset\00", align 1
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(%s:%d): fast chan change successful\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize PHY (%i) !\0A\00", [63 x i8] zeroinitializer }, align 32
@switch.table.ath5k_hw_set_sleep_clock = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4992, i32 3968, i32 4992, i32 4992, i32 4992], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 619, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 644, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 651, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 713, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 720, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 733, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 784, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1178, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1185, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1191, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1203, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1209, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath5k/reset.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1342, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [38 x i8] c"switch.table.ath5k_hw_set_sleep_clock\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @switch.table.ath5k_hw_set_sleep_clock], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_hw_set_sleep_clock to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_register_timeout(ptr nocapture noundef readonly %ah, i32 noundef %reg, i32 noundef %flag, i32 noundef %val, i1 noundef zeroext %is_set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %conv.i = and i32 %reg, 65535
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 20000, %entry ], [ %dec, %if.end7.for.body_crit_edge ]
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !38
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %and = and i32 %3, %flag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  %or.cond.not = select i1 %is_set, i1 %tobool2.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %val)
  %cmp4 = icmp eq i32 %and, %val
  %or.cond14 = select i1 %or.cond.not, i1 true, i1 %cmp4
  br i1 %or.cond14, label %for.body.for.end_crit_edge, label %if.end7

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end7:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 3221220) #4
  %dec = add nsw i32 %i.015, -1
  %cmp = icmp ugt i32 %i.015, 1
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %for.body.for.end_crit_edge
  %cond = phi i32 [ 0, %for.body.for.end_crit_edge ], [ -11, %if.end7.for.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath5k_hw_htoclock(ptr nocapture noundef readonly %ah, i32 noundef %usec) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clockrate = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 18
  %0 = ptrtoint ptr %clockrate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clockrate, align 4
  %mul = mul i32 %1, %usec
  ret i32 %mul
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath5k_hw_clocktoh(ptr nocapture noundef readonly %ah, i32 noundef %clock) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clockrate = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 18
  %0 = ptrtoint ptr %clockrate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clockrate, align 4
  %div = udiv i32 %clock, %1
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_on_hold(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 25
  %2 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @ath5k_hw_set_power_mode(ptr noundef %ah)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %if.end
  %call4 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.end8.land.end_crit_edge, label %land.rhs

if.end8.land.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not = icmp eq i8 %7, 0
  %phi.bo = select i1 %tobool.i.not, i32 19, i32 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end8.land.end_crit_edge
  %8 = phi i32 [ 19, %if.end8.land.end_crit_edge ], [ %phi.bo, %land.rhs ]
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %9 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11 = icmp eq i32 %10, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.end
  %iobase.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %11 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %14 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %15, i32 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 520093696) #4, !srcloc !41
  tail call void @usleep_range_state(i32 noundef 15, i32 noundef 20, i32 noundef 2) #4
  %16 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %val.addr.0.v.i = select i1 %cmp.i, i32 15, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end7.i.i.for.body.i.i_crit_edge, %if.then12
  %i.015.i.i = phi i32 [ 20000, %if.then12 ], [ %dec.i.i, %if.end7.i.i.for.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 16384
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !38
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %and.i.i = and i32 %21, %val.addr.0.v.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %val.addr.0.v.i)
  %cmp4.i.i = icmp eq i32 %and.i.i, %val.addr.0.v.i
  br i1 %cmp4.i.i, label %for.body.i.i.ath5k_hw_nic_reset.exit_crit_edge, label %if.end7.i.i

for.body.i.i.ath5k_hw_nic_reset.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_nic_reset.exit

if.end7.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 3221220) #4
  %dec.i.i = add nsw i32 %i.015.i.i, -1
  %cmp.i.i = icmp ugt i32 %i.015.i.i, 1
  br i1 %cmp.i.i, label %if.end7.i.i.for.body.i.i_crit_edge, label %if.end7.i.i.ath5k_hw_nic_reset.exit_crit_edge

if.end7.i.i.ath5k_hw_nic_reset.exit_crit_edge:    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_nic_reset.exit

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

ath5k_hw_nic_reset.exit:                          ; preds = %if.end7.i.i.ath5k_hw_nic_reset.exit_crit_edge, %for.body.i.i.ath5k_hw_nic_reset.exit_crit_edge
  %cond.i.i = phi i32 [ 0, %for.body.i.i.ath5k_hw_nic_reset.exit_crit_edge ], [ -11, %if.end7.i.i.ath5k_hw_nic_reset.exit_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #4
  br label %if.end15

if.else:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call fastcc i32 @ath5k_hw_nic_reset(ptr noundef %ah, i32 noundef %8)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %ath5k_hw_nic_reset.exit
  %ret.0 = phi i32 [ %cond.i.i, %ath5k_hw_nic_reset.exit ], [ %call14, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool16.not = icmp eq i32 %ret.0, 0
  br i1 %tobool16.not, label %if.end25, label %do.body18

do.body18:                                        ; preds = %if.end15
  %call19 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %do.body18.cleanup.sink.split_crit_edge

do.body18.cleanup.sink.split_crit_edge:           ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %call26 = tail call fastcc i32 @ath5k_hw_set_power_mode(ptr noundef %ah)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %do.body29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body29:                                        ; preds = %if.end25
  %call30 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body29.cleanup_crit_edge, label %do.body29.cleanup.sink.split_crit_edge

do.body29.cleanup.sink.split_crit_edge:           ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body29.cleanup.sink.split_crit_edge, %do.body18.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.3.sink = phi ptr [ @.str.1, %do.body.cleanup.sink.split_crit_edge ], [ @.str.2, %do.body18.cleanup.sink.split_crit_edge ], [ @.str.3, %do.body29.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call2, %do.body.cleanup.sink.split_crit_edge ], [ -5, %do.body18.cleanup.sink.split_crit_edge ], [ %call26, %do.body29.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull %.str.3.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.body18.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %do.body.cleanup_crit_edge ], [ -5, %do.body18.cleanup_crit_edge ], [ %call26, %do.body29.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath5k_hw_set_power_mode(ptr nocapture noundef readonly %ah) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32772
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %3 = and i32 %2, -1025
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %5, i32 16388
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #4, !srcloc !38
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %7)
  %tobool15.not = icmp ult i32 %7, 4194304
  %and17 = and i32 %7, -196609
  %data.0 = select i1 %tobool15.not, i32 %and17, i32 0
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %9, i32 16388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %data.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %10) #4, !srcloc !41
  tail call void @usleep_range_state(i32 noundef 15, i32 noundef 20, i32 noundef 2) #4
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 200, %entry ], [ %dec, %if.end26.for.body_crit_edge ]
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %12, i32 16400
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp23 = icmp eq i32 %14, 0
  br i1 %cmp23, label %commit, label %if.end26

if.end26:                                         ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 75, i32 noundef 2) #4
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %16, i32 16388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %10) #4, !srcloc !41
  %dec = add nsw i32 %i.011, -1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %if.end26.cleanup_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

commit:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %18, i32 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %3) #4, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %commit, %if.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %commit ], [ -5, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath5k_hw_nic_reset(ptr nocapture noundef readonly %ah, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %spec.select = select i1 %tobool.not, i32 15, i32 %val
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %4, i32 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %val) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %5) #4, !srcloc !41
  tail call void @usleep_range_state(i32 noundef 15, i32 noundef 20, i32 noundef 2) #4
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %6 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %val.addr.0.v = select i1 %cmp, i32 15, i32 3
  %val.addr.0 = and i32 %val.addr.0.v, %val
  %mask.0 = and i32 %val.addr.0.v, %spec.select
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry
  %i.015.i = phi i32 [ 20000, %entry ], [ %dec.i, %if.end7.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 16384
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !38
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %and.i = and i32 %mask.0, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %val.addr.0)
  %cmp4.i = icmp eq i32 %and.i, %val.addr.0
  br i1 %cmp4.i, label %for.body.i.ath5k_hw_register_timeout.exit_crit_edge, label %if.end7.i

for.body.i.ath5k_hw_register_timeout.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_register_timeout.exit

if.end7.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 3221220) #4
  %dec.i = add nsw i32 %i.015.i, -1
  %cmp.i = icmp ugt i32 %i.015.i, 1
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.ath5k_hw_register_timeout.exit_crit_edge

if.end7.i.ath5k_hw_register_timeout.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_register_timeout.exit

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

ath5k_hw_register_timeout.exit:                   ; preds = %if.end7.i.ath5k_hw_register_timeout.exit_crit_edge, %for.body.i.ath5k_hw_register_timeout.exit_crit_edge
  %cond.i = phi i32 [ 0, %for.body.i.ath5k_hw_register_timeout.exit_crit_edge ], [ -11, %if.end7.i.ath5k_hw_register_timeout.exit_crit_edge ]
  %and5 = and i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %if.then7, label %ath5k_hw_register_timeout.exit.if.end8_crit_edge

ath5k_hw_register_timeout.exit.if.end8_crit_edge: ; preds = %ath5k_hw_register_timeout.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then7:                                         ; preds = %ath5k_hw_register_timeout.exit
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 83886080) #4, !srcloc !41
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %ath5k_hw_register_timeout.exit.if.end8_crit_edge
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_nic_wakeup(ptr noundef %ah, ptr noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 25
  %2 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  %tobool.not = icmp eq ptr %channel, null
  %or.cond = and i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @ath5k_hw_set_power_mode(ptr noundef %ah)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end9_crit_edge, label %do.body

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

do.body:                                          ; preds = %if.then
  %call5 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %if.end9.land.end_crit_edge, label %land.rhs

if.end9.land.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i = icmp ne i8 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end9.land.end_crit_edge
  %8 = phi i1 [ false, %if.end9.land.end_crit_edge ], [ %tobool.i, %land.rhs ]
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %9 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %land.end
  %iobase.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %11 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %14 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %15, i32 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 520093696) #4, !srcloc !41
  tail call void @usleep_range_state(i32 noundef 15, i32 noundef 20, i32 noundef 2) #4
  %16 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %val.addr.0.v.i = select i1 %cmp.i, i32 15, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end7.i.i.for.body.i.i_crit_edge, %if.then13
  %i.015.i.i = phi i32 [ 20000, %if.then13 ], [ %dec.i.i, %if.end7.i.i.for.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 16384
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !38
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %and.i.i = and i32 %21, %val.addr.0.v.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %val.addr.0.v.i)
  %cmp4.i.i = icmp eq i32 %and.i.i, %val.addr.0.v.i
  br i1 %cmp4.i.i, label %for.body.i.i.ath5k_hw_nic_reset.exit_crit_edge, label %if.end7.i.i

for.body.i.i.ath5k_hw_nic_reset.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_nic_reset.exit

if.end7.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 3221220) #4
  %dec.i.i = add nsw i32 %i.015.i.i, -1
  %cmp.i.i = icmp ugt i32 %i.015.i.i, 1
  br i1 %cmp.i.i, label %if.end7.i.i.for.body.i.i_crit_edge, label %if.end7.i.i.ath5k_hw_nic_reset.exit_crit_edge

if.end7.i.i.ath5k_hw_nic_reset.exit_crit_edge:    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_nic_reset.exit

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

ath5k_hw_nic_reset.exit:                          ; preds = %if.end7.i.i.ath5k_hw_nic_reset.exit_crit_edge, %for.body.i.i.ath5k_hw_nic_reset.exit_crit_edge
  %cond.i.i = phi i32 [ 0, %for.body.i.i.ath5k_hw_nic_reset.exit_crit_edge ], [ -11, %if.end7.i.i.ath5k_hw_nic_reset.exit_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #4
  br label %if.end22

if.else:                                          ; preds = %land.end
  %23 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus_ops.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp16 = icmp eq i32 %26, 1
  br i1 %cmp16, label %if.end22.thread, label %if.else19

if.end22.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ath5k_hw_wisoc_reset(ptr noundef %ah, i32 noundef 3)
  br label %if.end32

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %or = select i1 %8, i32 3, i32 19
  %call20 = tail call fastcc i32 @ath5k_hw_nic_reset(ptr noundef %ah, i32 noundef %or)
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %ath5k_hw_nic_reset.exit
  %ret.0 = phi i32 [ %cond.i.i, %ath5k_hw_nic_reset.exit ], [ %call20, %if.else19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool23.not = icmp eq i32 %ret.0, 0
  br i1 %tobool23.not, label %if.end22.if.end32_crit_edge, label %do.body25

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

do.body25:                                        ; preds = %if.end22
  %call26 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body25.cleanup_crit_edge, label %if.then28

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #4
  br label %cleanup

if.end32:                                         ; preds = %if.end22.if.end32_crit_edge, %if.end22.thread
  %call33 = tail call fastcc i32 @ath5k_hw_set_power_mode(ptr noundef %ah)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end43, label %do.body36

do.body36:                                        ; preds = %if.end32
  %call37 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.body36.cleanup_crit_edge, label %if.then39

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then39:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #4
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %27 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus_ops.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp45 = icmp eq i32 %30, 1
  br i1 %cmp45, label %if.end50.thread, label %if.end50

if.end50.thread:                                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ath5k_hw_wisoc_reset(ptr noundef %ah, i32 noundef 0)
  br label %if.end60

if.end50:                                         ; preds = %if.end43
  %call49 = tail call fastcc i32 @ath5k_hw_nic_reset(ptr noundef %ah, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool51.not = icmp eq i32 %call49, 0
  br i1 %tobool51.not, label %if.end50.if.end60_crit_edge, label %do.body53

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

do.body53:                                        ; preds = %if.end50
  %call54 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body53.cleanup_crit_edge, label %if.then56

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then56:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #4
  br label %cleanup

if.end60:                                         ; preds = %if.end50.if.end60_crit_edge, %if.end50.thread
  br i1 %tobool.not, label %if.end60.cleanup_crit_edge, label %if.end63

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end63:                                         ; preds = %if.end60
  %31 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp65.not = icmp eq i32 %32, 0
  br i1 %cmp65.not, label %if.else160, label %if.then66

if.then66:                                        ; preds = %if.end63
  %ah_radio = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %33 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ah_radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp67 = icmp ugt i32 %34, 1
  %. = select i1 %cmp67, i32 8, i32 0
  %.241 = select i1 %cmp67, i32 64, i32 0
  %35 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %do.body110 [
    i32 0, label %if.then72
    i32 1, label %if.then96
  ]

if.then72:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp75 = icmp eq i32 %32, 1
  %cond76 = select i1 %cmp75, i32 25, i32 171
  %or77 = or i32 %.241, %cond76
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %38 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp78 = icmp eq i16 %39, 1
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #6
  %or81 = or i32 %., 3
  br label %if.end118

if.else82:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #6
  %spec.select242.v = select i1 %cmp75, i32 2, i32 6
  %spec.select242 = or i32 %., %spec.select242.v
  br label %if.end118

if.then96:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp99 = icmp eq i32 %34, 4
  br i1 %cmp99, label %if.then96.if.end118_crit_edge, label %if.else102

if.then96.if.end118_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end118

if.else102:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp104 = icmp eq i32 %32, 1
  %cond106 = select i1 %cmp104, i32 24, i32 170
  %or107 = or i32 %.241, %cond106
  br label %if.end118

do.body110:                                       ; preds = %if.then66
  %call111 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %do.body110.cleanup_crit_edge, label %if.then113

do.body110.cleanup_crit_edge:                     ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then113:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #4
  br label %cleanup

if.end118:                                        ; preds = %if.else102, %if.then96.if.end118_crit_edge, %if.else82, %if.then80
  %mode.1 = phi i32 [ %or81, %if.then80 ], [ %., %if.else102 ], [ %., %if.then96.if.end118_crit_edge ], [ %spec.select242, %if.else82 ]
  %clock.1 = phi i32 [ %or77, %if.then80 ], [ %or107, %if.else102 ], [ 4, %if.then96.if.end118_crit_edge ], [ %or77, %if.else82 ]
  %ah_bwmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %40 = ptrtoint ptr %ah_bwmode to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ah_bwmode, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %41, label %if.then134 [
    i8 3, label %if.then122
    i8 0, label %if.end118.if.end167_crit_edge
  ]

if.end118.if.end167_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %34)
  %cmp124.not = icmp eq i32 %34, 7
  %spec.select = select i1 %cmp124.not, i32 16777216, i32 50331648
  br label %if.end167

if.then134:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp136 = icmp eq i32 %34, 4
  br i1 %cmp136, label %if.then138, label %if.else145

if.then138:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp141 = icmp eq i8 %41, 2
  %cond143 = select i1 %cmp141, i32 32, i32 64
  %or144 = or i32 %cond143, %mode.1
  br label %if.end167

if.else145:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp147 = icmp eq i32 %32, 2
  br i1 %cmp147, label %if.then149, label %if.else145.if.end167_crit_edge

if.else145.if.end167_crit_edge:                   ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

if.then149:                                       ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp152 = icmp eq i8 %41, 2
  %cond154 = select i1 %cmp152, i32 256, i32 512
  %or155 = or i32 %cond154, %clock.1
  br label %if.end167

if.else160:                                       ; preds = %if.end63
  %ah_bwmode161 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %43 = ptrtoint ptr %ah_bwmode161 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ah_bwmode161, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp163 = icmp eq i8 %44, 3
  br i1 %cmp163, label %if.then165, label %if.else160.if.end167_crit_edge

if.else160.if.end167_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

if.then165:                                       ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 38916
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #4, !srcloc !41
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %if.else160.if.end167_crit_edge, %if.then149, %if.else145.if.end167_crit_edge, %if.then138, %if.then122, %if.end118.if.end167_crit_edge
  %turbo.0 = phi i32 [ 0, %if.then138 ], [ 0, %if.then149 ], [ 0, %if.else145.if.end167_crit_edge ], [ 0, %if.then165 ], [ 0, %if.else160.if.end167_crit_edge ], [ %spec.select, %if.then122 ], [ 0, %if.end118.if.end167_crit_edge ]
  %mode.2 = phi i32 [ %or144, %if.then138 ], [ %mode.1, %if.then149 ], [ %mode.1, %if.else145.if.end167_crit_edge ], [ 0, %if.then165 ], [ 0, %if.else160.if.end167_crit_edge ], [ %mode.1, %if.then122 ], [ %mode.1, %if.end118.if.end167_crit_edge ]
  %clock.2 = phi i32 [ %clock.1, %if.then138 ], [ %or155, %if.then149 ], [ %clock.1, %if.else145.if.end167_crit_edge ], [ 0, %if.then165 ], [ 0, %if.else160.if.end167_crit_edge ], [ %clock.1, %if.then122 ], [ %clock.1, %if.end118.if.end167_crit_edge ]
  %47 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp169.not = icmp eq i32 %48, 0
  br i1 %cmp169.not, label %if.end167.cleanup_crit_edge, label %if.then171

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then171:                                       ; preds = %if.end167
  %iobase.i245 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %49 = ptrtoint ptr %iobase.i245 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i245, align 4
  %add.ptr.i246 = getelementptr i8, ptr %50, i32 39036
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i246) #4, !srcloc !38
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %clock.2)
  %cmp173.not = icmp eq i32 %52, %clock.2
  br i1 %cmp173.not, label %if.then171.if.end176_crit_edge, label %if.then175

if.then171.if.end176_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end176

if.then175:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %iobase.i245 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i245, align 4
  %add.ptr.i248 = getelementptr i8, ptr %54, i32 39036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %55 = tail call i32 @llvm.bswap.i32(i32 %clock.2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i248, i32 %55) #4, !srcloc !41
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 350, i32 noundef 2) #4
  br label %if.end176

if.end176:                                        ; preds = %if.then175, %if.then171.if.end176_crit_edge
  %56 = ptrtoint ptr %iobase.i245 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iobase.i245, align 4
  %add.ptr.i250 = getelementptr i8, ptr %57, i32 41472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %58 = tail call i32 @llvm.bswap.i32(i32 %mode.2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i250, i32 %58) #4, !srcloc !41
  %59 = ptrtoint ptr %iobase.i245 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iobase.i245, align 4
  %add.ptr.i252 = getelementptr i8, ptr %60, i32 38916
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i252, i32 %turbo.0) #4, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %if.end176, %if.end167.cleanup_crit_edge, %if.then113, %do.body110.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.then56, %do.body53.cleanup_crit_edge, %if.then39, %do.body36.cleanup_crit_edge, %if.then28, %do.body25.cleanup_crit_edge, %if.then7, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then7 ], [ %call2, %do.body.cleanup_crit_edge ], [ -5, %if.then28 ], [ -5, %do.body25.cleanup_crit_edge ], [ %call33, %if.then39 ], [ %call33, %do.body36.cleanup_crit_edge ], [ -5, %if.then56 ], [ -5, %do.body53.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ -22, %if.then113 ], [ -22, %do.body110.cleanup_crit_edge ], [ 0, %if.end176 ], [ 0, %if.end167.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_hw_wisoc_reset(ptr nocapture noundef readonly %ah, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  %spec.select = select i1 %tobool.not, i32 -1, i32 %flags
  %devid = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 4
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %devid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 133, i16 %1)
  %cmp = icmp ugt i16 %1, 133
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = and i32 %spec.select, 3
  br label %if.end34

if.else:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %id = getelementptr i8, ptr %4, i32 -12
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %if.then11, label %if.else22

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %and12 = shl i32 %spec.select, 13
  %7 = and i32 %and12, 8192
  %and17 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or20 = or i32 %7, 16388
  %spec.select5 = select i1 %tobool18.not, i32 %7, i32 %or20
  br label %if.end34

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %and23 = shl i32 %spec.select, 17
  %8 = and i32 %and23, 131072
  %and28 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or31 = or i32 %8, 262656
  %spec.select6 = select i1 %tobool29.not, i32 %8, i32 %or31
  br label %if.end34

if.end34:                                         ; preds = %if.else22, %if.then11, %if.then
  %val.3 = phi i32 [ %2, %if.then ], [ %spec.select5, %if.then11 ], [ %spec.select6, %if.else22 ]
  %reg.0 = phi ptr [ inttoptr (i32 -1325400060 to ptr), %if.then ], [ inttoptr (i32 -1140838368 to ptr), %if.then11 ], [ inttoptr (i32 -1140838368 to ptr), %if.else22 ]
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %reg.0) #4, !srcloc !38
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %or35 = or i32 %10, %val.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %or35) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %reg.0, i32 %11) #4, !srcloc !41
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %reg.0) #4, !srcloc !38
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 21474800) #4
  %neg = xor i32 %val.3, -1
  %and37 = and i32 %13, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %and37) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %reg.0, i32 %15) #4, !srcloc !41
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %reg.0) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %and39 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %cmp40 = icmp eq i32 %and39, 0
  br i1 %cmp40, label %if.then42, label %if.end34.if.end43_crit_edge

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 83886080) #4, !srcloc !41
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end34.if.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_reset(ptr noundef %ah, i32 noundef %op_mode, ptr noundef %channel, i1 noundef zeroext %fast, i1 noundef zeroext %skip_pcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %fast, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ah_radio = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %0 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_radio, align 8
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %fast.addr.0.shrunk = phi i1 [ false, %entry.if.end_crit_edge ], [ %switch, %land.lhs.true ]
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %2 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp5 = icmp eq i32 %3, 2
  br i1 %cmp5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ath5k_hw_set_sleep_clock(ptr noundef %ah, i1 noundef zeroext false)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %4 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_value, align 2
  %conv = trunc i16 %5 to i8
  %6 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %conv, label %do.body30 [
    i8 0, label %if.end7.sw.epilog_crit_edge
    i8 2, label %sw.bb
    i8 1, label %sw.bb17
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  %7 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp10 = icmp ult i32 %8, 2
  br i1 %cmp10, label %do.body, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb
  %call = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %do.body.cleanup_crit_edge, label %if.then14

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end7
  %9 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp19 = icmp eq i32 %10, 0
  br i1 %cmp19, label %do.body22, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body22:                                        ; preds = %sw.bb17
  %call23 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body22.cleanup_crit_edge, label %if.then25

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then25:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #4
  br label %cleanup

do.body30:                                        ; preds = %if.end7
  %call31 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body30.cleanup_crit_edge, label %if.then33

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then33:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %11 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, i32 noundef %12) #4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb17.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge
  br i1 %fast.addr.0.shrunk, label %if.then38, label %sw.epilog.if.end72_crit_edge

sw.epilog.if.end72_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.then38:                                        ; preds = %sw.epilog
  %call39 = tail call i32 @ath5k_hw_phy_init(ptr noundef %ah, ptr noundef %channel, i8 noundef zeroext %conv, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  %debug53 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %13 = ptrtoint ptr %debug53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug53, align 4
  %and55 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool40.not, label %do.body52, label %do.body42

do.body42:                                        ; preds = %if.then38
  br i1 %tobool56.not, label %do.body42.if.end72_crit_edge, label %land.rhs

do.body42.if.end72_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

land.rhs:                                         ; preds = %do.body42
  %call44 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.rhs.if.end72_crit_edge, label %if.then48, !prof !42

land.rhs.if.end72_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.then48:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ath5k_hw_reset, i32 noundef 1204) #4
  br label %if.end72

do.body52:                                        ; preds = %if.then38
  br i1 %tobool56.not, label %do.body52.cleanup_crit_edge, label %land.rhs57

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs57:                                       ; preds = %do.body52
  %call58 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.rhs57.cleanup_crit_edge, label %if.then67, !prof !42

land.rhs57.cleanup_crit_edge:                     ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then67:                                        ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ath5k_hw_reset, i32 noundef 1210) #4
  br label %cleanup

if.end72:                                         ; preds = %if.then48, %land.rhs.if.end72_crit_edge, %do.body42.if.end72_crit_edge, %sw.epilog.if.end72_crit_edge
  %15 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp74.not = icmp eq i32 %16, 0
  br i1 %cmp74.not, label %if.end72.if.end104_crit_edge, label %if.then76

if.end72.if.end104_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104

if.then76:                                        ; preds = %if.end72
  %ah_mac_srev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 70
  %17 = ptrtoint ptr %ah_mac_srev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ah_mac_srev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %18)
  %cmp77 = icmp ult i32 %18, 64
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4416
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  br i1 %cmp77, label %for.cond.preheader, label %if.then76.if.end87_crit_edge

if.then76.if.end87_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

for.cond.preheader:                               ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %24, i32 4420
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #4, !srcloc !38
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %28, i32 4424
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #4, !srcloc !38
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %31 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %32, i32 4428
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #4, !srcloc !38
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %35 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %36, i32 4432
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #4, !srcloc !38
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %39 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %40, i32 4436
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #4, !srcloc !38
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %43 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %44, i32 4440
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #4, !srcloc !38
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %47 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %48, i32 4444
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #4, !srcloc !38
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %51 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %52, i32 4448
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #4, !srcloc !38
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %55 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %56, i32 4452
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #4, !srcloc !38
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  br label %if.end87

if.end87:                                         ; preds = %for.cond.preheader, %if.then76.if.end87_crit_edge
  %s_seq.sroa.7.0 = phi i32 [ %26, %for.cond.preheader ], [ -1, %if.then76.if.end87_crit_edge ]
  %s_seq.sroa.9.0 = phi i32 [ %30, %for.cond.preheader ], [ -1, %if.then76.if.end87_crit_edge ]
  %s_seq.sroa.11.0 = phi i32 [ %34, %for.cond.preheader ], [ -1, %if.then76.if.end87_crit_edge ]
  %s_seq.sroa.13.0 = phi i32 [ %38, %for.cond.preheader ], [ -1, %if.then76.if.end87_crit_edge ]
  %s_seq.sroa.15.0 = phi i32 [ %42, %for.cond.preheader ], [ -1, %if.then76.if.end87_crit_edge ]
  %s_seq.sroa.17.0 = phi i32 [ %46, %for.cond.preheader ], [ -1, %if.then76.if.end87_crit_edge ]
  %s_seq.sroa.19.0 = phi i32 [ %50, %for.cond.preheader ], [ -1, %if.then76.if.end87_crit_edge ]
  %s_seq.sroa.21.0 = phi i32 [ %54, %for.cond.preheader ], [ -1, %if.then76.if.end87_crit_edge ]
  %s_seq.sroa.23.0 = phi i32 [ %58, %for.cond.preheader ], [ -1, %if.then76.if.end87_crit_edge ]
  %59 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp89 = icmp eq i32 %60, 1
  br i1 %cmp89, label %if.then91, label %if.end87.if.end104_crit_edge

if.end87.if.end104_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i322 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %61 = ptrtoint ptr %iobase.i322 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iobase.i322, align 4
  %add.ptr.i323 = getelementptr i8, ptr %62, i32 32848
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i323) #4, !srcloc !38
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %65 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp98 = icmp eq i32 %66, 0
  %67 = ptrtoint ptr %iobase.i322 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iobase.i322, align 4
  %conv.i325 = select i1 %cmp98, i32 32876, i32 32844
  %add.ptr.i326 = getelementptr i8, ptr %68, i32 %conv.i325
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i326) #4, !srcloc !38
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  br label %if.end104

if.end104:                                        ; preds = %if.then91, %if.end87.if.end104_crit_edge, %if.end72.if.end104_crit_edge
  %s_seq.sroa.0.1 = phi i32 [ -1, %if.end72.if.end104_crit_edge ], [ %22, %if.then91 ], [ %22, %if.end87.if.end104_crit_edge ]
  %s_seq.sroa.7.1 = phi i32 [ -1, %if.end72.if.end104_crit_edge ], [ %s_seq.sroa.7.0, %if.then91 ], [ %s_seq.sroa.7.0, %if.end87.if.end104_crit_edge ]
  %s_seq.sroa.9.1 = phi i32 [ -1, %if.end72.if.end104_crit_edge ], [ %s_seq.sroa.9.0, %if.then91 ], [ %s_seq.sroa.9.0, %if.end87.if.end104_crit_edge ]
  %s_seq.sroa.11.1 = phi i32 [ -1, %if.end72.if.end104_crit_edge ], [ %s_seq.sroa.11.0, %if.then91 ], [ %s_seq.sroa.11.0, %if.end87.if.end104_crit_edge ]
  %s_seq.sroa.13.1 = phi i32 [ -1, %if.end72.if.end104_crit_edge ], [ %s_seq.sroa.13.0, %if.then91 ], [ %s_seq.sroa.13.0, %if.end87.if.end104_crit_edge ]
  %s_seq.sroa.15.1 = phi i32 [ -1, %if.end72.if.end104_crit_edge ], [ %s_seq.sroa.15.0, %if.then91 ], [ %s_seq.sroa.15.0, %if.end87.if.end104_crit_edge ]
  %s_seq.sroa.17.1 = phi i32 [ -1, %if.end72.if.end104_crit_edge ], [ %s_seq.sroa.17.0, %if.then91 ], [ %s_seq.sroa.17.0, %if.end87.if.end104_crit_edge ]
  %s_seq.sroa.19.1 = phi i32 [ -1, %if.end72.if.end104_crit_edge ], [ %s_seq.sroa.19.0, %if.then91 ], [ %s_seq.sroa.19.0, %if.end87.if.end104_crit_edge ]
  %s_seq.sroa.21.1 = phi i32 [ -1, %if.end72.if.end104_crit_edge ], [ %s_seq.sroa.21.0, %if.then91 ], [ %s_seq.sroa.21.0, %if.end87.if.end104_crit_edge ]
  %s_seq.sroa.23.1 = phi i32 [ -1, %if.end72.if.end104_crit_edge ], [ %s_seq.sroa.23.0, %if.then91 ], [ %s_seq.sroa.23.0, %if.end87.if.end104_crit_edge ]
  %tsf_up.0 = phi i32 [ 0, %if.end72.if.end104_crit_edge ], [ %64, %if.then91 ], [ 0, %if.end87.if.end104_crit_edge ]
  %tsf_lo.0 = phi i32 [ 0, %if.end72.if.end104_crit_edge ], [ %70, %if.then91 ], [ 0, %if.end87.if.end104_crit_edge ]
  %iobase.i327 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %71 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i328 = getelementptr i8, ptr %72, i32 16400
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i328) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %74 = and i32 %73, 1610677760
  %75 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i330 = getelementptr i8, ptr %76, i32 16404
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i330) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %78 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i332 = getelementptr i8, ptr %79, i32 16408
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i332) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %81 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp113 = icmp eq i32 %82, 2
  br i1 %cmp113, label %land.lhs.true115, label %if.end104.if.end127_crit_edge

if.end104.if.end127_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end127

land.lhs.true115:                                 ; preds = %if.end104
  %ah_radio116 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %83 = ptrtoint ptr %ah_radio116 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ah_radio116, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp117 = icmp ugt i32 %84, 2
  %brmerge = or i1 %fast.addr.0.shrunk, %cmp117
  br i1 %brmerge, label %land.lhs.true115.if.end127_crit_edge, label %land.lhs.true121

land.lhs.true115.if.end127_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end127

land.lhs.true121:                                 ; preds = %land.lhs.true115
  %ah_rf_banks = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 103
  %85 = ptrtoint ptr %ah_rf_banks to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ah_rf_banks, align 4
  %cmp122.not = icmp eq ptr %86, null
  br i1 %cmp122.not, label %land.lhs.true121.if.end127_crit_edge, label %if.then124

land.lhs.true121.if.end127_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end127

if.then124:                                       ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #6
  %call125 = tail call i32 @ath5k_hw_gainf_calibrate(ptr noundef %ah) #4
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %land.lhs.true121.if.end127_crit_edge, %land.lhs.true115.if.end127_crit_edge, %if.end104.if.end127_crit_edge
  %call128 = tail call i32 @ath5k_hw_nic_wakeup(ptr noundef %ah, ptr noundef %channel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.cleanup_crit_edge

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end131:                                        ; preds = %if.end127
  %ah_mac_srev132 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 70
  %87 = ptrtoint ptr %ah_mac_srev132 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ah_mac_srev132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %88)
  %cmp133 = icmp ugt i32 %88, 63
  %89 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i334 = getelementptr i8, ptr %90, i32 38912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %cmp133, label %if.then135, label %if.else136

if.then135:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334, i32 117440512) #4, !srcloc !41
  br label %if.end137

if.else136:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334, i32 1191182336) #4, !srcloc !41
  br label %if.end137

if.end137:                                        ; preds = %if.else136, %if.then135
  %call139 = tail call i32 @ath5k_hw_write_initvals(ptr noundef %ah, i8 noundef zeroext %conv, i1 noundef zeroext %skip_pcu) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end142:                                        ; preds = %if.end137
  %ah_current_channel.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %91 = ptrtoint ptr %ah_current_channel.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ah_current_channel.i, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %hw_value.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %94)
  %switch.selectcmp.i = icmp eq i16 %94, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 22, i32 44
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %switch.selectcmp123.i = icmp eq i16 %94, 0
  %switch.select124.i = select i1 %switch.selectcmp123.i, i32 40, i32 %switch.select.i
  %ah_bwmode.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %95 = ptrtoint ptr %ah_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %ah_bwmode.i, align 1
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %96, label %if.end142.sw.epilog9.i_crit_edge [
    i8 3, label %sw.bb4.i
    i8 2, label %sw.bb5.i
    i8 1, label %sw.bb6.i
  ]

if.end142.sw.epilog9.i_crit_edge:                 ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog9.i

sw.bb4.i:                                         ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = shl nuw nsw i32 %switch.select124.i, 1
  br label %sw.epilog9.i

sw.bb5.i:                                         ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #6
  %div122.i = lshr exact i32 %switch.select124.i, 1
  br label %sw.epilog9.i

sw.bb6.i:                                         ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #6
  %div7120.i = lshr i32 %switch.select124.i, 2
  br label %sw.epilog9.i

sw.epilog9.i:                                     ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %if.end142.sw.epilog9.i_crit_edge
  %clock.1.i = phi i32 [ %switch.select124.i, %if.end142.sw.epilog9.i_crit_edge ], [ %div7120.i, %sw.bb6.i ], [ %div122.i, %sw.bb5.i ], [ %mul.i, %sw.bb4.i ]
  %clockrate.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 18
  %98 = ptrtoint ptr %clockrate.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %clock.1.i, ptr %clockrate.i, align 4
  %sub.i = add nuw nsw i32 %clock.1.i, 127
  %and.i = and i32 %sub.i, 127
  %99 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.not.i = icmp eq i32 %100, 0
  br i1 %cmp.not.i, label %sw.epilog9.i.if.end.i_crit_edge, label %if.then.i

sw.epilog9.i.if.end.i_crit_edge:                  ; preds = %sw.epilog9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog9.i
  call void @__sanitizer_cov_trace_pc() #6
  %101 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i.i = getelementptr i8, ptr %102, i32 4336
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %104 = and i32 %103, -16518913
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #4
  %shl13.i = shl nuw nsw i32 %clock.1.i, 10
  %and14.i = and i32 %shl13.i, 1047552
  %or.i = or i32 %105, %and14.i
  %106 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %107, i32 4336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %108 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 %108) #4, !srcloc !41
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog9.i.if.end.i_crit_edge
  %ah_radio.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %109 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ah_radio.i, align 8
  %.off.i = add i32 %110, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 5
  %spec.select126.i = select i1 %switch.i, i32 4992, i32 3968
  %111 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i130.i = getelementptr i8, ptr %112, i32 32796
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130.i) #4, !srcloc !38
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %and37.i = lshr i32 %114, 14
  %shr.i = and i32 %and37.i, 511
  %and38.i = lshr i32 %114, 23
  %shr39.i = and i32 %and38.i, 63
  %115 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp41.i = icmp eq i32 %116, 0
  %spec.select.i = select i1 %cmp41.i, i32 54, i32 %shr.i
  %spec.select125.i = select i1 %cmp41.i, i32 29, i32 %shr39.i
  %117 = ptrtoint ptr %ah_mac_srev132 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ah_mac_srev132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %118)
  %cmp45.i = icmp ult i32 %118, 64
  br i1 %cmp45.i, label %if.then47.i, label %if.else52.i

if.then47.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl48.i = shl nuw nsw i32 %spec.select.i, 14
  %and49.i = and i32 %shl48.i, 1032192
  %shl50.i = shl nuw nsw i32 %spec.select125.i, 20
  br label %if.end69.i

if.else52.i:                                      ; preds = %if.end.i
  %119 = ptrtoint ptr %ah_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %ah_bwmode.i, align 1
  %121 = zext i8 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %120, label %if.else52.i.if.end69.i_crit_edge [
    i8 2, label %sw.bb55.i
    i8 1, label %sw.bb59.i
    i8 3, label %sw.bb63.i
  ]

if.else52.i.if.end69.i_crit_edge:                 ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69.i

sw.bb55.i:                                        ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul56.i = shl nuw nsw i32 %spec.select.i, 15
  %and58.i = and i32 %mul56.i, 8355840
  br label %if.end69.i

sw.bb59.i:                                        ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul60.i = shl nuw nsw i32 %spec.select.i, 16
  %and62.i = and i32 %mul60.i, 8323072
  br label %if.end69.i

sw.bb63.i:                                        ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #6
  %122 = shl nuw nsw i32 %spec.select125.i, 22
  %shl65.i = and i32 %122, 260046848
  br label %if.end69.i

if.end69.i:                                       ; preds = %sw.bb63.i, %sw.bb59.i, %sw.bb55.i, %if.else52.i.if.end69.i_crit_edge, %if.then47.i
  %txlat.1.i = phi i32 [ %and49.i, %if.then47.i ], [ %spec.select.i, %if.else52.i.if.end69.i_crit_edge ], [ 32, %sw.bb63.i ], [ %and62.i, %sw.bb59.i ], [ %and58.i, %sw.bb55.i ]
  %rxlat.1.i = phi i32 [ %shl50.i, %if.then47.i ], [ %spec.select125.i, %if.else52.i.if.end69.i_crit_edge ], [ %shl65.i, %sw.bb63.i ], [ 528482304, %sw.bb59.i ], [ 528482304, %sw.bb55.i ]
  %txf2txs.0.i = phi i32 [ 14, %if.then47.i ], [ 14, %if.else52.i.if.end69.i_crit_edge ], [ 14, %sw.bb63.i ], [ 13, %sw.bb59.i ], [ 12, %sw.bb55.i ]
  %or70.i = or i32 %spec.select126.i, %and.i
  %or71.i = or i32 %or70.i, %txlat.1.i
  %or72.i = or i32 %or71.i, %rxlat.1.i
  %123 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %iobase.i327, align 4
  %conv.i.i = select i1 %cmp41.i, i32 32800, i32 32796
  %add.ptr.i132.i = getelementptr i8, ptr %124, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %125 = tail call i32 @llvm.bswap.i32(i32 %or72.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132.i, i32 %125) #4, !srcloc !41
  %126 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ah_radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp78.i = icmp eq i32 %127, 2
  br i1 %cmp78.i, label %if.then80.i, label %if.end69.i.ath5k_hw_init_core_clock.exit_crit_edge

if.end69.i.ath5k_hw_init_core_clock.exit_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_init_core_clock.exit

if.then80.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #6
  %128 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %129, i32 38948
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %131 = and i32 %130, -251658241
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #4
  %or85.i = or i32 %132, %txf2txs.0.i
  %133 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %134, i32 38948
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %135 = tail call i32 @llvm.bswap.i32(i32 %or85.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i, i32 %135) #4, !srcloc !41
  br label %ath5k_hw_init_core_clock.exit

ath5k_hw_init_core_clock.exit:                    ; preds = %if.then80.i, %if.end69.i.ath5k_hw_init_core_clock.exit_crit_edge
  %136 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %137)
  %cmp.i = icmp eq i32 %137, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %ath5k_hw_init_core_clock.exit.if.end.i341_crit_edge

ath5k_hw_init_core_clock.exit.if.end.i341_crit_edge: ; preds = %ath5k_hw_init_core_clock.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i341

land.lhs.true.i:                                  ; preds = %ath5k_hw_init_core_clock.exit
  %ah_phy_revision.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 72
  %138 = ptrtoint ptr %ah_phy_revision.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %ah_phy_revision.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %139)
  %cmp1.i = icmp ugt i16 %139, 65
  br i1 %cmp1.i, label %if.then.i340, label %land.lhs.true.i.if.end.i341_crit_edge

land.lhs.true.i.if.end.i341_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i341

if.then.i340:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %140 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i.i339 = getelementptr i8, ptr %141, i32 38956
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i339, i32 44040704) #4, !srcloc !41
  %142 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i158.i = getelementptr i8, ptr %143, i32 41512
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %145 = and i32 %144, -131073
  %146 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i160.i = getelementptr i8, ptr %147, i32 41512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.i, i32 %145) #4, !srcloc !41
  %148 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i162.i = getelementptr i8, ptr %149, i32 41512
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %151 = and i32 %150, -16515329
  %152 = or i32 %151, 524288
  %153 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i164.i = getelementptr i8, ptr %154, i32 41512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164.i, i32 %152) #4, !srcloc !41
  %155 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i166.i = getelementptr i8, ptr %156, i32 32864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166.i, i32 251658240) #4, !srcloc !41
  br label %if.end.i341

if.end.i341:                                      ; preds = %if.then.i340, %land.lhs.true.i.if.end.i341_crit_edge, %ath5k_hw_init_core_clock.exit.if.end.i341_crit_edge
  %ah_phy_revision5.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 72
  %157 = ptrtoint ptr %ah_phy_revision5.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %ah_phy_revision5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 66, i16 %158)
  %cmp7.i = icmp ugt i16 %158, 66
  br i1 %cmp7.i, label %if.end10.i, label %if.end.i341.if.end18.i_crit_edge

if.end.i341.if.end18.i_crit_edge:                 ; preds = %if.end.i341
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.end10.i:                                       ; preds = %if.end.i341
  %159 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %160, i32 41556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168.i, i32 0) #4, !srcloc !41
  %161 = ptrtoint ptr %ah_phy_revision5.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %.pr.i = load i16, ptr %ah_phy_revision5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %.pr.i)
  %cmp13.i = icmp ugt i16 %.pr.i, 67
  br i1 %cmp13.i, label %if.then15.i, label %if.end10.i.if.end18.i_crit_edge

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %162 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i170.i = getelementptr i8, ptr %163, i32 48
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %165 = and i32 %164, -8388609
  %166 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i172.i = getelementptr i8, ptr %167, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172.i, i32 %165) #4, !srcloc !41
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end10.i.if.end18.i_crit_edge, %if.end.i341.if.end18.i_crit_edge
  %168 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %ah_radio.i, align 8
  %170 = zext i32 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %169, label %lor.lhs.false24.i [
    i32 4, label %if.end18.i.if.then28.i_crit_edge
    i32 6, label %if.end18.i.if.then28.i_crit_edge394
  ]

if.end18.i.if.then28.i_crit_edge394:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28.i

if.end18.i.if.then28.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28.i

lor.lhs.false24.i:                                ; preds = %if.end18.i
  %ah_mac_version.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 71
  %171 = ptrtoint ptr %ah_mac_version.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %ah_mac_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %172)
  %cmp26.i = icmp eq i16 %172, 15
  br i1 %cmp26.i, label %lor.lhs.false24.i.if.then28.i_crit_edge, label %lor.lhs.false24.i.if.end42.i_crit_edge

lor.lhs.false24.i.if.end42.i_crit_edge:           ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

lor.lhs.false24.i.if.then28.i_crit_edge:          ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28.i

if.then28.i:                                      ; preds = %lor.lhs.false24.i.if.then28.i_crit_edge, %if.end18.i.if.then28.i_crit_edge, %if.end18.i.if.then28.i_crit_edge394
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %173 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2462, i32 %174)
  %switch.selectcmp.case1.i = icmp ne i32 %174, 2462
  call void @__sanitizer_cov_trace_const_cmp4(i32 2467, i32 %174)
  %switch.selectcmp.case2.i = icmp ne i32 %174, 2467
  %not.switch.selectcmp.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %175 = zext i1 %not.switch.selectcmp.i to i32
  %176 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i174.i = getelementptr i8, ptr %177, i32 41548
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174.i) #4, !srcloc !38
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %175)
  %cmp38.not.i = icmp eq i32 %179, %175
  br i1 %cmp38.not.i, label %if.then28.i.if.end42thread-pre-split.i_crit_edge, label %if.then40.i

if.then28.i.if.end42thread-pre-split.i_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42thread-pre-split.i

if.then40.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #6
  %180 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i176.i = getelementptr i8, ptr %181, i32 41548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %182 = select i1 %not.switch.selectcmp.i, i32 16777216, i32 0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176.i, i32 %182) #4, !srcloc !41
  br label %if.end42thread-pre-split.i

if.end42thread-pre-split.i:                       ; preds = %if.then40.i, %if.then28.i.if.end42thread-pre-split.i_crit_edge
  %183 = ptrtoint ptr %ah_radio.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %.pr206.i = load i32, ptr %ah_radio.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end42thread-pre-split.i, %lor.lhs.false24.i.if.end42.i_crit_edge
  %184 = phi i32 [ %.pr206.i, %if.end42thread-pre-split.i ], [ %169, %lor.lhs.false24.i.if.end42.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %184)
  %cmp44.i = icmp eq i32 %184, 2
  br i1 %cmp44.i, label %land.lhs.true46.i, label %if.end42.i.if.end59.i_crit_edge

if.end42.i.if.end59.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59.i

land.lhs.true46.i:                                ; preds = %if.end42.i
  %ah_radio_5ghz_revision.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 73
  %185 = ptrtoint ptr %ah_radio_5ghz_revision.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %ah_radio_5ghz_revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 53, i16 %186)
  %cmp48.i = icmp ult i16 %186, 53
  br i1 %cmp48.i, label %if.then50.i, label %land.lhs.true46.i.if.end59.i_crit_edge

land.lhs.true46.i.if.end59.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59.i

if.then50.i:                                      ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #6
  %187 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %188, i32 41476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 0) #4, !srcloc !41
  %189 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %190)
  %cmp51.i = icmp eq i32 %190, 1
  %..i = select i1 %cmp51.i, i32 -4714464, i32 -4715232
  %191 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp56.i = icmp eq i32 %192, 0
  %193 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %iobase.i327, align 4
  %conv.i.i343 = select i1 %cmp56.i, i32 38916, i32 39236
  %add.ptr.i180.i = getelementptr i8, ptr %194, i32 %conv.i.i343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %195 = tail call i32 @llvm.bswap.i32(i32 %..i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 %195) #4, !srcloc !41
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then50.i, %land.lhs.true46.i.if.end59.i_crit_edge, %if.end42.i.if.end59.i_crit_edge
  %196 = ptrtoint ptr %ah_mac_srev132 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %ah_mac_srev132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %197)
  %cmp60.i = icmp ult i32 %197, 64
  br i1 %cmp60.i, label %if.then62.i, label %if.end59.i.if.end65.i_crit_edge

if.end59.i.if.end65.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65.i

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  %198 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %199, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182.i, i32 0) #4, !srcloc !41
  %200 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %201, i32 39032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 134217728) #4, !srcloc !41
  %202 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i186.i = getelementptr i8, ptr %203, i32 32840
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %205 = or i32 %204, 262144
  %206 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i188.i = getelementptr i8, ptr %207, i32 32840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188.i, i32 %205) #4, !srcloc !41
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then62.i, %if.end59.i.if.end65.i_crit_edge
  %208 = ptrtoint ptr %ah_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %ah_bwmode.i, align 1
  %210 = zext i8 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %209, label %if.else88.i [
    i8 0, label %if.else102.i
    i8 3, label %if.then71.i
  ]

if.then71.i:                                      ; preds = %if.end65.i
  %211 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i190.i = getelementptr i8, ptr %212, i32 38980
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %214 = and i32 %213, -2130706433
  %215 = or i32 %214, 620756992
  %216 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i192.i = getelementptr i8, ptr %217, i32 38980
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192.i, i32 %215) #4, !srcloc !41
  %218 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %219)
  %cmp76.i = icmp eq i32 %219, 2
  br i1 %cmp76.i, label %if.then78.i, label %if.then71.i.if.end82.i_crit_edge

if.then71.i.if.end82.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82.i

if.then78.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #6
  %220 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i194.i = getelementptr i8, ptr %221, i32 38980
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i194.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %223 = and i32 %222, 2143354879
  %224 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i196.i = getelementptr i8, ptr %225, i32 38980
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196.i, i32 %223) #4, !srcloc !41
  %226 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %226)
  %.pr207.i = load i32, ptr %ah_version, align 4
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then78.i, %if.then71.i.if.end82.i_crit_edge
  %227 = phi i32 [ %.pr207.i, %if.then78.i ], [ %219, %if.then71.i.if.end82.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp84.i = icmp eq i32 %227, 0
  br i1 %cmp84.i, label %if.then86.i, label %if.end82.i.ath5k_hw_tweak_initval_settings.exit_crit_edge

if.end82.i.ath5k_hw_tweak_initval_settings.exit_crit_edge: ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_tweak_initval_settings.exit

if.then86.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #6
  %228 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i198.i = getelementptr i8, ptr %229, i32 38916
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198.i, i32 589299823) #4, !srcloc !41
  br label %ath5k_hw_tweak_initval_settings.exit

if.else88.i:                                      ; preds = %if.end65.i
  %230 = ptrtoint ptr %ah_mac_srev132 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %ah_mac_srev132, align 4
  %232 = add i32 %231, -144
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %232)
  %233 = icmp ult i32 %232, 17
  br i1 %233, label %if.then96.i, label %if.else88.i.ath5k_hw_tweak_initval_settings.exit_crit_edge

if.else88.i.ath5k_hw_tweak_initval_settings.exit_crit_edge: ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_tweak_initval_settings.exit

if.then96.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #6
  %234 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i200.i = getelementptr i8, ptr %235, i32 39236
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %237 = or i32 %236, 50331648
  %238 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i202.i = getelementptr i8, ptr %239, i32 39236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202.i, i32 %237) #4, !srcloc !41
  br label %ath5k_hw_tweak_initval_settings.exit

if.else102.i:                                     ; preds = %if.end65.i
  %240 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp104.i = icmp eq i32 %241, 0
  br i1 %cmp104.i, label %if.then106.i, label %if.else102.i.if.end.i351_crit_edge

if.else102.i.if.end.i351_crit_edge:               ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i351

if.then106.i:                                     ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #6
  %242 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i204.i = getelementptr i8, ptr %243, i32 38916
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204.i, i32 537919599) #4, !srcloc !41
  br label %ath5k_hw_tweak_initval_settings.exit

ath5k_hw_tweak_initval_settings.exit:             ; preds = %if.then106.i, %if.then96.i, %if.else88.i.ath5k_hw_tweak_initval_settings.exit_crit_edge, %if.then86.i, %if.end82.i.ath5k_hw_tweak_initval_settings.exit_crit_edge
  %244 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %244)
  %.pr = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i347 = icmp eq i32 %.pr, 0
  br i1 %cmp.i347, label %ath5k_hw_tweak_initval_settings.exit.if.end180_crit_edge, label %ath5k_hw_tweak_initval_settings.exit.if.end.i351_crit_edge

ath5k_hw_tweak_initval_settings.exit.if.end.i351_crit_edge: ; preds = %ath5k_hw_tweak_initval_settings.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i351

ath5k_hw_tweak_initval_settings.exit.if.end180_crit_edge: ; preds = %ath5k_hw_tweak_initval_settings.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end180

if.end.i351:                                      ; preds = %ath5k_hw_tweak_initval_settings.exit.if.end.i351_crit_edge, %if.else102.i.if.end.i351_crit_edge
  %call.i = tail call i32 @ath5k_eeprom_mode_from_channel(ptr noundef %ah, ptr noundef %channel) #4
  %conv.i348 = trunc i32 %call.i to i8
  %center_freq.i349 = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %245 = ptrtoint ptr %center_freq.i349 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %center_freq.i349, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2484, i32 %246)
  %cmp1.i350 = icmp eq i32 %246, 2484
  %ee_cck_ofdm_power_delta.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 18
  %247 = ptrtoint ptr %ee_cck_ofdm_power_delta.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %ee_cck_ofdm_power_delta.i, align 4
  br i1 %cmp1.i350, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #6
  %conv4.i = zext i16 %248 to i32
  %ee_scaled_cck_delta.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 19
  %249 = ptrtoint ptr %ee_scaled_cck_delta.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %ee_scaled_cck_delta.i, align 2
  %conv5.i = zext i16 %250 to i32
  %sub.i352 = sub nsw i32 %conv4.i, %conv5.i
  %div.i = sdiv i32 %sub.i352, 5
  %conv6.i = trunc i32 %div.i to i16
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #6
  %251 = udiv i16 %248, 5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then3.i
  %cck_ofdm_pwr_delta.0.i = phi i16 [ %conv6.i, %if.then3.i ], [ %251, %if.else.i ]
  %252 = ptrtoint ptr %ah_phy_revision5.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %ah_phy_revision5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %253)
  %cmp14.i = icmp ugt i16 %253, 65
  br i1 %cmp14.i, label %if.then16.i, label %if.else29.i

if.then16.i:                                      ; preds = %if.end12.i
  %254 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %255)
  %cmp18.i = icmp eq i16 %255, 2
  br i1 %cmp18.i, label %if.then20.i, label %if.else27.i

if.then20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #6
  %ee_cck_ofdm_gain_delta.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 17
  %256 = ptrtoint ptr %ee_cck_ofdm_gain_delta.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %ee_cck_ofdm_gain_delta.i, align 2
  %258 = mul i16 %257, 4032
  %259 = and i16 %258, 4032
  %and.i355 = zext i16 %259 to i32
  %conv23324.i = zext i16 %cck_ofdm_pwr_delta.0.i to i32
  %.neg.i = mul i32 %conv23324.i, 16515072
  %and26.i = and i32 %.neg.i, 16515072
  %or.i356 = or i32 %and26.i, %and.i355
  %260 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i.i358 = getelementptr i8, ptr %261, i32 39244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %262 = tail call i32 @llvm.bswap.i32(i32 %or.i356) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i358, i32 %262) #4, !srcloc !41
  br label %if.end32.i

if.else27.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #6
  %263 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i326.i = getelementptr i8, ptr %264, i32 39244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i326.i, i32 0) #4, !srcloc !41
  br label %if.end32.i

if.else29.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %txp_cck_ofdm_pwr_delta.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 12
  %265 = ptrtoint ptr %txp_cck_ofdm_pwr_delta.i to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 %cck_ofdm_pwr_delta.0.i, ptr %txp_cck_ofdm_pwr_delta.i, align 2
  %ee_cck_ofdm_gain_delta30.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 17
  %266 = ptrtoint ptr %ee_cck_ofdm_gain_delta30.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %ee_cck_ofdm_gain_delta30.i, align 2
  %txp_cck_ofdm_gainf_delta.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 11
  %268 = ptrtoint ptr %txp_cck_ofdm_gainf_delta.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %267, ptr %txp_cck_ofdm_gainf_delta.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else29.i, %if.else27.i, %if.then20.i
  tail call void @ath5k_hw_set_antenna_switch(ptr noundef %ah, i8 noundef zeroext %conv.i348) #4
  %idxprom.i = and i32 %call.i, 255
  %arrayidx.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 56, i32 %idxprom.i
  %269 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %arrayidx.i, align 2
  %271 = and i16 %270, 511
  %272 = or i16 %271, 512
  %or35.i = zext i16 %272 to i32
  %273 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i328.i = getelementptr i8, ptr %274, i32 39272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %275 = tail call i32 @llvm.bswap.i32(i32 %or35.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i328.i, i32 %275) #4, !srcloc !41
  %276 = ptrtoint ptr %ah_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %ah_bwmode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %277)
  %cmp37.i = icmp eq i8 %277, 3
  br i1 %cmp37.i, label %land.lhs.true.i360, label %if.end32.i.if.else85.i_crit_edge

if.end32.i.if.else85.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else85.i

land.lhs.true.i360:                               ; preds = %if.end32.i
  %ee_version.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  %278 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20479, i16 %279)
  %cmp42.i = icmp ugt i16 %279, 20479
  br i1 %cmp42.i, label %if.then44.i, label %land.lhs.true.i360.if.else85.i_crit_edge

land.lhs.true.i360.if.else85.i_crit_edge:         ; preds = %land.lhs.true.i360
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else85.i

if.then44.i:                                      ; preds = %land.lhs.true.i360
  call void @__sanitizer_cov_trace_pc() #6
  %280 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i330.i = getelementptr i8, ptr %281, i32 38980
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i330.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %283 = and i32 %282, 2143354879
  %284 = tail call i32 @llvm.bswap.i32(i32 %283) #4
  %arrayidx48.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 39, i32 %idxprom.i
  %285 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %arrayidx48.i, align 2
  %conv49.i = zext i16 %286 to i32
  %shl50.i361 = shl nuw nsw i32 %conv49.i, 7
  %and51.i = and i32 %shl50.i361, 16256
  %or52.i = or i32 %and51.i, %284
  %287 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i332.i = getelementptr i8, ptr %288, i32 38980
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %289 = tail call i32 @llvm.bswap.i32(i32 %or52.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i332.i, i32 %289) #4, !srcloc !41
  %290 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i334.i = getelementptr i8, ptr %291, i32 38984
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i334.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %293 = and i32 %292, -15729409
  %294 = tail call i32 @llvm.bswap.i32(i32 %293) #4
  %arrayidx56.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 41, i32 %idxprom.i
  %295 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %arrayidx56.i, align 2
  %conv57.i = zext i16 %296 to i32
  %shl58.i = shl nuw nsw i32 %conv57.i, 12
  %and59.i = and i32 %shl58.i, 258048
  %or60.i = or i32 %and59.i, %294
  %297 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i336.i = getelementptr i8, ptr %298, i32 38984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %299 = tail call i32 @llvm.bswap.i32(i32 %or60.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i336.i, i32 %299) #4, !srcloc !41
  %300 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i338.i = getelementptr i8, ptr %301, i32 38992
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i338.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %303 = and i32 %302, 16777215
  %304 = tail call i32 @llvm.bswap.i32(i32 %303) #4
  %arrayidx64.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 59, i32 %idxprom.i
  %305 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx64.i, align 1
  %conv65323.i = zext i8 %306 to i32
  %or68.i = or i32 %304, %conv65323.i
  %307 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i340.i = getelementptr i8, ptr %308, i32 38992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %309 = tail call i32 @llvm.bswap.i32(i32 %or68.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i340.i, i32 %309) #4, !srcloc !41
  %310 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i342.i = getelementptr i8, ptr %311, i32 38992
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i342.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %313 = and i32 %312, -16711681
  %314 = tail call i32 @llvm.bswap.i32(i32 %313) #4
  %arrayidx72.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 60, i32 %idxprom.i
  %315 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = sext i8 %316 to i32
  %shl74.i = shl nsw i32 %conv73.i, 8
  %and75.i = and i32 %shl74.i, 65280
  %or76.i = or i32 %and75.i, %314
  %317 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i344.i = getelementptr i8, ptr %318, i32 38992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %319 = tail call i32 @llvm.bswap.i32(i32 %or76.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i344.i, i32 %319) #4, !srcloc !41
  %320 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i346.i = getelementptr i8, ptr %321, i32 41484
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i346.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %323 = and i32 %322, -64513
  %324 = tail call i32 @llvm.bswap.i32(i32 %323) #4
  %arrayidx80.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 40, i32 %idxprom.i
  %325 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %arrayidx80.i, align 2
  %conv81.i = zext i16 %326 to i32
  %shl82.i = shl i32 %conv81.i, 18
  %and83.i = and i32 %shl82.i, 16515072
  %or84.i = or i32 %and83.i, %324
  %327 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i348.i = getelementptr i8, ptr %328, i32 41484
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %329 = tail call i32 @llvm.bswap.i32(i32 %or84.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i348.i, i32 %329) #4, !srcloc !41
  br label %if.end134.i

if.else85.i:                                      ; preds = %land.lhs.true.i360.if.else85.i_crit_edge, %if.end32.i.if.else85.i_crit_edge
  %330 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i350.i = getelementptr i8, ptr %331, i32 38980
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i350.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %333 = and i32 %332, 2143354879
  %334 = tail call i32 @llvm.bswap.i32(i32 %333) #4
  %arrayidx89.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 25, i32 %idxprom.i
  %335 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %arrayidx89.i, align 2
  %conv90.i = zext i16 %336 to i32
  %shl91.i = shl nuw nsw i32 %conv90.i, 7
  %and92.i = and i32 %shl91.i, 16256
  %or93.i = or i32 %and92.i, %334
  %337 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i352.i = getelementptr i8, ptr %338, i32 38980
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %339 = tail call i32 @llvm.bswap.i32(i32 %or93.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i352.i, i32 %339) #4, !srcloc !41
  %340 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i354.i = getelementptr i8, ptr %341, i32 38984
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i354.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %343 = and i32 %342, -15729409
  %344 = tail call i32 @llvm.bswap.i32(i32 %343) #4
  %arrayidx97.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 26, i32 %idxprom.i
  %345 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %arrayidx97.i, align 2
  %conv98.i = zext i16 %346 to i32
  %shl99.i = shl nuw nsw i32 %conv98.i, 12
  %and100.i = and i32 %shl99.i, 258048
  %or101.i = or i32 %and100.i, %344
  %347 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i356.i = getelementptr i8, ptr %348, i32 38984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %349 = tail call i32 @llvm.bswap.i32(i32 %or101.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i356.i, i32 %349) #4, !srcloc !41
  %350 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i358.i = getelementptr i8, ptr %351, i32 38992
  %352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i358.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %353 = and i32 %352, 16777215
  %354 = tail call i32 @llvm.bswap.i32(i32 %353) #4
  %arrayidx105.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 57, i32 %idxprom.i
  %355 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx105.i, align 1
  %conv106322.i = zext i8 %356 to i32
  %or109.i = or i32 %354, %conv106322.i
  %357 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i360.i = getelementptr i8, ptr %358, i32 38992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %359 = tail call i32 @llvm.bswap.i32(i32 %or109.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i360.i, i32 %359) #4, !srcloc !41
  %360 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i362.i = getelementptr i8, ptr %361, i32 38992
  %362 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i362.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %363 = and i32 %362, -16711681
  %364 = tail call i32 @llvm.bswap.i32(i32 %363) #4
  %arrayidx113.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 58, i32 %idxprom.i
  %365 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %arrayidx113.i, align 1
  %conv114.i = sext i8 %366 to i32
  %shl115.i = shl nsw i32 %conv114.i, 8
  %and116.i = and i32 %shl115.i, 65280
  %or117.i = or i32 %and116.i, %364
  %367 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i364.i = getelementptr i8, ptr %368, i32 38992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %369 = tail call i32 @llvm.bswap.i32(i32 %or117.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i364.i, i32 %369) #4, !srcloc !41
  %ee_version120.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  %370 = ptrtoint ptr %ee_version120.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %ee_version120.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %371)
  %cmp122.i = icmp ugt i16 %371, 16384
  br i1 %cmp122.i, label %if.then124.i, label %if.else85.i.if.end134.i_crit_edge

if.else85.i.if.end134.i_crit_edge:                ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end134.i

if.then124.i:                                     ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #6
  %372 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i366.i = getelementptr i8, ptr %373, i32 41484
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i366.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %375 = and i32 %374, -64513
  %376 = tail call i32 @llvm.bswap.i32(i32 %375) #4
  %arrayidx128.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 38, i32 %idxprom.i
  %377 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %arrayidx128.i, align 2
  %conv129.i = zext i16 %378 to i32
  %shl130.i = shl i32 %conv129.i, 18
  %and131.i = and i32 %shl130.i, 16515072
  %or132.i = or i32 %and131.i, %376
  %379 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i368.i = getelementptr i8, ptr %380, i32 41484
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %381 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i368.i, i32 %381) #4, !srcloc !41
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.then124.i, %if.else85.i.if.end134.i_crit_edge, %if.then44.i
  %arrayidx136.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 31, i32 %idxprom.i
  %382 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %arrayidx136.i, align 2
  %conv137.i = zext i16 %383 to i32
  %shl138.i = shl i32 %conv137.i, 24
  %shl143.i = shl nuw i32 %conv137.i, 16
  %or144.i = or i32 %shl138.i, %shl143.i
  %arrayidx146.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 32, i32 %idxprom.i
  %384 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %arrayidx146.i, align 2
  %conv147.i = zext i16 %385 to i32
  %shl148.i = shl nuw nsw i32 %conv147.i, 8
  %or149.i = or i32 %or144.i, %conv147.i
  %or154.i = or i32 %or149.i, %shl148.i
  %386 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i370.i = getelementptr i8, ptr %387, i32 38964
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %388 = tail call i32 @llvm.bswap.i32(i32 %or154.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370.i, i32 %388) #4, !srcloc !41
  %389 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i372.i = getelementptr i8, ptr %390, i32 38952
  %391 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i372.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %392 = and i32 %391, -16711681
  %393 = tail call i32 @llvm.bswap.i32(i32 %392) #4
  %arrayidx158.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 30, i32 %idxprom.i
  %394 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %arrayidx158.i, align 2
  %conv159.i = zext i16 %395 to i32
  %shl160.i = shl nuw nsw i32 %conv159.i, 8
  %and161.i = and i32 %shl160.i, 65280
  %or162.i = or i32 %and161.i, %393
  %396 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i374.i = getelementptr i8, ptr %397, i32 38952
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %398 = tail call i32 @llvm.bswap.i32(i32 %or162.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i374.i, i32 %398) #4, !srcloc !41
  %399 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i376.i = getelementptr i8, ptr %400, i32 39012
  %401 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i376.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %402 = and i32 %401, -15730433
  %403 = tail call i32 @llvm.bswap.i32(i32 %402) #4
  %arrayidx166.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 33, i32 %idxprom.i
  %404 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %arrayidx166.i, align 2
  %conv167.i = zext i16 %405 to i32
  %shl168.i = shl nuw nsw i32 %conv167.i, 12
  %and169.i = and i32 %shl168.i, 520192
  %or170.i = or i32 %and169.i, %403
  %406 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i378.i = getelementptr i8, ptr %407, i32 39012
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %408 = tail call i32 @llvm.bswap.i32(i32 %or170.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i378.i, i32 %408) #4, !srcloc !41
  %call171.i = tail call zeroext i1 @ath5k_hw_chan_has_spur_noise(ptr noundef %ah, ptr noundef %channel) #4
  %409 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i380.i = getelementptr i8, ptr %410, i32 39204
  %411 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i380.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  %412 = and i32 %411, 33554431
  br i1 %call171.i, label %if.then172.i, label %if.else181.i

if.then172.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #6
  %413 = tail call i32 @llvm.bswap.i32(i32 %412) #4
  %arrayidx176.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 42, i32 %idxprom.i
  %414 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %arrayidx176.i, align 2
  %conv177.i = zext i16 %415 to i32
  %add.i = shl nuw nsw i32 %conv177.i, 1
  %shl178.i = add nuw nsw i32 %add.i, 4
  %and179.i = and i32 %shl178.i, 254
  %or180.i = or i32 %and179.i, %413
  %416 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i382.i = getelementptr i8, ptr %417, i32 39204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %418 = tail call i32 @llvm.bswap.i32(i32 %or180.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i382.i, i32 %418) #4, !srcloc !41
  br label %if.end185.i

if.else181.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #6
  %419 = or i32 %412, 67108864
  %420 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i386.i = getelementptr i8, ptr %421, i32 39204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i386.i, i32 %419) #4, !srcloc !41
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.else181.i, %if.then172.i
  %ee_version188.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  %422 = ptrtoint ptr %ee_version188.i to i32
  call void @__asan_load2_noabort(i32 %422)
  %423 = load i16, ptr %ee_version188.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %423)
  %cmp190.i = icmp ugt i16 %423, 16383
  br i1 %cmp190.i, label %if.end211.i, label %if.end185.i.ath5k_hw_commit_eeprom_settings.exit_crit_edge

if.end185.i.ath5k_hw_commit_eeprom_settings.exit_crit_edge: ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_commit_eeprom_settings.exit

if.end211.i:                                      ; preds = %if.end185.i
  %424 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i388.i = getelementptr i8, ptr %425, i32 39200
  %426 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i388.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %427 = and i32 %426, 536412159
  %428 = tail call i32 @llvm.bswap.i32(i32 %427) #4
  %arrayidx196.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 20, i32 %idxprom.i
  %429 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %arrayidx196.i, align 2
  %conv197.i = zext i16 %430 to i32
  %shl198.i = shl nuw nsw i32 %conv197.i, 5
  %and199.i = and i32 %shl198.i, 2016
  %or200.i = or i32 %and199.i, %428
  %431 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i390.i = getelementptr i8, ptr %432, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %433 = tail call i32 @llvm.bswap.i32(i32 %or200.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i390.i, i32 %433) #4, !srcloc !41
  %434 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i392.i = getelementptr i8, ptr %435, i32 39200
  %436 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i392.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %437 = and i32 %436, -520093697
  %438 = tail call i32 @llvm.bswap.i32(i32 %437) #4
  %arrayidx204.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 21, i32 %idxprom.i
  %439 = ptrtoint ptr %arrayidx204.i to i32
  call void @__asan_load2_noabort(i32 %439)
  %440 = load i16, ptr %arrayidx204.i, align 2
  %441 = and i16 %440, 31
  %and207.i = zext i16 %441 to i32
  %or208.i = or i32 %438, %and207.i
  %442 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i394.i = getelementptr i8, ptr %443, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %444 = tail call i32 @llvm.bswap.i32(i32 %or208.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i394.i, i32 %444) #4, !srcloc !41
  %445 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i396.i = getelementptr i8, ptr %446, i32 39200
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i396.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %448 = or i32 %447, 524288
  %449 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i398.i = getelementptr i8, ptr %450, i32 39200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i398.i, i32 %448) #4, !srcloc !41
  %451 = ptrtoint ptr %ee_version188.i to i32
  call void @__asan_load2_noabort(i32 %451)
  %.pr.i362 = load i16, ptr %ee_version188.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %.pr.i362)
  %cmp216.i = icmp ugt i16 %.pr.i362, 20480
  br i1 %cmp216.i, label %if.then218.i, label %if.end211.i.ath5k_hw_commit_eeprom_settings.exit_crit_edge

if.end211.i.ath5k_hw_commit_eeprom_settings.exit_crit_edge: ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_commit_eeprom_settings.exit

if.then218.i:                                     ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #6
  %452 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i400.i = getelementptr i8, ptr %453, i32 39392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i400.i, i32 0) #4, !srcloc !41
  br label %ath5k_hw_commit_eeprom_settings.exit

ath5k_hw_commit_eeprom_settings.exit:             ; preds = %if.then218.i, %if.end211.i.ath5k_hw_commit_eeprom_settings.exit_crit_edge, %if.end185.i.ath5k_hw_commit_eeprom_settings.exit_crit_edge
  %454 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %454)
  %.pr388 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr388)
  %cmp144.not = icmp eq i32 %.pr388, 0
  br i1 %cmp144.not, label %ath5k_hw_commit_eeprom_settings.exit.if.end180_crit_edge, label %if.then146

ath5k_hw_commit_eeprom_settings.exit.if.end180_crit_edge: ; preds = %ath5k_hw_commit_eeprom_settings.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end180

if.then146:                                       ; preds = %ath5k_hw_commit_eeprom_settings.exit
  %455 = ptrtoint ptr %ah_mac_srev132 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %ah_mac_srev132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %456)
  %cmp148 = icmp ult i32 %456, 64
  %457 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i365 = getelementptr i8, ptr %458, i32 4416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %459 = tail call i32 @llvm.bswap.i32(i32 %s_seq.sroa.0.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365, i32 %459) #4
  br i1 %cmp148, label %for.body154.preheader, label %if.then146.if.end164_crit_edge

if.then146.if.end164_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end164

for.body154.preheader:                            ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #6
  %460 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i365.1 = getelementptr i8, ptr %461, i32 4420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %462 = tail call i32 @llvm.bswap.i32(i32 %s_seq.sroa.7.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.1, i32 %462) #4, !srcloc !41
  %463 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i365.2 = getelementptr i8, ptr %464, i32 4424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %465 = tail call i32 @llvm.bswap.i32(i32 %s_seq.sroa.9.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.2, i32 %465) #4, !srcloc !41
  %466 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i365.3 = getelementptr i8, ptr %467, i32 4428
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %468 = tail call i32 @llvm.bswap.i32(i32 %s_seq.sroa.11.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.3, i32 %468) #4, !srcloc !41
  %469 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i365.4 = getelementptr i8, ptr %470, i32 4432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %471 = tail call i32 @llvm.bswap.i32(i32 %s_seq.sroa.13.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.4, i32 %471) #4, !srcloc !41
  %472 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i365.5 = getelementptr i8, ptr %473, i32 4436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %474 = tail call i32 @llvm.bswap.i32(i32 %s_seq.sroa.15.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.5, i32 %474) #4, !srcloc !41
  %475 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i365.6 = getelementptr i8, ptr %476, i32 4440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %477 = tail call i32 @llvm.bswap.i32(i32 %s_seq.sroa.17.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.6, i32 %477) #4, !srcloc !41
  %478 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i365.7 = getelementptr i8, ptr %479, i32 4444
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %480 = tail call i32 @llvm.bswap.i32(i32 %s_seq.sroa.19.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.7, i32 %480) #4, !srcloc !41
  %481 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i365.8 = getelementptr i8, ptr %482, i32 4448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %483 = tail call i32 @llvm.bswap.i32(i32 %s_seq.sroa.21.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.8, i32 %483) #4, !srcloc !41
  %484 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i365.9 = getelementptr i8, ptr %485, i32 4452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %486 = tail call i32 @llvm.bswap.i32(i32 %s_seq.sroa.23.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.9, i32 %486) #4, !srcloc !41
  br label %if.end164

if.end164:                                        ; preds = %for.body154.preheader, %if.then146.if.end164_crit_edge
  %487 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %488)
  %cmp166 = icmp eq i32 %488, 1
  br i1 %cmp166, label %if.then168, label %if.end164.if.end180_crit_edge

if.end164.if.end180_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end180

if.then168:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #6
  %489 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i369 = getelementptr i8, ptr %490, i32 32848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %491 = tail call i32 @llvm.bswap.i32(i32 %tsf_up.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i369, i32 %491) #4, !srcloc !41
  %492 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %493)
  %cmp175 = icmp eq i32 %493, 0
  %494 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %iobase.i327, align 4
  %conv.i371 = select i1 %cmp175, i32 32876, i32 32844
  %add.ptr.i372 = getelementptr i8, ptr %495, i32 %conv.i371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %496 = tail call i32 @llvm.bswap.i32(i32 %tsf_lo.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i372, i32 %496) #4, !srcloc !41
  br label %if.end180

if.end180:                                        ; preds = %if.then168, %if.end164.if.end180_crit_edge, %ath5k_hw_commit_eeprom_settings.exit.if.end180_crit_edge, %ath5k_hw_tweak_initval_settings.exit.if.end180_crit_edge
  %497 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i374 = getelementptr i8, ptr %498, i32 16400
  %499 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %500 = or i32 %499, %74
  %501 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i376 = getelementptr i8, ptr %502, i32 16400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i376, i32 %500) #4, !srcloc !41
  %503 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i378 = getelementptr i8, ptr %504, i32 16404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i378, i32 %77) #4, !srcloc !41
  %505 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %iobase.i327, align 4
  %add.ptr.i380 = getelementptr i8, ptr %506, i32 16408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 %80) #4, !srcloc !41
  tail call void @ath5k_hw_pcu_init(ptr noundef %ah, i32 noundef %op_mode) #4
  %call185 = tail call i32 @ath5k_hw_phy_init(ptr noundef %ah, ptr noundef %channel, i8 noundef zeroext %conv, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end195, label %do.body188

do.body188:                                       ; preds = %if.end180
  %call189 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %do.body188.cleanup_crit_edge, label %if.then191

do.body188.cleanup_crit_edge:                     ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then191:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef %call185) #4
  br label %cleanup

if.end195:                                        ; preds = %if.end180
  %call196 = tail call i32 @ath5k_hw_init_queues(ptr noundef %ah) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.end199, label %if.end195.cleanup_crit_edge

if.end195.cleanup_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end199:                                        ; preds = %if.end195
  tail call void @ath5k_hw_dma_init(ptr noundef %ah) #4
  %ah_use_32khz_clock = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 77
  %507 = ptrtoint ptr %ah_use_32khz_clock to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %ah_use_32khz_clock, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %508)
  %tobool200.not = icmp eq i8 %508, 0
  br i1 %tobool200.not, label %if.end199.if.end210_crit_edge, label %land.lhs.true202

if.end199.if.end210_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end210

land.lhs.true202:                                 ; preds = %if.end199
  %509 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %510)
  %cmp204 = icmp ne i32 %510, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %op_mode)
  %cmp207.not = icmp eq i32 %op_mode, 3
  %or.cond = or i1 %cmp207.not, %cmp204
  br i1 %or.cond, label %land.lhs.true202.if.end210_crit_edge, label %if.then209

land.lhs.true202.if.end210_crit_edge:             ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end210

if.then209:                                       ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ath5k_hw_set_sleep_clock(ptr noundef %ah, i1 noundef zeroext true)
  br label %if.end210

if.end210:                                        ; preds = %if.then209, %land.lhs.true202.if.end210_crit_edge, %if.end199.if.end210_crit_edge
  %511 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %512)
  %cmp212 = icmp eq i32 %512, 0
  %513 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %iobase.i327, align 4
  %conv.i382 = select i1 %cmp212, i32 32804, i32 32800
  %add.ptr.i383 = getelementptr i8, ptr %514, i32 %conv.i382
  %515 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i383) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %516 = and i32 %515, -32769
  %517 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %518)
  %cmp219 = icmp eq i32 %518, 0
  %519 = ptrtoint ptr %iobase.i327 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %iobase.i327, align 4
  %conv.i385 = select i1 %cmp219, i32 32804, i32 32800
  %add.ptr.i386 = getelementptr i8, ptr %520, i32 %conv.i385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i386, i32 %516) #4, !srcloc !41
  tail call void @ath5k_hw_reset_tsf(ptr noundef %ah) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end210, %if.end195.cleanup_crit_edge, %if.then191, %do.body188.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %if.then67, %land.rhs57.cleanup_crit_edge, %do.body52.cleanup_crit_edge, %if.then33, %do.body30.cleanup_crit_edge, %if.then25, %do.body22.cleanup_crit_edge, %if.then14, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end210 ], [ -22, %if.then14 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then25 ], [ -22, %do.body22.cleanup_crit_edge ], [ -22, %if.then33 ], [ -22, %do.body30.cleanup_crit_edge ], [ 0, %do.body52.cleanup_crit_edge ], [ 0, %if.then67 ], [ 0, %land.rhs57.cleanup_crit_edge ], [ %call128, %if.end127.cleanup_crit_edge ], [ %call139, %if.end137.cleanup_crit_edge ], [ %call185, %if.then191 ], [ %call185, %do.body188.cleanup_crit_edge ], [ %call196, %if.end195.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_hw_set_sleep_clock(ptr noundef readonly %ah, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ee_misc1 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 11
  %0 = ptrtoint ptr %ee_misc1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ee_misc1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %1)
  %2 = icmp ugt i16 %1, 16383
  %3 = and i1 %2, %enable
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  br i1 %3, label %if.then, label %if.else49

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %5, i32 32796
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %7 = and i32 %6, 2143354879
  %8 = or i32 %7, -2147483648
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i169 = getelementptr i8, ptr %10, i32 32796
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 %8) #4, !srcloc !41
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i171 = getelementptr i8, ptr %12, i32 33028
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %14 = and i32 %13, 16777215
  %15 = or i32 %14, 1023410176
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i173 = getelementptr i8, ptr %17, i32 33028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 %15) #4, !srcloc !41
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i175 = getelementptr i8, ptr %19, i32 39024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175, i32 520093696) #4, !srcloc !41
  %ah_radio = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %20 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ah_radio, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %21, label %lor.lhs.false21 [
    i32 2, label %if.then.if.end_crit_edge
    i32 4, label %if.then.if.end_crit_edge234
    i32 5, label %if.then.if.end_crit_edge235
  ]

if.then.if.end_crit_edge235:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.if.end_crit_edge234:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false21:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ah_mac_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 71
  %23 = ptrtoint ptr %ah_mac_version to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ah_mac_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %24)
  %cmp23 = icmp eq i16 %24, 15
  %spec.select = select i1 %cmp23, i32 335544320, i32 402653184
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false21, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge234, %if.then.if.end_crit_edge235
  %spending.0 = phi i32 [ 335544320, %if.then.if.end_crit_edge ], [ 335544320, %if.then.if.end_crit_edge234 ], [ 335544320, %if.then.if.end_crit_edge235 ], [ %spec.select, %lor.lhs.false21 ]
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i177 = getelementptr i8, ptr %26, i32 39416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %spending.0) #4, !srcloc !41
  %27 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ah_radio, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %28, label %lor.lhs.false33 [
    i32 2, label %if.end.if.then38_crit_edge
    i32 4, label %if.end.if.then38_crit_edge236
  ]

if.end.if.then38_crit_edge236:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

if.end.if.then38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

lor.lhs.false33:                                  ; preds = %if.end
  %ah_mac_version34 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 71
  %30 = ptrtoint ptr %ah_mac_version34 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ah_mac_version34, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %31)
  %cmp36 = icmp eq i16 %31, 15
  br i1 %cmp36, label %lor.lhs.false33.if.then38_crit_edge, label %if.else42

lor.lhs.false33.if.then38_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

if.then38:                                        ; preds = %lor.lhs.false33.if.then38_crit_edge, %if.end.if.then38_crit_edge, %if.end.if.then38_crit_edge236
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i179 = getelementptr i8, ptr %33, i32 39028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 637534208) #4, !srcloc !41
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %35, i32 39032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 218103808) #4, !srcloc !41
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i183 = getelementptr i8, ptr %37, i32 39408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 117440512) #4, !srcloc !41
  %38 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i185 = getelementptr i8, ptr %39, i32 39412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 1056964608) #4, !srcloc !41
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i187 = getelementptr i8, ptr %41, i32 16400
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %43 = and i32 %42, -4
  %44 = or i32 %43, 2
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i189 = getelementptr i8, ptr %46, i32 16400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189, i32 %44) #4, !srcloc !41
  br label %if.end46

if.else42:                                        ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i191 = getelementptr i8, ptr %48, i32 39028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 167772160) #4, !srcloc !41
  %49 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i193 = getelementptr i8, ptr %50, i32 39032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 201326592) #4, !srcloc !41
  %51 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i195 = getelementptr i8, ptr %52, i32 39408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195, i32 50331648) #4, !srcloc !41
  %53 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i197 = getelementptr i8, ptr %54, i32 39412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197, i32 536870912) #4, !srcloc !41
  %55 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i199 = getelementptr i8, ptr %56, i32 16400
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %58 = or i32 %57, 3
  %59 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i201 = getelementptr i8, ptr %60, i32 16400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 %58) #4, !srcloc !41
  br label %if.end46

if.end46:                                         ; preds = %if.else42, %if.then38
  %61 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i203 = getelementptr i8, ptr %62, i32 16400
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %64 = or i32 %63, 33554432
  %65 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i205 = getelementptr i8, ptr %66, i32 16400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 %64) #4, !srcloc !41
  br label %if.end110

if.else49:                                        ; preds = %entry
  %add.ptr.i207 = getelementptr i8, ptr %5, i32 16400
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %68 = and i32 %67, -33554433
  %69 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i209 = getelementptr i8, ptr %70, i32 16400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209, i32 %68) #4, !srcloc !41
  %71 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i211 = getelementptr i8, ptr %72, i32 16400
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i211) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %74 = and i32 %73, -4
  %75 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i213 = getelementptr i8, ptr %76, i32 16400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %74) #4, !srcloc !41
  %77 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i215 = getelementptr i8, ptr %78, i32 39024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 520093696) #4, !srcloc !41
  %79 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %80, i32 39028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 2130706432) #4, !srcloc !41
  %ah_mac_version55 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 71
  %81 = ptrtoint ptr %ah_mac_version55 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %ah_mac_version55, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %82)
  %cmp57 = icmp eq i16 %82, 15
  br i1 %cmp57, label %if.else49.if.end65_crit_edge, label %if.else60

if.else49.if.end65_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.else60:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #6
  %ee_is_hb63 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 8
  %83 = ptrtoint ptr %ee_is_hb63 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ee_is_hb63, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool61.not = icmp eq i8 %84, 0
  %. = select i1 %tobool61.not, i32 234881024, i32 838860800
  br label %if.end65

if.end65:                                         ; preds = %if.else60, %if.else49.if.end65_crit_edge
  %scal.0 = phi i32 [ 167772160, %if.else49.if.end65_crit_edge ], [ %., %if.else60 ]
  %85 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i219 = getelementptr i8, ptr %86, i32 39032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219, i32 %scal.0) #4, !srcloc !41
  %87 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i221 = getelementptr i8, ptr %88, i32 39408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221, i32 201326592) #4, !srcloc !41
  %89 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i223 = getelementptr i8, ptr %90, i32 39412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223, i32 -16777216) #4, !srcloc !41
  %ah_radio66 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %91 = ptrtoint ptr %ah_radio66 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ah_radio66, align 8
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %92, label %lor.lhs.false77 [
    i32 2, label %if.end65.if.end84_crit_edge
    i32 4, label %if.end65.if.end84_crit_edge237
    i32 5, label %if.end65.if.end84_crit_edge238
  ]

if.end65.if.end84_crit_edge238:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.end65.if.end84_crit_edge237:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.end65.if.end84_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

lor.lhs.false77:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %ah_mac_version55 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %ah_mac_version55, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %95)
  %cmp80 = icmp eq i16 %95, 15
  %spec.select167 = select i1 %cmp80, i32 335544320, i32 402653184
  br label %if.end84

if.end84:                                         ; preds = %lor.lhs.false77, %if.end65.if.end84_crit_edge, %if.end65.if.end84_crit_edge237, %if.end65.if.end84_crit_edge238
  %spending.1 = phi i32 [ 335544320, %if.end65.if.end84_crit_edge ], [ 335544320, %if.end65.if.end84_crit_edge237 ], [ 335544320, %if.end65.if.end84_crit_edge238 ], [ %spec.select167, %lor.lhs.false77 ]
  %96 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i225 = getelementptr i8, ptr %97, i32 39416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 %spending.1) #4, !srcloc !41
  %98 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i227 = getelementptr i8, ptr %99, i32 33028
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %101 = and i32 %100, 16777215
  %102 = or i32 %101, 16777216
  %103 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i229 = getelementptr i8, ptr %104, i32 33028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229, i32 %102) #4, !srcloc !41
  %105 = ptrtoint ptr %ah_radio66 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ah_radio66, align 8
  %switch.tableidx = add i32 %106, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %107 = icmp ult i32 %switch.tableidx, 5
  br i1 %107, label %switch.lookup, label %if.end84.if.end105_crit_edge

if.end84.if.end105_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

switch.lookup:                                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ath5k_hw_set_sleep_clock, i32 0, i32 %switch.tableidx
  %108 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %108)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end105

if.end105:                                        ; preds = %switch.lookup, %if.end84.if.end105_crit_edge
  %sclock.0 = phi i32 [ %switch.load, %switch.lookup ], [ 3968, %if.end84.if.end105_crit_edge ]
  %109 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i231 = getelementptr i8, ptr %110, i32 32796
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i231) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %112 = and i32 %111, 2143354879
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  %or109 = or i32 %113, %sclock.0
  %114 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i233 = getelementptr i8, ptr %115, i32 32796
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %116 = tail call i32 @llvm.bswap.i32(i32 %or109) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233, i32 %116) #4, !srcloc !41
  br label %if.end110

if.end110:                                        ; preds = %if.end105, %if.end46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_phy_init(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_gainf_calibrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_write_initvals(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_pcu_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_init_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_dma_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_reset_tsf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_eeprom_mode_from_channel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_antenna_switch(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath5k_hw_chan_has_spur_noise(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 619, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 644, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 651, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 713, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 720, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 733, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 784, i32 4}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 1178, i32 4}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 1185, i32 4}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 1191, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 1203, i32 4}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__func__.ath5k_hw_reset, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 1209, i32 4}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath5k/reset.c", i32 1342, i32 3}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 5028392}
!39 = !{i64 2152568741}
!40 = !{i64 2152570096}
!41 = !{i64 5027974}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i8 0, i8 2}
