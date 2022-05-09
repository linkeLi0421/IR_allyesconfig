; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/eeprom.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.ath_bus_ops = type { i32, ptr, ptr, ptr }
%struct.ath5k_pdgain_info = type { i8, ptr, ptr }
%struct.ath5k_chan_pcal_info_rf5112 = type { [4 x i8], [3 x i8], [4 x i8], [3 x i8] }
%struct.ath5k_chan_pcal_info_rf5111 = type { [11 x i8], [11 x i8], i8, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"channel is not A/B/G!\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Invalid max custom EEPROM size: %d (0x%04x) max expected: %d (0x%04x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Invalid EEPROM checksum: 0x%04x eep_max: 0x%04x (%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"default size\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"custom size\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ath5k_pdgains_size_2413.pdgains_size = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 6, i32 9, i32 12], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 1793, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 109, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 123, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"pdgains_size\00", align 1
@___asan_gen_.47 = private constant [43 x i8] c"../drivers/net/wireless/ath/ath5k/eeprom.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 1153, i32 28 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ath5k_pdgains_size_2413.pdgains_size], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_pdgains_size_2413.pdgains_size to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_eeprom_init(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  %val.i79 = alloca i16, align 2
  %val.i63 = alloca i16, align 2
  %val.i.i38 = alloca i16, align 2
  %val.i64.i = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  %mode_offset.i = alloca [3 x i32], align 4
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_eeprom.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i, align 2, !annotation !25
  %bus_ops.i.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 25
  %1 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %eeprom_read.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eeprom_read.i.i, align 4
  %call1.i.i = tail call zeroext i1 %4(ptr noundef %ah, i32 noundef 61, ptr noundef %cap_eeprom.i) #6
  br i1 %call1.i.i, label %do.body3.i, label %entry.ath5k_eeprom_init_header.exit.thread_crit_edge

entry.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.body3.i:                                       ; preds = %entry
  %ee_protect.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 1
  %5 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i330.i = getelementptr inbounds %struct.ath_bus_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %eeprom_read.i330.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eeprom_read.i330.i, align 4
  %call1.i331.i = tail call zeroext i1 %8(ptr noundef %ah, i32 noundef 63, ptr noundef %ee_protect.i) #6
  br i1 %call1.i331.i, label %do.body11.i, label %do.body3.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body3.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.body11.i:                                      ; preds = %do.body3.i
  %ee_regdomain.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 2
  %9 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i333.i = getelementptr inbounds %struct.ath_bus_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %eeprom_read.i333.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eeprom_read.i333.i, align 4
  %call1.i334.i = tail call zeroext i1 %12(ptr noundef %ah, i32 noundef 191, ptr noundef %ee_regdomain.i) #6
  br i1 %call1.i334.i, label %do.body19.i, label %do.body11.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body11.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.body19.i:                                      ; preds = %do.body11.i
  %ee_version.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  %13 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i336.i = getelementptr inbounds %struct.ath_bus_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %eeprom_read.i336.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eeprom_read.i336.i, align 4
  %call1.i337.i = tail call zeroext i1 %16(ptr noundef %ah, i32 noundef 193, ptr noundef %ee_version.i) #6
  br i1 %call1.i337.i, label %do.body27.i, label %do.body19.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body19.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.body27.i:                                      ; preds = %do.body19.i
  %ee_header.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %17 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i339.i = getelementptr inbounds %struct.ath_bus_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %eeprom_read.i339.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eeprom_read.i339.i, align 4
  %call1.i340.i = tail call zeroext i1 %20(ptr noundef %ah, i32 noundef 194, ptr noundef %ee_header.i) #6
  br i1 %call1.i340.i, label %do.end34.i, label %do.body27.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body27.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.end34.i:                                       ; preds = %do.body27.i
  %21 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %22)
  %cmp.i = icmp ult i16 %22, 12288
  br i1 %cmp.i, label %do.end34.i.if.end_crit_edge, label %do.body41.i

do.end34.i.if.end_crit_edge:                      ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body41.i:                                      ; preds = %do.end34.i
  %23 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i342.i = getelementptr inbounds %struct.ath_bus_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %eeprom_read.i342.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %eeprom_read.i342.i, align 4
  %call1.i343.i = call zeroext i1 %26(ptr noundef %ah, i32 noundef 28, ptr noundef nonnull %val.i) #6
  br i1 %call1.i343.i, label %do.end46.i, label %do.body41.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body41.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.end46.i:                                       ; preds = %do.body41.i
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %val.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i = icmp eq i16 %28, 0
  br i1 %tobool.not.i, label %do.end46.i.do.body70.preheader.i_crit_edge, label %if.then47.i

do.end46.i.do.body70.preheader.i_crit_edge:       ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body70.preheader.i

if.then47.i:                                      ; preds = %do.end46.i
  %29 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i345.i = getelementptr inbounds %struct.ath_bus_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %eeprom_read.i345.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eeprom_read.i345.i, align 4
  %call1.i346.i = call zeroext i1 %32(ptr noundef %ah, i32 noundef 27, ptr noundef nonnull %val.i) #6
  br i1 %call1.i346.i, label %do.end54.i, label %if.then47.i.ath5k_eeprom_init_header.exit.thread_crit_edge

if.then47.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.end54.i:                                       ; preds = %if.then47.i
  %33 = and i16 %28, -16
  %and.i = zext i16 %33 to i32
  %shl.i = shl nuw nsw i32 %and.i, 12
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %val.i, align 2
  %conv55.i = zext i16 %35 to i32
  %or.i = add nsw i32 %shl.i, -192
  %sub.i = add nsw i32 %or.i, %conv55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2496, i32 %sub.i)
  %cmp56.i = icmp ugt i32 %sub.i, 2496
  br i1 %cmp56.i, label %do.body59.i, label %if.end67.i

do.body59.i:                                      ; preds = %do.end54.i
  %call60.i = call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %do.body59.i.ath5k_eeprom_init_header.exit.thread_crit_edge, label %if.then62.i

do.body59.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

if.then62.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %sub.i, i32 noundef %sub.i, i32 noundef 2496, i32 noundef 2496) #6
  br label %ath5k_eeprom_init_header.exit.thread

if.end67.i:                                       ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp68392.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp68392.not.i, label %if.end67.i.do.body80.i_crit_edge, label %if.end67.i.do.body70.preheader.i_crit_edge

if.end67.i.do.body70.preheader.i_crit_edge:       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body70.preheader.i

if.end67.i.do.body80.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body80.i

do.body70.preheader.i:                            ; preds = %if.end67.i.do.body70.preheader.i_crit_edge, %do.end46.i.do.body70.preheader.i_crit_edge
  %eep_max.0397.i = phi i32 [ %sub.i, %if.end67.i.do.body70.preheader.i_crit_edge ], [ 832, %do.end46.i.do.body70.preheader.i_crit_edge ]
  br label %do.body70.i

do.body70.i:                                      ; preds = %do.end75.i.do.body70.i_crit_edge, %do.body70.preheader.i
  %offset.0394.i = phi i32 [ %inc.i, %do.end75.i.do.body70.i_crit_edge ], [ 0, %do.body70.preheader.i ]
  %cksum.0393.i = phi i32 [ %xor.i, %do.end75.i.do.body70.i_crit_edge ], [ 0, %do.body70.preheader.i ]
  %add.i = add i32 %offset.0394.i, 192
  %36 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i348.i = getelementptr inbounds %struct.ath_bus_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %eeprom_read.i348.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eeprom_read.i348.i, align 4
  %call1.i349.i = call zeroext i1 %39(ptr noundef %ah, i32 noundef %add.i, ptr noundef nonnull %val.i) #6
  br i1 %call1.i349.i, label %do.end75.i, label %do.body70.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body70.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.end75.i:                                       ; preds = %do.body70.i
  %40 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %val.i, align 2
  %conv76.i = zext i16 %41 to i32
  %xor.i = xor i32 %cksum.0393.i, %conv76.i
  %inc.i = add nuw i32 %offset.0394.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %eep_max.0397.i
  br i1 %exitcond.not.i, label %for.end.i, label %do.end75.i.do.body70.i_crit_edge

do.end75.i.do.body70.i_crit_edge:                 ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body70.i

for.end.i:                                        ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %xor.i)
  %cmp77.not.i = icmp eq i32 %xor.i, 65535
  br i1 %cmp77.not.i, label %do.body90.i, label %for.end.i.do.body80.i_crit_edge

for.end.i.do.body80.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body80.i

do.body80.i:                                      ; preds = %for.end.i.do.body80.i_crit_edge, %if.end67.i.do.body80.i_crit_edge
  %cksum.0.lcssa403.i = phi i32 [ %xor.i, %for.end.i.do.body80.i_crit_edge ], [ 0, %if.end67.i.do.body80.i_crit_edge ]
  %eep_max.0398402.i = phi i32 [ %eep_max.0397.i, %for.end.i.do.body80.i_crit_edge ], [ 0, %if.end67.i.do.body80.i_crit_edge ]
  %call81.i = call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %do.body80.i.ath5k_eeprom_init_header.exit.thread_crit_edge, label %if.then83.i

do.body80.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

if.then83.i:                                      ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 832, i32 %eep_max.0398402.i)
  %cmp84.i = icmp eq i32 %eep_max.0398402.i, 832
  %cond.i = select i1 %cmp84.i, ptr @.str.5, ptr @.str.6
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, i32 noundef %cksum.0.lcssa403.i, i32 noundef %eep_max.0398402.i, ptr noundef nonnull %cond.i) #6
  br label %ath5k_eeprom_init_header.exit.thread

do.body90.i:                                      ; preds = %for.end.i
  %42 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %43)
  %cmp95.i = icmp ugt i16 %43, 12290
  %cond97.i = select i1 %cmp95.i, i32 195, i32 196
  %ee_ant_gain.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 5
  %44 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i351.i = getelementptr inbounds %struct.ath_bus_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %eeprom_read.i351.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %eeprom_read.i351.i, align 4
  %call1.i352.i = call zeroext i1 %47(ptr noundef %ah, i32 noundef %cond97.i, ptr noundef %ee_ant_gain.i) #6
  br i1 %call1.i352.i, label %do.end104.i, label %do.body90.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body90.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.end104.i:                                      ; preds = %do.body90.i
  %48 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %49)
  %cmp109.i = icmp ugt i16 %49, 16383
  br i1 %cmp109.i, label %do.body112.i, label %do.end104.i.if.end180.i_crit_edge

do.end104.i.if.end180.i_crit_edge:                ; preds = %do.end104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180.i

do.body112.i:                                     ; preds = %do.end104.i
  %ee_misc0.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 10
  %50 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i354.i = getelementptr inbounds %struct.ath_bus_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %eeprom_read.i354.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %eeprom_read.i354.i, align 4
  %call1.i355.i = call zeroext i1 %53(ptr noundef %ah, i32 noundef 196, ptr noundef %ee_misc0.i) #6
  br i1 %call1.i355.i, label %do.body120.i, label %do.body112.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body112.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.body120.i:                                     ; preds = %do.body112.i
  %ee_misc1.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 11
  %54 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i357.i = getelementptr inbounds %struct.ath_bus_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %eeprom_read.i357.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %eeprom_read.i357.i, align 4
  %call1.i358.i = call zeroext i1 %57(ptr noundef %ah, i32 noundef 197, ptr noundef %ee_misc1.i) #6
  br i1 %call1.i358.i, label %do.body128.i, label %do.body120.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body120.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.body128.i:                                     ; preds = %do.body120.i
  %ee_misc2.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 12
  %58 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i360.i = getelementptr inbounds %struct.ath_bus_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %eeprom_read.i360.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %eeprom_read.i360.i, align 4
  %call1.i361.i = call zeroext i1 %61(ptr noundef %ah, i32 noundef 198, ptr noundef %ee_misc2.i) #6
  br i1 %call1.i361.i, label %do.end135.i, label %do.body128.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body128.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.end135.i:                                      ; preds = %do.body128.i
  %62 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16386, i16 %63)
  %cmp138.i = icmp ugt i16 %63, 16386
  br i1 %cmp138.i, label %do.body141.i, label %do.end135.i.if.end180.i_crit_edge

do.end135.i.if.end180.i_crit_edge:                ; preds = %do.end135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180.i

do.body141.i:                                     ; preds = %do.end135.i
  %ee_misc3.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 13
  %64 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i363.i = getelementptr inbounds %struct.ath_bus_ops, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %eeprom_read.i363.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %eeprom_read.i363.i, align 4
  %call1.i364.i = call zeroext i1 %67(ptr noundef %ah, i32 noundef 199, ptr noundef %ee_misc3.i) #6
  br i1 %call1.i364.i, label %if.end149.i, label %do.body141.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body141.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

if.end149.i:                                      ; preds = %do.body141.i
  %68 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %.pr.i = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20479, i16 %.pr.i)
  %cmp152.i = icmp ugt i16 %.pr.i, 20479
  br i1 %cmp152.i, label %do.body155.i, label %if.end149.i.if.end180.i_crit_edge

if.end149.i.if.end180.i_crit_edge:                ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180.i

do.body155.i:                                     ; preds = %if.end149.i
  %ee_misc4.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 14
  %69 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i366.i = getelementptr inbounds %struct.ath_bus_ops, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %eeprom_read.i366.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %eeprom_read.i366.i, align 4
  %call1.i367.i = call zeroext i1 %72(ptr noundef %ah, i32 noundef 200, ptr noundef %ee_misc4.i) #6
  br i1 %call1.i367.i, label %do.body163.i, label %do.body155.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body155.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.body163.i:                                     ; preds = %do.body155.i
  %ee_misc5.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 15
  %73 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i369.i = getelementptr inbounds %struct.ath_bus_ops, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %eeprom_read.i369.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %eeprom_read.i369.i, align 4
  %call1.i370.i = call zeroext i1 %76(ptr noundef %ah, i32 noundef 201, ptr noundef %ee_misc5.i) #6
  br i1 %call1.i370.i, label %do.body171.i, label %do.body163.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body163.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body163.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.body171.i:                                     ; preds = %do.body163.i
  %ee_misc6.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 16
  %77 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i372.i = getelementptr inbounds %struct.ath_bus_ops, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %eeprom_read.i372.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %eeprom_read.i372.i, align 4
  %call1.i373.i = call zeroext i1 %80(ptr noundef %ah, i32 noundef 202, ptr noundef %ee_misc6.i) #6
  br i1 %call1.i373.i, label %if.end180thread-pre-split.i, label %do.body171.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body171.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

if.end180thread-pre-split.i:                      ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %.pr390.i = load i16, ptr %ee_version.i, align 2
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.end180thread-pre-split.i, %if.end149.i.if.end180.i_crit_edge, %do.end135.i.if.end180.i_crit_edge, %do.end104.i.if.end180.i_crit_edge
  %82 = phi i16 [ %.pr390.i, %if.end180thread-pre-split.i ], [ %.pr.i, %if.end149.i.if.end180.i_crit_edge ], [ %49, %do.end104.i.if.end180.i_crit_edge ], [ %63, %do.end135.i.if.end180.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12291, i16 %82)
  %cmp185.i = icmp ult i16 %82, 12291
  br i1 %cmp185.i, label %do.body188.i, label %if.end180.i.do.body223.i_crit_edge

if.end180.i.do.body223.i_crit_edge:               ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body223.i

do.body188.i:                                     ; preds = %if.end180.i
  %83 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i375.i = getelementptr inbounds %struct.ath_bus_ops, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %eeprom_read.i375.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %eeprom_read.i375.i, align 4
  %call1.i376.i = call zeroext i1 %86(ptr noundef %ah, i32 noundef 236, ptr noundef nonnull %val.i) #6
  br i1 %call1.i376.i, label %do.end193.i, label %do.body188.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body188.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.end193.i:                                      ; preds = %do.body188.i
  %87 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %val.i, align 2
  %89 = and i16 %88, 7
  %arrayidx.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 28, i32 1
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %arrayidx.i, align 4
  %91 = lshr i16 %88, 3
  %92 = and i16 %91, 7
  %arrayidx201.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 29, i32 1
  %93 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %arrayidx201.i, align 4
  %94 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i378.i = getelementptr inbounds %struct.ath_bus_ops, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %eeprom_read.i378.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %eeprom_read.i378.i, align 4
  %call1.i379.i = call zeroext i1 %97(ptr noundef %ah, i32 noundef 237, ptr noundef nonnull %val.i) #6
  br i1 %call1.i379.i, label %do.end208.i, label %do.end193.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.end193.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.end193.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.end208.i:                                      ; preds = %do.end193.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %val.i, align 2
  %100 = and i16 %99, 7
  %arrayidx213.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 28, i32 2
  %101 = ptrtoint ptr %arrayidx213.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %arrayidx213.i, align 4
  %102 = lshr i16 %99, 3
  %103 = and i16 %102, 7
  %arrayidx220.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 29, i32 2
  %104 = ptrtoint ptr %arrayidx220.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %arrayidx220.i, align 4
  br label %do.body223.i

do.body223.i:                                     ; preds = %do.end208.i, %if.end180.i.do.body223.i_crit_edge
  %105 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i381.i = getelementptr inbounds %struct.ath_bus_ops, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %eeprom_read.i381.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %eeprom_read.i381.i, align 4
  %call1.i382.i = call zeroext i1 %108(ptr noundef %ah, i32 noundef 11, ptr noundef nonnull %val.i) #6
  br i1 %call1.i382.i, label %do.end228.i, label %do.body223.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body223.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body223.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.end228.i:                                      ; preds = %do.body223.i
  %ah_mac_version.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 71
  %109 = ptrtoint ptr %ah_mac_version.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %ah_mac_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %110)
  %cmp230.i = icmp eq i16 %110, 14
  br i1 %cmp230.i, label %land.lhs.true.i, label %do.end228.i.if.else.i_crit_edge

do.end228.i.if.else.i_crit_edge:                  ; preds = %do.end228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end228.i
  %111 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %val.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool233.not.i = icmp eq i16 %112, 0
  br i1 %tobool233.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.do.body237.i_crit_edge

land.lhs.true.i.do.body237.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body237.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end228.i.if.else.i_crit_edge
  br label %do.body237.i

do.body237.i:                                     ; preds = %if.else.i, %land.lhs.true.i.do.body237.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true.i.do.body237.i_crit_edge ]
  %ee_is_hb63.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 8
  %113 = ptrtoint ptr %ee_is_hb63.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %.sink.i, ptr %ee_is_hb63.i, align 2
  %114 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i384.i = getelementptr inbounds %struct.ath_bus_ops, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %eeprom_read.i384.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %eeprom_read.i384.i, align 4
  %call1.i385.i = call zeroext i1 %117(ptr noundef %ah, i32 noundef 15, ptr noundef nonnull %val.i) #6
  br i1 %call1.i385.i, label %do.end242.i, label %do.body237.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.body237.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.body237.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.end242.i:                                      ; preds = %do.body237.i
  %118 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %val.i, align 2
  %120 = trunc i16 %119 to i8
  %121 = lshr i8 %120, 2
  %conv246.i = and i8 %121, 7
  %ee_rfkill_pin.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 6
  %122 = ptrtoint ptr %ee_rfkill_pin.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv246.i, ptr %ee_rfkill_pin.i, align 4
  %ee_rfkill_pol.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 7
  %123 = lshr i8 %120, 1
  %124 = and i8 %123, 1
  %125 = ptrtoint ptr %ee_rfkill_pol.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %ee_rfkill_pol.i, align 1
  %126 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i387.i = getelementptr inbounds %struct.ath_bus_ops, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %eeprom_read.i387.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %eeprom_read.i387.i, align 4
  %call1.i388.i = call zeroext i1 %129(ptr noundef %ah, i32 noundef 2, ptr noundef nonnull %val.i) #6
  br i1 %call1.i388.i, label %do.end257.i, label %do.end242.i.ath5k_eeprom_init_header.exit.thread_crit_edge

do.end242.i.ath5k_eeprom_init_header.exit.thread_crit_edge: ; preds = %do.end242.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_init_header.exit.thread

do.end257.i:                                      ; preds = %do.end242.i
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %val.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %131)
  %cmp259.i = icmp eq i16 %131, 64
  %ee_serdes.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 9
  %frombool263.i = zext i1 %cmp259.i to i8
  %132 = ptrtoint ptr %ee_serdes.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %frombool263.i, ptr %ee_serdes.i, align 1
  br label %if.end

ath5k_eeprom_init_header.exit.thread:             ; preds = %do.end242.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body237.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body223.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.end193.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body188.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body171.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body163.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body155.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body141.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body128.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body120.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body112.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body90.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %if.then83.i, %do.body80.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body70.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %if.then62.i, %do.body59.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %if.then47.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body41.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body27.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body19.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body11.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %do.body3.i.ath5k_eeprom_init_header.exit.thread_crit_edge, %entry.ath5k_eeprom_init_header.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %do.end257.i, %do.end34.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mode_offset.i) #6
  %133 = getelementptr inbounds [3 x i32], ptr %mode_offset.i, i32 0, i32 1
  %134 = getelementptr inbounds [3 x i32], ptr %mode_offset.i, i32 0, i32 2
  %135 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %136)
  %cmp.i31 = icmp ugt i16 %136, 12290
  %cond.i32 = select i1 %cmp.i31, i32 212, i32 197
  %137 = ptrtoint ptr %mode_offset.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %cond.i32, ptr %mode_offset.i, align 4
  %cond10.i = select i1 %cmp.i31, i32 242, i32 208
  %138 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %cond10.i, ptr %133, align 4
  %cond18.i = select i1 %cmp.i31, i32 269, i32 218
  %139 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %cond18.i, ptr %134, align 4
  %140 = ptrtoint ptr %ee_header.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %ee_header.i, align 4
  %142 = lshr i16 %141, 4
  %143 = and i16 %142, 127
  %ee_turbo_max_power.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 23
  %144 = ptrtoint ptr %ee_turbo_max_power.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %ee_turbo_max_power.i, align 2
  %arrayidx8.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 28, i32 0, i32 3
  %arrayidx14.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 29, i32 0, i32 3
  %arrayidx20.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 28, i32 0, i32 2
  %ee_ob.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 28
  %ee_db.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 29
  %arrayidx42.i72.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 29, i32 0, i32 2
  %arrayidx49.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 28, i32 0, i32 1
  %arrayidx56.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 29, i32 0, i32 1
  %ee_xr_power.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 24
  %ee_cck_ofdm_power_delta282.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 18
  %ee_scaled_cck_delta.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 19
  %ee_pwr_cal_g1049.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 48
  %arrayidx4591052.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 48, i32 1
  %arrayidx482.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 23, i32 2
  %arrayidx488.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 24, i32 2
  %arrayidx5011055.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 48, i32 2
  %arrayidx526.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 38, i32 2
  %arrayidx540.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 20, i32 2
  %arrayidx545.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 21, i32 2
  %ee_cck_ofdm_gain_delta.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 17
  %ee_pwr_cal_b1040.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 47
  %arrayidx3761043.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 47, i32 1
  %arrayidx4011046.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 47, i32 2
  %arrayidx426.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 38, i32 1
  %ee_i_cal.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 20
  %ee_q_cal.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 21
  %ee_margin_tx_rx.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 38
  %arrayidx644.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 39, i32 2
  %arrayidx650.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 41, i32 2
  %arrayidx671.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 40, i32 2
  %arrayidx677.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 59, i32 2
  %arrayidx698.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 60, i32 2
  %ee_switch_settling_turbo.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 39
  %ee_atn_tx_rx_turbo.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 41
  %ee_margin_tx_rx_turbo.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 40
  %ee_adc_desired_size_turbo.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 59
  %ee_pga_desired_size_turbo.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 60
  %ee_misc0.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 10
  %ee_pd_gain_overlap.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 61
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %mode.085.i = phi i32 [ 0, %if.end ], [ %inc.i34, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx25.i = getelementptr [3 x i32], ptr %mode_offset.i, i32 0, i32 %mode.085.i
  %145 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx25.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #6
  %147 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 -1, ptr %val.i.i, align 2, !annotation !25
  %148 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %eeprom_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %eeprom_read.i.i.i, align 4
  %call1.i.i.i = call zeroext i1 %151(ptr noundef %ah, i32 noundef %146, ptr noundef nonnull %val.i.i) #6
  br i1 %call1.i.i.i, label %do.end.i.i, label %for.body.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge

for.body.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ants.exit.thread.i

do.end.i.i:                                       ; preds = %for.body.i
  %inc.i.i = add i32 %146, 1
  %152 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %val.i.i, align 2
  %154 = lshr i16 %153, 8
  %155 = and i16 %154, 127
  %arrayidx.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 25, i32 %mode.085.i
  %156 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %arrayidx.i.i, align 2
  %157 = lshr i16 %153, 2
  %158 = and i16 %157, 63
  %arrayidx6.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 26, i32 %mode.085.i
  %159 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %arrayidx6.i.i, align 2
  %shl.i.i = shl i16 %153, 4
  %and8.i.i = and i16 %shl.i.i, 48
  %arrayidx10.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 27, i32 %mode.085.i
  %160 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %and8.i.i, ptr %arrayidx10.i.i, align 2
  %161 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i303.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %eeprom_read.i303.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %eeprom_read.i303.i.i, align 4
  %call1.i304.i.i = call zeroext i1 %164(ptr noundef %ah, i32 noundef %inc.i.i, ptr noundef nonnull %val.i.i) #6
  br i1 %call1.i304.i.i, label %do.end18.i.i, label %do.end.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge

do.end.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ants.exit.thread.i

do.end18.i.i:                                     ; preds = %do.end.i.i
  %inc13.i.i = add i32 %146, 2
  %165 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %val.i.i, align 2
  %167 = lshr i16 %166, 12
  %168 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %arrayidx10.i.i, align 2
  %or299.i.i = or i16 %169, %167
  store i16 %or299.i.i, ptr %arrayidx10.i.i, align 2
  %170 = lshr i16 %166, 6
  %171 = and i16 %170, 63
  %arrayidx35.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 27, i32 %mode.085.i, i32 1
  %172 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %arrayidx35.i.i, align 2
  %173 = and i16 %166, 63
  %arrayidx42.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 27, i32 %mode.085.i, i32 2
  %174 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %arrayidx42.i.i, align 2
  %175 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i306.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %eeprom_read.i306.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %eeprom_read.i306.i.i, align 4
  %call1.i307.i.i = call zeroext i1 %178(ptr noundef %ah, i32 noundef %inc13.i.i, ptr noundef nonnull %val.i.i) #6
  br i1 %call1.i307.i.i, label %do.end49.i.i, label %do.end18.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge

do.end18.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge: ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ants.exit.thread.i

do.end49.i.i:                                     ; preds = %do.end18.i.i
  %inc44.i.i = add i32 %146, 3
  %179 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %val.i.i, align 2
  %181 = lshr i16 %180, 10
  %arrayidx57.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 27, i32 %mode.085.i, i32 3
  %182 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %arrayidx57.i.i, align 2
  %183 = lshr i16 %180, 4
  %184 = and i16 %183, 63
  %arrayidx65.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 27, i32 %mode.085.i, i32 4
  %185 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %arrayidx65.i.i, align 2
  %shl67.i.i = shl i16 %180, 2
  %and68.i.i = and i16 %shl67.i.i, 60
  %arrayidx72.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 27, i32 %mode.085.i, i32 5
  %186 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %and68.i.i, ptr %arrayidx72.i.i, align 2
  %187 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i309.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %eeprom_read.i309.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %eeprom_read.i309.i.i, align 4
  %call1.i310.i.i = call zeroext i1 %190(ptr noundef %ah, i32 noundef %inc44.i.i, ptr noundef nonnull %val.i.i) #6
  br i1 %call1.i310.i.i, label %do.end79.i.i, label %do.end49.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge

do.end49.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge: ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ants.exit.thread.i

do.end79.i.i:                                     ; preds = %do.end49.i.i
  %inc74.i.i = add i32 %146, 4
  %191 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %val.i.i, align 2
  %193 = lshr i16 %192, 14
  %194 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %arrayidx72.i.i, align 2
  %or88300.i.i = or i16 %195, %193
  store i16 %or88300.i.i, ptr %arrayidx72.i.i, align 2
  %196 = lshr i16 %192, 8
  %197 = and i16 %196, 63
  %arrayidx97.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 27, i32 %mode.085.i, i32 6
  %198 = ptrtoint ptr %arrayidx97.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %197, ptr %arrayidx97.i.i, align 2
  %199 = lshr i16 %192, 2
  %200 = and i16 %199, 63
  %arrayidx105.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 27, i32 %mode.085.i, i32 7
  %201 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %200, ptr %arrayidx105.i.i, align 2
  %shl107.i.i = shl i16 %192, 4
  %and108.i.i = and i16 %shl107.i.i, 48
  %arrayidx112.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 27, i32 %mode.085.i, i32 8
  %202 = ptrtoint ptr %arrayidx112.i.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %and108.i.i, ptr %arrayidx112.i.i, align 2
  %203 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i312.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %eeprom_read.i312.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %eeprom_read.i312.i.i, align 4
  %call1.i313.i.i = call zeroext i1 %206(ptr noundef %ah, i32 noundef %inc74.i.i, ptr noundef nonnull %val.i.i) #6
  br i1 %call1.i313.i.i, label %if.end.i, label %do.end79.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge

do.end79.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge: ; preds = %do.end79.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ants.exit.thread.i

ath5k_eeprom_read_ants.exit.thread.i:             ; preds = %do.end79.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge, %do.end49.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge, %do.end18.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge, %do.end.i.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge, %for.body.i.ath5k_eeprom_read_ants.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #6
  br label %ath5k_eeprom_init_modes.exit.thread

if.end.i:                                         ; preds = %do.end79.i.i
  %inc114.i.i = add i32 %146, 5
  %207 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %val.i.i, align 2
  %209 = lshr i16 %208, 12
  %210 = ptrtoint ptr %arrayidx112.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %arrayidx112.i.i, align 2
  %or128301.i.i = or i16 %211, %209
  store i16 %or128301.i.i, ptr %arrayidx112.i.i, align 2
  %212 = lshr i16 %208, 6
  %213 = and i16 %212, 63
  %arrayidx137.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 27, i32 %mode.085.i, i32 9
  %214 = ptrtoint ptr %arrayidx137.i.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %213, ptr %arrayidx137.i.i, align 2
  %215 = and i16 %208, 63
  %arrayidx144.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 27, i32 %mode.085.i, i32 10
  %216 = ptrtoint ptr %arrayidx144.i.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %arrayidx144.i.i, align 2
  %217 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %arrayidx10.i.i, align 2
  %conv148.i.i = zext i16 %218 to i32
  %shl149.i.i = shl nuw nsw i32 %conv148.i.i, 4
  %arrayidx150.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 82, i32 %mode.085.i
  %219 = ptrtoint ptr %arrayidx150.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %shl149.i.i, ptr %arrayidx150.i.i, align 4
  %220 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %arrayidx35.i.i, align 2
  %conv155.i.i = zext i16 %221 to i32
  %222 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %arrayidx42.i.i, align 2
  %conv159.i.i = zext i16 %223 to i32
  %shl160.i.i = shl nuw nsw i32 %conv159.i.i, 6
  %or161.i.i = or i32 %shl160.i.i, %conv155.i.i
  %224 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %arrayidx57.i.i, align 2
  %conv165.i.i = zext i16 %225 to i32
  %shl166.i.i = shl nuw nsw i32 %conv165.i.i, 12
  %or167.i.i = or i32 %or161.i.i, %shl166.i.i
  %226 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %arrayidx65.i.i, align 2
  %conv171.i.i = zext i16 %227 to i32
  %shl172.i.i = shl i32 %conv171.i.i, 18
  %or173.i.i = or i32 %or167.i.i, %shl172.i.i
  %228 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %arrayidx72.i.i, align 2
  %conv177.i.i = zext i16 %229 to i32
  %shl178.i.i = shl i32 %conv177.i.i, 24
  %or179.i.i = or i32 %or173.i.i, %shl178.i.i
  %arrayidx182.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 82, i32 %mode.085.i, i32 1
  %230 = ptrtoint ptr %arrayidx182.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %or179.i.i, ptr %arrayidx182.i.i, align 4
  %231 = ptrtoint ptr %arrayidx97.i.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %arrayidx97.i.i, align 2
  %conv186.i.i = zext i16 %232 to i32
  %233 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %arrayidx105.i.i, align 2
  %conv190.i.i = zext i16 %234 to i32
  %shl191.i.i = shl nuw nsw i32 %conv190.i.i, 6
  %or192.i.i = or i32 %shl191.i.i, %conv186.i.i
  %235 = load i16, ptr %arrayidx112.i.i, align 2
  %conv196.i.i = zext i16 %235 to i32
  %shl197.i.i = shl nuw nsw i32 %conv196.i.i, 12
  %or198.i.i = or i32 %or192.i.i, %shl197.i.i
  %236 = load i16, ptr %arrayidx137.i.i, align 2
  %conv202.i.i = zext i16 %236 to i32
  %shl203.i.i = shl i32 %conv202.i.i, 18
  %or204.i.i = or i32 %or198.i.i, %shl203.i.i
  %237 = load i16, ptr %arrayidx144.i.i, align 2
  %conv208.i.i = zext i16 %237 to i32
  %shl209.i.i = shl i32 %conv208.i.i, 24
  %or210.i.i = or i32 %or204.i.i, %shl209.i.i
  %arrayidx213.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 82, i32 %mode.085.i, i32 2
  %238 = ptrtoint ptr %arrayidx213.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %or210.i.i, ptr %arrayidx213.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i64.i) #6
  %239 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 -1, ptr %val.i64.i, align 2, !annotation !25
  %arrayidx.i65.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45, i32 %mode.085.i
  %240 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 0, ptr %arrayidx.i65.i, align 1
  %inc.i66.i = add i32 %146, 6
  %241 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.i68.i = getelementptr inbounds %struct.ath_bus_ops, ptr %242, i32 0, i32 2
  %243 = ptrtoint ptr %eeprom_read.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %eeprom_read.i.i68.i, align 4
  %call1.i.i69.i = call zeroext i1 %244(ptr noundef %ah, i32 noundef %inc114.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i.i69.i, label %do.end.i70.i, label %if.end.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

if.end.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end.i70.i:                                     ; preds = %if.end.i
  %245 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %val.i64.i, align 2
  %247 = lshr i16 %246, 8
  %conv1.i.i = trunc i16 %247 to i8
  %arrayidx2.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 57, i32 %mode.085.i
  %248 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %conv1.i.i, ptr %arrayidx2.i.i, align 1
  %249 = zext i32 %mode.085.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode.085.i, label %do.end.i70.i.do.body84.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 2, label %do.end.i70.i.sw.bb70.i.i_crit_edge
    i32 1, label %do.end.i70.i.sw.bb70.i.i_crit_edge174
  ]

do.end.i70.i.sw.bb70.i.i_crit_edge174:            ; preds = %do.end.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb70.i.i

do.end.i70.i.sw.bb70.i.i_crit_edge:               ; preds = %do.end.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb70.i.i

do.end.i70.i.do.body84.i.i_crit_edge:             ; preds = %do.end.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body84.i.i

sw.bb.i.i:                                        ; preds = %do.end.i70.i
  %250 = lshr i16 %246, 5
  %251 = and i16 %250, 7
  %252 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %251, ptr %arrayidx8.i.i, align 2
  %253 = lshr i16 %246, 2
  %254 = and i16 %253, 7
  %255 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %254, ptr %arrayidx14.i.i, align 2
  %shl.i71.i = shl i16 %246, 1
  %and16.i.i = and i16 %shl.i71.i, 6
  %256 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 %and16.i.i, ptr %arrayidx20.i.i, align 4
  %257 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i923.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %eeprom_read.i923.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %eeprom_read.i923.i.i, align 4
  %call1.i924.i.i = call zeroext i1 %260(ptr noundef %ah, i32 noundef %inc.i66.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i924.i.i, label %do.end27.i.i, label %sw.bb.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

sw.bb.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end27.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc22.i.i = add i32 %146, 7
  %261 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %val.i64.i, align 2
  %263 = lshr i16 %262, 15
  %264 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %arrayidx20.i.i, align 4
  %or920.i.i = or i16 %265, %263
  store i16 %or920.i.i, ptr %arrayidx20.i.i, align 4
  %266 = lshr i16 %262, 12
  %267 = and i16 %266, 7
  %268 = ptrtoint ptr %arrayidx42.i72.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %267, ptr %arrayidx42.i72.i, align 4
  %269 = lshr i16 %262, 9
  %270 = and i16 %269, 7
  %271 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %270, ptr %arrayidx49.i.i, align 2
  %272 = lshr i16 %262, 6
  %273 = and i16 %272, 7
  %274 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %273, ptr %arrayidx56.i.i, align 2
  %275 = lshr i16 %262, 3
  %276 = and i16 %275, 7
  %277 = ptrtoint ptr %ee_ob.i.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %276, ptr %ee_ob.i.i, align 4
  %278 = and i16 %262, 7
  %279 = ptrtoint ptr %ee_db.i.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %278, ptr %ee_db.i.i, align 4
  br label %do.body84.i.i

sw.bb70.i.i:                                      ; preds = %do.end.i70.i.sw.bb70.i.i_crit_edge, %do.end.i70.i.sw.bb70.i.i_crit_edge174
  %280 = lshr i16 %246, 4
  %281 = and i16 %280, 7
  %arrayidx77.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 28, i32 %mode.085.i, i32 1
  %282 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 %281, ptr %arrayidx77.i.i, align 2
  %283 = and i16 %246, 7
  %arrayidx83.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 29, i32 %mode.085.i, i32 1
  %284 = ptrtoint ptr %arrayidx83.i.i to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %283, ptr %arrayidx83.i.i, align 2
  br label %do.body84.i.i

do.body84.i.i:                                    ; preds = %sw.bb70.i.i, %do.end27.i.i, %do.end.i70.i.do.body84.i.i_crit_edge
  %o.0.i.i = phi i32 [ %inc.i66.i, %do.end.i70.i.do.body84.i.i_crit_edge ], [ %inc.i66.i, %sw.bb70.i.i ], [ %inc22.i.i, %do.end27.i.i ]
  %inc85.i.i = add i32 %o.0.i.i, 1
  %285 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i926.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %286, i32 0, i32 2
  %287 = ptrtoint ptr %eeprom_read.i926.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %eeprom_read.i926.i.i, align 4
  %call1.i927.i.i = call zeroext i1 %288(ptr noundef %ah, i32 noundef %o.0.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i927.i.i, label %do.end90.i.i, label %do.body84.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.body84.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.body84.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end90.i.i:                                     ; preds = %do.body84.i.i
  %289 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %val.i64.i, align 2
  %291 = lshr i16 %290, 8
  %arrayidx95.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 30, i32 %mode.085.i
  %292 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 %291, ptr %arrayidx95.i.i, align 2
  %293 = and i16 %290, 255
  %arrayidx99.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 33, i32 %mode.085.i
  %294 = ptrtoint ptr %arrayidx99.i.i to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 %293, ptr %arrayidx99.i.i, align 2
  %295 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12291, i16 %296)
  %cmp.i.i = icmp ult i16 %296, 12291
  br i1 %cmp.i.i, label %if.then104.i.i, label %do.end90.i.i.do.body111.i.i_crit_edge

do.end90.i.i.do.body111.i.i_crit_edge:            ; preds = %do.end90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body111.i.i

if.then104.i.i:                                   ; preds = %do.end90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode.085.i)
  %cmp105.i.i = icmp eq i32 %mode.085.i, 0
  %conv107.i.i = select i1 %cmp105.i.i, i16 15, i16 28
  %297 = ptrtoint ptr %arrayidx99.i.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %conv107.i.i, ptr %arrayidx99.i.i, align 2
  br label %do.body111.i.i

do.body111.i.i:                                   ; preds = %if.then104.i.i, %do.end90.i.i.do.body111.i.i_crit_edge
  %298 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i929.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %299, i32 0, i32 2
  %300 = ptrtoint ptr %eeprom_read.i929.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %eeprom_read.i929.i.i, align 4
  %call1.i930.i.i = call zeroext i1 %301(ptr noundef %ah, i32 noundef %inc85.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i930.i.i, label %do.end117.i.i, label %do.body111.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.body111.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.body111.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end117.i.i:                                    ; preds = %do.body111.i.i
  %inc112.i.i = add i32 %o.0.i.i, 2
  %302 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %val.i64.i, align 2
  %304 = lshr i16 %303, 8
  %arrayidx122.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 31, i32 %mode.085.i
  %305 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 %304, ptr %arrayidx122.i.i, align 2
  %306 = and i16 %303, 255
  %arrayidx126.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 32, i32 %mode.085.i
  %307 = ptrtoint ptr %arrayidx126.i.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 %306, ptr %arrayidx126.i.i, align 2
  %inc128.i.i = add i32 %o.0.i.i, 3
  %308 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i932.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %309, i32 0, i32 2
  %310 = ptrtoint ptr %eeprom_read.i932.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %eeprom_read.i932.i.i, align 4
  %call1.i933.i.i = call zeroext i1 %311(ptr noundef %ah, i32 noundef %inc112.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i933.i.i, label %do.end133.i.i, label %do.end117.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.end117.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.end117.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end133.i.i:                                    ; preds = %do.end117.i.i
  %312 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %val.i64.i, align 2
  %314 = lshr i16 %313, 8
  %conv137.i.i = trunc i16 %314 to i8
  %arrayidx138.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 58, i32 %mode.085.i
  %315 = ptrtoint ptr %arrayidx138.i.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %conv137.i.i, ptr %arrayidx138.i.i, align 1
  %316 = and i16 %313, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %316)
  %tobool.not.i.i = icmp eq i16 %316, 0
  %317 = and i16 %313, 255
  %masksel.i.i = select i1 %tobool.not.i.i, i16 0, i16 -256
  %add.neg.sink.i.i = or i16 %masksel.i.i, %317
  %318 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 56, i32 %mode.085.i
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %add.neg.sink.i.i, ptr %318, align 2
  %320 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12291, i16 %321)
  %cmp157.i.i = icmp ult i16 %321, 12291
  br i1 %cmp157.i.i, label %if.then159.i.i, label %do.end133.i.i.do.body167.i.i_crit_edge

do.end133.i.i.do.body167.i.i_crit_edge:           ; preds = %do.end133.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167.i.i

if.then159.i.i:                                   ; preds = %do.end133.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode.085.i)
  %cmp160.i.i = icmp eq i32 %mode.085.i, 0
  %conv163.i.i = select i1 %cmp160.i.i, i16 -54, i16 -1
  %322 = ptrtoint ptr %318 to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 %conv163.i.i, ptr %318, align 2
  br label %do.body167.i.i

do.body167.i.i:                                   ; preds = %if.then159.i.i, %do.end133.i.i.do.body167.i.i_crit_edge
  %inc168.i.i = add i32 %o.0.i.i, 4
  %323 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i935.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %324, i32 0, i32 2
  %325 = ptrtoint ptr %eeprom_read.i935.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %eeprom_read.i935.i.i, align 4
  %call1.i936.i.i = call zeroext i1 %326(ptr noundef %ah, i32 noundef %inc128.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i936.i.i, label %do.end173.i.i, label %do.body167.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.body167.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.body167.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end173.i.i:                                    ; preds = %do.body167.i.i
  %327 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %val.i64.i, align 2
  %329 = lshr i16 %328, 5
  %330 = and i16 %329, 255
  %arrayidx178.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 34, i32 %mode.085.i
  %331 = ptrtoint ptr %arrayidx178.i.i to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %330, ptr %arrayidx178.i.i, align 2
  %332 = lshr i16 %328, 1
  %333 = and i16 %332, 15
  %arrayidx183.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 36, i32 %mode.085.i
  %334 = ptrtoint ptr %arrayidx183.i.i to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 %333, ptr %arrayidx183.i.i, align 2
  %335 = and i16 %328, 1
  %arrayidx187.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 35, i32 %mode.085.i
  %336 = ptrtoint ptr %arrayidx187.i.i to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %335, ptr %arrayidx187.i.i, align 2
  %337 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %338)
  %cmp192.i.i = icmp ult i16 %338, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode.085.i)
  %cmp194.not.i.i = icmp eq i32 %mode.085.i, 1
  %or.cond.i.i = or i1 %cmp194.not.i.i, %cmp192.i.i
  br i1 %or.cond.i.i, label %do.end173.i.i.if.end202.i.i_crit_edge, label %if.then196.i.i

do.end173.i.i.if.end202.i.i_crit_edge:            ; preds = %do.end173.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.then196.i.i:                                   ; preds = %do.end173.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %339 = lshr i16 %328, 13
  %340 = and i16 %339, 1
  %arrayidx201.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 22, i32 %mode.085.i
  %341 = ptrtoint ptr %arrayidx201.i.i to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 %340, ptr %arrayidx201.i.i, align 2
  %342 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %342)
  %.pr.i.i = load i16, ptr %ee_version.i, align 2
  br label %if.end202.i.i

if.end202.i.i:                                    ; preds = %if.then196.i.i, %do.end173.i.i.if.end202.i.i_crit_edge
  %343 = phi i16 [ %.pr.i.i, %if.then196.i.i ], [ %338, %do.end173.i.i.if.end202.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %343)
  %cmp207.i.i = icmp ugt i16 %343, 12290
  br i1 %cmp207.i.i, label %do.body210.i.i, label %if.end202.i.i.if.end244.i.i_crit_edge

if.end202.i.i.if.end244.i.i_crit_edge:            ; preds = %if.end202.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244.i.i

do.body210.i.i:                                   ; preds = %if.end202.i.i
  %inc211.i.i = add i32 %o.0.i.i, 5
  %344 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i938.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %345, i32 0, i32 2
  %346 = ptrtoint ptr %eeprom_read.i938.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %eeprom_read.i938.i.i, align 4
  %call1.i939.i.i = call zeroext i1 %347(ptr noundef %ah, i32 noundef %inc168.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i939.i.i, label %do.end216.i.i, label %do.body210.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.body210.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.body210.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end216.i.i:                                    ; preds = %do.body210.i.i
  %348 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %val.i64.i, align 2
  %350 = lshr i16 %349, 6
  %351 = and i16 %350, 127
  %arrayidx221.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 42, i32 %mode.085.i
  %352 = ptrtoint ptr %arrayidx221.i.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %351, ptr %arrayidx221.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode.085.i)
  %cmp222.i.i = icmp eq i32 %mode.085.i, 0
  br i1 %cmp222.i.i, label %if.then224.i.i, label %if.else229.i.i

if.then224.i.i:                                   ; preds = %do.end216.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %353 = and i16 %349, 63
  %354 = ptrtoint ptr %ee_xr_power.i.i to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 %353, ptr %ee_xr_power.i.i, align 2
  br label %if.end244.i.i

if.else229.i.i:                                   ; preds = %do.end216.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %355 = and i16 %349, 7
  %arrayidx234.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 28, i32 %mode.085.i
  %356 = ptrtoint ptr %arrayidx234.i.i to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 %355, ptr %arrayidx234.i.i, align 4
  %357 = lshr i16 %349, 3
  %358 = and i16 %357, 7
  %arrayidx241.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 29, i32 %mode.085.i
  %359 = ptrtoint ptr %arrayidx241.i.i to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 %358, ptr %arrayidx241.i.i, align 4
  br label %if.end244.i.i

if.end244.i.i:                                    ; preds = %if.else229.i.i, %if.then224.i.i, %if.end202.i.i.if.end244.i.i_crit_edge
  %o.1.i.i = phi i32 [ %inc211.i.i, %if.then224.i.i ], [ %inc211.i.i, %if.else229.i.i ], [ %inc168.i.i, %if.end202.i.i.if.end244.i.i_crit_edge ]
  %360 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12292, i16 %361)
  %cmp249.i.i = icmp ult i16 %361, 12292
  br i1 %cmp249.i.i, label %if.then251.i.i, label %if.else253.i.i

if.then251.i.i:                                   ; preds = %if.end244.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx252.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 37, i32 %mode.085.i
  %362 = ptrtoint ptr %arrayidx252.i.i to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 10, ptr %arrayidx252.i.i, align 2
  %363 = ptrtoint ptr %ee_cck_ofdm_power_delta282.i.i to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 15, ptr %ee_cck_ofdm_power_delta282.i.i, align 4
  br label %if.end296.i.i

if.else253.i.i:                                   ; preds = %if.end244.i.i
  %364 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %val.i64.i, align 2
  %366 = lshr i16 %365, 13
  %arrayidx259.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 37, i32 %mode.085.i
  %367 = ptrtoint ptr %arrayidx259.i.i to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 %366, ptr %arrayidx259.i.i, align 2
  %inc261.i.i = add i32 %o.1.i.i, 1
  %368 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i941.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %369, i32 0, i32 2
  %370 = ptrtoint ptr %eeprom_read.i941.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %eeprom_read.i941.i.i, align 4
  %call1.i942.i.i = call zeroext i1 %371(ptr noundef %ah, i32 noundef %o.1.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i942.i.i, label %do.end266.i.i, label %if.else253.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

if.else253.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %if.else253.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end266.i.i:                                    ; preds = %if.else253.i.i
  %372 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %val.i64.i, align 2
  %shl268.i.i = shl i16 %373, 3
  %and269.i.i = and i16 %shl268.i.i, 56
  %374 = ptrtoint ptr %arrayidx259.i.i to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %arrayidx259.i.i, align 2
  %or273.i.i = or i16 %and269.i.i, %375
  store i16 %or273.i.i, ptr %arrayidx259.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.085.i)
  %cmp275.i.i = icmp eq i32 %mode.085.i, 2
  br i1 %cmp275.i.i, label %if.then277.i.i, label %do.end266.i.i.if.end296.i.i_crit_edge

do.end266.i.i.if.end296.i.i_crit_edge:            ; preds = %do.end266.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end296.i.i

if.then277.i.i:                                   ; preds = %do.end266.i.i
  %376 = lshr i16 %373, 3
  %377 = and i16 %376, 255
  %378 = ptrtoint ptr %ee_cck_ofdm_power_delta282.i.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 %377, ptr %ee_cck_ofdm_power_delta282.i.i, align 4
  %379 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16389, i16 %380)
  %cmp287.i.i = icmp ugt i16 %380, 16389
  br i1 %cmp287.i.i, label %if.end325.i.thread.i, label %if.then277.i.i.if.end317.i.i_crit_edge

if.then277.i.i.if.end317.i.i_crit_edge:           ; preds = %if.then277.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end317.i.i

if.end325.i.thread.i:                             ; preds = %if.then277.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %381 = lshr i16 %373, 11
  %382 = ptrtoint ptr %ee_scaled_cck_delta.i.i to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 %381, ptr %ee_scaled_cck_delta.i.i, align 2
  br label %do.body429.i.i

if.end296.i.i:                                    ; preds = %do.end266.i.i.if.end296.i.i_crit_edge, %if.then251.i.i
  %o.2.i.i = phi i32 [ %o.1.i.i, %if.then251.i.i ], [ %inc261.i.i, %do.end266.i.i.if.end296.i.i_crit_edge ]
  %383 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %384)
  %cmp301.i.i = icmp ugt i16 %384, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode.085.i)
  %cmp304.i.i = icmp eq i32 %mode.085.i, 0
  %or.cond921.i.i = and i1 %cmp304.i.i, %cmp301.i.i
  br i1 %or.cond921.i.i, label %if.end325.thread.i.i, label %if.end296.i.i.if.end317.i.i_crit_edge

if.end296.i.i.if.end317.i.i_crit_edge:            ; preds = %if.end296.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end317.i.i

if.end325.thread.i.i:                             ; preds = %if.end296.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %385 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %val.i64.i, align 2
  %387 = lshr i16 %386, 8
  %388 = and i16 %387, 63
  %389 = ptrtoint ptr %ee_i_cal.i.i to i32
  call void @__asan_store2_noabort(i32 %389)
  store i16 %388, ptr %ee_i_cal.i.i, align 2
  %390 = lshr i16 %386, 3
  %391 = and i16 %390, 31
  %392 = ptrtoint ptr %ee_q_cal.i.i to i32
  call void @__asan_store2_noabort(i32 %392)
  store i16 %391, ptr %ee_q_cal.i.i, align 2
  br label %sw.bb326.i.i

if.end317.i.i:                                    ; preds = %if.end296.i.i.if.end317.i.i_crit_edge, %if.then277.i.i.if.end317.i.i_crit_edge
  %393 = phi i16 [ %384, %if.end296.i.i.if.end317.i.i_crit_edge ], [ %380, %if.then277.i.i.if.end317.i.i_crit_edge ]
  %o.21033.i.i = phi i32 [ %o.2.i.i, %if.end296.i.i.if.end317.i.i_crit_edge ], [ %inc261.i.i, %if.then277.i.i.if.end317.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %393)
  %cmp322.i.i = icmp ult i16 %393, 16384
  br i1 %cmp322.i.i, label %if.end317.i.i.for.inc.i_crit_edge, label %if.end325.i.i

if.end317.i.i.for.inc.i_crit_edge:                ; preds = %if.end317.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end325.i.i:                                    ; preds = %if.end317.i.i
  %394 = zext i32 %mode.085.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %394, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %mode.085.i, label %if.end325.i.i.sw.epilog564.i.i_crit_edge [
    i32 0, label %if.end325.i.i.sw.bb326.i.i_crit_edge
    i32 1, label %do.body347.i.i
    i32 2, label %if.end325.i.i.do.body429.i.i_crit_edge
  ]

if.end325.i.i.do.body429.i.i_crit_edge:           ; preds = %if.end325.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body429.i.i

if.end325.i.i.sw.bb326.i.i_crit_edge:             ; preds = %if.end325.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb326.i.i

if.end325.i.i.sw.epilog564.i.i_crit_edge:         ; preds = %if.end325.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog564.i.i

sw.bb326.i.i:                                     ; preds = %if.end325.i.i.sw.bb326.i.i_crit_edge, %if.end325.thread.i.i
  %395 = phi i16 [ %384, %if.end325.thread.i.i ], [ %393, %if.end325.i.i.sw.bb326.i.i_crit_edge ]
  %o.2103310361038.i.i = phi i32 [ %o.2.i.i, %if.end325.thread.i.i ], [ %o.21033.i.i, %if.end325.i.i.sw.bb326.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 16385, i16 %395)
  %cmp331.i.i = icmp ult i16 %395, 16385
  br i1 %cmp331.i.i, label %sw.bb326.i.i.sw.epilog564.i.i_crit_edge, label %do.body335.i.i

sw.bb326.i.i.sw.epilog564.i.i_crit_edge:          ; preds = %sw.bb326.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog564.i.i

do.body335.i.i:                                   ; preds = %sw.bb326.i.i
  %396 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i944.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %397, i32 0, i32 2
  %398 = ptrtoint ptr %eeprom_read.i944.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %eeprom_read.i944.i.i, align 4
  %call1.i945.i.i = call zeroext i1 %399(ptr noundef %ah, i32 noundef %o.2103310361038.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i945.i.i, label %do.end341.i.i, label %do.body335.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.body335.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.body335.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end341.i.i:                                    ; preds = %do.body335.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc336.i.i = add i32 %o.2103310361038.i.i, 1
  %400 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %val.i64.i, align 2
  %402 = and i16 %401, 63
  %403 = ptrtoint ptr %ee_margin_tx_rx.i.i to i32
  call void @__asan_store2_noabort(i32 %403)
  store i16 %402, ptr %ee_margin_tx_rx.i.i, align 2
  br label %sw.epilog564.i.i

do.body347.i.i:                                   ; preds = %if.end325.i.i
  %inc348.i.i = add i32 %o.21033.i.i, 1
  %404 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i947.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %405, i32 0, i32 2
  %406 = ptrtoint ptr %eeprom_read.i947.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %eeprom_read.i947.i.i, align 4
  %call1.i948.i.i = call zeroext i1 %407(ptr noundef %ah, i32 noundef %o.21033.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i948.i.i, label %do.end353.i.i, label %do.body347.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.body347.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.body347.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end353.i.i:                                    ; preds = %do.body347.i.i
  %408 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %val.i64.i, align 2
  %410 = and i16 %409, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %410)
  %cmp.i.i.i = icmp eq i16 %410, 255
  br i1 %cmp.i.i.i, label %ath5k_eeprom_bin2freq.exit.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end353.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %411 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %411)
  %412 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %412)
  %cmp6.i.i.i = icmp ugt i16 %412, 12290
  %retval.0.i.ph.v.i.i = select i1 %cmp6.i.i.i, i16 2300, i16 2400
  %retval.0.i.ph.i.i = add nuw nsw i16 %retval.0.i.ph.v.i.i, %410
  %413 = ptrtoint ptr %ee_pwr_cal_b1040.i.i to i32
  call void @__asan_store2_noabort(i32 %413)
  store i16 %retval.0.i.ph.i.i, ptr %ee_pwr_cal_b1040.i.i, align 4
  %414 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %arrayidx.i65.i, align 1
  %inc368.i.i = add i8 %415, 1
  store i8 %inc368.i.i, ptr %arrayidx.i65.i, align 1
  br label %if.end369.i.i

ath5k_eeprom_bin2freq.exit.i.i:                   ; preds = %do.end353.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %416 = ptrtoint ptr %ee_pwr_cal_b1040.i.i to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 255, ptr %ee_pwr_cal_b1040.i.i, align 4
  br label %if.end369.i.i

if.end369.i.i:                                    ; preds = %ath5k_eeprom_bin2freq.exit.i.i, %if.end.i.i.i
  %417 = lshr i16 %409, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %417)
  %cmp.i949.i.i = icmp eq i16 %417, 255
  br i1 %cmp.i949.i.i, label %ath5k_eeprom_bin2freq.exit958.i.i, label %if.end.i952.i.i

if.end.i952.i.i:                                  ; preds = %if.end369.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %418 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %419)
  %cmp6.i951.i.i = icmp ugt i16 %419, 12290
  %retval.0.i957.ph.v.i.i = select i1 %cmp6.i951.i.i, i16 2300, i16 2400
  %retval.0.i957.ph.i.i = add nuw nsw i16 %retval.0.i957.ph.v.i.i, %417
  %420 = ptrtoint ptr %arrayidx3761043.i.i to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 %retval.0.i957.ph.i.i, ptr %arrayidx3761043.i.i, align 4
  %421 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %arrayidx.i65.i, align 1
  %inc387.i.i = add i8 %422, 1
  store i8 %inc387.i.i, ptr %arrayidx.i65.i, align 1
  br label %do.body389.i.i

ath5k_eeprom_bin2freq.exit958.i.i:                ; preds = %if.end369.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %423 = ptrtoint ptr %arrayidx3761043.i.i to i32
  call void @__asan_store2_noabort(i32 %423)
  store i16 255, ptr %arrayidx3761043.i.i, align 4
  br label %do.body389.i.i

do.body389.i.i:                                   ; preds = %ath5k_eeprom_bin2freq.exit958.i.i, %if.end.i952.i.i
  %inc390.i.i = add i32 %o.21033.i.i, 2
  %424 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i960.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %425, i32 0, i32 2
  %426 = ptrtoint ptr %eeprom_read.i960.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %eeprom_read.i960.i.i, align 4
  %call1.i961.i.i = call zeroext i1 %427(ptr noundef %ah, i32 noundef %inc348.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i961.i.i, label %do.end395.i.i, label %do.body389.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.body389.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.body389.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end395.i.i:                                    ; preds = %do.body389.i.i
  %428 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %val.i64.i, align 2
  %430 = and i16 %429, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %430)
  %cmp.i962.i.i = icmp eq i16 %430, 255
  br i1 %cmp.i962.i.i, label %ath5k_eeprom_bin2freq.exit971.i.i, label %if.end.i965.i.i

if.end.i965.i.i:                                  ; preds = %do.end395.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %431 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %432)
  %cmp6.i964.i.i = icmp ugt i16 %432, 12290
  %retval.0.i970.ph.v.i.i = select i1 %cmp6.i964.i.i, i16 2300, i16 2400
  %retval.0.i970.ph.i.i = add nuw nsw i16 %retval.0.i970.ph.v.i.i, %430
  %433 = ptrtoint ptr %arrayidx4011046.i.i to i32
  call void @__asan_store2_noabort(i32 %433)
  store i16 %retval.0.i970.ph.i.i, ptr %arrayidx4011046.i.i, align 4
  %434 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %arrayidx.i65.i, align 1
  %inc412.i.i = add i8 %435, 1
  store i8 %inc412.i.i, ptr %arrayidx.i65.i, align 1
  br label %if.end413.i.i

ath5k_eeprom_bin2freq.exit971.i.i:                ; preds = %do.end395.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %436 = ptrtoint ptr %arrayidx4011046.i.i to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 255, ptr %arrayidx4011046.i.i, align 4
  br label %if.end413.i.i

if.end413.i.i:                                    ; preds = %ath5k_eeprom_bin2freq.exit971.i.i, %if.end.i965.i.i
  %437 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %437)
  %438 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %438)
  %cmp418.i.i = icmp ugt i16 %438, 16384
  br i1 %cmp418.i.i, label %if.then420.i.i, label %if.end413.i.i.for.inc.i_crit_edge

if.end413.i.i.for.inc.i_crit_edge:                ; preds = %if.end413.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then420.i.i:                                   ; preds = %if.end413.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %439 = lshr i16 %429, 8
  %440 = and i16 %439, 63
  %441 = ptrtoint ptr %arrayidx426.i.i to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 %440, ptr %arrayidx426.i.i, align 2
  br label %sw.epilog564.i.i

do.body429.i.i:                                   ; preds = %if.end325.i.i.do.body429.i.i_crit_edge, %if.end325.i.thread.i
  %o.21033.i8082.i = phi i32 [ %inc261.i.i, %if.end325.i.thread.i ], [ %o.21033.i.i, %if.end325.i.i.do.body429.i.i_crit_edge ]
  %inc430.i.i = add i32 %o.21033.i8082.i, 1
  %442 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i973.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %443, i32 0, i32 2
  %444 = ptrtoint ptr %eeprom_read.i973.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %eeprom_read.i973.i.i, align 4
  %call1.i974.i.i = call zeroext i1 %445(ptr noundef %ah, i32 noundef %o.21033.i8082.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i974.i.i, label %do.end435.i.i, label %do.body429.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.body429.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.body429.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end435.i.i:                                    ; preds = %do.body429.i.i
  %446 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %val.i64.i, align 2
  %448 = and i16 %447, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %448)
  %cmp.i975.i.i = icmp eq i16 %448, 255
  br i1 %cmp.i975.i.i, label %ath5k_eeprom_bin2freq.exit984.i.i, label %if.end.i978.i.i

if.end.i978.i.i:                                  ; preds = %do.end435.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %449 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %449)
  %450 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %450)
  %cmp6.i977.i.i = icmp ugt i16 %450, 12290
  %retval.0.i983.ph.v.i.i = select i1 %cmp6.i977.i.i, i16 2300, i16 2400
  %retval.0.i983.ph.i.i = add nuw nsw i16 %retval.0.i983.ph.v.i.i, %448
  %451 = ptrtoint ptr %ee_pwr_cal_g1049.i.i to i32
  call void @__asan_store2_noabort(i32 %451)
  store i16 %retval.0.i983.ph.i.i, ptr %ee_pwr_cal_g1049.i.i, align 4
  %452 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %arrayidx.i65.i, align 1
  %inc451.i.i = add i8 %453, 1
  store i8 %inc451.i.i, ptr %arrayidx.i65.i, align 1
  br label %if.end452.i.i

ath5k_eeprom_bin2freq.exit984.i.i:                ; preds = %do.end435.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %454 = ptrtoint ptr %ee_pwr_cal_g1049.i.i to i32
  call void @__asan_store2_noabort(i32 %454)
  store i16 255, ptr %ee_pwr_cal_g1049.i.i, align 4
  br label %if.end452.i.i

if.end452.i.i:                                    ; preds = %ath5k_eeprom_bin2freq.exit984.i.i, %if.end.i978.i.i
  %455 = lshr i16 %447, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %455)
  %cmp.i985.i.i = icmp eq i16 %455, 255
  br i1 %cmp.i985.i.i, label %ath5k_eeprom_bin2freq.exit994.i.i, label %if.end.i988.i.i

if.end.i988.i.i:                                  ; preds = %if.end452.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %456 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %457)
  %cmp6.i987.i.i = icmp ugt i16 %457, 12290
  %retval.0.i993.ph.v.i.i = select i1 %cmp6.i987.i.i, i16 2300, i16 2400
  %retval.0.i993.ph.i.i = add nuw nsw i16 %retval.0.i993.ph.v.i.i, %455
  %458 = ptrtoint ptr %arrayidx4591052.i.i to i32
  call void @__asan_store2_noabort(i32 %458)
  store i16 %retval.0.i993.ph.i.i, ptr %arrayidx4591052.i.i, align 4
  %459 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %arrayidx.i65.i, align 1
  %inc470.i.i = add i8 %460, 1
  store i8 %inc470.i.i, ptr %arrayidx.i65.i, align 1
  br label %do.body472.i.i

ath5k_eeprom_bin2freq.exit994.i.i:                ; preds = %if.end452.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %461 = ptrtoint ptr %arrayidx4591052.i.i to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 255, ptr %arrayidx4591052.i.i, align 4
  br label %do.body472.i.i

do.body472.i.i:                                   ; preds = %ath5k_eeprom_bin2freq.exit994.i.i, %if.end.i988.i.i
  %462 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i996.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %463, i32 0, i32 2
  %464 = ptrtoint ptr %eeprom_read.i996.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %eeprom_read.i996.i.i, align 4
  %call1.i997.i.i = call zeroext i1 %465(ptr noundef %ah, i32 noundef %inc430.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i997.i.i, label %do.end478.i.i, label %do.body472.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.body472.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.body472.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end478.i.i:                                    ; preds = %do.body472.i.i
  %inc473.i.i = add i32 %o.21033.i8082.i, 2
  %466 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %466)
  %467 = load i16, ptr %val.i64.i, align 2
  %468 = and i16 %467, 127
  %469 = ptrtoint ptr %arrayidx482.i.i to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 %468, ptr %arrayidx482.i.i, align 2
  %470 = lshr i16 %467, 7
  %471 = and i16 %470, 63
  %472 = ptrtoint ptr %arrayidx488.i.i to i32
  call void @__asan_store2_noabort(i32 %472)
  store i16 %471, ptr %arrayidx488.i.i, align 2
  %inc490.i.i = add i32 %o.21033.i8082.i, 3
  %473 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i999.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %474, i32 0, i32 2
  %475 = ptrtoint ptr %eeprom_read.i999.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %eeprom_read.i999.i.i, align 4
  %call1.i1000.i.i = call zeroext i1 %476(ptr noundef %ah, i32 noundef %inc473.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i1000.i.i, label %do.end495.i.i, label %do.end478.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.end478.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.end478.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end495.i.i:                                    ; preds = %do.end478.i.i
  %477 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %val.i64.i, align 2
  %479 = and i16 %478, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %479)
  %cmp.i1001.i.i = icmp eq i16 %479, 255
  br i1 %cmp.i1001.i.i, label %ath5k_eeprom_bin2freq.exit1010.i.i, label %if.end.i1004.i.i

if.end.i1004.i.i:                                 ; preds = %do.end495.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %480 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %480)
  %481 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %481)
  %cmp6.i1003.i.i = icmp ugt i16 %481, 12290
  %retval.0.i1009.ph.v.i.i = select i1 %cmp6.i1003.i.i, i16 2300, i16 2400
  %retval.0.i1009.ph.i.i = add nuw nsw i16 %retval.0.i1009.ph.v.i.i, %479
  %482 = ptrtoint ptr %arrayidx5011055.i.i to i32
  call void @__asan_store2_noabort(i32 %482)
  store i16 %retval.0.i1009.ph.i.i, ptr %arrayidx5011055.i.i, align 4
  %483 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %arrayidx.i65.i, align 1
  %inc512.i.i = add i8 %484, 1
  store i8 %inc512.i.i, ptr %arrayidx.i65.i, align 1
  br label %if.end513.i.i

ath5k_eeprom_bin2freq.exit1010.i.i:               ; preds = %do.end495.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %485 = ptrtoint ptr %arrayidx5011055.i.i to i32
  call void @__asan_store2_noabort(i32 %485)
  store i16 255, ptr %arrayidx5011055.i.i, align 4
  br label %if.end513.i.i

if.end513.i.i:                                    ; preds = %ath5k_eeprom_bin2freq.exit1010.i.i, %if.end.i1004.i.i
  %486 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %486)
  %487 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %487)
  %cmp518.i.i = icmp ugt i16 %487, 16384
  br i1 %cmp518.i.i, label %if.then520.i.i, label %if.end513.i.i.do.body528.i.i_crit_edge

if.end513.i.i.do.body528.i.i_crit_edge:           ; preds = %if.end513.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body528.i.i

if.then520.i.i:                                   ; preds = %if.end513.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %488 = lshr i16 %478, 8
  %489 = and i16 %488, 63
  %490 = ptrtoint ptr %arrayidx526.i.i to i32
  call void @__asan_store2_noabort(i32 %490)
  store i16 %489, ptr %arrayidx526.i.i, align 2
  br label %do.body528.i.i

do.body528.i.i:                                   ; preds = %if.then520.i.i, %if.end513.i.i.do.body528.i.i_crit_edge
  %inc529.i.i = add i32 %o.21033.i8082.i, 4
  %491 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i1012.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %492, i32 0, i32 2
  %493 = ptrtoint ptr %eeprom_read.i1012.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %eeprom_read.i1012.i.i, align 4
  %call1.i1013.i.i = call zeroext i1 %494(ptr noundef %ah, i32 noundef %inc490.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i1013.i.i, label %do.end534.i.i, label %do.body528.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.body528.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.body528.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end534.i.i:                                    ; preds = %do.body528.i.i
  %495 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %495)
  %496 = load i16, ptr %val.i64.i, align 2
  %497 = lshr i16 %496, 5
  %498 = and i16 %497, 63
  %499 = ptrtoint ptr %arrayidx540.i.i to i32
  call void @__asan_store2_noabort(i32 %499)
  store i16 %498, ptr %arrayidx540.i.i, align 2
  %500 = and i16 %496, 31
  %501 = ptrtoint ptr %arrayidx545.i.i to i32
  call void @__asan_store2_noabort(i32 %501)
  store i16 %500, ptr %arrayidx545.i.i, align 2
  %502 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %502)
  %503 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16385, i16 %503)
  %cmp550.i.i = icmp ugt i16 %503, 16385
  br i1 %cmp550.i.i, label %do.body553.i.i, label %do.end534.i.i.for.inc.thread.i_crit_edge

do.end534.i.i.for.inc.thread.i_crit_edge:         ; preds = %do.end534.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.thread.i

do.body553.i.i:                                   ; preds = %do.end534.i.i
  %504 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i1015.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %505, i32 0, i32 2
  %506 = ptrtoint ptr %eeprom_read.i1015.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %eeprom_read.i1015.i.i, align 4
  %call1.i1016.i.i = call zeroext i1 %507(ptr noundef %ah, i32 noundef %inc529.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i1016.i.i, label %do.end559.i.i, label %do.body553.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.body553.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.body553.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end559.i.i:                                    ; preds = %do.body553.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc554.i.i = add i32 %o.21033.i8082.i, 5
  %508 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %508)
  %509 = load i16, ptr %val.i64.i, align 2
  %510 = and i16 %509, 255
  %511 = ptrtoint ptr %ee_cck_ofdm_gain_delta.i.i to i32
  call void @__asan_store2_noabort(i32 %511)
  store i16 %510, ptr %ee_cck_ofdm_gain_delta.i.i, align 2
  br label %sw.epilog564.i.i

sw.epilog564.i.i:                                 ; preds = %do.end559.i.i, %if.then420.i.i, %do.end341.i.i, %sw.bb326.i.i.sw.epilog564.i.i_crit_edge, %if.end325.i.i.sw.epilog564.i.i_crit_edge
  %o.3.ph.i.i = phi i32 [ %inc336.i.i, %do.end341.i.i ], [ %o.2103310361038.i.i, %sw.bb326.i.i.sw.epilog564.i.i_crit_edge ], [ %inc390.i.i, %if.then420.i.i ], [ %inc554.i.i, %do.end559.i.i ], [ %o.21033.i.i, %if.end325.i.i.sw.epilog564.i.i_crit_edge ]
  %512 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %512)
  %.pr1057.i.i = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %.pr1057.i.i)
  %cmp567.i.i = icmp ult i16 %.pr1057.i.i, 20480
  br i1 %cmp567.i.i, label %sw.epilog564.i.i.for.inc.i_crit_edge, label %if.end570.i.i

sw.epilog564.i.i.for.inc.i_crit_edge:             ; preds = %sw.epilog564.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end570.i.i:                                    ; preds = %sw.epilog564.i.i
  %513 = zext i32 %mode.085.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %513, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %mode.085.i, label %if.end570.i.i.for.inc.i_crit_edge [
    i32 0, label %sw.bb571.i.i
    i32 2, label %sw.bb638.i.i
  ]

if.end570.i.i.for.inc.i_crit_edge:                ; preds = %if.end570.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb571.i.i:                                     ; preds = %if.end570.i.i
  %514 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %514)
  %515 = load i16, ptr %val.i64.i, align 2
  %516 = lshr i16 %515, 6
  %517 = and i16 %516, 127
  %518 = ptrtoint ptr %ee_switch_settling_turbo.i.i to i32
  call void @__asan_store2_noabort(i32 %518)
  store i16 %517, ptr %ee_switch_settling_turbo.i.i, align 2
  %519 = lshr i16 %515, 13
  %520 = ptrtoint ptr %ee_atn_tx_rx_turbo.i.i to i32
  call void @__asan_store2_noabort(i32 %520)
  store i16 %519, ptr %ee_atn_tx_rx_turbo.i.i, align 2
  %521 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i1018.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %522, i32 0, i32 2
  %523 = ptrtoint ptr %eeprom_read.i1018.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %eeprom_read.i1018.i.i, align 4
  %call1.i1019.i.i = call zeroext i1 %524(ptr noundef %ah, i32 noundef %o.3.ph.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i1019.i.i, label %do.end588.i.i, label %sw.bb571.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

sw.bb571.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %sw.bb571.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end588.i.i:                                    ; preds = %sw.bb571.i.i
  %inc583.i.i = add i32 %o.3.ph.i.i, 1
  %525 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %525)
  %526 = load i16, ptr %val.i64.i, align 2
  %527 = shl i16 %526, 3
  %528 = and i16 %527, 56
  %529 = ptrtoint ptr %ee_atn_tx_rx_turbo.i.i to i32
  call void @__asan_load2_noabort(i32 %529)
  %530 = load i16, ptr %ee_atn_tx_rx_turbo.i.i, align 2
  %or595918.i.i = or i16 %528, %530
  store i16 %or595918.i.i, ptr %ee_atn_tx_rx_turbo.i.i, align 2
  %531 = lshr i16 %526, 3
  %532 = and i16 %531, 63
  %533 = ptrtoint ptr %ee_margin_tx_rx_turbo.i.i to i32
  call void @__asan_store2_noabort(i32 %533)
  store i16 %532, ptr %ee_margin_tx_rx_turbo.i.i, align 2
  %534 = lshr i16 %526, 9
  %conv605.i.i = trunc i16 %534 to i8
  %535 = ptrtoint ptr %ee_adc_desired_size_turbo.i.i to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 %conv605.i.i, ptr %ee_adc_desired_size_turbo.i.i, align 1
  %536 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i1021.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %537, i32 0, i32 2
  %538 = ptrtoint ptr %eeprom_read.i1021.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %eeprom_read.i1021.i.i, align 4
  %call1.i1022.i.i = call zeroext i1 %539(ptr noundef %ah, i32 noundef %inc583.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i1022.i.i, label %do.end613.i.i, label %do.end588.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.end588.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.end588.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end613.i.i:                                    ; preds = %do.end588.i.i
  %540 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %540)
  %541 = load i16, ptr %val.i64.i, align 2
  %.tr919.i.i = trunc i16 %541 to i8
  %shl616.i.i = shl i8 %.tr919.i.i, 7
  %542 = ptrtoint ptr %ee_adc_desired_size_turbo.i.i to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %ee_adc_desired_size_turbo.i.i, align 1
  %or620.i.i = or i8 %shl616.i.i, %543
  store i8 %or620.i.i, ptr %ee_adc_desired_size_turbo.i.i, align 1
  %544 = lshr i16 %541, 1
  %conv625.i.i = trunc i16 %544 to i8
  %545 = ptrtoint ptr %ee_pga_desired_size_turbo.i.i to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 %conv625.i.i, ptr %ee_pga_desired_size_turbo.i.i, align 1
  %546 = ptrtoint ptr %ee_misc0.i.i to i32
  call void @__asan_load2_noabort(i32 %546)
  %547 = load i16, ptr %ee_misc0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %547)
  %cmp630.i.i = icmp slt i16 %547, 0
  br i1 %cmp630.i.i, label %if.then632.i.i, label %do.end613.i.i.for.inc.i_crit_edge

do.end613.i.i.for.inc.i_crit_edge:                ; preds = %do.end613.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then632.i.i:                                   ; preds = %do.end613.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %548 = lshr i16 %541, 9
  %549 = trunc i16 %548 to i8
  %conv636.i.i = and i8 %549, 15
  %550 = ptrtoint ptr %ee_pd_gain_overlap.i.i to i32
  call void @__asan_store1_noabort(i32 %550)
  store i8 %conv636.i.i, ptr %ee_pd_gain_overlap.i.i, align 4
  br label %for.inc.i

sw.bb638.i.i:                                     ; preds = %if.end570.i.i
  %551 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %val.i64.i, align 2
  %553 = lshr i16 %552, 8
  %554 = and i16 %553, 127
  %555 = ptrtoint ptr %arrayidx644.i.i to i32
  call void @__asan_store2_noabort(i32 %555)
  store i16 %554, ptr %arrayidx644.i.i, align 2
  %556 = lshr i16 %552, 15
  %557 = ptrtoint ptr %arrayidx650.i.i to i32
  call void @__asan_store2_noabort(i32 %557)
  store i16 %556, ptr %arrayidx650.i.i, align 2
  %558 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i1024.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %559, i32 0, i32 2
  %560 = ptrtoint ptr %eeprom_read.i1024.i.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %eeprom_read.i1024.i.i, align 4
  %call1.i1025.i.i = call zeroext i1 %561(ptr noundef %ah, i32 noundef %o.3.ph.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i1025.i.i, label %do.end657.i.i, label %sw.bb638.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

sw.bb638.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %sw.bb638.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end657.i.i:                                    ; preds = %sw.bb638.i.i
  %inc652.i.i = add i32 %o.3.ph.i.i, 1
  %562 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %val.i64.i, align 2
  %564 = shl i16 %563, 1
  %565 = and i16 %564, 62
  %566 = ptrtoint ptr %arrayidx650.i.i to i32
  call void @__asan_load2_noabort(i32 %566)
  %567 = load i16, ptr %arrayidx650.i.i, align 2
  %or664917.i.i = or i16 %565, %567
  store i16 %or664917.i.i, ptr %arrayidx650.i.i, align 2
  %568 = lshr i16 %563, 5
  %569 = and i16 %568, 63
  %570 = ptrtoint ptr %arrayidx671.i.i to i32
  call void @__asan_store2_noabort(i32 %570)
  store i16 %569, ptr %arrayidx671.i.i, align 2
  %571 = lshr i16 %563, 11
  %conv675.i.i = trunc i16 %571 to i8
  %572 = ptrtoint ptr %arrayidx677.i.i to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 %conv675.i.i, ptr %arrayidx677.i.i, align 1
  %573 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i1027.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %574, i32 0, i32 2
  %575 = ptrtoint ptr %eeprom_read.i1027.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %eeprom_read.i1027.i.i, align 4
  %call1.i1028.i.i = call zeroext i1 %576(ptr noundef %ah, i32 noundef %inc652.i.i, ptr noundef nonnull %val.i64.i) #6
  br i1 %call1.i1028.i.i, label %do.end684.i.i, label %do.end657.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge

do.end657.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge: ; preds = %do.end657.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_modes.exit.thread.i

do.end684.i.i:                                    ; preds = %do.end657.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %577 = ptrtoint ptr %val.i64.i to i32
  call void @__asan_load2_noabort(i32 %577)
  %578 = load i16, ptr %val.i64.i, align 2
  %.tr.i.i = trunc i16 %578 to i8
  %shl687.i.i = shl i8 %.tr.i.i, 5
  %579 = ptrtoint ptr %arrayidx677.i.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %arrayidx677.i.i, align 1
  %or691.i.i = or i8 %shl687.i.i, %580
  store i8 %or691.i.i, ptr %arrayidx677.i.i, align 1
  %581 = lshr i16 %578, 3
  %conv696.i.i = trunc i16 %581 to i8
  %582 = ptrtoint ptr %arrayidx698.i.i to i32
  call void @__asan_store1_noabort(i32 %582)
  store i8 %conv696.i.i, ptr %arrayidx698.i.i, align 1
  br label %for.inc.thread.i

ath5k_eeprom_read_modes.exit.thread.i:            ; preds = %do.end657.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %sw.bb638.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.end588.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %sw.bb571.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.body553.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.body528.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.end478.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.body472.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.body429.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.body389.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.body347.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.body335.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %if.else253.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.body210.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.body167.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.end117.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.body111.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %do.body84.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %sw.bb.i.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge, %if.end.i.ath5k_eeprom_read_modes.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i64.i) #6
  br label %ath5k_eeprom_init_modes.exit.thread

for.inc.thread.i:                                 ; preds = %do.end684.i.i, %do.end534.i.i.for.inc.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i64.i) #6
  br label %for.end.i36

for.inc.i:                                        ; preds = %if.then632.i.i, %do.end613.i.i.for.inc.i_crit_edge, %if.end570.i.i.for.inc.i_crit_edge, %sw.epilog564.i.i.for.inc.i_crit_edge, %if.end413.i.i.for.inc.i_crit_edge, %if.end317.i.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i64.i) #6
  %inc.i34 = add nuw nsw i32 %mode.085.i, 1
  %exitcond.not.i35 = icmp eq i32 %inc.i34, 3
  br i1 %exitcond.not.i35, label %for.inc.i.for.end.i36_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i36_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i36

for.end.i36:                                      ; preds = %for.inc.i.for.end.i36_crit_edge, %for.inc.thread.i
  %583 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %583)
  %584 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12291, i16 %584)
  %cmp34.i = icmp ult i16 %584, 12291
  br i1 %cmp34.i, label %if.then36.i, label %for.end.i36.if.end4_crit_edge

for.end.i36.if.end4_crit_edge:                    ; preds = %for.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then36.i:                                      ; preds = %for.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  %ee_thr_62.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 33
  %585 = ptrtoint ptr %ee_thr_62.i to i32
  call void @__asan_store2_noabort(i32 %585)
  store i16 15, ptr %ee_thr_62.i, align 2
  %arrayidx39.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 33, i32 1
  %586 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store2_noabort(i32 %586)
  store i16 28, ptr %arrayidx39.i, align 2
  %arrayidx41.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 33, i32 2
  %587 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %587)
  store i16 28, ptr %arrayidx41.i, align 2
  %588 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %588)
  %.pr = load i16, ptr %ee_version.i, align 2
  br label %if.end4

ath5k_eeprom_init_modes.exit.thread:              ; preds = %ath5k_eeprom_read_modes.exit.thread.i, %ath5k_eeprom_read_ants.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mode_offset.i) #6
  br label %cleanup

if.end4:                                          ; preds = %if.then36.i, %for.end.i36.if.end4_crit_edge
  %589 = phi i16 [ %.pr, %if.then36.i ], [ %584, %for.end.i36.if.end4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mode_offset.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %589)
  %cmp.i40 = icmp ugt i16 %589, 16383
  br i1 %cmp.i40, label %land.lhs.true.i42, label %if.end4.if.else21.i_crit_edge

if.end4.if.else21.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else21.i

land.lhs.true.i42:                                ; preds = %if.end4
  %590 = ptrtoint ptr %ee_misc0.i.i to i32
  call void @__asan_load2_noabort(i32 %590)
  %591 = load i16, ptr %ee_misc0.i.i, align 4
  %.mask46.i = and i16 %591, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %.mask46.i)
  %cmp5.i = icmp eq i16 %.mask46.i, 16384
  br i1 %cmp5.i, label %land.lhs.true.i42.if.end22.i_crit_edge, label %if.else.i43

land.lhs.true.i42.if.end22.i_crit_edge:           ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.else.i43:                                      ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_const_cmp2(i16 20479, i16 %589)
  %cmp11.i = icmp ugt i16 %589, 20479
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %.mask46.i)
  %cmp18.i = icmp eq i16 %.mask46.i, -32768
  %or.cond = select i1 %cmp11.i, i1 %cmp18.i, i1 false
  br i1 %or.cond, label %if.else.i43.if.end22.i_crit_edge, label %if.else.i43.if.else21.i_crit_edge

if.else.i43.if.else21.i_crit_edge:                ; preds = %if.else.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else21.i

if.else.i43.if.end22.i_crit_edge:                 ; preds = %if.else.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.else21.i:                                      ; preds = %if.else.i43.if.else21.i_crit_edge, %if.end4.if.else21.i_crit_edge
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else21.i, %if.else.i43.if.end22.i_crit_edge, %land.lhs.true.i42.if.end22.i_crit_edge
  %read_pcal.0.i = phi ptr [ @ath5k_eeprom_read_pcal_info_5111, %if.else21.i ], [ @ath5k_eeprom_read_pcal_info_5112, %land.lhs.true.i42.if.end22.i_crit_edge ], [ @ath5k_eeprom_read_pcal_info_2413, %if.else.i43.if.end22.i_crit_edge ]
  %ee_misc1.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 11
  %ee_rate_tpwr_g.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 52
  %ee_rate_tpwr_b.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 51
  %ee_rate_tpwr_a.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 50
  br label %for.body.i45

for.body.i45:                                     ; preds = %for.inc.i61.for.body.i45_crit_edge, %if.end22.i
  %mode.058.i = phi i32 [ 0, %if.end22.i ], [ %inc.i59, %for.inc.i61.for.body.i45_crit_edge ]
  %call.i = call i32 %read_pcal.0.i(ptr noundef %ah, i32 noundef %mode.058.i) #6, !callees !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i44 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i44, label %if.end26.i, label %ath5k_eeprom_read_pcal_info.exit

if.end26.i:                                       ; preds = %for.body.i45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i38) #6
  %592 = ptrtoint ptr %val.i.i38 to i32
  call void @__asan_store2_noabort(i32 %592)
  store i16 -1, ptr %val.i.i38, align 2, !annotation !25
  %593 = ptrtoint ptr %ee_misc1.i.i to i32
  call void @__asan_load2_noabort(i32 %593)
  %594 = load i16, ptr %ee_misc1.i.i, align 2
  %595 = and i16 %594, 4095
  %and.i.i = zext i16 %595 to i32
  %arrayidx.i.i46 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 49, i32 %mode.058.i
  %596 = zext i32 %mode.058.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %596, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %mode.058.i, label %if.end26.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge [
    i32 0, label %sw.bb.i.i48
    i32 1, label %sw.bb11.i.i
    i32 2, label %sw.bb30.i.i
  ]

if.end26.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_pcal_info.exit.thread

sw.bb.i.i48:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %597 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %597)
  %598 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %598)
  %cmp.i.i47 = icmp ugt i16 %598, 12290
  %spec.select.i.i = select i1 %cmp.i.i47, i32 0, i32 341
  br label %sw.epilog.i.i

sw.bb11.i.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %599 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %599)
  %600 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %600)
  %cmp14.i.i = icmp ugt i16 %600, 12290
  %spec.select254.i.i = select i1 %cmp14.i.i, i32 16, i32 357
  br label %sw.epilog.i.i

sw.bb30.i.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %601 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %601)
  %602 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %602)
  %cmp33.i.i = icmp ugt i16 %602, 12290
  %spec.select255.i.i = select i1 %cmp33.i.i, i32 20, i32 361
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb30.i.i, %sw.bb11.i.i, %sw.bb.i.i48
  %603 = phi i16 [ %602, %sw.bb30.i.i ], [ %600, %sw.bb11.i.i ], [ %598, %sw.bb.i.i48 ]
  %.sink.i.i = phi i8 [ 3, %sw.bb30.i.i ], [ 2, %sw.bb11.i.i ], [ 8, %sw.bb.i.i48 ]
  %rate_pcal_info.0.i.i = phi ptr [ %ee_rate_tpwr_g.i.i, %sw.bb30.i.i ], [ %ee_rate_tpwr_b.i.i, %sw.bb11.i.i ], [ %ee_rate_tpwr_a.i.i, %sw.bb.i.i48 ]
  %cond44.pn.i.i = phi i32 [ %spec.select255.i.i, %sw.bb30.i.i ], [ %spec.select254.i.i, %sw.bb11.i.i ], [ %spec.select.i.i, %sw.bb.i.i48 ]
  %604 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 %.sink.i.i, ptr %arrayidx.i.i46, align 1
  %offset.0.i.i = add nuw nsw i32 %cond44.pn.i.i, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 12291, i16 %603)
  %cmp51.i.i = icmp ult i16 %603, 12291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode.058.i)
  %cmp2.i.i.i = icmp eq i32 %mode.058.i, 0
  br i1 %cmp51.i.i, label %sw.epilog.i.i.do.body.i.i_crit_edge, label %sw.epilog.i.i.do.body112.i.i_crit_edge

sw.epilog.i.i.do.body112.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  br label %do.body112.i.i

sw.epilog.i.i.do.body.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end88.i.i.do.body.i.i_crit_edge, %sw.epilog.i.i.do.body.i.i_crit_edge
  %i.0298.i.i = phi i32 [ %inc106.i.i, %if.end88.i.i.do.body.i.i_crit_edge ], [ 0, %sw.epilog.i.i.do.body.i.i_crit_edge ]
  %offset.1297.i.i = phi i32 [ %inc72.i.i, %if.end88.i.i.do.body.i.i_crit_edge ], [ %offset.0.i.i, %sw.epilog.i.i.do.body.i.i_crit_edge ]
  %605 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.i.i49 = getelementptr inbounds %struct.ath_bus_ops, ptr %606, i32 0, i32 2
  %607 = ptrtoint ptr %eeprom_read.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %eeprom_read.i.i.i49, align 4
  %call1.i.i.i50 = call zeroext i1 %608(ptr noundef %ah, i32 noundef %offset.1297.i.i, ptr noundef nonnull %val.i.i38) #6
  br i1 %call1.i.i.i50, label %do.end.i.i53, label %do.body.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge

do.body.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_pcal_info.exit.thread

do.end.i.i53:                                     ; preds = %do.body.i.i
  %inc.i.i51 = add nuw i32 %offset.1297.i.i, 1
  %609 = ptrtoint ptr %val.i.i38 to i32
  call void @__asan_load2_noabort(i32 %609)
  %610 = load i16, ptr %val.i.i38, align 2
  %611 = lshr i16 %610, 9
  %612 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %612)
  %613 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %613)
  %cmp6.i.i.i52 = icmp ugt i16 %613, 12290
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.else23.i.i.i

if.then4.i.i.i:                                   ; preds = %do.end.i.i53
  br i1 %cmp6.i.i.i52, label %if.then8.i.i.i, label %if.else.i.i.i

if.then8.i.i.i:                                   ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.i.i = mul nuw nsw i16 %611, 5
  %add.i.i.i = add nuw nsw i16 %mul.i.i.i, 4800
  br label %ath5k_eeprom_bin2freq.exit.i.i56

if.else.i.i.i:                                    ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 32255, i16 %610)
  %cmp12.i.i.i = icmp ugt i16 %610, 32255
  %614 = mul nuw nsw i16 %611, 5
  %add16.i.i.i = add nuw nsw i16 %614, 310
  %mul19.i.i.i = mul nuw nsw i16 %611, 10
  %cond.in.i.i.i = select i1 %cmp12.i.i.i, i16 %add16.i.i.i, i16 %mul19.i.i.i
  %cond.i.i.i = add nuw nsw i16 %cond.in.i.i.i, 5100
  br label %ath5k_eeprom_bin2freq.exit.i.i56

if.else23.i.i.i:                                  ; preds = %do.end.i.i53
  br i1 %cmp6.i.i.i52, label %if.then28.i.i.i, label %if.else32.i.i.i

if.then28.i.i.i:                                  ; preds = %if.else23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i.i.i = add nuw nsw i16 %611, 2300
  br label %ath5k_eeprom_bin2freq.exit.i.i56

if.else32.i.i.i:                                  ; preds = %if.else23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.i.i = add nuw nsw i16 %611, 2400
  br label %ath5k_eeprom_bin2freq.exit.i.i56

ath5k_eeprom_bin2freq.exit.i.i56:                 ; preds = %if.else32.i.i.i, %if.then28.i.i.i, %if.else.i.i.i, %if.then8.i.i.i
  %retval.0.i.i.i = phi i16 [ %add.i.i.i, %if.then8.i.i.i ], [ %cond.i.i.i, %if.else.i.i.i ], [ %add30.i.i.i, %if.then28.i.i.i ], [ %add34.i.i.i, %if.else32.i.i.i ]
  %arrayidx61.i.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rate_pcal_info.0.i.i, i32 %i.0298.i.i
  %615 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_store2_noabort(i32 %615)
  store i16 %retval.0.i.i.i, ptr %arrayidx61.i.i, align 2
  %616 = lshr i16 %610, 3
  %617 = and i16 %616, 63
  %target_power_6to24.i.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rate_pcal_info.0.i.i, i32 %i.0298.i.i, i32 1
  %618 = ptrtoint ptr %target_power_6to24.i.i to i32
  call void @__asan_store2_noabort(i32 %618)
  store i16 %617, ptr %target_power_6to24.i.i, align 2
  %shl.i.i54 = shl i16 %610, 3
  %and68.i.i55 = and i16 %shl.i.i54, 56
  %target_power_36.i.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rate_pcal_info.0.i.i, i32 %i.0298.i.i, i32 2
  %619 = ptrtoint ptr %target_power_36.i.i to i32
  call void @__asan_store2_noabort(i32 %619)
  store i16 %and68.i.i55, ptr %target_power_36.i.i, align 2
  %inc72.i.i = add nuw nsw i32 %offset.1297.i.i, 2
  %620 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i257.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %621, i32 0, i32 2
  %622 = ptrtoint ptr %eeprom_read.i257.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %eeprom_read.i257.i.i, align 4
  %call1.i258.i.i = call zeroext i1 %623(ptr noundef %ah, i32 noundef %inc.i.i51, ptr noundef nonnull %val.i.i38) #6
  br i1 %call1.i258.i.i, label %do.end77.i.i, label %ath5k_eeprom_bin2freq.exit.i.i56.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge

ath5k_eeprom_bin2freq.exit.i.i56.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_pcal_info.exit.thread

do.end77.i.i:                                     ; preds = %ath5k_eeprom_bin2freq.exit.i.i56
  %624 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load2_noabort(i32 %624)
  %625 = load i16, ptr %arrayidx61.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %625)
  %cmp81.i.i = icmp eq i16 %625, 255
  br i1 %cmp81.i.i, label %do.end77.i.i.cleanup.sink.split.i.i_crit_edge, label %lor.lhs.false.i.i

do.end77.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %do.end77.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

lor.lhs.false.i.i:                                ; preds = %do.end77.i.i
  %626 = ptrtoint ptr %val.i.i38 to i32
  call void @__asan_load2_noabort(i32 %626)
  %627 = load i16, ptr %val.i.i38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %627)
  %cmp84.i.i = icmp eq i16 %627, 0
  br i1 %cmp84.i.i, label %lor.lhs.false.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end88.i.i

lor.lhs.false.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end88.i.i:                                     ; preds = %lor.lhs.false.i.i
  %628 = lshr i16 %627, 13
  %629 = ptrtoint ptr %target_power_36.i.i to i32
  call void @__asan_load2_noabort(i32 %629)
  %630 = load i16, ptr %target_power_36.i.i, align 2
  %or253.i.i = or i16 %630, %628
  store i16 %or253.i.i, ptr %target_power_36.i.i, align 2
  %631 = lshr i16 %627, 7
  %632 = and i16 %631, 63
  %target_power_48.i.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rate_pcal_info.0.i.i, i32 %i.0298.i.i, i32 3
  %633 = ptrtoint ptr %target_power_48.i.i to i32
  call void @__asan_store2_noabort(i32 %633)
  store i16 %632, ptr %target_power_48.i.i, align 2
  %634 = lshr i16 %627, 1
  %635 = and i16 %634, 63
  %target_power_54.i.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rate_pcal_info.0.i.i, i32 %i.0298.i.i, i32 4
  %636 = ptrtoint ptr %target_power_54.i.i to i32
  call void @__asan_store2_noabort(i32 %636)
  store i16 %635, ptr %target_power_54.i.i, align 2
  %inc106.i.i = add nuw nsw i32 %i.0298.i.i, 1
  %637 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load1_noabort(i32 %637)
  %638 = load i8, ptr %arrayidx.i.i46, align 1
  %conv53.i.i = zext i8 %638 to i32
  %cmp54.i.i = icmp ult i32 %inc106.i.i, %conv53.i.i
  br i1 %cmp54.i.i, label %if.end88.i.i.do.body.i.i_crit_edge, label %if.end88.i.i.for.inc.i61_crit_edge

if.end88.i.i.for.inc.i61_crit_edge:               ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i61

if.end88.i.i.do.body.i.i_crit_edge:               ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

do.body112.i.i:                                   ; preds = %if.end156.i.i.do.body112.i.i_crit_edge, %sw.epilog.i.i.do.body112.i.i_crit_edge
  %i.1292.i.i = phi i32 [ %inc177.i.i, %if.end156.i.i.do.body112.i.i_crit_edge ], [ 0, %sw.epilog.i.i.do.body112.i.i_crit_edge ]
  %offset.2291.i.i = phi i32 [ %inc139.i.i, %if.end156.i.i.do.body112.i.i_crit_edge ], [ %offset.0.i.i, %sw.epilog.i.i.do.body112.i.i_crit_edge ]
  %639 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i260.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %640, i32 0, i32 2
  %641 = ptrtoint ptr %eeprom_read.i260.i.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %eeprom_read.i260.i.i, align 4
  %call1.i261.i.i = call zeroext i1 %642(ptr noundef %ah, i32 noundef %offset.2291.i.i, ptr noundef nonnull %val.i.i38) #6
  br i1 %call1.i261.i.i, label %do.end118.i.i, label %do.body112.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge

do.body112.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge: ; preds = %do.body112.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_pcal_info.exit.thread

do.end118.i.i:                                    ; preds = %do.body112.i.i
  %inc113.i.i = add nuw i32 %offset.2291.i.i, 1
  %643 = ptrtoint ptr %val.i.i38 to i32
  call void @__asan_load2_noabort(i32 %643)
  %644 = load i16, ptr %val.i.i38, align 2
  %645 = lshr i16 %644, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %645)
  %cmp.i.i.i57 = icmp eq i16 %645, 255
  br i1 %cmp.i.i.i57, label %do.end118.i.i.ath5k_eeprom_bin2freq.exit281.i.i_crit_edge, label %if.end.i.i.i58

do.end118.i.i.ath5k_eeprom_bin2freq.exit281.i.i_crit_edge: ; preds = %do.end118.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit281.i.i

if.end.i.i.i58:                                   ; preds = %do.end118.i.i
  %646 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %646)
  %647 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %647)
  %cmp6.i264.i.i = icmp ugt i16 %647, 12290
  br i1 %cmp2.i.i.i, label %if.then4.i265.i.i, label %if.else23.i275.i.i

if.then4.i265.i.i:                                ; preds = %if.end.i.i.i58
  br i1 %cmp6.i264.i.i, label %if.then8.i268.i.i, label %if.else.i274.i.i

if.then8.i268.i.i:                                ; preds = %if.then4.i265.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i266.i.i = mul nuw nsw i16 %645, 5
  %add.i267.i.i = add nuw nsw i16 %mul.i266.i.i, 4800
  br label %ath5k_eeprom_bin2freq.exit281.i.i

if.else.i274.i.i:                                 ; preds = %if.then4.i265.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16127, i16 %644)
  %cmp12.i269.i.i = icmp ugt i16 %644, 16127
  %648 = mul nuw nsw i16 %645, 5
  %add16.i270.i.i = add nuw nsw i16 %648, 310
  %mul19.i271.i.i = mul nuw nsw i16 %645, 10
  %cond.in.i272.i.i = select i1 %cmp12.i269.i.i, i16 %add16.i270.i.i, i16 %mul19.i271.i.i
  %cond.i273.i.i = add nuw nsw i16 %cond.in.i272.i.i, 5100
  br label %ath5k_eeprom_bin2freq.exit281.i.i

if.else23.i275.i.i:                               ; preds = %if.end.i.i.i58
  br i1 %cmp6.i264.i.i, label %if.then28.i277.i.i, label %if.else32.i279.i.i

if.then28.i277.i.i:                               ; preds = %if.else23.i275.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i276.i.i = add nuw nsw i16 %645, 2300
  br label %ath5k_eeprom_bin2freq.exit281.i.i

if.else32.i279.i.i:                               ; preds = %if.else23.i275.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i278.i.i = add nuw nsw i16 %645, 2400
  br label %ath5k_eeprom_bin2freq.exit281.i.i

ath5k_eeprom_bin2freq.exit281.i.i:                ; preds = %if.else32.i279.i.i, %if.then28.i277.i.i, %if.else.i274.i.i, %if.then8.i268.i.i, %do.end118.i.i.ath5k_eeprom_bin2freq.exit281.i.i_crit_edge
  %retval.0.i280.i.i = phi i16 [ 255, %do.end118.i.i.ath5k_eeprom_bin2freq.exit281.i.i_crit_edge ], [ %add.i267.i.i, %if.then8.i268.i.i ], [ %cond.i273.i.i, %if.else.i274.i.i ], [ %add30.i276.i.i, %if.then28.i277.i.i ], [ %add34.i278.i.i, %if.else32.i279.i.i ]
  %arrayidx124.i.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rate_pcal_info.0.i.i, i32 %i.1292.i.i
  %649 = ptrtoint ptr %arrayidx124.i.i to i32
  call void @__asan_store2_noabort(i32 %649)
  store i16 %retval.0.i280.i.i, ptr %arrayidx124.i.i, align 2
  %650 = lshr i16 %644, 2
  %651 = and i16 %650, 63
  %target_power_6to24131.i.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rate_pcal_info.0.i.i, i32 %i.1292.i.i, i32 1
  %652 = ptrtoint ptr %target_power_6to24131.i.i to i32
  call void @__asan_store2_noabort(i32 %652)
  store i16 %651, ptr %target_power_6to24131.i.i, align 2
  %shl133.i.i = shl i16 %644, 4
  %and134.i.i = and i16 %shl133.i.i, 48
  %target_power_36137.i.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rate_pcal_info.0.i.i, i32 %i.1292.i.i, i32 2
  %653 = ptrtoint ptr %target_power_36137.i.i to i32
  call void @__asan_store2_noabort(i32 %653)
  store i16 %and134.i.i, ptr %target_power_36137.i.i, align 2
  %inc139.i.i = add nuw nsw i32 %offset.2291.i.i, 2
  %654 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i283.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %655, i32 0, i32 2
  %656 = ptrtoint ptr %eeprom_read.i283.i.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %eeprom_read.i283.i.i, align 4
  %call1.i284.i.i = call zeroext i1 %657(ptr noundef %ah, i32 noundef %inc113.i.i, ptr noundef nonnull %val.i.i38) #6
  br i1 %call1.i284.i.i, label %do.end144.i.i, label %ath5k_eeprom_bin2freq.exit281.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge

ath5k_eeprom_bin2freq.exit281.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit281.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_pcal_info.exit.thread

do.end144.i.i:                                    ; preds = %ath5k_eeprom_bin2freq.exit281.i.i
  %658 = ptrtoint ptr %arrayidx124.i.i to i32
  call void @__asan_load2_noabort(i32 %658)
  %659 = load i16, ptr %arrayidx124.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %659)
  %cmp148.i.i = icmp eq i16 %659, 255
  br i1 %cmp148.i.i, label %do.end144.i.i.cleanup.sink.split.i.i_crit_edge, label %lor.lhs.false150.i.i

do.end144.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.end144.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

lor.lhs.false150.i.i:                             ; preds = %do.end144.i.i
  %660 = ptrtoint ptr %val.i.i38 to i32
  call void @__asan_load2_noabort(i32 %660)
  %661 = load i16, ptr %val.i.i38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %661)
  %cmp152.i.i = icmp eq i16 %661, 0
  br i1 %cmp152.i.i, label %lor.lhs.false150.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end156.i.i

lor.lhs.false150.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false150.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end156.i.i:                                    ; preds = %lor.lhs.false150.i.i
  %662 = lshr i16 %661, 12
  %663 = ptrtoint ptr %target_power_36137.i.i to i32
  call void @__asan_load2_noabort(i32 %663)
  %664 = load i16, ptr %target_power_36137.i.i, align 2
  %or163252.i.i = or i16 %664, %662
  store i16 %or163252.i.i, ptr %target_power_36137.i.i, align 2
  %665 = lshr i16 %661, 6
  %666 = and i16 %665, 63
  %target_power_48170.i.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rate_pcal_info.0.i.i, i32 %i.1292.i.i, i32 3
  %667 = ptrtoint ptr %target_power_48170.i.i to i32
  call void @__asan_store2_noabort(i32 %667)
  store i16 %666, ptr %target_power_48170.i.i, align 2
  %668 = and i16 %661, 63
  %target_power_54175.i.i = getelementptr %struct.ath5k_rate_pcal_info, ptr %rate_pcal_info.0.i.i, i32 %i.1292.i.i, i32 4
  %669 = ptrtoint ptr %target_power_54175.i.i to i32
  call void @__asan_store2_noabort(i32 %669)
  store i16 %668, ptr %target_power_54175.i.i, align 2
  %inc177.i.i = add nuw nsw i32 %i.1292.i.i, 1
  %670 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load1_noabort(i32 %670)
  %671 = load i8, ptr %arrayidx.i.i46, align 1
  %conv108.i.i = zext i8 %671 to i32
  %cmp109.i.i = icmp ult i32 %inc177.i.i, %conv108.i.i
  br i1 %cmp109.i.i, label %if.end156.i.i.do.body112.i.i_crit_edge, label %if.end156.i.i.for.inc.i61_crit_edge

if.end156.i.i.for.inc.i61_crit_edge:              ; preds = %if.end156.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i61

if.end156.i.i.do.body112.i.i_crit_edge:           ; preds = %if.end156.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body112.i.i

cleanup.sink.split.i.i:                           ; preds = %lor.lhs.false150.i.i.cleanup.sink.split.i.i_crit_edge, %do.end144.i.i.cleanup.sink.split.i.i_crit_edge, %lor.lhs.false.i.i.cleanup.sink.split.i.i_crit_edge, %do.end77.i.i.cleanup.sink.split.i.i_crit_edge
  %i.0298.lcssa308.sink.i.i = phi i32 [ %i.0298.i.i, %do.end77.i.i.cleanup.sink.split.i.i_crit_edge ], [ %i.0298.i.i, %lor.lhs.false.i.i.cleanup.sink.split.i.i_crit_edge ], [ %i.1292.i.i, %do.end144.i.i.cleanup.sink.split.i.i_crit_edge ], [ %i.1292.i.i, %lor.lhs.false150.i.i.cleanup.sink.split.i.i_crit_edge ]
  %conv87.i.i = trunc i32 %i.0298.lcssa308.sink.i.i to i8
  %672 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_store1_noabort(i32 %672)
  store i8 %conv87.i.i, ptr %arrayidx.i.i46, align 1
  br label %for.inc.i61

ath5k_eeprom_read_pcal_info.exit.thread:          ; preds = %ath5k_eeprom_bin2freq.exit281.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge, %do.body112.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge, %ath5k_eeprom_bin2freq.exit.i.i56.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge, %do.body.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge, %if.end26.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %ath5k_eeprom_bin2freq.exit.i.i56.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge ], [ -5, %do.body.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge ], [ -5, %ath5k_eeprom_bin2freq.exit281.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge ], [ -5, %do.body112.i.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge ], [ -22, %if.end26.i.ath5k_eeprom_read_pcal_info.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i38) #6
  br label %cleanup

for.inc.i61:                                      ; preds = %cleanup.sink.split.i.i, %if.end156.i.i.for.inc.i61_crit_edge, %if.end88.i.i.for.inc.i61_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i38) #6
  %inc.i59 = add nuw nsw i32 %mode.058.i, 1
  %exitcond.not.i60 = icmp eq i32 %inc.i59, 3
  br i1 %exitcond.not.i60, label %for.inc.i61.if.end8_crit_edge, label %for.inc.i61.for.body.i45_crit_edge

for.inc.i61.for.body.i45_crit_edge:               ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i45

for.inc.i61.if.end8_crit_edge:                    ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

ath5k_eeprom_read_pcal_info.exit:                 ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %ath5k_eeprom_read_pcal_info.exit.cleanup_crit_edge, label %ath5k_eeprom_read_pcal_info.exit.if.end8_crit_edge

ath5k_eeprom_read_pcal_info.exit.if.end8_crit_edge: ; preds = %ath5k_eeprom_read_pcal_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

ath5k_eeprom_read_pcal_info.exit.cleanup_crit_edge: ; preds = %ath5k_eeprom_read_pcal_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %ath5k_eeprom_read_pcal_info.exit.if.end8_crit_edge, %for.inc.i61.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i63) #6
  %673 = ptrtoint ptr %val.i63 to i32
  call void @__asan_store2_noabort(i32 %673)
  store i16 -1, ptr %val.i63, align 2, !annotation !25
  %674 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %674)
  %675 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %675)
  %cmp.i65 = icmp ugt i16 %675, 12290
  %cond.i66 = select i1 %cmp.i65, i32 255, i32 127
  %conv12.i = select i1 %cmp.i65, i8 32, i8 16
  %ee_ctls.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 53
  %676 = ptrtoint ptr %ee_ctls.i to i32
  call void @__asan_store1_noabort(i32 %676)
  store i8 %conv12.i, ptr %ee_ctls.i, align 4
  %cond6.i = select i1 %cmp.i65, i32 296, i32 228
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %if.end8
  %offset.0488.i = phi i32 [ %cond6.i, %if.end8 ], [ %inc.i70, %do.end.i.do.body.i_crit_edge ]
  %i.0487.i = phi i32 [ 0, %if.end8 ], [ %add24.i, %do.end.i.do.body.i_crit_edge ]
  %677 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.i68 = getelementptr inbounds %struct.ath_bus_ops, ptr %678, i32 0, i32 2
  %679 = ptrtoint ptr %eeprom_read.i.i68 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %eeprom_read.i.i68, align 4
  %call1.i.i69 = call zeroext i1 %680(ptr noundef %ah, i32 noundef %offset.0488.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i.i69, label %do.end.i, label %do.body.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.body.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end.i:                                         ; preds = %do.body.i
  %inc.i70 = add nuw nsw i32 %offset.0488.i, 1
  %681 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %681)
  %682 = load i16, ptr %val.i63, align 2
  %683 = lshr i16 %682, 8
  %conv18.i = trunc i16 %683 to i8
  %arrayidx.i71 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 54, i32 %i.0487.i
  %684 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store1_noabort(i32 %684)
  store i8 %conv18.i, ptr %arrayidx.i71, align 1
  %conv21.i = trunc i16 %682 to i8
  %add.i72 = or i32 %i.0487.i, 1
  %arrayidx23.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 54, i32 %add.i72
  %685 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %685)
  store i8 %conv21.i, ptr %arrayidx23.i, align 1
  %add24.i = add nuw nsw i32 %i.0487.i, 2
  %686 = ptrtoint ptr %ee_ctls.i to i32
  call void @__asan_load1_noabort(i32 %686)
  %687 = load i8, ptr %ee_ctls.i, align 4
  %conv14.i = zext i8 %687 to i32
  %cmp15.i = icmp ult i32 %add24.i, %conv14.i
  br i1 %cmp15.i, label %do.end.i.do.body.i_crit_edge, label %for.end.i73

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.end.i73:                                      ; preds = %do.end.i
  %688 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %688)
  %689 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %689)
  %cmp27.i = icmp ugt i16 %689, 16383
  br i1 %cmp27.i, label %if.then29.i, label %if.else.i75

if.then29.i:                                      ; preds = %for.end.i73
  call void @__sanitizer_cov_trace_pc() #8
  %690 = ptrtoint ptr %ee_misc1.i.i to i32
  call void @__asan_load2_noabort(i32 %690)
  %691 = load i16, ptr %ee_misc1.i.i, align 2
  %692 = and i16 %691, 4095
  %narrow.i = add nuw nsw i16 %692, 26
  %add32.i = zext i16 %narrow.i to i32
  br label %if.end39.i

if.else.i75:                                      ; preds = %for.end.i73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %689)
  %cmp35.i = icmp ugt i16 %689, 12290
  %add38.i = select i1 %cmp35.i, i32 447, i32 367
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else.i75, %if.then29.i
  %offset.1.i = phi i32 [ %add32.i, %if.then29.i ], [ %add38.i, %if.else.i75 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %687)
  %cmp43495.not.i = icmp eq i8 %687, 0
  br i1 %cmp43495.not.i, label %if.end39.i.if.end12_crit_edge, label %for.body45.lr.ph.i

if.end39.i.if.end12_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.body45.lr.ph.i:                               ; preds = %if.end39.i
  %ee_ctl_pwr.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 55
  %693 = trunc i32 %cond.i66 to i16
  br label %for.body45.i

for.body45.i:                                     ; preds = %for.inc330.i.for.body45.i_crit_edge, %for.body45.lr.ph.i
  %offset.2500.i = phi i32 [ %offset.1.i, %for.body45.lr.ph.i ], [ %offset.7.i, %for.inc330.i.for.body45.i_crit_edge ]
  %i.1499.i = phi i32 [ 0, %for.body45.lr.ph.i ], [ %inc331.i, %for.inc330.i.for.body45.i_crit_edge ]
  %rep.0496.i = phi ptr [ %ee_ctl_pwr.i, %for.body45.lr.ph.i ], [ %rep.1.i, %for.inc330.i.for.body45.i_crit_edge ]
  %arrayidx47.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 54, i32 %i.1499.i
  %694 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %694)
  %695 = load i8, ptr %arrayidx47.i, align 1
  %696 = and i8 %695, 15
  %and49.i = zext i8 %696 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %695)
  %cmp53.i = icmp eq i8 %695, 0
  %697 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %697)
  %698 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %698)
  %cmp58.i = icmp ugt i16 %698, 12290
  br i1 %cmp53.i, label %if.then55.i, label %if.end65.i

if.then55.i:                                      ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #8
  %offset.3.v.i = select i1 %cmp58.i, i32 8, i32 7
  %offset.3.i = add i32 %offset.3.v.i, %offset.2500.i
  br label %for.inc330.i

if.end65.i:                                       ; preds = %for.body45.i
  %699 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i454.i = getelementptr inbounds %struct.ath_bus_ops, ptr %700, i32 0, i32 2
  %701 = ptrtoint ptr %eeprom_read.i454.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %eeprom_read.i454.i, align 4
  %call1.i455.i = call zeroext i1 %702(ptr noundef %ah, i32 noundef %offset.2500.i, ptr noundef nonnull %val.i63) #6
  br i1 %cmp58.i, label %do.body75.preheader.i, label %do.body134.i

do.body75.preheader.i:                            ; preds = %if.end65.i
  br i1 %call1.i455.i, label %do.end81.i, label %do.body75.preheader.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.body75.preheader.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.body75.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end81.i:                                       ; preds = %do.body75.preheader.i
  %inc76.i = add i32 %offset.2500.i, 1
  %703 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %703)
  %704 = load i16, ptr %val.i63, align 2
  %705 = lshr i16 %704, 8
  %conv85.i = and i16 %705, %693
  %706 = ptrtoint ptr %rep.0496.i to i32
  call void @__asan_store2_noabort(i32 %706)
  store i16 %conv85.i, ptr %rep.0496.i, align 2
  %conv89.i = and i16 %704, %693
  %arrayidx91.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 1
  %707 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store2_noabort(i32 %707)
  store i16 %conv89.i, ptr %arrayidx91.i, align 2
  %708 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i454.1.i = getelementptr inbounds %struct.ath_bus_ops, ptr %709, i32 0, i32 2
  %710 = ptrtoint ptr %eeprom_read.i454.1.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %eeprom_read.i454.1.i, align 4
  %call1.i455.1.i = call zeroext i1 %711(ptr noundef %ah, i32 noundef %inc76.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i455.1.i, label %do.end81.1.i, label %do.end81.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end81.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end81.1.i:                                     ; preds = %do.end81.i
  %inc76.1.i = add i32 %offset.2500.i, 2
  %712 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %712)
  %713 = load i16, ptr %val.i63, align 2
  %714 = lshr i16 %713, 8
  %conv85.1.i = and i16 %714, %693
  %arrayidx86.1.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 2
  %715 = ptrtoint ptr %arrayidx86.1.i to i32
  call void @__asan_store2_noabort(i32 %715)
  store i16 %conv85.1.i, ptr %arrayidx86.1.i, align 2
  %conv89.1.i = and i16 %713, %693
  %arrayidx91.1.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 3
  %716 = ptrtoint ptr %arrayidx91.1.i to i32
  call void @__asan_store2_noabort(i32 %716)
  store i16 %conv89.1.i, ptr %arrayidx91.1.i, align 2
  %717 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i454.2.i = getelementptr inbounds %struct.ath_bus_ops, ptr %718, i32 0, i32 2
  %719 = ptrtoint ptr %eeprom_read.i454.2.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %eeprom_read.i454.2.i, align 4
  %call1.i455.2.i = call zeroext i1 %720(ptr noundef %ah, i32 noundef %inc76.1.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i455.2.i, label %do.end81.2.i, label %do.end81.1.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end81.1.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end81.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end81.2.i:                                     ; preds = %do.end81.1.i
  %inc76.2.i = add i32 %offset.2500.i, 3
  %721 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %721)
  %722 = load i16, ptr %val.i63, align 2
  %723 = lshr i16 %722, 8
  %conv85.2.i = and i16 %723, %693
  %arrayidx86.2.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 4
  %724 = ptrtoint ptr %arrayidx86.2.i to i32
  call void @__asan_store2_noabort(i32 %724)
  store i16 %conv85.2.i, ptr %arrayidx86.2.i, align 2
  %conv89.2.i = and i16 %722, %693
  %arrayidx91.2.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 5
  %725 = ptrtoint ptr %arrayidx91.2.i to i32
  call void @__asan_store2_noabort(i32 %725)
  store i16 %conv89.2.i, ptr %arrayidx91.2.i, align 2
  %726 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i454.3.i = getelementptr inbounds %struct.ath_bus_ops, ptr %727, i32 0, i32 2
  %728 = ptrtoint ptr %eeprom_read.i454.3.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %eeprom_read.i454.3.i, align 4
  %call1.i455.3.i = call zeroext i1 %729(ptr noundef %ah, i32 noundef %inc76.2.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i455.3.i, label %do.end81.3.i, label %do.end81.2.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end81.2.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end81.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end81.3.i:                                     ; preds = %do.end81.2.i
  %inc76.3.i = add i32 %offset.2500.i, 4
  %730 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %730)
  %731 = load i16, ptr %val.i63, align 2
  %732 = lshr i16 %731, 8
  %conv85.3.i = and i16 %732, %693
  %arrayidx86.3.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 6
  %733 = ptrtoint ptr %arrayidx86.3.i to i32
  call void @__asan_store2_noabort(i32 %733)
  store i16 %conv85.3.i, ptr %arrayidx86.3.i, align 2
  %conv89.3.i = and i16 %731, %693
  %arrayidx91.3.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 7
  %734 = ptrtoint ptr %arrayidx91.3.i to i32
  call void @__asan_store2_noabort(i32 %734)
  store i16 %conv89.3.i, ptr %arrayidx91.3.i, align 2
  %735 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i457.i = getelementptr inbounds %struct.ath_bus_ops, ptr %736, i32 0, i32 2
  %737 = ptrtoint ptr %eeprom_read.i457.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %eeprom_read.i457.i, align 4
  %call1.i458.i = call zeroext i1 %738(ptr noundef %ah, i32 noundef %inc76.3.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i458.i, label %do.end106.i, label %do.end81.3.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end81.3.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end81.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end106.i:                                      ; preds = %do.end81.3.i
  %inc101.i = add i32 %offset.2500.i, 5
  %739 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %739)
  %740 = load i16, ptr %val.i63, align 2
  %741 = lshr i16 %740, 8
  %742 = and i16 %741, 63
  %edge.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 0, i32 1
  %743 = ptrtoint ptr %edge.i to i32
  call void @__asan_store2_noabort(i32 %743)
  store i16 %742, ptr %edge.i, align 2
  %flag.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 0, i32 2
  %744 = lshr i16 %740, 14
  %745 = trunc i16 %744 to i8
  %746 = and i8 %745, 1
  %747 = ptrtoint ptr %flag.i to i32
  call void @__asan_store1_noabort(i32 %747)
  store i8 %746, ptr %flag.i, align 2
  %748 = and i16 %740, 63
  %edge121.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 1, i32 1
  %749 = ptrtoint ptr %edge121.i to i32
  call void @__asan_store2_noabort(i32 %749)
  store i16 %748, ptr %edge121.i, align 2
  %flag128.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 1, i32 2
  %750 = trunc i16 %740 to i8
  %751 = lshr i8 %750, 6
  %752 = and i8 %751, 1
  %753 = ptrtoint ptr %flag128.i to i32
  call void @__asan_store1_noabort(i32 %753)
  store i8 %752, ptr %flag128.i, align 2
  %754 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i457.1.i = getelementptr inbounds %struct.ath_bus_ops, ptr %755, i32 0, i32 2
  %756 = ptrtoint ptr %eeprom_read.i457.1.i to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %eeprom_read.i457.1.i, align 4
  %call1.i458.1.i = call zeroext i1 %757(ptr noundef %ah, i32 noundef %inc101.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i458.1.i, label %do.end106.1.i, label %do.end106.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end106.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end106.1.i:                                    ; preds = %do.end106.i
  %inc101.1.i = add i32 %offset.2500.i, 6
  %758 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %758)
  %759 = load i16, ptr %val.i63, align 2
  %760 = lshr i16 %759, 8
  %761 = and i16 %760, 63
  %edge.1.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 2, i32 1
  %762 = ptrtoint ptr %edge.1.i to i32
  call void @__asan_store2_noabort(i32 %762)
  store i16 %761, ptr %edge.1.i, align 2
  %flag.1.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 2, i32 2
  %763 = lshr i16 %759, 14
  %764 = trunc i16 %763 to i8
  %765 = and i8 %764, 1
  %766 = ptrtoint ptr %flag.1.i to i32
  call void @__asan_store1_noabort(i32 %766)
  store i8 %765, ptr %flag.1.i, align 2
  %767 = and i16 %759, 63
  %edge121.1.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 3, i32 1
  %768 = ptrtoint ptr %edge121.1.i to i32
  call void @__asan_store2_noabort(i32 %768)
  store i16 %767, ptr %edge121.1.i, align 2
  %flag128.1.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 3, i32 2
  %769 = trunc i16 %759 to i8
  %770 = lshr i8 %769, 6
  %771 = and i8 %770, 1
  %772 = ptrtoint ptr %flag128.1.i to i32
  call void @__asan_store1_noabort(i32 %772)
  store i8 %771, ptr %flag128.1.i, align 2
  %773 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i457.2.i = getelementptr inbounds %struct.ath_bus_ops, ptr %774, i32 0, i32 2
  %775 = ptrtoint ptr %eeprom_read.i457.2.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %eeprom_read.i457.2.i, align 4
  %call1.i458.2.i = call zeroext i1 %776(ptr noundef %ah, i32 noundef %inc101.1.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i458.2.i, label %do.end106.2.i, label %do.end106.1.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end106.1.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end106.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end106.2.i:                                    ; preds = %do.end106.1.i
  %inc101.2.i = add i32 %offset.2500.i, 7
  %777 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %777)
  %778 = load i16, ptr %val.i63, align 2
  %779 = lshr i16 %778, 8
  %780 = and i16 %779, 63
  %edge.2.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 4, i32 1
  %781 = ptrtoint ptr %edge.2.i to i32
  call void @__asan_store2_noabort(i32 %781)
  store i16 %780, ptr %edge.2.i, align 2
  %flag.2.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 4, i32 2
  %782 = lshr i16 %778, 14
  %783 = trunc i16 %782 to i8
  %784 = and i8 %783, 1
  %785 = ptrtoint ptr %flag.2.i to i32
  call void @__asan_store1_noabort(i32 %785)
  store i8 %784, ptr %flag.2.i, align 2
  %786 = and i16 %778, 63
  %edge121.2.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 5, i32 1
  %787 = ptrtoint ptr %edge121.2.i to i32
  call void @__asan_store2_noabort(i32 %787)
  store i16 %786, ptr %edge121.2.i, align 2
  %flag128.2.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 5, i32 2
  %788 = trunc i16 %778 to i8
  %789 = lshr i8 %788, 6
  %790 = and i8 %789, 1
  %791 = ptrtoint ptr %flag128.2.i to i32
  call void @__asan_store1_noabort(i32 %791)
  store i8 %790, ptr %flag128.2.i, align 2
  %792 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i457.3.i = getelementptr inbounds %struct.ath_bus_ops, ptr %793, i32 0, i32 2
  %794 = ptrtoint ptr %eeprom_read.i457.3.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %eeprom_read.i457.3.i, align 4
  %call1.i458.3.i = call zeroext i1 %795(ptr noundef %ah, i32 noundef %inc101.2.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i458.3.i, label %do.end106.3.i, label %do.end106.2.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end106.2.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end106.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end106.3.i:                                    ; preds = %do.end106.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc101.3.i = add i32 %offset.2500.i, 8
  %796 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %796)
  %797 = load i16, ptr %val.i63, align 2
  %798 = lshr i16 %797, 8
  %799 = and i16 %798, 63
  %edge.3.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 6, i32 1
  %800 = ptrtoint ptr %edge.3.i to i32
  call void @__asan_store2_noabort(i32 %800)
  store i16 %799, ptr %edge.3.i, align 2
  %flag.3.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 6, i32 2
  %801 = lshr i16 %797, 14
  %802 = trunc i16 %801 to i8
  %803 = and i8 %802, 1
  %804 = ptrtoint ptr %flag.3.i to i32
  call void @__asan_store1_noabort(i32 %804)
  store i8 %803, ptr %flag.3.i, align 2
  %805 = and i16 %797, 63
  %edge121.3.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 7, i32 1
  %806 = ptrtoint ptr %edge121.3.i to i32
  call void @__asan_store2_noabort(i32 %806)
  store i16 %805, ptr %edge121.3.i, align 2
  %flag128.3.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 7, i32 2
  %807 = trunc i16 %797 to i8
  %808 = lshr i8 %807, 6
  %809 = and i8 %808, 1
  %810 = ptrtoint ptr %flag128.3.i to i32
  call void @__asan_store1_noabort(i32 %810)
  store i8 %809, ptr %flag128.3.i, align 2
  br label %if.end316.i

do.body134.i:                                     ; preds = %if.end65.i
  br i1 %call1.i455.i, label %do.end140.i, label %do.body134.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.body134.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end140.i:                                      ; preds = %do.body134.i
  %inc135.i = add i32 %offset.2500.i, 1
  %811 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %811)
  %812 = load i16, ptr %val.i63, align 2
  %813 = lshr i16 %812, 9
  %814 = ptrtoint ptr %rep.0496.i to i32
  call void @__asan_store2_noabort(i32 %814)
  store i16 %813, ptr %rep.0496.i, align 2
  %815 = lshr i16 %812, 2
  %conv150.i = and i16 %815, %693
  %arrayidx151.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 1
  %816 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_store2_noabort(i32 %816)
  store i16 %conv150.i, ptr %arrayidx151.i, align 2
  %conv153.i = zext i16 %812 to i32
  %shl.i76 = shl nuw nsw i32 %conv153.i, 5
  %and154.i = and i32 %shl.i76, %cond.i66
  %conv155.i = trunc i32 %and154.i to i16
  %arrayidx156.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 2
  %817 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_store2_noabort(i32 %817)
  store i16 %conv155.i, ptr %arrayidx156.i, align 2
  %818 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i463.i = getelementptr inbounds %struct.ath_bus_ops, ptr %819, i32 0, i32 2
  %820 = ptrtoint ptr %eeprom_read.i463.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %eeprom_read.i463.i, align 4
  %call1.i464.i = call zeroext i1 %821(ptr noundef %ah, i32 noundef %inc135.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i464.i, label %do.end164.i, label %do.end140.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end140.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end164.i:                                      ; preds = %do.end140.i
  %inc159.i = add i32 %offset.2500.i, 2
  %822 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %822)
  %823 = load i16, ptr %val.i63, align 2
  %824 = lshr i16 %823, 11
  %825 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load2_noabort(i32 %825)
  %826 = load i16, ptr %arrayidx156.i, align 2
  %or448.i = or i16 %826, %824
  store i16 %or448.i, ptr %arrayidx156.i, align 2
  %827 = lshr i16 %823, 4
  %conv175.i = and i16 %827, %693
  %arrayidx176.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 3
  %828 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_store2_noabort(i32 %828)
  store i16 %conv175.i, ptr %arrayidx176.i, align 2
  %conv178.i = zext i16 %823 to i32
  %shl179.i = shl nuw nsw i32 %conv178.i, 3
  %and180.i = and i32 %shl179.i, %cond.i66
  %conv181.i = trunc i32 %and180.i to i16
  %arrayidx182.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 4
  %829 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_store2_noabort(i32 %829)
  store i16 %conv181.i, ptr %arrayidx182.i, align 2
  %830 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i466.i = getelementptr inbounds %struct.ath_bus_ops, ptr %831, i32 0, i32 2
  %832 = ptrtoint ptr %eeprom_read.i466.i to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %eeprom_read.i466.i, align 4
  %call1.i467.i = call zeroext i1 %833(ptr noundef %ah, i32 noundef %inc159.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i467.i, label %do.end190.i, label %do.end164.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end164.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end164.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end190.i:                                      ; preds = %do.end164.i
  %inc185.i = add i32 %offset.2500.i, 3
  %834 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %834)
  %835 = load i16, ptr %val.i63, align 2
  %836 = lshr i16 %835, 13
  %837 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_load2_noabort(i32 %837)
  %838 = load i16, ptr %arrayidx182.i, align 2
  %or197449.i = or i16 %838, %836
  store i16 %or197449.i, ptr %arrayidx182.i, align 2
  %839 = lshr i16 %835, 6
  %conv202.i = and i16 %839, %693
  %arrayidx203.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 5
  %840 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_store2_noabort(i32 %840)
  store i16 %conv202.i, ptr %arrayidx203.i, align 2
  %conv205.i = zext i16 %835 to i32
  %shl206.i = shl nuw nsw i32 %conv205.i, 1
  %and207.i = and i32 %shl206.i, %cond.i66
  %conv208.i = trunc i32 %and207.i to i16
  %arrayidx209.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 6
  %841 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_store2_noabort(i32 %841)
  store i16 %conv208.i, ptr %arrayidx209.i, align 2
  %842 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i469.i = getelementptr inbounds %struct.ath_bus_ops, ptr %843, i32 0, i32 2
  %844 = ptrtoint ptr %eeprom_read.i469.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %eeprom_read.i469.i, align 4
  %call1.i470.i = call zeroext i1 %845(ptr noundef %ah, i32 noundef %inc185.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i470.i, label %do.end217.i, label %do.end190.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end190.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end190.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end217.i:                                      ; preds = %do.end190.i
  %inc212.i = add i32 %offset.2500.i, 4
  %846 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %846)
  %847 = load i16, ptr %val.i63, align 2
  %848 = lshr i16 %847, 15
  %849 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_load2_noabort(i32 %849)
  %850 = load i16, ptr %arrayidx209.i, align 2
  %or224450.i = or i16 %850, %848
  store i16 %or224450.i, ptr %arrayidx209.i, align 2
  %851 = lshr i16 %847, 8
  %conv229.i = and i16 %851, %693
  %arrayidx230.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 7
  %852 = ptrtoint ptr %arrayidx230.i to i32
  call void @__asan_store2_noabort(i32 %852)
  store i16 %conv229.i, ptr %arrayidx230.i, align 2
  %853 = lshr i16 %847, 2
  %854 = and i16 %853, 63
  %edge237.i = getelementptr inbounds %struct.ath5k_edge_power, ptr %rep.0496.i, i32 0, i32 1
  %855 = ptrtoint ptr %edge237.i to i32
  call void @__asan_store2_noabort(i32 %855)
  store i16 %854, ptr %edge237.i, align 2
  %shl239.i = shl i16 %847, 4
  %and240.i = and i16 %shl239.i, 48
  %edge243.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 1, i32 1
  %856 = ptrtoint ptr %edge243.i to i32
  call void @__asan_store2_noabort(i32 %856)
  store i16 %and240.i, ptr %edge243.i, align 2
  %857 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i472.i = getelementptr inbounds %struct.ath_bus_ops, ptr %858, i32 0, i32 2
  %859 = ptrtoint ptr %eeprom_read.i472.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %eeprom_read.i472.i, align 4
  %call1.i473.i = call zeroext i1 %860(ptr noundef %ah, i32 noundef %inc212.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i473.i, label %do.end250.i, label %do.end217.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end217.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end217.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end250.i:                                      ; preds = %do.end217.i
  %inc245.i = add i32 %offset.2500.i, 5
  %861 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %861)
  %862 = load i16, ptr %val.i63, align 2
  %863 = lshr i16 %862, 12
  %864 = ptrtoint ptr %edge243.i to i32
  call void @__asan_load2_noabort(i32 %864)
  %865 = load i16, ptr %edge243.i, align 2
  %or257451.i = or i16 %865, %863
  store i16 %or257451.i, ptr %edge243.i, align 2
  %866 = lshr i16 %862, 6
  %867 = and i16 %866, 63
  %edge264.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 2, i32 1
  %868 = ptrtoint ptr %edge264.i to i32
  call void @__asan_store2_noabort(i32 %868)
  store i16 %867, ptr %edge264.i, align 2
  %869 = and i16 %862, 63
  %edge269.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 3, i32 1
  %870 = ptrtoint ptr %edge269.i to i32
  call void @__asan_store2_noabort(i32 %870)
  store i16 %869, ptr %edge269.i, align 2
  %871 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i475.i = getelementptr inbounds %struct.ath_bus_ops, ptr %872, i32 0, i32 2
  %873 = ptrtoint ptr %eeprom_read.i475.i to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load ptr, ptr %eeprom_read.i475.i, align 4
  %call1.i476.i = call zeroext i1 %874(ptr noundef %ah, i32 noundef %inc245.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i476.i, label %do.end276.i, label %do.end250.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end250.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end250.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end276.i:                                      ; preds = %do.end250.i
  %inc271.i = add i32 %offset.2500.i, 6
  %875 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %875)
  %876 = load i16, ptr %val.i63, align 2
  %877 = lshr i16 %876, 10
  %edge282.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 4, i32 1
  %878 = ptrtoint ptr %edge282.i to i32
  call void @__asan_store2_noabort(i32 %878)
  store i16 %877, ptr %edge282.i, align 2
  %879 = lshr i16 %876, 4
  %880 = and i16 %879, 63
  %edge288.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 5, i32 1
  %881 = ptrtoint ptr %edge288.i to i32
  call void @__asan_store2_noabort(i32 %881)
  store i16 %880, ptr %edge288.i, align 2
  %shl290.i = shl i16 %876, 2
  %and291.i = and i16 %shl290.i, 60
  %edge294.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 6, i32 1
  %882 = ptrtoint ptr %edge294.i to i32
  call void @__asan_store2_noabort(i32 %882)
  store i16 %and291.i, ptr %edge294.i, align 2
  %883 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i478.i = getelementptr inbounds %struct.ath_bus_ops, ptr %884, i32 0, i32 2
  %885 = ptrtoint ptr %eeprom_read.i478.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %eeprom_read.i478.i, align 4
  %call1.i479.i = call zeroext i1 %886(ptr noundef %ah, i32 noundef %inc271.i, ptr noundef nonnull %val.i63) #6
  br i1 %call1.i479.i, label %do.end301.i, label %do.end276.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge

do.end276.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge: ; preds = %do.end276.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_ctl_info.exit.thread

do.end301.i:                                      ; preds = %do.end276.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc296.i = add i32 %offset.2500.i, 7
  %887 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load2_noabort(i32 %887)
  %888 = load i16, ptr %val.i63, align 2
  %889 = lshr i16 %888, 14
  %890 = ptrtoint ptr %edge294.i to i32
  call void @__asan_load2_noabort(i32 %890)
  %891 = load i16, ptr %edge294.i, align 2
  %or308452.i = or i16 %891, %889
  store i16 %or308452.i, ptr %edge294.i, align 2
  %892 = lshr i16 %888, 8
  %893 = and i16 %892, 63
  %edge315.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 7, i32 1
  %894 = ptrtoint ptr %edge315.i to i32
  call void @__asan_store2_noabort(i32 %894)
  store i16 %893, ptr %edge315.i, align 2
  br label %if.end316.i

if.end316.i:                                      ; preds = %do.end301.i, %do.end106.3.i
  %offset.6.i = phi i32 [ %inc296.i, %do.end301.i ], [ %inc101.3.i, %do.end106.3.i ]
  %895 = ptrtoint ptr %rep.0496.i to i32
  call void @__asan_load2_noabort(i32 %895)
  %896 = load i16, ptr %rep.0496.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %896)
  %cmp.i.i77 = icmp eq i16 %896, 255
  br i1 %cmp.i.i77, label %if.end316.i.ath5k_eeprom_bin2freq.exit.i_crit_edge, label %if.end.i.i

if.end316.i.ath5k_eeprom_bin2freq.exit.i_crit_edge: ; preds = %if.end316.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.i

if.end.i.i:                                       ; preds = %if.end316.i
  %897 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %897)
  %898 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %898)
  %cmp6.i.i = icmp ugt i16 %898, 12290
  %899 = zext i32 %and49.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %899, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and49.i, label %if.else23.i.i [
    i32 3, label %if.end.i.i.if.then4.i.i_crit_edge
    i32 0, label %if.end.i.i.if.then4.i.i_crit_edge175
  ]

if.end.i.i.if.then4.i.i_crit_edge175:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i

if.end.i.i.if.then4.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i.if.then4.i.i_crit_edge, %if.end.i.i.if.then4.i.i_crit_edge175
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.i = mul i16 %896, 5
  %add.i.i = add i16 %mul.i.i, 4800
  br label %ath5k_eeprom_bin2freq.exit.i

if.else.i.i:                                      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %896)
  %cmp12.i.i = icmp ugt i16 %896, 62
  %900 = mul i16 %896, 5
  %add16.i.i = add i16 %900, 310
  %mul19.i.i = mul i16 %896, 10
  %cond.in.i.i = select i1 %cmp12.i.i, i16 %add16.i.i, i16 %mul19.i.i
  %cond.i.i = add i16 %cond.in.i.i, 5100
  br label %ath5k_eeprom_bin2freq.exit.i

if.else23.i.i:                                    ; preds = %if.end.i.i
  br i1 %cmp6.i.i, label %if.then28.i.i, label %if.else32.i.i

if.then28.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i.i = add i16 %896, 2300
  br label %ath5k_eeprom_bin2freq.exit.i

if.else32.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.i = add i16 %896, 2400
  br label %ath5k_eeprom_bin2freq.exit.i

ath5k_eeprom_bin2freq.exit.i:                     ; preds = %if.else32.i.i, %if.then28.i.i, %if.else.i.i, %if.then8.i.i, %if.end316.i.ath5k_eeprom_bin2freq.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 255, %if.end316.i.ath5k_eeprom_bin2freq.exit.i_crit_edge ], [ %add.i.i, %if.then8.i.i ], [ %cond.i.i, %if.else.i.i ], [ %add30.i.i, %if.then28.i.i ], [ %add34.i.i, %if.else32.i.i ]
  %901 = ptrtoint ptr %rep.0496.i to i32
  call void @__asan_store2_noabort(i32 %901)
  store i16 %retval.0.i.i, ptr %rep.0496.i, align 2
  %arrayidx321.1.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 1
  %902 = ptrtoint ptr %arrayidx321.1.i to i32
  call void @__asan_load2_noabort(i32 %902)
  %903 = load i16, ptr %arrayidx321.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %903)
  %cmp.i.1.i = icmp eq i16 %903, 255
  br i1 %cmp.i.1.i, label %ath5k_eeprom_bin2freq.exit.i.ath5k_eeprom_bin2freq.exit.1.i_crit_edge, label %if.end.i.1.i

ath5k_eeprom_bin2freq.exit.i.ath5k_eeprom_bin2freq.exit.1.i_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.1.i

if.end.i.1.i:                                     ; preds = %ath5k_eeprom_bin2freq.exit.i
  %904 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %904)
  %905 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %905)
  %cmp6.i.1.i = icmp ugt i16 %905, 12290
  %906 = zext i32 %and49.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %906, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and49.i, label %if.else23.i.1.i [
    i32 3, label %if.end.i.1.i.if.then4.i.1.i_crit_edge
    i32 0, label %if.end.i.1.i.if.then4.i.1.i_crit_edge176
  ]

if.end.i.1.i.if.then4.i.1.i_crit_edge176:         ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.1.i

if.end.i.1.i.if.then4.i.1.i_crit_edge:            ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.1.i

if.then4.i.1.i:                                   ; preds = %if.end.i.1.i.if.then4.i.1.i_crit_edge, %if.end.i.1.i.if.then4.i.1.i_crit_edge176
  br i1 %cmp6.i.1.i, label %if.then8.i.1.i, label %if.else.i.1.i

if.else.i.1.i:                                    ; preds = %if.then4.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %903)
  %cmp12.i.1.i = icmp ugt i16 %903, 62
  %907 = mul i16 %903, 5
  %add16.i.1.i = add i16 %907, 310
  %mul19.i.1.i = mul i16 %903, 10
  %cond.in.i.1.i = select i1 %cmp12.i.1.i, i16 %add16.i.1.i, i16 %mul19.i.1.i
  %cond.i.1.i = add i16 %cond.in.i.1.i, 5100
  br label %ath5k_eeprom_bin2freq.exit.1.i

if.then8.i.1.i:                                   ; preds = %if.then4.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.1.i = mul i16 %903, 5
  %add.i.1.i = add i16 %mul.i.1.i, 4800
  br label %ath5k_eeprom_bin2freq.exit.1.i

if.else23.i.1.i:                                  ; preds = %if.end.i.1.i
  br i1 %cmp6.i.1.i, label %if.then28.i.1.i, label %if.else32.i.1.i

if.else32.i.1.i:                                  ; preds = %if.else23.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.1.i = add i16 %903, 2400
  br label %ath5k_eeprom_bin2freq.exit.1.i

if.then28.i.1.i:                                  ; preds = %if.else23.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i.1.i = add i16 %903, 2300
  br label %ath5k_eeprom_bin2freq.exit.1.i

ath5k_eeprom_bin2freq.exit.1.i:                   ; preds = %if.then28.i.1.i, %if.else32.i.1.i, %if.then8.i.1.i, %if.else.i.1.i, %ath5k_eeprom_bin2freq.exit.i.ath5k_eeprom_bin2freq.exit.1.i_crit_edge
  %retval.0.i.1.i = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.i.ath5k_eeprom_bin2freq.exit.1.i_crit_edge ], [ %add.i.1.i, %if.then8.i.1.i ], [ %cond.i.1.i, %if.else.i.1.i ], [ %add30.i.1.i, %if.then28.i.1.i ], [ %add34.i.1.i, %if.else32.i.1.i ]
  %908 = ptrtoint ptr %arrayidx321.1.i to i32
  call void @__asan_store2_noabort(i32 %908)
  store i16 %retval.0.i.1.i, ptr %arrayidx321.1.i, align 2
  %arrayidx321.2.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 2
  %909 = ptrtoint ptr %arrayidx321.2.i to i32
  call void @__asan_load2_noabort(i32 %909)
  %910 = load i16, ptr %arrayidx321.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %910)
  %cmp.i.2.i = icmp eq i16 %910, 255
  br i1 %cmp.i.2.i, label %ath5k_eeprom_bin2freq.exit.1.i.ath5k_eeprom_bin2freq.exit.2.i_crit_edge, label %if.end.i.2.i

ath5k_eeprom_bin2freq.exit.1.i.ath5k_eeprom_bin2freq.exit.2.i_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.2.i

if.end.i.2.i:                                     ; preds = %ath5k_eeprom_bin2freq.exit.1.i
  %911 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %911)
  %912 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %912)
  %cmp6.i.2.i = icmp ugt i16 %912, 12290
  %913 = zext i32 %and49.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %913, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and49.i, label %if.else23.i.2.i [
    i32 3, label %if.end.i.2.i.if.then4.i.2.i_crit_edge
    i32 0, label %if.end.i.2.i.if.then4.i.2.i_crit_edge177
  ]

if.end.i.2.i.if.then4.i.2.i_crit_edge177:         ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.2.i

if.end.i.2.i.if.then4.i.2.i_crit_edge:            ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.2.i

if.then4.i.2.i:                                   ; preds = %if.end.i.2.i.if.then4.i.2.i_crit_edge, %if.end.i.2.i.if.then4.i.2.i_crit_edge177
  br i1 %cmp6.i.2.i, label %if.then8.i.2.i, label %if.else.i.2.i

if.else.i.2.i:                                    ; preds = %if.then4.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %910)
  %cmp12.i.2.i = icmp ugt i16 %910, 62
  %914 = mul i16 %910, 5
  %add16.i.2.i = add i16 %914, 310
  %mul19.i.2.i = mul i16 %910, 10
  %cond.in.i.2.i = select i1 %cmp12.i.2.i, i16 %add16.i.2.i, i16 %mul19.i.2.i
  %cond.i.2.i = add i16 %cond.in.i.2.i, 5100
  br label %ath5k_eeprom_bin2freq.exit.2.i

if.then8.i.2.i:                                   ; preds = %if.then4.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.2.i = mul i16 %910, 5
  %add.i.2.i = add i16 %mul.i.2.i, 4800
  br label %ath5k_eeprom_bin2freq.exit.2.i

if.else23.i.2.i:                                  ; preds = %if.end.i.2.i
  br i1 %cmp6.i.2.i, label %if.then28.i.2.i, label %if.else32.i.2.i

if.else32.i.2.i:                                  ; preds = %if.else23.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.2.i = add i16 %910, 2400
  br label %ath5k_eeprom_bin2freq.exit.2.i

if.then28.i.2.i:                                  ; preds = %if.else23.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i.2.i = add i16 %910, 2300
  br label %ath5k_eeprom_bin2freq.exit.2.i

ath5k_eeprom_bin2freq.exit.2.i:                   ; preds = %if.then28.i.2.i, %if.else32.i.2.i, %if.then8.i.2.i, %if.else.i.2.i, %ath5k_eeprom_bin2freq.exit.1.i.ath5k_eeprom_bin2freq.exit.2.i_crit_edge
  %retval.0.i.2.i = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.1.i.ath5k_eeprom_bin2freq.exit.2.i_crit_edge ], [ %add.i.2.i, %if.then8.i.2.i ], [ %cond.i.2.i, %if.else.i.2.i ], [ %add30.i.2.i, %if.then28.i.2.i ], [ %add34.i.2.i, %if.else32.i.2.i ]
  %915 = ptrtoint ptr %arrayidx321.2.i to i32
  call void @__asan_store2_noabort(i32 %915)
  store i16 %retval.0.i.2.i, ptr %arrayidx321.2.i, align 2
  %arrayidx321.3.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 3
  %916 = ptrtoint ptr %arrayidx321.3.i to i32
  call void @__asan_load2_noabort(i32 %916)
  %917 = load i16, ptr %arrayidx321.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %917)
  %cmp.i.3.i = icmp eq i16 %917, 255
  br i1 %cmp.i.3.i, label %ath5k_eeprom_bin2freq.exit.2.i.ath5k_eeprom_bin2freq.exit.3.i_crit_edge, label %if.end.i.3.i

ath5k_eeprom_bin2freq.exit.2.i.ath5k_eeprom_bin2freq.exit.3.i_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.3.i

if.end.i.3.i:                                     ; preds = %ath5k_eeprom_bin2freq.exit.2.i
  %918 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %918)
  %919 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %919)
  %cmp6.i.3.i = icmp ugt i16 %919, 12290
  %920 = zext i32 %and49.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %920, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and49.i, label %if.else23.i.3.i [
    i32 3, label %if.end.i.3.i.if.then4.i.3.i_crit_edge
    i32 0, label %if.end.i.3.i.if.then4.i.3.i_crit_edge178
  ]

if.end.i.3.i.if.then4.i.3.i_crit_edge178:         ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.3.i

if.end.i.3.i.if.then4.i.3.i_crit_edge:            ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.3.i

if.then4.i.3.i:                                   ; preds = %if.end.i.3.i.if.then4.i.3.i_crit_edge, %if.end.i.3.i.if.then4.i.3.i_crit_edge178
  br i1 %cmp6.i.3.i, label %if.then8.i.3.i, label %if.else.i.3.i

if.else.i.3.i:                                    ; preds = %if.then4.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %917)
  %cmp12.i.3.i = icmp ugt i16 %917, 62
  %921 = mul i16 %917, 5
  %add16.i.3.i = add i16 %921, 310
  %mul19.i.3.i = mul i16 %917, 10
  %cond.in.i.3.i = select i1 %cmp12.i.3.i, i16 %add16.i.3.i, i16 %mul19.i.3.i
  %cond.i.3.i = add i16 %cond.in.i.3.i, 5100
  br label %ath5k_eeprom_bin2freq.exit.3.i

if.then8.i.3.i:                                   ; preds = %if.then4.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.3.i = mul i16 %917, 5
  %add.i.3.i = add i16 %mul.i.3.i, 4800
  br label %ath5k_eeprom_bin2freq.exit.3.i

if.else23.i.3.i:                                  ; preds = %if.end.i.3.i
  br i1 %cmp6.i.3.i, label %if.then28.i.3.i, label %if.else32.i.3.i

if.else32.i.3.i:                                  ; preds = %if.else23.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.3.i = add i16 %917, 2400
  br label %ath5k_eeprom_bin2freq.exit.3.i

if.then28.i.3.i:                                  ; preds = %if.else23.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i.3.i = add i16 %917, 2300
  br label %ath5k_eeprom_bin2freq.exit.3.i

ath5k_eeprom_bin2freq.exit.3.i:                   ; preds = %if.then28.i.3.i, %if.else32.i.3.i, %if.then8.i.3.i, %if.else.i.3.i, %ath5k_eeprom_bin2freq.exit.2.i.ath5k_eeprom_bin2freq.exit.3.i_crit_edge
  %retval.0.i.3.i = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.2.i.ath5k_eeprom_bin2freq.exit.3.i_crit_edge ], [ %add.i.3.i, %if.then8.i.3.i ], [ %cond.i.3.i, %if.else.i.3.i ], [ %add30.i.3.i, %if.then28.i.3.i ], [ %add34.i.3.i, %if.else32.i.3.i ]
  %922 = ptrtoint ptr %arrayidx321.3.i to i32
  call void @__asan_store2_noabort(i32 %922)
  store i16 %retval.0.i.3.i, ptr %arrayidx321.3.i, align 2
  %arrayidx321.4.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 4
  %923 = ptrtoint ptr %arrayidx321.4.i to i32
  call void @__asan_load2_noabort(i32 %923)
  %924 = load i16, ptr %arrayidx321.4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %924)
  %cmp.i.4.i = icmp eq i16 %924, 255
  br i1 %cmp.i.4.i, label %ath5k_eeprom_bin2freq.exit.3.i.ath5k_eeprom_bin2freq.exit.4.i_crit_edge, label %if.end.i.4.i

ath5k_eeprom_bin2freq.exit.3.i.ath5k_eeprom_bin2freq.exit.4.i_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.4.i

if.end.i.4.i:                                     ; preds = %ath5k_eeprom_bin2freq.exit.3.i
  %925 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %925)
  %926 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %926)
  %cmp6.i.4.i = icmp ugt i16 %926, 12290
  %927 = zext i32 %and49.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %927, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and49.i, label %if.else23.i.4.i [
    i32 3, label %if.end.i.4.i.if.then4.i.4.i_crit_edge
    i32 0, label %if.end.i.4.i.if.then4.i.4.i_crit_edge179
  ]

if.end.i.4.i.if.then4.i.4.i_crit_edge179:         ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.4.i

if.end.i.4.i.if.then4.i.4.i_crit_edge:            ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.4.i

if.then4.i.4.i:                                   ; preds = %if.end.i.4.i.if.then4.i.4.i_crit_edge, %if.end.i.4.i.if.then4.i.4.i_crit_edge179
  br i1 %cmp6.i.4.i, label %if.then8.i.4.i, label %if.else.i.4.i

if.else.i.4.i:                                    ; preds = %if.then4.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %924)
  %cmp12.i.4.i = icmp ugt i16 %924, 62
  %928 = mul i16 %924, 5
  %add16.i.4.i = add i16 %928, 310
  %mul19.i.4.i = mul i16 %924, 10
  %cond.in.i.4.i = select i1 %cmp12.i.4.i, i16 %add16.i.4.i, i16 %mul19.i.4.i
  %cond.i.4.i = add i16 %cond.in.i.4.i, 5100
  br label %ath5k_eeprom_bin2freq.exit.4.i

if.then8.i.4.i:                                   ; preds = %if.then4.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.4.i = mul i16 %924, 5
  %add.i.4.i = add i16 %mul.i.4.i, 4800
  br label %ath5k_eeprom_bin2freq.exit.4.i

if.else23.i.4.i:                                  ; preds = %if.end.i.4.i
  br i1 %cmp6.i.4.i, label %if.then28.i.4.i, label %if.else32.i.4.i

if.else32.i.4.i:                                  ; preds = %if.else23.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.4.i = add i16 %924, 2400
  br label %ath5k_eeprom_bin2freq.exit.4.i

if.then28.i.4.i:                                  ; preds = %if.else23.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i.4.i = add i16 %924, 2300
  br label %ath5k_eeprom_bin2freq.exit.4.i

ath5k_eeprom_bin2freq.exit.4.i:                   ; preds = %if.then28.i.4.i, %if.else32.i.4.i, %if.then8.i.4.i, %if.else.i.4.i, %ath5k_eeprom_bin2freq.exit.3.i.ath5k_eeprom_bin2freq.exit.4.i_crit_edge
  %retval.0.i.4.i = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.3.i.ath5k_eeprom_bin2freq.exit.4.i_crit_edge ], [ %add.i.4.i, %if.then8.i.4.i ], [ %cond.i.4.i, %if.else.i.4.i ], [ %add30.i.4.i, %if.then28.i.4.i ], [ %add34.i.4.i, %if.else32.i.4.i ]
  %929 = ptrtoint ptr %arrayidx321.4.i to i32
  call void @__asan_store2_noabort(i32 %929)
  store i16 %retval.0.i.4.i, ptr %arrayidx321.4.i, align 2
  %arrayidx321.5.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 5
  %930 = ptrtoint ptr %arrayidx321.5.i to i32
  call void @__asan_load2_noabort(i32 %930)
  %931 = load i16, ptr %arrayidx321.5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %931)
  %cmp.i.5.i = icmp eq i16 %931, 255
  br i1 %cmp.i.5.i, label %ath5k_eeprom_bin2freq.exit.4.i.ath5k_eeprom_bin2freq.exit.5.i_crit_edge, label %if.end.i.5.i

ath5k_eeprom_bin2freq.exit.4.i.ath5k_eeprom_bin2freq.exit.5.i_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.5.i

if.end.i.5.i:                                     ; preds = %ath5k_eeprom_bin2freq.exit.4.i
  %932 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %932)
  %933 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %933)
  %cmp6.i.5.i = icmp ugt i16 %933, 12290
  %934 = zext i32 %and49.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %934, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and49.i, label %if.else23.i.5.i [
    i32 3, label %if.end.i.5.i.if.then4.i.5.i_crit_edge
    i32 0, label %if.end.i.5.i.if.then4.i.5.i_crit_edge180
  ]

if.end.i.5.i.if.then4.i.5.i_crit_edge180:         ; preds = %if.end.i.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.5.i

if.end.i.5.i.if.then4.i.5.i_crit_edge:            ; preds = %if.end.i.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.5.i

if.then4.i.5.i:                                   ; preds = %if.end.i.5.i.if.then4.i.5.i_crit_edge, %if.end.i.5.i.if.then4.i.5.i_crit_edge180
  br i1 %cmp6.i.5.i, label %if.then8.i.5.i, label %if.else.i.5.i

if.else.i.5.i:                                    ; preds = %if.then4.i.5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %931)
  %cmp12.i.5.i = icmp ugt i16 %931, 62
  %935 = mul i16 %931, 5
  %add16.i.5.i = add i16 %935, 310
  %mul19.i.5.i = mul i16 %931, 10
  %cond.in.i.5.i = select i1 %cmp12.i.5.i, i16 %add16.i.5.i, i16 %mul19.i.5.i
  %cond.i.5.i = add i16 %cond.in.i.5.i, 5100
  br label %ath5k_eeprom_bin2freq.exit.5.i

if.then8.i.5.i:                                   ; preds = %if.then4.i.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.5.i = mul i16 %931, 5
  %add.i.5.i = add i16 %mul.i.5.i, 4800
  br label %ath5k_eeprom_bin2freq.exit.5.i

if.else23.i.5.i:                                  ; preds = %if.end.i.5.i
  br i1 %cmp6.i.5.i, label %if.then28.i.5.i, label %if.else32.i.5.i

if.else32.i.5.i:                                  ; preds = %if.else23.i.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.5.i = add i16 %931, 2400
  br label %ath5k_eeprom_bin2freq.exit.5.i

if.then28.i.5.i:                                  ; preds = %if.else23.i.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i.5.i = add i16 %931, 2300
  br label %ath5k_eeprom_bin2freq.exit.5.i

ath5k_eeprom_bin2freq.exit.5.i:                   ; preds = %if.then28.i.5.i, %if.else32.i.5.i, %if.then8.i.5.i, %if.else.i.5.i, %ath5k_eeprom_bin2freq.exit.4.i.ath5k_eeprom_bin2freq.exit.5.i_crit_edge
  %retval.0.i.5.i = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.4.i.ath5k_eeprom_bin2freq.exit.5.i_crit_edge ], [ %add.i.5.i, %if.then8.i.5.i ], [ %cond.i.5.i, %if.else.i.5.i ], [ %add30.i.5.i, %if.then28.i.5.i ], [ %add34.i.5.i, %if.else32.i.5.i ]
  %936 = ptrtoint ptr %arrayidx321.5.i to i32
  call void @__asan_store2_noabort(i32 %936)
  store i16 %retval.0.i.5.i, ptr %arrayidx321.5.i, align 2
  %arrayidx321.6.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 6
  %937 = ptrtoint ptr %arrayidx321.6.i to i32
  call void @__asan_load2_noabort(i32 %937)
  %938 = load i16, ptr %arrayidx321.6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %938)
  %cmp.i.6.i = icmp eq i16 %938, 255
  br i1 %cmp.i.6.i, label %ath5k_eeprom_bin2freq.exit.5.i.ath5k_eeprom_bin2freq.exit.6.i_crit_edge, label %if.end.i.6.i

ath5k_eeprom_bin2freq.exit.5.i.ath5k_eeprom_bin2freq.exit.6.i_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.6.i

if.end.i.6.i:                                     ; preds = %ath5k_eeprom_bin2freq.exit.5.i
  %939 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %939)
  %940 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %940)
  %cmp6.i.6.i = icmp ugt i16 %940, 12290
  %941 = zext i32 %and49.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %941, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and49.i, label %if.else23.i.6.i [
    i32 3, label %if.end.i.6.i.if.then4.i.6.i_crit_edge
    i32 0, label %if.end.i.6.i.if.then4.i.6.i_crit_edge181
  ]

if.end.i.6.i.if.then4.i.6.i_crit_edge181:         ; preds = %if.end.i.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.6.i

if.end.i.6.i.if.then4.i.6.i_crit_edge:            ; preds = %if.end.i.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.6.i

if.then4.i.6.i:                                   ; preds = %if.end.i.6.i.if.then4.i.6.i_crit_edge, %if.end.i.6.i.if.then4.i.6.i_crit_edge181
  br i1 %cmp6.i.6.i, label %if.then8.i.6.i, label %if.else.i.6.i

if.else.i.6.i:                                    ; preds = %if.then4.i.6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %938)
  %cmp12.i.6.i = icmp ugt i16 %938, 62
  %942 = mul i16 %938, 5
  %add16.i.6.i = add i16 %942, 310
  %mul19.i.6.i = mul i16 %938, 10
  %cond.in.i.6.i = select i1 %cmp12.i.6.i, i16 %add16.i.6.i, i16 %mul19.i.6.i
  %cond.i.6.i = add i16 %cond.in.i.6.i, 5100
  br label %ath5k_eeprom_bin2freq.exit.6.i

if.then8.i.6.i:                                   ; preds = %if.then4.i.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.6.i = mul i16 %938, 5
  %add.i.6.i = add i16 %mul.i.6.i, 4800
  br label %ath5k_eeprom_bin2freq.exit.6.i

if.else23.i.6.i:                                  ; preds = %if.end.i.6.i
  br i1 %cmp6.i.6.i, label %if.then28.i.6.i, label %if.else32.i.6.i

if.else32.i.6.i:                                  ; preds = %if.else23.i.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.6.i = add i16 %938, 2400
  br label %ath5k_eeprom_bin2freq.exit.6.i

if.then28.i.6.i:                                  ; preds = %if.else23.i.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i.6.i = add i16 %938, 2300
  br label %ath5k_eeprom_bin2freq.exit.6.i

ath5k_eeprom_bin2freq.exit.6.i:                   ; preds = %if.then28.i.6.i, %if.else32.i.6.i, %if.then8.i.6.i, %if.else.i.6.i, %ath5k_eeprom_bin2freq.exit.5.i.ath5k_eeprom_bin2freq.exit.6.i_crit_edge
  %retval.0.i.6.i = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.5.i.ath5k_eeprom_bin2freq.exit.6.i_crit_edge ], [ %add.i.6.i, %if.then8.i.6.i ], [ %cond.i.6.i, %if.else.i.6.i ], [ %add30.i.6.i, %if.then28.i.6.i ], [ %add34.i.6.i, %if.else32.i.6.i ]
  %943 = ptrtoint ptr %arrayidx321.6.i to i32
  call void @__asan_store2_noabort(i32 %943)
  store i16 %retval.0.i.6.i, ptr %arrayidx321.6.i, align 2
  %arrayidx321.7.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 7
  %944 = ptrtoint ptr %arrayidx321.7.i to i32
  call void @__asan_load2_noabort(i32 %944)
  %945 = load i16, ptr %arrayidx321.7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %945)
  %cmp.i.7.i = icmp eq i16 %945, 255
  br i1 %cmp.i.7.i, label %ath5k_eeprom_bin2freq.exit.6.i.ath5k_eeprom_bin2freq.exit.7.i_crit_edge, label %if.end.i.7.i

ath5k_eeprom_bin2freq.exit.6.i.ath5k_eeprom_bin2freq.exit.7.i_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.7.i

if.end.i.7.i:                                     ; preds = %ath5k_eeprom_bin2freq.exit.6.i
  %946 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %946)
  %947 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %947)
  %cmp6.i.7.i = icmp ugt i16 %947, 12290
  %948 = zext i32 %and49.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %948, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %and49.i, label %if.else23.i.7.i [
    i32 3, label %if.end.i.7.i.if.then4.i.7.i_crit_edge
    i32 0, label %if.end.i.7.i.if.then4.i.7.i_crit_edge182
  ]

if.end.i.7.i.if.then4.i.7.i_crit_edge182:         ; preds = %if.end.i.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.7.i

if.end.i.7.i.if.then4.i.7.i_crit_edge:            ; preds = %if.end.i.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.7.i

if.then4.i.7.i:                                   ; preds = %if.end.i.7.i.if.then4.i.7.i_crit_edge, %if.end.i.7.i.if.then4.i.7.i_crit_edge182
  br i1 %cmp6.i.7.i, label %if.then8.i.7.i, label %if.else.i.7.i

if.else.i.7.i:                                    ; preds = %if.then4.i.7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %945)
  %cmp12.i.7.i = icmp ugt i16 %945, 62
  %949 = mul i16 %945, 5
  %add16.i.7.i = add i16 %949, 310
  %mul19.i.7.i = mul i16 %945, 10
  %cond.in.i.7.i = select i1 %cmp12.i.7.i, i16 %add16.i.7.i, i16 %mul19.i.7.i
  %cond.i.7.i = add i16 %cond.in.i.7.i, 5100
  br label %ath5k_eeprom_bin2freq.exit.7.i

if.then8.i.7.i:                                   ; preds = %if.then4.i.7.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.7.i = mul i16 %945, 5
  %add.i.7.i = add i16 %mul.i.7.i, 4800
  br label %ath5k_eeprom_bin2freq.exit.7.i

if.else23.i.7.i:                                  ; preds = %if.end.i.7.i
  br i1 %cmp6.i.7.i, label %if.then28.i.7.i, label %if.else32.i.7.i

if.else32.i.7.i:                                  ; preds = %if.else23.i.7.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.7.i = add i16 %945, 2400
  br label %ath5k_eeprom_bin2freq.exit.7.i

if.then28.i.7.i:                                  ; preds = %if.else23.i.7.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i.7.i = add i16 %945, 2300
  br label %ath5k_eeprom_bin2freq.exit.7.i

ath5k_eeprom_bin2freq.exit.7.i:                   ; preds = %if.then28.i.7.i, %if.else32.i.7.i, %if.then8.i.7.i, %if.else.i.7.i, %ath5k_eeprom_bin2freq.exit.6.i.ath5k_eeprom_bin2freq.exit.7.i_crit_edge
  %retval.0.i.7.i = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.6.i.ath5k_eeprom_bin2freq.exit.7.i_crit_edge ], [ %add.i.7.i, %if.then8.i.7.i ], [ %cond.i.7.i, %if.else.i.7.i ], [ %add30.i.7.i, %if.then28.i.7.i ], [ %add34.i.7.i, %if.else32.i.7.i ]
  %950 = ptrtoint ptr %arrayidx321.7.i to i32
  call void @__asan_store2_noabort(i32 %950)
  store i16 %retval.0.i.7.i, ptr %arrayidx321.7.i, align 2
  br label %for.inc330.i

for.inc330.i:                                     ; preds = %ath5k_eeprom_bin2freq.exit.7.i, %if.then55.i
  %offset.7.i = phi i32 [ %offset.3.i, %if.then55.i ], [ %offset.6.i, %ath5k_eeprom_bin2freq.exit.7.i ]
  %rep.1.i = getelementptr %struct.ath5k_edge_power, ptr %rep.0496.i, i32 8
  %inc331.i = add nuw nsw i32 %i.1499.i, 1
  %951 = ptrtoint ptr %ee_ctls.i to i32
  call void @__asan_load1_noabort(i32 %951)
  %952 = load i8, ptr %ee_ctls.i, align 4
  %conv42.i = zext i8 %952 to i32
  %cmp43.i = icmp ult i32 %inc331.i, %conv42.i
  br i1 %cmp43.i, label %for.inc330.i.for.body45.i_crit_edge, label %for.inc330.i.if.end12_crit_edge

for.inc330.i.if.end12_crit_edge:                  ; preds = %for.inc330.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.inc330.i.for.body45.i_crit_edge:              ; preds = %for.inc330.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45.i

ath5k_eeprom_read_ctl_info.exit.thread:           ; preds = %do.end276.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end250.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end217.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end190.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end164.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end140.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.body134.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end106.2.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end106.1.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end106.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end81.3.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end81.2.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end81.1.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.end81.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.body75.preheader.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge, %do.body.i.ath5k_eeprom_read_ctl_info.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i63) #6
  br label %cleanup

if.end12:                                         ; preds = %for.inc330.i.if.end12_crit_edge, %if.end39.i.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i63) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i79) #6
  %953 = ptrtoint ptr %val.i79 to i32
  call void @__asan_store2_noabort(i32 %953)
  store i16 -1, ptr %val.i79, align 2, !annotation !25
  %954 = ptrtoint ptr %ee_version.i to i32
  call void @__asan_load2_noabort(i32 %954)
  %955 = load i16, ptr %ee_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20483, i16 %955)
  %cmp9.i = icmp ult i16 %955, 20483
  br i1 %cmp9.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end12
  %956 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.i82 = getelementptr inbounds %struct.ath_bus_ops, ptr %957, i32 0, i32 2
  %958 = ptrtoint ptr %eeprom_read.i.i82 to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %eeprom_read.i.i82, align 4
  %call1.i.i83 = call zeroext i1 %959(ptr noundef %ah, i32 noundef 328, ptr noundef nonnull %val.i79) #6
  br i1 %call1.i.i83, label %do.end.i84, label %for.cond.preheader.i._crit_edge

for.cond.preheader.i._crit_edge:                  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %1030

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %ee_spur_chans.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62
  %960 = ptrtoint ptr %ee_spur_chans.i to i32
  call void @__asan_store2_noabort(i32 %960)
  store i16 -32768, ptr %ee_spur_chans.i, align 2
  %arrayidx14.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 0, i32 1
  %961 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %961)
  store i16 1640, ptr %arrayidx14.i, align 2
  %arrayidx17.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 1, i32 1
  %962 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store2_noabort(i32 %962)
  store i16 1200, ptr %arrayidx17.i, align 2
  %arrayidx20.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 2, i32 1
  %963 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store2_noabort(i32 %963)
  store i16 -32768, ptr %arrayidx20.i, align 2
  br label %ath5k_eeprom_read_spur_chans.exit

do.end.i84:                                       ; preds = %for.cond.preheader.i
  %964 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load2_noabort(i32 %964)
  %965 = load i16, ptr %val.i79, align 2
  %arrayidx30.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 0
  %966 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %966)
  store i16 %965, ptr %arrayidx30.i, align 2
  %967 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i65.i = getelementptr inbounds %struct.ath_bus_ops, ptr %968, i32 0, i32 2
  %969 = ptrtoint ptr %eeprom_read.i65.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %eeprom_read.i65.i, align 4
  %call1.i66.i = call zeroext i1 %970(ptr noundef %ah, i32 noundef 333, ptr noundef nonnull %val.i79) #6
  br i1 %call1.i66.i, label %do.end38.i, label %do.end.i84._crit_edge

do.end.i84._crit_edge:                            ; preds = %do.end.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %1030

do.end38.i:                                       ; preds = %do.end.i84
  %971 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load2_noabort(i32 %971)
  %972 = load i16, ptr %val.i79, align 2
  %arrayidx41.i85 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 0, i32 1
  %973 = ptrtoint ptr %arrayidx41.i85 to i32
  call void @__asan_store2_noabort(i32 %973)
  store i16 %972, ptr %arrayidx41.i85, align 2
  %974 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.1.i = getelementptr inbounds %struct.ath_bus_ops, ptr %975, i32 0, i32 2
  %976 = ptrtoint ptr %eeprom_read.i.1.i to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %eeprom_read.i.1.i, align 4
  %call1.i.1.i = call zeroext i1 %977(ptr noundef %ah, i32 noundef 329, ptr noundef nonnull %val.i79) #6
  br i1 %call1.i.1.i, label %do.end.1.i, label %do.end38.i._crit_edge

do.end38.i._crit_edge:                            ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %1030

do.end.1.i:                                       ; preds = %do.end38.i
  %978 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load2_noabort(i32 %978)
  %979 = load i16, ptr %val.i79, align 2
  %arrayidx30.1.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 1
  %980 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_store2_noabort(i32 %980)
  store i16 %979, ptr %arrayidx30.1.i, align 2
  %981 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i65.1.i = getelementptr inbounds %struct.ath_bus_ops, ptr %982, i32 0, i32 2
  %983 = ptrtoint ptr %eeprom_read.i65.1.i to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load ptr, ptr %eeprom_read.i65.1.i, align 4
  %call1.i66.1.i = call zeroext i1 %984(ptr noundef %ah, i32 noundef 334, ptr noundef nonnull %val.i79) #6
  br i1 %call1.i66.1.i, label %do.end38.1.i, label %do.end.1.i._crit_edge

do.end.1.i._crit_edge:                            ; preds = %do.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %1030

do.end38.1.i:                                     ; preds = %do.end.1.i
  %985 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load2_noabort(i32 %985)
  %986 = load i16, ptr %val.i79, align 2
  %arrayidx41.1.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 1, i32 1
  %987 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_store2_noabort(i32 %987)
  store i16 %986, ptr %arrayidx41.1.i, align 2
  %988 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %988)
  %989 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.2.i = getelementptr inbounds %struct.ath_bus_ops, ptr %989, i32 0, i32 2
  %990 = ptrtoint ptr %eeprom_read.i.2.i to i32
  call void @__asan_load4_noabort(i32 %990)
  %991 = load ptr, ptr %eeprom_read.i.2.i, align 4
  %call1.i.2.i = call zeroext i1 %991(ptr noundef %ah, i32 noundef 330, ptr noundef nonnull %val.i79) #6
  br i1 %call1.i.2.i, label %do.end.2.i, label %do.end38.1.i._crit_edge

do.end38.1.i._crit_edge:                          ; preds = %do.end38.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %1030

do.end.2.i:                                       ; preds = %do.end38.1.i
  %992 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load2_noabort(i32 %992)
  %993 = load i16, ptr %val.i79, align 2
  %arrayidx30.2.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 2
  %994 = ptrtoint ptr %arrayidx30.2.i to i32
  call void @__asan_store2_noabort(i32 %994)
  store i16 %993, ptr %arrayidx30.2.i, align 2
  %995 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i65.2.i = getelementptr inbounds %struct.ath_bus_ops, ptr %996, i32 0, i32 2
  %997 = ptrtoint ptr %eeprom_read.i65.2.i to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %eeprom_read.i65.2.i, align 4
  %call1.i66.2.i = call zeroext i1 %998(ptr noundef %ah, i32 noundef 335, ptr noundef nonnull %val.i79) #6
  br i1 %call1.i66.2.i, label %do.end38.2.i, label %do.end.2.i._crit_edge

do.end.2.i._crit_edge:                            ; preds = %do.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %1030

do.end38.2.i:                                     ; preds = %do.end.2.i
  %999 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load2_noabort(i32 %999)
  %1000 = load i16, ptr %val.i79, align 2
  %arrayidx41.2.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 2, i32 1
  %1001 = ptrtoint ptr %arrayidx41.2.i to i32
  call void @__asan_store2_noabort(i32 %1001)
  store i16 %1000, ptr %arrayidx41.2.i, align 2
  %1002 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.3.i = getelementptr inbounds %struct.ath_bus_ops, ptr %1003, i32 0, i32 2
  %1004 = ptrtoint ptr %eeprom_read.i.3.i to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %eeprom_read.i.3.i, align 4
  %call1.i.3.i = call zeroext i1 %1005(ptr noundef %ah, i32 noundef 331, ptr noundef nonnull %val.i79) #6
  br i1 %call1.i.3.i, label %do.end.3.i, label %do.end38.2.i._crit_edge

do.end38.2.i._crit_edge:                          ; preds = %do.end38.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %1030

do.end.3.i:                                       ; preds = %do.end38.2.i
  %1006 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load2_noabort(i32 %1006)
  %1007 = load i16, ptr %val.i79, align 2
  %arrayidx30.3.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 3
  %1008 = ptrtoint ptr %arrayidx30.3.i to i32
  call void @__asan_store2_noabort(i32 %1008)
  store i16 %1007, ptr %arrayidx30.3.i, align 2
  %1009 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i65.3.i = getelementptr inbounds %struct.ath_bus_ops, ptr %1010, i32 0, i32 2
  %1011 = ptrtoint ptr %eeprom_read.i65.3.i to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load ptr, ptr %eeprom_read.i65.3.i, align 4
  %call1.i66.3.i = call zeroext i1 %1012(ptr noundef %ah, i32 noundef 336, ptr noundef nonnull %val.i79) #6
  br i1 %call1.i66.3.i, label %do.end38.3.i, label %do.end.3.i._crit_edge

do.end.3.i._crit_edge:                            ; preds = %do.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %1030

do.end38.3.i:                                     ; preds = %do.end.3.i
  %1013 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load2_noabort(i32 %1013)
  %1014 = load i16, ptr %val.i79, align 2
  %arrayidx41.3.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 3, i32 1
  %1015 = ptrtoint ptr %arrayidx41.3.i to i32
  call void @__asan_store2_noabort(i32 %1015)
  store i16 %1014, ptr %arrayidx41.3.i, align 2
  %1016 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.4.i = getelementptr inbounds %struct.ath_bus_ops, ptr %1017, i32 0, i32 2
  %1018 = ptrtoint ptr %eeprom_read.i.4.i to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %eeprom_read.i.4.i, align 4
  %call1.i.4.i = call zeroext i1 %1019(ptr noundef %ah, i32 noundef 332, ptr noundef nonnull %val.i79) #6
  br i1 %call1.i.4.i, label %do.end.4.i, label %do.end38.3.i._crit_edge

do.end38.3.i._crit_edge:                          ; preds = %do.end38.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %1030

do.end.4.i:                                       ; preds = %do.end38.3.i
  %1020 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load2_noabort(i32 %1020)
  %1021 = load i16, ptr %val.i79, align 2
  %arrayidx30.4.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 4
  %1022 = ptrtoint ptr %arrayidx30.4.i to i32
  call void @__asan_store2_noabort(i32 %1022)
  store i16 %1021, ptr %arrayidx30.4.i, align 2
  %1023 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1023)
  %1024 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i65.4.i = getelementptr inbounds %struct.ath_bus_ops, ptr %1024, i32 0, i32 2
  %1025 = ptrtoint ptr %eeprom_read.i65.4.i to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load ptr, ptr %eeprom_read.i65.4.i, align 4
  %call1.i66.4.i = call zeroext i1 %1026(ptr noundef %ah, i32 noundef 337, ptr noundef nonnull %val.i79) #6
  br i1 %call1.i66.4.i, label %do.end38.4.i, label %do.end.4.i._crit_edge

do.end.4.i._crit_edge:                            ; preds = %do.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %1030

do.end38.4.i:                                     ; preds = %do.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %1027 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load2_noabort(i32 %1027)
  %1028 = load i16, ptr %val.i79, align 2
  %arrayidx41.4.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 62, i32 4, i32 1
  %1029 = ptrtoint ptr %arrayidx41.4.i to i32
  call void @__asan_store2_noabort(i32 %1029)
  store i16 %1028, ptr %arrayidx41.4.i, align 2
  br label %ath5k_eeprom_read_spur_chans.exit

ath5k_eeprom_read_spur_chans.exit:                ; preds = %do.end38.4.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i79) #6
  br label %cleanup

1030:                                             ; preds = %do.end.4.i._crit_edge, %do.end38.3.i._crit_edge, %do.end.3.i._crit_edge, %do.end38.2.i._crit_edge, %do.end.2.i._crit_edge, %do.end38.1.i._crit_edge, %do.end.1.i._crit_edge, %do.end38.i._crit_edge, %do.end.i84._crit_edge, %for.cond.preheader.i._crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i79) #6
  br label %cleanup

cleanup:                                          ; preds = %1030, %ath5k_eeprom_read_spur_chans.exit, %ath5k_eeprom_read_ctl_info.exit.thread, %ath5k_eeprom_read_pcal_info.exit.cleanup_crit_edge, %ath5k_eeprom_read_pcal_info.exit.thread, %ath5k_eeprom_init_modes.exit.thread, %ath5k_eeprom_init_header.exit.thread
  %retval.0 = phi i32 [ %call.i, %ath5k_eeprom_read_pcal_info.exit.cleanup_crit_edge ], [ -5, %ath5k_eeprom_init_header.exit.thread ], [ -5, %ath5k_eeprom_init_modes.exit.thread ], [ %retval.0.i.ph.i, %ath5k_eeprom_read_pcal_info.exit.thread ], [ -5, %ath5k_eeprom_read_ctl_info.exit.thread ], [ -5, %1030 ], [ 0, %ath5k_eeprom_read_spur_chans.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_eeprom_detach(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath5k_eeprom_free_pcal_info(ptr noundef %ah, i32 noundef 0)
  tail call fastcc void @ath5k_eeprom_free_pcal_info(ptr noundef %ah, i32 noundef 1)
  tail call fastcc void @ath5k_eeprom_free_pcal_info(ptr noundef %ah, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_eeprom_free_pcal_info(ptr nocapture noundef readonly %ah, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %ee_header = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %1 = ptrtoint ptr %ee_header to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ee_header, align 4
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %ee_pwr_cal_a = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %ee_header2 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %4 = ptrtoint ptr %ee_header2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ee_header2, align 4
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool6.not = icmp eq i16 %6, 0
  br i1 %tobool6.not, label %sw.bb1.cleanup_crit_edge, label %if.end8

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %ee_pwr_cal_b = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 47
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %ee_header11 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %7 = ptrtoint ptr %ee_header11 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ee_header11, align 4
  %9 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool15.not = icmp eq i16 %9, 0
  br i1 %tobool15.not, label %sw.bb10.cleanup_crit_edge, label %if.end17

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %ee_pwr_cal_g = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 48
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end17, %if.end8, %if.end
  %chinfo.0 = phi ptr [ %ee_pwr_cal_g, %if.end17 ], [ %ee_pwr_cal_b, %if.end8 ], [ %ee_pwr_cal_a, %if.end ]
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45, i32 %mode
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp2.not = icmp eq i8 %11, 0
  br i1 %cmp2.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc39.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc39.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %pd_curves = getelementptr %struct.ath5k_chan_pcal_info, ptr %chinfo.0, i32 %indvars.iv, i32 4
  %12 = ptrtoint ptr %pd_curves to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pd_curves, align 4
  %tobool23.not = icmp eq ptr %13, null
  br i1 %tobool23.not, label %for.body.for.inc39_crit_edge, label %for.body30.preheader

for.body.for.inc39_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc39

for.body30.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %pd_curves to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pd_curves, align 4
  %pd_step = getelementptr %struct.ath5k_pdgain_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pd_step to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pd_step, align 4
  tail call void @kfree(ptr noundef %17) #6
  %pd_pwr = getelementptr %struct.ath5k_pdgain_info, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %pd_pwr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pd_pwr, align 4
  tail call void @kfree(ptr noundef %19) #6
  %20 = ptrtoint ptr %pd_curves to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pd_curves, align 4
  %pd_step.1 = getelementptr %struct.ath5k_pdgain_info, ptr %21, i32 1, i32 1
  %22 = ptrtoint ptr %pd_step.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pd_step.1, align 4
  tail call void @kfree(ptr noundef %23) #6
  %pd_pwr.1 = getelementptr %struct.ath5k_pdgain_info, ptr %21, i32 1, i32 2
  %24 = ptrtoint ptr %pd_pwr.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pd_pwr.1, align 4
  tail call void @kfree(ptr noundef %25) #6
  %26 = ptrtoint ptr %pd_curves to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pd_curves, align 4
  %pd_step.2 = getelementptr %struct.ath5k_pdgain_info, ptr %27, i32 2, i32 1
  %28 = ptrtoint ptr %pd_step.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pd_step.2, align 4
  tail call void @kfree(ptr noundef %29) #6
  %pd_pwr.2 = getelementptr %struct.ath5k_pdgain_info, ptr %27, i32 2, i32 2
  %30 = ptrtoint ptr %pd_pwr.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pd_pwr.2, align 4
  tail call void @kfree(ptr noundef %31) #6
  %32 = ptrtoint ptr %pd_curves to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pd_curves, align 4
  %pd_step.3 = getelementptr %struct.ath5k_pdgain_info, ptr %33, i32 3, i32 1
  %34 = ptrtoint ptr %pd_step.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pd_step.3, align 4
  tail call void @kfree(ptr noundef %35) #6
  %pd_pwr.3 = getelementptr %struct.ath5k_pdgain_info, ptr %33, i32 3, i32 2
  %36 = ptrtoint ptr %pd_pwr.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pd_pwr.3, align 4
  tail call void @kfree(ptr noundef %37) #6
  %38 = ptrtoint ptr %pd_curves to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pd_curves, align 4
  tail call void @kfree(ptr noundef %39) #6
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30.preheader, %for.body.for.inc39_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %42 = zext i8 %41 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %42
  br i1 %cmp, label %for.inc39.for.body_crit_edge, label %for.inc39.cleanup_crit_edge

for.inc39.cleanup_crit_edge:                      ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc39.for.body_crit_edge:                     ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc39.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_eeprom_mode_from_channel(ptr noundef %ah, ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %0 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %2 = icmp ult i16 %1, 3
  br i1 %2, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %if.then

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast = zext i16 %1 to i32
  br label %return

return:                                           ; preds = %switch.lookup, %if.then, %do.body.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body.return_crit_edge ], [ 0, %if.then ], [ %switch.idx.cast, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_eeprom_read_pcal_info_5112(ptr noundef %ah, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 44, i32 %mode
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !25
  %arrayidx2 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 36, i32 %mode
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx2, align 2
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %pd_gains.1 = phi i8 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx2, align 2
  %7 = and i16 %6, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.1 = icmp eq i16 %7, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %inc.1 = add nuw nsw i8 %pd_gains.1, 1
  %idxprom.1 = zext i8 %pd_gains.1 to i32
  %arrayidx5.1 = getelementptr i8, ptr %arrayidx, i32 %idxprom.1
  %8 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx5.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %pd_gains.1.1 = phi i8 [ %inc.1, %if.then.1 ], [ %pd_gains.1, %for.inc.for.inc.1_crit_edge ]
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx2, align 2
  %11 = and i16 %10, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.2 = icmp eq i16 %11, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %inc.2 = add nuw nsw i8 %pd_gains.1.1, 1
  %idxprom.2 = zext i8 %pd_gains.1.1 to i32
  %arrayidx5.2 = getelementptr i8, ptr %arrayidx, i32 %idxprom.2
  %12 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %arrayidx5.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %pd_gains.1.2 = phi i8 [ %inc.2, %if.then.2 ], [ %pd_gains.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx2, align 2
  %15 = and i16 %14, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.3 = icmp eq i16 %15, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %inc.3 = add nuw nsw i8 %pd_gains.1.2, 1
  %idxprom.3 = zext i8 %pd_gains.1.2 to i32
  %arrayidx5.3 = getelementptr i8, ptr %arrayidx, i32 %idxprom.3
  %16 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %arrayidx5.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %pd_gains.1.3 = phi i8 [ %inc.3, %if.then.3 ], [ %pd_gains.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx7 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 43, i32 %mode
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %pd_gains.1.3, ptr %arrayidx7, align 1
  %18 = add nsw i8 %pd_gains.1.3, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %18)
  %19 = icmp ult i8 %18, -2
  br i1 %19, label %for.inc.3.cleanup_crit_edge, label %if.end15

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %for.inc.3
  %20 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %mode, label %if.end15.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb34
  ]

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %ee_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  %21 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %22)
  %cmp17 = icmp ugt i16 %22, 12290
  %cond = select i1 %cmp17, i32 336, i32 256
  %call = tail call fastcc i32 @ath5k_eeprom_init_11a_pcal_freq(ptr noundef %ah, i32 noundef %cond)
  %add = or i32 %cond, 5
  %ee_pwr_cal_a = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %ee_version21 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  %23 = ptrtoint ptr %ee_version21 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ee_version21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %24)
  %cmp23 = icmp ugt i16 %24, 12290
  %cond25 = select i1 %cmp23, i32 336, i32 256
  %ee_header = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %25 = ptrtoint ptr %ee_header to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ee_header, align 4
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool29.not = icmp eq i16 %27, 0
  %add31 = add nuw nsw i32 %cond25, 55
  %spec.select = select i1 %tobool29.not, i32 %cond25, i32 %add31
  %ee_pwr_cal_b = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 47
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end15
  %ee_version35 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  %28 = ptrtoint ptr %ee_version35 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ee_version35, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %29)
  %cmp37 = icmp ugt i16 %29, 12290
  %cond39 = select i1 %cmp37, i32 336, i32 256
  %ee_header40 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %30 = ptrtoint ptr %ee_header40 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ee_header40, align 4
  %conv41 = zext i16 %31 to i32
  %and43 = and i32 %conv41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  %add46 = add nuw nsw i32 %cond39, 70
  br label %if.end55

if.else:                                          ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  %32 = and i32 %conv41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool51.not = icmp eq i32 %32, 0
  %add53 = or i32 %cond39, 5
  %spec.select250 = select i1 %tobool51.not, i32 %cond39, i32 %add53
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then45
  %offset.1 = phi i32 [ %add46, %if.then45 ], [ %spec.select250, %if.else ]
  %ee_pwr_cal_g = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 48
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end55, %sw.bb20, %sw.bb
  %gen_chan_info.0 = phi ptr [ %ee_pwr_cal_g, %if.end55 ], [ %ee_pwr_cal_b, %sw.bb20 ], [ %ee_pwr_cal_a, %sw.bb ]
  %offset.2 = phi i32 [ %offset.1, %if.end55 ], [ %spec.select, %sw.bb20 ], [ %add, %sw.bb ]
  %arrayidx59 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45, i32 %mode
  %33 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp61274.not = icmp eq i8 %34, 0
  br i1 %cmp61274.not, label %sw.epilog.cleanup_crit_edge, label %for.body63.lr.ph

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body63.lr.ph:                                 ; preds = %sw.epilog
  %bus_ops.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 25
  %ee_version148 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  br label %for.body63

for.body63:                                       ; preds = %for.inc176.for.body63_crit_edge, %for.body63.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body63.lr.ph ], [ %indvars.iv.next, %for.inc176.for.body63_crit_edge ]
  %offset.3275 = phi i32 [ %offset.2, %for.body63.lr.ph ], [ %inc132, %for.inc176.for.body63_crit_edge ]
  %35 = getelementptr %struct.ath5k_chan_pcal_info, ptr %gen_chan_info.0, i32 %indvars.iv, i32 3
  %36 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i = getelementptr inbounds %struct.ath_bus_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %eeprom_read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eeprom_read.i, align 4
  %call1.i = call zeroext i1 %39(ptr noundef %ah, i32 noundef %offset.3275, ptr noundef nonnull %val) #6
  br i1 %call1.i, label %do.end, label %for.body63.cleanup_crit_edge

for.body63.cleanup_crit_edge:                     ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.body63
  %inc71 = add nuw nsw i32 %offset.3275, 1
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %val, align 2
  %conv77 = trunc i16 %41 to i8
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv77, ptr %35, align 1
  %43 = lshr i16 %41, 8
  %conv83 = trunc i16 %43 to i8
  %arrayidx87 = getelementptr [4 x i8], ptr %35, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv83, ptr %arrayidx87, align 1
  %45 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i.1 = getelementptr inbounds %struct.ath_bus_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %eeprom_read.i.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %eeprom_read.i.1, align 4
  %call1.i.1 = call zeroext i1 %48(ptr noundef %ah, i32 noundef %inc71, ptr noundef nonnull %val) #6
  br i1 %call1.i.1, label %do.end.1, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.1:                                         ; preds = %do.end
  %inc71.1 = add nuw nsw i32 %offset.3275, 2
  %49 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %val, align 2
  %conv77.1 = trunc i16 %50 to i8
  %arrayidx79.1 = getelementptr [4 x i8], ptr %35, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx79.1 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv77.1, ptr %arrayidx79.1, align 1
  %52 = lshr i16 %50, 8
  %conv83.1 = trunc i16 %52 to i8
  %arrayidx87.1 = getelementptr [4 x i8], ptr %35, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv83.1, ptr %arrayidx87.1, align 1
  %54 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i252 = getelementptr inbounds %struct.ath_bus_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %eeprom_read.i252 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %eeprom_read.i252, align 4
  %call1.i253 = call zeroext i1 %57(ptr noundef %ah, i32 noundef %inc71.1, ptr noundef nonnull %val) #6
  br i1 %call1.i253, label %do.end97, label %do.end.1.cleanup_crit_edge

do.end.1.cleanup_crit_edge:                       ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end97:                                         ; preds = %do.end.1
  %inc92 = add nuw nsw i32 %offset.3275, 3
  %58 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %val, align 2
  %60 = trunc i16 %59 to i8
  %conv100 = and i8 %60, 31
  %pcdac_x0 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, ptr %35, i32 0, i32 2
  %arrayidx101 = getelementptr %struct.ath5k_chan_pcal_info_rf5112, ptr %35, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv100, ptr %arrayidx101, align 1
  %62 = lshr i16 %59, 5
  %63 = trunc i16 %62 to i8
  %conv105 = and i8 %63, 31
  %arrayidx107 = getelementptr %struct.ath5k_chan_pcal_info_rf5112, ptr %35, i32 0, i32 2, i32 2
  %64 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv105, ptr %arrayidx107, align 1
  %65 = lshr i16 %59, 10
  %66 = trunc i16 %65 to i8
  %conv111 = and i8 %66, 31
  %arrayidx113 = getelementptr %struct.ath5k_chan_pcal_info_rf5112, ptr %35, i32 0, i32 2, i32 3
  %67 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv111, ptr %arrayidx113, align 1
  %68 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i255 = getelementptr inbounds %struct.ath_bus_ops, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %eeprom_read.i255 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %eeprom_read.i255, align 4
  %call1.i256 = call zeroext i1 %71(ptr noundef %ah, i32 noundef %inc92, ptr noundef nonnull %val) #6
  br i1 %call1.i256, label %do.end120, label %do.end97.cleanup_crit_edge

do.end97.cleanup_crit_edge:                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end120:                                        ; preds = %do.end97
  %inc115 = add nuw nsw i32 %offset.3275, 4
  %72 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %val, align 2
  %conv123 = trunc i16 %73 to i8
  %pwr_x3 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, ptr %35, i32 0, i32 1
  %74 = ptrtoint ptr %pwr_x3 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv123, ptr %pwr_x3, align 1
  %75 = lshr i16 %73, 8
  %conv128 = trunc i16 %75 to i8
  %arrayidx130 = getelementptr %struct.ath5k_chan_pcal_info_rf5112, ptr %35, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv128, ptr %arrayidx130, align 1
  %inc132 = add nuw nsw i32 %offset.3275, 5
  %77 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i258 = getelementptr inbounds %struct.ath_bus_ops, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %eeprom_read.i258 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %eeprom_read.i258, align 4
  %call1.i259 = call zeroext i1 %80(ptr noundef %ah, i32 noundef %inc115, ptr noundef nonnull %val) #6
  br i1 %call1.i259, label %do.end137, label %do.end120.cleanup_crit_edge

do.end120.cleanup_crit_edge:                      ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end137:                                        ; preds = %do.end120
  %81 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %val, align 2
  %conv140 = trunc i16 %82 to i8
  %arrayidx142 = getelementptr %struct.ath5k_chan_pcal_info_rf5112, ptr %35, i32 0, i32 1, i32 2
  %83 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv140, ptr %arrayidx142, align 1
  %pcdac_x3 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, ptr %35, i32 0, i32 3
  %84 = ptrtoint ptr %pcdac_x3 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 20, ptr %pcdac_x3, align 1
  %arrayidx145 = getelementptr %struct.ath5k_chan_pcal_info_rf5112, ptr %35, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 35, ptr %arrayidx145, align 1
  %arrayidx147 = getelementptr %struct.ath5k_chan_pcal_info_rf5112, ptr %35, i32 0, i32 3, i32 2
  %86 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 63, ptr %arrayidx147, align 1
  %87 = ptrtoint ptr %ee_version148 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %ee_version148, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16386, i16 %88)
  %cmp150 = icmp ugt i16 %88, 16386
  br i1 %cmp150, label %if.then152, label %if.else164

if.then152:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #8
  %89 = lshr i16 %82, 8
  %90 = trunc i16 %89 to i8
  %conv156 = and i8 %90, 63
  %91 = ptrtoint ptr %pcdac_x0 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv156, ptr %pcdac_x0, align 1
  %92 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx87.1, align 1
  %conv161 = sext i8 %93 to i16
  br label %for.inc176

if.else164:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %pcdac_x0 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %pcdac_x0, align 1
  %conv171 = ashr i16 %82, 8
  br label %for.inc176

for.inc176:                                       ; preds = %if.else164, %if.then152
  %conv171.sink = phi i16 [ %conv161, %if.then152 ], [ %conv171, %if.else164 ]
  %95 = getelementptr %struct.ath5k_chan_pcal_info, ptr %gen_chan_info.0, i32 %indvars.iv, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv171.sink, ptr %95, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %97 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx59, align 1
  %99 = zext i8 %98 to i32
  %cmp61 = icmp ult i32 %indvars.iv.next, %99
  br i1 %cmp61, label %for.inc176.for.body63_crit_edge, label %for.end178

for.inc176.for.body63_crit_edge:                  ; preds = %for.inc176
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body63

for.end178:                                       ; preds = %for.inc176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %phi.cmp = icmp eq i8 %98, 0
  br i1 %phi.cmp, label %for.end178.cleanup_crit_edge, label %for.end178.for.body.i_crit_edge

for.end178.for.body.i_crit_edge:                  ; preds = %for.end178
  br label %for.body.i

for.end178.cleanup_crit_edge:                     ; preds = %for.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc110.i.for.body.i_crit_edge, %for.end178.for.body.i_crit_edge
  %pier.0253.i = phi i32 [ %inc111.i, %for.inc110.i.for.body.i_crit_edge ], [ 0, %for.end178.for.body.i_crit_edge ]
  %100 = getelementptr %struct.ath5k_chan_pcal_info, ptr %gen_chan_info.0, i32 %pier.0253.i, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %101 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %101, i32 noundef 3520, i32 noundef 48) #9
  %pd_curves.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %gen_chan_info.0, i32 %pier.0253.i, i32 4
  %102 = ptrtoint ptr %pd_curves.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call7.i.i.i.i, ptr %pd_curves.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %for.body.i.err_out.i_crit_edge, label %for.cond7.preheader.i

for.body.i.err_out.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

for.cond7.preheader.i:                            ; preds = %for.body.i
  %103 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp10249.not.i = icmp eq i8 %104, 0
  br i1 %cmp10249.not.i, label %for.cond7.preheader.i.for.inc110.i_crit_edge, label %for.body12.lr.ph.i

for.cond7.preheader.i.for.inc110.i_crit_edge:     ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc110.i

for.body12.lr.ph.i:                               ; preds = %for.cond7.preheader.i
  %min_pwr103.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %gen_chan_info.0, i32 %pier.0253.i, i32 2
  %pcdac_x0.i = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, ptr %100, i32 0, i32 2
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc107.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %pdg.0250.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc108.i, %for.inc107.i.for.body12.i_crit_edge ]
  %arrayidx13.i = getelementptr i8, ptr %arrayidx, i32 %pdg.0250.i
  %105 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx13.i, align 1
  %107 = ptrtoint ptr %pd_curves.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pd_curves.i, align 4
  %idxprom.i = zext i8 %106 to i32
  %arrayidx16.i = getelementptr %struct.ath5k_pdgain_info, ptr %108, i32 %idxprom.i
  %109 = zext i32 %pdg.0250.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %pdg.0250.i, label %for.body12.i.for.inc107.i_crit_edge [
    i32 0, label %if.then19.i
    i32 1, label %if.then66.i
  ]

for.body12.i.for.inc107.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc107.i

if.then19.i:                                      ; preds = %for.body12.i
  %110 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 4, ptr %arrayidx16.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %111 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i183.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %111, i32 noundef 3520, i32 noundef 4) #9
  %pd_step.i = getelementptr %struct.ath5k_pdgain_info, ptr %108, i32 %idxprom.i, i32 1
  %112 = ptrtoint ptr %pd_step.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call7.i.i.i183.i, ptr %pd_step.i, align 4
  %tobool24.not.i = icmp eq ptr %call7.i.i.i183.i, null
  br i1 %tobool24.not.i, label %if.then19.i.err_out.i_crit_edge, label %if.end7.i.i.i

if.then19.i.err_out.i_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

if.end7.i.i.i:                                    ; preds = %if.then19.i
  %113 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx16.i, align 4
  %conv28.i = zext i8 %114 to i32
  %115 = shl nuw nsw i32 %conv28.i, 1
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %115, i32 noundef 3520) #10
  %pd_pwr.i = getelementptr %struct.ath5k_pdgain_info, ptr %108, i32 %idxprom.i, i32 2
  %116 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call8.i.i.i, ptr %pd_pwr.i, align 4
  %tobool31.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool31.not.i, label %if.end7.i.i.i.err_out.i_crit_edge, label %if.end33.i

if.end7.i.i.i.err_out.i_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

if.end33.i:                                       ; preds = %if.end7.i.i.i
  %117 = ptrtoint ptr %pcdac_x0.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %pcdac_x0.i, align 1
  %119 = ptrtoint ptr %pd_step.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pd_step.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %118, ptr %120, align 1
  %122 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %100, align 1
  %conv38.i = sext i8 %123 to i16
  %124 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pd_pwr.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv38.i, ptr %125, align 2
  %127 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %128)
  %cmp44246.i = icmp ugt i8 %128, 1
  br i1 %cmp44246.i, label %if.end33.i.for.body46.i_crit_edge, label %if.end33.i.for.inc107.sink.split.i_crit_edge

if.end33.i.for.inc107.sink.split.i_crit_edge:     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc107.sink.split.i

if.end33.i.for.body46.i_crit_edge:                ; preds = %if.end33.i
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.body46.i.for.body46.i_crit_edge, %if.end33.i.for.body46.i_crit_edge
  %point.0247.i = phi i32 [ %inc.i, %for.body46.i.for.body46.i_crit_edge ], [ 1, %if.end33.i.for.body46.i_crit_edge ]
  %arrayidx48.i = getelementptr [4 x i8], ptr %100, i32 0, i32 %point.0247.i
  %129 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = sext i8 %130 to i16
  %131 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pd_pwr.i, align 4
  %arrayidx51.i = getelementptr i16, ptr %132, i32 %point.0247.i
  %133 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv49.i, ptr %arrayidx51.i, align 2
  %134 = ptrtoint ptr %pd_step.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pd_step.i, align 4
  %sub.i = add nsw i32 %point.0247.i, -1
  %arrayidx53.i = getelementptr i8, ptr %135, i32 %sub.i
  %136 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx53.i, align 1
  %arrayidx56.i = getelementptr %struct.ath5k_chan_pcal_info_rf5112, ptr %100, i32 0, i32 2, i32 %point.0247.i
  %138 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx56.i, align 1
  %add.i = add i8 %139, %137
  %arrayidx60.i = getelementptr i8, ptr %135, i32 %point.0247.i
  %140 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %add.i, ptr %arrayidx60.i, align 1
  %inc.i = add nuw nsw i32 %point.0247.i, 1
  %141 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx16.i, align 4
  %conv43.i = zext i8 %142 to i32
  %cmp44.i = icmp ult i32 %inc.i, %conv43.i
  br i1 %cmp44.i, label %for.body46.i.for.body46.i_crit_edge, label %for.body46.i.for.inc107.sink.split.i_crit_edge

for.body46.i.for.inc107.sink.split.i_crit_edge:   ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc107.sink.split.i

for.body46.i.for.body46.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46.i

if.then66.i:                                      ; preds = %for.body12.i
  %143 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 3, ptr %arrayidx16.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %144 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i192.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %144, i32 noundef 3520, i32 noundef 3) #9
  %pd_step71.i = getelementptr %struct.ath5k_pdgain_info, ptr %108, i32 %idxprom.i, i32 1
  %145 = ptrtoint ptr %pd_step71.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call7.i.i.i192.i, ptr %pd_step71.i, align 4
  %tobool73.not.i = icmp eq ptr %call7.i.i.i192.i, null
  br i1 %tobool73.not.i, label %if.then66.i.err_out.i_crit_edge, label %if.end7.i.i225.i

if.then66.i.err_out.i_crit_edge:                  ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

if.end7.i.i225.i:                                 ; preds = %if.then66.i
  %146 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx16.i, align 4
  %conv77.i = zext i8 %147 to i32
  %148 = shl nuw nsw i32 %conv77.i, 1
  %call8.i.i224.i = call noalias align 128 ptr @__kmalloc(i32 noundef %148, i32 noundef 3520) #10
  %pd_pwr79.i = getelementptr %struct.ath5k_pdgain_info, ptr %108, i32 %idxprom.i, i32 2
  %149 = ptrtoint ptr %pd_pwr79.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call8.i.i224.i, ptr %pd_pwr79.i, align 4
  %tobool81.not.i = icmp eq ptr %call8.i.i224.i, null
  br i1 %tobool81.not.i, label %if.end7.i.i225.i.err_out.i_crit_edge, label %for.cond84.preheader.i

if.end7.i.i225.i.err_out.i_crit_edge:             ; preds = %if.end7.i.i225.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

for.cond84.preheader.i:                           ; preds = %if.end7.i.i225.i
  %150 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp87243.not.i = icmp eq i8 %151, 0
  br i1 %cmp87243.not.i, label %for.cond84.preheader.i.for.inc107.sink.split.i_crit_edge, label %for.cond84.preheader.i.for.body89.i_crit_edge

for.cond84.preheader.i.for.body89.i_crit_edge:    ; preds = %for.cond84.preheader.i
  br label %for.body89.i

for.cond84.preheader.i.for.inc107.sink.split.i_crit_edge: ; preds = %for.cond84.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc107.sink.split.i

for.body89.i:                                     ; preds = %for.body89.i.for.body89.i_crit_edge, %for.cond84.preheader.i.for.body89.i_crit_edge
  %point.1244.i = phi i32 [ %inc98.i, %for.body89.i.for.body89.i_crit_edge ], [ 0, %for.cond84.preheader.i.for.body89.i_crit_edge ]
  %arrayidx90.i = getelementptr %struct.ath5k_chan_pcal_info_rf5112, ptr %100, i32 0, i32 1, i32 %point.1244.i
  %152 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx90.i, align 1
  %conv91.i = sext i8 %153 to i16
  %154 = ptrtoint ptr %pd_pwr79.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pd_pwr79.i, align 4
  %arrayidx93.i = getelementptr i16, ptr %155, i32 %point.1244.i
  %156 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv91.i, ptr %arrayidx93.i, align 2
  %arrayidx94.i = getelementptr %struct.ath5k_chan_pcal_info_rf5112, ptr %100, i32 0, i32 3, i32 %point.1244.i
  %157 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx94.i, align 1
  %159 = ptrtoint ptr %pd_step71.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pd_step71.i, align 4
  %arrayidx96.i = getelementptr i8, ptr %160, i32 %point.1244.i
  %161 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %158, ptr %arrayidx96.i, align 1
  %inc98.i = add nuw nsw i32 %point.1244.i, 1
  %162 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx16.i, align 4
  %conv86.i = zext i8 %163 to i32
  %cmp87.i = icmp ult i32 %inc98.i, %conv86.i
  br i1 %cmp87.i, label %for.body89.i.for.body89.i_crit_edge, label %for.body89.i.for.inc107.sink.split.i_crit_edge

for.body89.i.for.inc107.sink.split.i_crit_edge:   ; preds = %for.body89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc107.sink.split.i

for.body89.i.for.body89.i_crit_edge:              ; preds = %for.body89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body89.i

for.inc107.sink.split.i:                          ; preds = %for.body89.i.for.inc107.sink.split.i_crit_edge, %for.cond84.preheader.i.for.inc107.sink.split.i_crit_edge, %for.body46.i.for.inc107.sink.split.i_crit_edge, %if.end33.i.for.inc107.sink.split.i_crit_edge
  %pd_pwr79259.sink.i = phi ptr [ %pd_pwr.i, %if.end33.i.for.inc107.sink.split.i_crit_edge ], [ %pd_pwr79.i, %for.cond84.preheader.i.for.inc107.sink.split.i_crit_edge ], [ %pd_pwr.i, %for.body46.i.for.inc107.sink.split.i_crit_edge ], [ %pd_pwr79.i, %for.body89.i.for.inc107.sink.split.i_crit_edge ]
  %164 = ptrtoint ptr %pd_pwr79259.sink.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pd_pwr79259.sink.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %165, align 2
  %168 = ptrtoint ptr %min_pwr103.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %min_pwr103.i, align 4
  br label %for.inc107.i

for.inc107.i:                                     ; preds = %for.inc107.sink.split.i, %for.body12.i.for.inc107.i_crit_edge
  %inc108.i = add nuw nsw i32 %pdg.0250.i, 1
  %169 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx7, align 1
  %conv9.i = zext i8 %170 to i32
  %cmp10.i = icmp ult i32 %inc108.i, %conv9.i
  br i1 %cmp10.i, label %for.inc107.i.for.body12.i_crit_edge, label %for.inc107.i.for.inc110.i_crit_edge

for.inc107.i.for.inc110.i_crit_edge:              ; preds = %for.inc107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc110.i

for.inc107.i.for.body12.i_crit_edge:              ; preds = %for.inc107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12.i

for.inc110.i:                                     ; preds = %for.inc107.i.for.inc110.i_crit_edge, %for.cond7.preheader.i.for.inc110.i_crit_edge
  %inc111.i = add nuw nsw i32 %pier.0253.i, 1
  %171 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx59, align 1
  %conv.i = zext i8 %172 to i32
  %cmp.i = icmp ult i32 %inc111.i, %conv.i
  br i1 %cmp.i, label %for.inc110.i.for.body.i_crit_edge, label %for.inc110.i.cleanup_crit_edge

for.inc110.i.cleanup_crit_edge:                   ; preds = %for.inc110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc110.i.for.body.i_crit_edge:                ; preds = %for.inc110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

err_out.i:                                        ; preds = %if.end7.i.i225.i.err_out.i_crit_edge, %if.then66.i.err_out.i_crit_edge, %if.end7.i.i.i.err_out.i_crit_edge, %if.then19.i.err_out.i_crit_edge, %for.body.i.err_out.i_crit_edge
  call fastcc void @ath5k_eeprom_free_pcal_info(ptr noundef %ah, i32 noundef %mode) #6
  br label %cleanup

cleanup:                                          ; preds = %err_out.i, %for.inc110.i.cleanup_crit_edge, %for.end178.cleanup_crit_edge, %do.end120.cleanup_crit_edge, %do.end97.cleanup_crit_edge, %do.end.1.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.body63.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.inc.3.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -12, %err_out.i ], [ 0, %for.end178.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %for.inc110.i.cleanup_crit_edge ], [ -5, %do.end.cleanup_crit_edge ], [ -5, %for.body63.cleanup_crit_edge ], [ -5, %do.end.1.cleanup_crit_edge ], [ -5, %do.end97.cleanup_crit_edge ], [ -5, %do.end120.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_eeprom_read_pcal_info_2413(ptr noundef %ah, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 44, i32 %mode
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !25
  %arrayidx1 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 36, i32 %mode
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx1, align 2
  %3 = and i16 %2, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %pd_gains.1 = phi i8 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx1, align 2
  %7 = and i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.1 = icmp eq i16 %7, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %inc.1 = add nuw nsw i8 %pd_gains.1, 1
  %idxprom.1 = zext i8 %pd_gains.1 to i32
  %arrayidx3.1 = getelementptr i8, ptr %arrayidx, i32 %idxprom.1
  %8 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayidx3.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %pd_gains.1.1 = phi i8 [ %inc.1, %if.then.1 ], [ %pd_gains.1, %for.inc.for.inc.1_crit_edge ]
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx1, align 2
  %11 = and i16 %10, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.2 = icmp eq i16 %11, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %inc.2 = add nuw nsw i8 %pd_gains.1.1, 1
  %idxprom.2 = zext i8 %pd_gains.1.1 to i32
  %arrayidx3.2 = getelementptr i8, ptr %arrayidx, i32 %idxprom.2
  %12 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx3.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %pd_gains.1.2 = phi i8 [ %inc.2, %if.then.2 ], [ %pd_gains.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %13 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx1, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.3 = icmp eq i16 %15, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.3.thread

for.inc.3.thread:                                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %inc.3 = add nuw nsw i8 %pd_gains.1.2, 1
  %idxprom.3 = zext i8 %pd_gains.1.2 to i32
  %arrayidx3.3 = getelementptr i8, ptr %arrayidx, i32 %idxprom.3
  %16 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx3.3, align 1
  %arrayidx4749 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 43, i32 %mode
  %17 = ptrtoint ptr %arrayidx4749 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %inc.3, ptr %arrayidx4749, align 1
  br label %if.end9

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx4 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 43, i32 %mode
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %pd_gains.1.2, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pd_gains.1.2)
  %cmp6 = icmp eq i8 %pd_gains.1.2, 0
  br i1 %cmp6, label %for.inc.3.cleanup_crit_edge, label %for.inc.3.if.end9_crit_edge

for.inc.3.if.end9_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %for.inc.3.if.end9_crit_edge, %for.inc.3.thread
  %arrayidx4752 = phi ptr [ %arrayidx4749, %for.inc.3.thread ], [ %arrayidx4, %for.inc.3.if.end9_crit_edge ]
  %pd_gains.1.3751 = phi i8 [ %inc.3, %for.inc.3.thread ], [ %pd_gains.1.2, %for.inc.3.if.end9_crit_edge ]
  %ee_misc4.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 14
  %19 = ptrtoint ptr %ee_misc4.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ee_misc4.i, align 4
  %21 = lshr i16 %20, 4
  %22 = zext i16 %21 to i32
  %23 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %mode, label %if.end9.ath5k_cal_data_offset_2413.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %if.end9.sw.bb5.i_crit_edge
  ]

if.end9.sw.bb5.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end9.ath5k_cal_data_offset_2413.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_cal_data_offset_2413.exit

sw.bb.i:                                          ; preds = %if.end9
  %ee_header.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %24 = ptrtoint ptr %ee_header.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ee_header.i, align 4
  %26 = and i16 %25, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i = icmp eq i16 %26, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.bb5.i_crit_edge, label %if.then.i

sw.bb.i.sw.bb5.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 43, i32 1
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %28 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %arrayidx1.i.i = getelementptr [4 x i32], ptr @ath5k_pdgains_size_2413.pdgains_size, i32 0, i32 %sub.i.i
  %29 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx1.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45, i32 1
  %31 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx2.i.i, align 1
  %conv3.i.i = zext i8 %32 to i32
  %mul.i.i = mul i32 %30, %conv3.i.i
  %add.i = add nuw nsw i32 %22, 2
  %add4.i = add i32 %add.i, %mul.i.i
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %if.then.i, %sw.bb.i.sw.bb5.i_crit_edge, %if.end9.sw.bb5.i_crit_edge
  %offset.0.i = phi i32 [ %22, %if.end9.sw.bb5.i_crit_edge ], [ %add4.i, %if.then.i ], [ %22, %sw.bb.i.sw.bb5.i_crit_edge ]
  %ee_header6.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %33 = ptrtoint ptr %ee_header6.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ee_header6.i, align 4
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool10.not.i = icmp eq i16 %35, 0
  br i1 %tobool10.not.i, label %sw.bb5.i.ath5k_cal_data_offset_2413.exit_crit_edge, label %if.then11.i

sw.bb5.i.ath5k_cal_data_offset_2413.exit_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_cal_data_offset_2413.exit

if.then11.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i22.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 43
  %36 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i22.i, align 1
  %conv.i23.i = zext i8 %37 to i32
  %sub.i24.i = add nsw i32 %conv.i23.i, -1
  %arrayidx1.i25.i = getelementptr [4 x i32], ptr @ath5k_pdgains_size_2413.pdgains_size, i32 0, i32 %sub.i24.i
  %38 = ptrtoint ptr %arrayidx1.i25.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx1.i25.i, align 4
  %arrayidx2.i26.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45
  %40 = ptrtoint ptr %arrayidx2.i26.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx2.i26.i, align 1
  %conv3.i27.i = zext i8 %41 to i32
  %mul.i28.i = mul i32 %39, %conv3.i27.i
  %add13.i = add i32 %offset.0.i, 5
  %add14.i = add i32 %add13.i, %mul.i28.i
  br label %ath5k_cal_data_offset_2413.exit

ath5k_cal_data_offset_2413.exit:                  ; preds = %if.then11.i, %sw.bb5.i.ath5k_cal_data_offset_2413.exit_crit_edge, %if.end9.ath5k_cal_data_offset_2413.exit_crit_edge
  %offset.1.i = phi i32 [ %22, %if.end9.ath5k_cal_data_offset_2413.exit_crit_edge ], [ %add14.i, %if.then11.i ], [ %offset.0.i, %sw.bb5.i.ath5k_cal_data_offset_2413.exit_crit_edge ]
  %42 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %mode, label %ath5k_cal_data_offset_2413.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb29
  ]

ath5k_cal_data_offset_2413.exit.cleanup_crit_edge: ; preds = %ath5k_cal_data_offset_2413.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %ath5k_cal_data_offset_2413.exit
  %ee_header = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %43 = ptrtoint ptr %ee_header to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ee_header, align 4
  %45 = and i16 %44, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool13.not = icmp eq i16 %45, 0
  br i1 %tobool13.not, label %sw.bb.cleanup_crit_edge, label %if.end15

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call fastcc i32 @ath5k_eeprom_init_11a_pcal_freq(ptr noundef %ah, i32 noundef %offset.1.i)
  %add = add i32 %offset.1.i, 5
  %ee_pwr_cal_a = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46
  br label %sw.epilog

sw.bb18:                                          ; preds = %ath5k_cal_data_offset_2413.exit
  %ee_header19 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %46 = ptrtoint ptr %ee_header19 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ee_header19, align 4
  %48 = and i16 %47, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool23.not = icmp eq i16 %48, 0
  br i1 %tobool23.not, label %sw.bb18.cleanup_crit_edge, label %if.end25

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ath5k_eeprom_init_11bg_2413(ptr noundef %ah, i32 noundef 1, i32 noundef %offset.1.i)
  %add27 = add i32 %offset.1.i, 2
  %ee_pwr_cal_b = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 47
  br label %sw.epilog

sw.bb29:                                          ; preds = %ath5k_cal_data_offset_2413.exit
  %ee_header30 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %49 = ptrtoint ptr %ee_header30 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ee_header30, align 4
  %51 = and i16 %50, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool34.not = icmp eq i16 %51, 0
  br i1 %tobool34.not, label %sw.bb29.cleanup_crit_edge, label %if.end36

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ath5k_eeprom_init_11bg_2413(ptr noundef %ah, i32 noundef 2, i32 noundef %offset.1.i)
  %add38 = add i32 %offset.1.i, 2
  %ee_pwr_cal_g = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 48
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end36, %if.end25, %if.end15
  %chinfo.0 = phi ptr [ %ee_pwr_cal_g, %if.end36 ], [ %ee_pwr_cal_b, %if.end25 ], [ %ee_pwr_cal_a, %if.end15 ]
  %offset.0 = phi i32 [ %add38, %if.end36 ], [ %add27, %if.end25 ], [ %add, %if.end15 ]
  %arrayidx41 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45, i32 %mode
  %52 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp43741.not = icmp eq i8 %53, 0
  br i1 %cmp43741.not, label %sw.epilog.cleanup_crit_edge, label %for.body45.lr.ph

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body45.lr.ph:                                 ; preds = %sw.epilog
  %bus_ops.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 25
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %pd_gains.1.3751)
  %cmp119 = icmp ugt i8 %pd_gains.1.3751, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %pd_gains.1.3751)
  %cmp254 = icmp ugt i8 %pd_gains.1.3751, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %pd_gains.1.3751)
  %cmp362 = icmp ugt i8 %pd_gains.1.3751, 3
  br label %for.body45

for.body45:                                       ; preds = %for.inc537.for.body45_crit_edge, %for.body45.lr.ph
  %i.0743 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc538, %for.inc537.for.body45_crit_edge ]
  %offset.1742 = phi i32 [ %offset.0, %for.body45.lr.ph ], [ %offset.4, %for.inc537.for.body45_crit_edge ]
  %54 = getelementptr %struct.ath5k_chan_pcal_info, ptr %chinfo.0, i32 %i.0743, i32 3
  %55 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i = getelementptr inbounds %struct.ath_bus_ops, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %eeprom_read.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %eeprom_read.i, align 4
  %call1.i = call zeroext i1 %58(ptr noundef %ah, i32 noundef %offset.1742, ptr noundef nonnull %val) #6
  br i1 %call1.i, label %do.end, label %for.body45.cleanup_crit_edge

for.body45.cleanup_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.body45
  %inc47 = add i32 %offset.1742, 1
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %val, align 2
  %61 = trunc i16 %60 to i8
  %conv53 = and i8 %61, 31
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv53, ptr %54, align 1
  %63 = lshr i16 %60, 5
  %64 = trunc i16 %63 to i8
  %conv58 = and i8 %64, 127
  %pddac_i = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 1
  %65 = ptrtoint ptr %pddac_i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv58, ptr %pddac_i, align 1
  %66 = lshr i16 %60, 12
  %conv63 = trunc i16 %66 to i8
  %pwr = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2
  %67 = ptrtoint ptr %pwr to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv63, ptr %pwr, align 1
  %68 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i681 = getelementptr inbounds %struct.ath_bus_ops, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %eeprom_read.i681 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %eeprom_read.i681, align 4
  %call1.i682 = call zeroext i1 %71(ptr noundef %ah, i32 noundef %inc47, ptr noundef nonnull %val) #6
  br i1 %call1.i682, label %do.end72, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end72:                                         ; preds = %do.end
  %inc67 = add i32 %offset.1742, 2
  %72 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %val, align 2
  %74 = trunc i16 %73 to i8
  %conv75 = and i8 %74, 63
  %pddac = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3
  %75 = ptrtoint ptr %pddac to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv75, ptr %pddac, align 1
  %76 = lshr i16 %73, 6
  %77 = trunc i16 %76 to i8
  %conv81 = and i8 %77, 15
  %arrayidx84 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv81, ptr %arrayidx84, align 1
  %79 = lshr i16 %73, 10
  %conv88 = trunc i16 %79 to i8
  %arrayidx91 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 0, i32 1
  %80 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv88, ptr %arrayidx91, align 1
  %inc93 = add i32 %offset.1742, 3
  %81 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i684 = getelementptr inbounds %struct.ath_bus_ops, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %eeprom_read.i684 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %eeprom_read.i684, align 4
  %call1.i685 = call zeroext i1 %84(ptr noundef %ah, i32 noundef %inc67, ptr noundef nonnull %val) #6
  br i1 %call1.i685, label %do.end98, label %do.end72.cleanup_crit_edge

do.end72.cleanup_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end98:                                         ; preds = %do.end72
  %85 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %val, align 2
  %87 = trunc i16 %86 to i8
  %conv101 = and i8 %87, 15
  %arrayidx104 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 0, i32 2
  %88 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv101, ptr %arrayidx104, align 1
  %89 = lshr i16 %86, 4
  %90 = trunc i16 %89 to i8
  %conv108 = and i8 %90, 63
  %arrayidx111 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 0, i32 2
  %91 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv108, ptr %arrayidx111, align 1
  %arrayidx114 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 0, i32 3
  %92 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx114, align 1
  %arrayidx117 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 0, i32 3
  %93 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx117, align 1
  %94 = lshr i16 %86, 10
  %95 = trunc i16 %94 to i8
  br i1 %cmp119, label %if.then121, label %if.then220

if.then121:                                       ; preds = %do.end98
  %conv125 = and i8 %95, 31
  %arrayidx127 = getelementptr [4 x i8], ptr %54, i32 0, i32 1
  %96 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv125, ptr %arrayidx127, align 1
  %97 = lshr i16 %86, 15
  %conv131 = trunc i16 %97 to i8
  %arrayidx133 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv131, ptr %arrayidx133, align 1
  %99 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i687 = getelementptr inbounds %struct.ath_bus_ops, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %eeprom_read.i687 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %eeprom_read.i687, align 4
  %call1.i688 = call zeroext i1 %102(ptr noundef %ah, i32 noundef %inc93, ptr noundef nonnull %val) #6
  br i1 %call1.i688, label %do.end140, label %if.then121.cleanup_crit_edge

if.then121.cleanup_crit_edge:                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end140:                                        ; preds = %if.then121
  %inc135 = add i32 %offset.1742, 4
  %103 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %val, align 2
  %.tr678 = trunc i16 %104 to i8
  %105 = shl i8 %.tr678, 1
  %shl = and i8 %105, 126
  %106 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx133, align 1
  %or = or i8 %shl, %107
  store i8 %or, ptr %arrayidx133, align 1
  %108 = lshr i16 %104, 6
  %109 = trunc i16 %108 to i8
  %conv150 = and i8 %109, 15
  %arrayidx152 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 1
  %110 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv150, ptr %arrayidx152, align 1
  %111 = lshr i16 %104, 10
  %conv157 = trunc i16 %111 to i8
  %arrayidx159 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 1
  %112 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv157, ptr %arrayidx159, align 1
  %113 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i690 = getelementptr inbounds %struct.ath_bus_ops, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %eeprom_read.i690 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %eeprom_read.i690, align 4
  %call1.i691 = call zeroext i1 %116(ptr noundef %ah, i32 noundef %inc135, ptr noundef nonnull %val) #6
  br i1 %call1.i691, label %do.end167, label %do.end140.cleanup_crit_edge

do.end140.cleanup_crit_edge:                      ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end167:                                        ; preds = %do.end140
  %inc162 = add i32 %offset.1742, 5
  %117 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %val, align 2
  %119 = trunc i16 %118 to i8
  %conv170 = and i8 %119, 15
  %arrayidx173 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 1, i32 1
  %120 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv170, ptr %arrayidx173, align 1
  %121 = lshr i16 %118, 4
  %122 = trunc i16 %121 to i8
  %conv177 = and i8 %122, 63
  %arrayidx180 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 1, i32 1
  %123 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv177, ptr %arrayidx180, align 1
  %124 = lshr i16 %118, 10
  %125 = trunc i16 %124 to i8
  %conv184 = and i8 %125, 15
  %arrayidx187 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 1, i32 2
  %126 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv184, ptr %arrayidx187, align 1
  %127 = lshr i16 %118, 14
  %conv191 = trunc i16 %127 to i8
  %arrayidx194 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 1, i32 2
  %128 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv191, ptr %arrayidx194, align 1
  %129 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i693 = getelementptr inbounds %struct.ath_bus_ops, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %eeprom_read.i693 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %eeprom_read.i693, align 4
  %call1.i694 = call zeroext i1 %132(ptr noundef %ah, i32 noundef %inc162, ptr noundef nonnull %val) #6
  br i1 %call1.i694, label %if.end252, label %do.end167.cleanup_crit_edge

do.end167.cleanup_crit_edge:                      ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then220:                                       ; preds = %do.end98
  %conv224 = and i8 %95, 15
  %133 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv224, ptr %arrayidx114, align 1
  %134 = lshr i16 %86, 14
  %conv231 = trunc i16 %134 to i8
  %135 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv231, ptr %arrayidx117, align 1
  %136 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i696 = getelementptr inbounds %struct.ath_bus_ops, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %eeprom_read.i696 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %eeprom_read.i696, align 4
  %call1.i697 = call zeroext i1 %139(ptr noundef %ah, i32 noundef %inc93, ptr noundef nonnull %val) #6
  br i1 %call1.i697, label %if.else340, label %if.then220.cleanup_crit_edge

if.then220.cleanup_crit_edge:                     ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end252:                                        ; preds = %do.end167
  %inc196 = add i32 %offset.1742, 6
  %140 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %val, align 2
  %.tr679 = trunc i16 %141 to i8
  %142 = shl i8 %.tr679, 2
  %shl204 = and i8 %142, 60
  %143 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx194, align 1
  %or209 = or i8 %shl204, %144
  store i8 %or209, ptr %arrayidx194, align 1
  %arrayidx213 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 1, i32 3
  %145 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %arrayidx213, align 1
  %arrayidx216 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 1, i32 3
  %146 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %arrayidx216, align 1
  %147 = load i16, ptr %val, align 2
  br i1 %cmp254, label %if.then256, label %if.then344

if.then256:                                       ; preds = %if.end252
  %148 = lshr i16 %147, 4
  %149 = trunc i16 %148 to i8
  %conv260 = and i8 %149, 31
  %arrayidx262 = getelementptr [4 x i8], ptr %54, i32 0, i32 2
  %150 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv260, ptr %arrayidx262, align 1
  %151 = lshr i16 %147, 9
  %conv266 = trunc i16 %151 to i8
  %arrayidx268 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 1, i32 2
  %152 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv266, ptr %arrayidx268, align 1
  %153 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i699 = getelementptr inbounds %struct.ath_bus_ops, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %eeprom_read.i699 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %eeprom_read.i699, align 4
  %call1.i700 = call zeroext i1 %156(ptr noundef %ah, i32 noundef %inc196, ptr noundef nonnull %val) #6
  br i1 %call1.i700, label %do.end275, label %if.then256.cleanup_crit_edge

if.then256.cleanup_crit_edge:                     ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end275:                                        ; preds = %if.then256
  %inc270 = add i32 %offset.1742, 7
  %157 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %val, align 2
  %159 = trunc i16 %158 to i8
  %conv279 = and i8 %159, 15
  %arrayidx281 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 2
  %160 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv279, ptr %arrayidx281, align 1
  %161 = lshr i16 %158, 4
  %162 = trunc i16 %161 to i8
  %conv286 = and i8 %162, 63
  %arrayidx288 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 2
  %163 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv286, ptr %arrayidx288, align 1
  %164 = lshr i16 %158, 10
  %165 = trunc i16 %164 to i8
  %conv293 = and i8 %165, 15
  %arrayidx296 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 2, i32 1
  %166 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv293, ptr %arrayidx296, align 1
  %167 = lshr i16 %158, 14
  %conv300 = trunc i16 %167 to i8
  %arrayidx303 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 2, i32 1
  %168 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv300, ptr %arrayidx303, align 1
  %169 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i702 = getelementptr inbounds %struct.ath_bus_ops, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %eeprom_read.i702 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %eeprom_read.i702, align 4
  %call1.i703 = call zeroext i1 %172(ptr noundef %ah, i32 noundef %inc270, ptr noundef nonnull %val) #6
  br i1 %call1.i703, label %if.end360, label %do.end275.cleanup_crit_edge

do.end275.cleanup_crit_edge:                      ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else340:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #8
  %inc236 = add i32 %offset.1742, 4
  %173 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %val, align 2
  %.tr = trunc i16 %174 to i8
  %175 = shl i8 %.tr, 2
  %shl244 = and i8 %175, 60
  %176 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx117, align 1
  %or249 = or i8 %shl244, %177
  store i8 %or249, ptr %arrayidx117, align 1
  br label %for.inc537

if.then344:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  %178 = trunc i16 %147 to i8
  %179 = lshr i8 %178, 4
  %180 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx213, align 1
  %181 = lshr i16 %147, 8
  %182 = trunc i16 %181 to i8
  %conv355 = and i8 %182, 63
  %183 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv355, ptr %arrayidx216, align 1
  br label %for.inc537

if.end360:                                        ; preds = %do.end275
  %inc305 = add i32 %offset.1742, 8
  %184 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %val, align 2
  %.tr677 = trunc i16 %185 to i8
  %186 = shl i8 %.tr677, 2
  %shl313 = and i8 %186, 60
  %187 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx303, align 1
  %or318 = or i8 %shl313, %188
  store i8 %or318, ptr %arrayidx303, align 1
  %189 = lshr i8 %.tr677, 4
  %arrayidx326 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 2, i32 2
  %190 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %arrayidx326, align 1
  %191 = lshr i16 %185, 8
  %192 = trunc i16 %191 to i8
  %conv330 = and i8 %192, 63
  %arrayidx333 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 2, i32 2
  %193 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv330, ptr %arrayidx333, align 1
  %arrayidx336 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 2, i32 3
  %194 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %arrayidx336, align 1
  %arrayidx339 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 2, i32 3
  %195 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %arrayidx339, align 1
  %196 = load i16, ptr %val, align 2
  %197 = lshr i16 %196, 14
  %conv368 = trunc i16 %197 to i8
  br i1 %cmp362, label %if.then364, label %if.then503

if.then364:                                       ; preds = %if.end360
  %arrayidx370 = getelementptr [4 x i8], ptr %54, i32 0, i32 3
  %198 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv368, ptr %arrayidx370, align 1
  %199 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i705 = getelementptr inbounds %struct.ath_bus_ops, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %eeprom_read.i705 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %eeprom_read.i705, align 4
  %call1.i706 = call zeroext i1 %202(ptr noundef %ah, i32 noundef %inc305, ptr noundef nonnull %val) #6
  br i1 %call1.i706, label %do.end377, label %if.then364.cleanup_crit_edge

if.then364.cleanup_crit_edge:                     ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end377:                                        ; preds = %if.then364
  %inc372 = add i32 %offset.1742, 9
  %203 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %val, align 2
  %.tr673 = trunc i16 %204 to i8
  %205 = shl i8 %.tr673, 2
  %shl381 = and i8 %205, 28
  %206 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx370, align 1
  %or385 = or i8 %shl381, %207
  store i8 %or385, ptr %arrayidx370, align 1
  %208 = lshr i16 %204, 3
  %209 = trunc i16 %208 to i8
  %conv390 = and i8 %209, 127
  %arrayidx392 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 1, i32 3
  %210 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv390, ptr %arrayidx392, align 1
  %211 = lshr i16 %204, 10
  %212 = trunc i16 %211 to i8
  %conv396 = and i8 %212, 15
  %arrayidx398 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 3
  %213 = ptrtoint ptr %arrayidx398 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv396, ptr %arrayidx398, align 1
  %214 = lshr i16 %204, 14
  %conv403 = trunc i16 %214 to i8
  %arrayidx405 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 3
  %215 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv403, ptr %arrayidx405, align 1
  %216 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i708 = getelementptr inbounds %struct.ath_bus_ops, ptr %217, i32 0, i32 2
  %218 = ptrtoint ptr %eeprom_read.i708 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %eeprom_read.i708, align 4
  %call1.i709 = call zeroext i1 %219(ptr noundef %ah, i32 noundef %inc372, ptr noundef nonnull %val) #6
  br i1 %call1.i709, label %do.end413, label %do.end377.cleanup_crit_edge

do.end377.cleanup_crit_edge:                      ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end413:                                        ; preds = %do.end377
  %inc408 = add i32 %offset.1742, 10
  %220 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %val, align 2
  %.tr674 = trunc i16 %221 to i8
  %222 = shl i8 %.tr674, 2
  %shl416 = and i8 %222, 60
  %223 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx405, align 1
  %or421 = or i8 %shl416, %224
  store i8 %or421, ptr %arrayidx405, align 1
  %225 = lshr i8 %.tr674, 4
  %arrayidx429 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 3, i32 1
  %226 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %arrayidx429, align 1
  %227 = lshr i16 %221, 8
  %228 = trunc i16 %227 to i8
  %conv433 = and i8 %228, 63
  %arrayidx436 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 3, i32 1
  %229 = ptrtoint ptr %arrayidx436 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %conv433, ptr %arrayidx436, align 1
  %230 = lshr i16 %221, 14
  %conv440 = trunc i16 %230 to i8
  %arrayidx443 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 3, i32 2
  %231 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %conv440, ptr %arrayidx443, align 1
  %232 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i711 = getelementptr inbounds %struct.ath_bus_ops, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %eeprom_read.i711 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %eeprom_read.i711, align 4
  %call1.i712 = call zeroext i1 %235(ptr noundef %ah, i32 noundef %inc408, ptr noundef nonnull %val) #6
  br i1 %call1.i712, label %do.end450, label %do.end413.cleanup_crit_edge

do.end413.cleanup_crit_edge:                      ; preds = %do.end413
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end450:                                        ; preds = %do.end413
  %inc445 = add i32 %offset.1742, 11
  %236 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %val, align 2
  %.tr675 = trunc i16 %237 to i8
  %238 = shl i8 %.tr675, 2
  %shl454 = and i8 %238, 12
  %239 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx443, align 1
  %or459 = or i8 %shl454, %240
  store i8 %or459, ptr %arrayidx443, align 1
  %241 = lshr i8 %.tr675, 2
  %arrayidx467 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 3, i32 2
  %242 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %arrayidx467, align 1
  %243 = lshr i16 %237, 8
  %244 = trunc i16 %243 to i8
  %conv471 = and i8 %244, 15
  %arrayidx474 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 2, i32 3, i32 3
  %245 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv471, ptr %arrayidx474, align 1
  %246 = lshr i16 %237, 12
  %conv478 = trunc i16 %246 to i8
  %arrayidx481 = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %54, i32 0, i32 3, i32 3, i32 3
  %247 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv478, ptr %arrayidx481, align 1
  %248 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i714 = getelementptr inbounds %struct.ath_bus_ops, ptr %249, i32 0, i32 2
  %250 = ptrtoint ptr %eeprom_read.i714 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %eeprom_read.i714, align 4
  %call1.i715 = call zeroext i1 %251(ptr noundef %ah, i32 noundef %inc445, ptr noundef nonnull %val) #6
  br i1 %call1.i715, label %do.end488, label %do.end450.cleanup_crit_edge

do.end450.cleanup_crit_edge:                      ; preds = %do.end450
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end488:                                        ; preds = %do.end450
  call void @__sanitizer_cov_trace_pc() #8
  %inc483 = add i32 %offset.1742, 12
  %252 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %val, align 2
  %.tr676 = trunc i16 %253 to i8
  %254 = shl i8 %.tr676, 4
  %shl492 = and i8 %254, 48
  %255 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx481, align 1
  %or497 = or i8 %shl492, %256
  store i8 %or497, ptr %arrayidx481, align 1
  br label %for.inc537

if.then503:                                       ; preds = %if.end360
  %257 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv368, ptr %arrayidx336, align 1
  %258 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i717 = getelementptr inbounds %struct.ath_bus_ops, ptr %259, i32 0, i32 2
  %260 = ptrtoint ptr %eeprom_read.i717 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %eeprom_read.i717, align 4
  %call1.i718 = call zeroext i1 %261(ptr noundef %ah, i32 noundef %inc305, ptr noundef nonnull %val) #6
  br i1 %call1.i718, label %do.end517, label %if.then503.cleanup_crit_edge

if.then503.cleanup_crit_edge:                     ; preds = %if.then503
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end517:                                        ; preds = %if.then503
  call void @__sanitizer_cov_trace_pc() #8
  %inc512 = add i32 %offset.1742, 9
  %262 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %val, align 2
  %.tr672 = trunc i16 %263 to i8
  %264 = shl i8 %.tr672, 2
  %shl521 = and i8 %264, 12
  %265 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx336, align 1
  %or526 = or i8 %shl521, %266
  store i8 %or526, ptr %arrayidx336, align 1
  %267 = lshr i8 %.tr672, 2
  %268 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %arrayidx339, align 1
  br label %for.inc537

for.inc537:                                       ; preds = %do.end517, %do.end488, %if.then344, %if.else340
  %offset.4 = phi i32 [ %inc483, %do.end488 ], [ %inc512, %do.end517 ], [ %inc236, %if.else340 ], [ %inc196, %if.then344 ]
  %inc538 = add nuw nsw i32 %i.0743, 1
  %269 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %270 to i32
  %cmp43 = icmp ult i32 %inc538, %conv42
  br i1 %cmp43, label %for.inc537.for.body45_crit_edge, label %for.end539

for.inc537.for.body45_crit_edge:                  ; preds = %for.inc537
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45

for.end539:                                       ; preds = %for.inc537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %phi.cmp = icmp eq i8 %270, 0
  br i1 %phi.cmp, label %for.end539.cleanup_crit_edge, label %for.end539.for.body.i_crit_edge

for.end539.for.body.i_crit_edge:                  ; preds = %for.end539
  br label %for.body.i

for.end539.cleanup_crit_edge:                     ; preds = %for.end539
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc102.i.for.body.i_crit_edge, %for.end539.for.body.i_crit_edge
  %pier.0228.i = phi i32 [ %inc103.i, %for.inc102.i.for.body.i_crit_edge ], [ 0, %for.end539.for.body.i_crit_edge ]
  %271 = getelementptr %struct.ath5k_chan_pcal_info, ptr %chinfo.0, i32 %pier.0228.i, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %272 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %272, i32 noundef 3520, i32 noundef 48) #9
  %pd_curves.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %chinfo.0, i32 %pier.0228.i, i32 4
  %273 = ptrtoint ptr %pd_curves.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %call7.i.i.i.i, ptr %pd_curves.i, align 4
  %tobool.not.i719 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i719, label %for.body.i.err_out.i_crit_edge, label %for.cond7.preheader.i

for.body.i.err_out.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

for.cond7.preheader.i:                            ; preds = %for.body.i
  %274 = ptrtoint ptr %arrayidx4752 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx4752, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %cmp10222.not.i = icmp eq i8 %275, 0
  br i1 %cmp10222.not.i, label %for.cond7.preheader.i.for.inc102.i_crit_edge, label %for.body12.lr.ph.i

for.cond7.preheader.i.for.inc102.i_crit_edge:     ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.i

for.body12.lr.ph.i:                               ; preds = %for.cond7.preheader.i
  %conv9221.i = zext i8 %275 to i32
  %min_pwr.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %chinfo.0, i32 %pier.0228.i, i32 2
  %max_pwr.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %chinfo.0, i32 %pier.0228.i, i32 1
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc99.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %conv9225.i = phi i32 [ %conv9221.i, %for.body12.lr.ph.i ], [ %conv9.i, %for.inc99.i.for.body12.i_crit_edge ]
  %pdg.0223.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc100.i, %for.inc99.i.for.body12.i_crit_edge ]
  %arrayidx13.i = getelementptr i8, ptr %arrayidx, i32 %pdg.0223.i
  %276 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx13.i, align 1
  %278 = ptrtoint ptr %pd_curves.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %pd_curves.i, align 4
  %idxprom.i = zext i8 %277 to i32
  %arrayidx16.i = getelementptr %struct.ath5k_pdgain_info, ptr %279, i32 %idxprom.i
  %sub.i = add nsw i32 %conv9225.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %pdg.0223.i, i32 %sub.i)
  %cmp20.i = icmp eq i32 %pdg.0223.i, %sub.i
  %..i = select i1 %cmp20.i, i8 5, i8 4
  %280 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %..i, ptr %arrayidx16.i, align 4
  %conv26.i = zext i8 %..i to i32
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv26.i, i32 noundef 3520) #10
  %pd_step.i = getelementptr %struct.ath5k_pdgain_info, ptr %279, i32 %idxprom.i, i32 1
  %281 = ptrtoint ptr %pd_step.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %call8.i.i.i, ptr %pd_step.i, align 4
  %tobool29.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool29.not.i, label %for.body12.i.err_out.i_crit_edge, label %if.end7.i.i201.i

for.body12.i.err_out.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

if.end7.i.i201.i:                                 ; preds = %for.body12.i
  %282 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx16.i, align 4
  %conv33.i = zext i8 %283 to i32
  %284 = shl nuw nsw i32 %conv33.i, 1
  %call8.i.i200.i = call noalias align 128 ptr @__kmalloc(i32 noundef %284, i32 noundef 3520) #10
  %pd_pwr.i = getelementptr %struct.ath5k_pdgain_info, ptr %279, i32 %idxprom.i, i32 2
  %285 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %call8.i.i200.i, ptr %pd_pwr.i, align 4
  %tobool36.not.i = icmp eq ptr %call8.i.i200.i, null
  br i1 %tobool36.not.i, label %if.end7.i.i201.i.err_out.i_crit_edge, label %if.end38.i

if.end7.i.i201.i.err_out.i_crit_edge:             ; preds = %if.end7.i.i201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

if.end38.i:                                       ; preds = %if.end7.i.i201.i
  %arrayidx39.i = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %271, i32 0, i32 1, i32 %pdg.0223.i
  %286 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx39.i, align 1
  %288 = ptrtoint ptr %pd_step.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %pd_step.i, align 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %287, ptr %289, align 1
  %arrayidx42.i = getelementptr [4 x i8], ptr %271, i32 0, i32 %pdg.0223.i
  %291 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = sext i8 %292 to i16
  %mul.i = shl nsw i16 %conv43.i, 2
  %293 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %pd_pwr.i, align 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 %mul.i, ptr %294, align 2
  %296 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %297)
  %cmp50219.i = icmp ugt i8 %297, 1
  br i1 %cmp50219.i, label %if.end38.i.for.body52.i_crit_edge, label %if.end38.i.for.end.i_crit_edge

if.end38.i.for.end.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end38.i.for.body52.i_crit_edge:                ; preds = %if.end38.i
  br label %for.body52.i

for.body52.i:                                     ; preds = %for.body52.i.for.body52.i_crit_edge, %if.end38.i.for.body52.i_crit_edge
  %point.0220.i = phi i32 [ %inc.i, %for.body52.i.for.body52.i_crit_edge ], [ 1, %if.end38.i.for.body52.i_crit_edge ]
  %298 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %pd_pwr.i, align 4
  %sub54.i = add nsw i32 %point.0220.i, -1
  %arrayidx55.i = getelementptr i16, ptr %299, i32 %sub54.i
  %300 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %arrayidx55.i, align 2
  %arrayidx59.i = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %271, i32 0, i32 2, i32 %pdg.0223.i, i32 %sub54.i
  %302 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx59.i, align 1
  %conv60.i = sext i8 %303 to i16
  %mul61.i = shl nsw i16 %conv60.i, 1
  %add.i720 = add i16 %mul61.i, %301
  %arrayidx64.i = getelementptr i16, ptr %299, i32 %point.0220.i
  %304 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 %add.i720, ptr %arrayidx64.i, align 2
  %305 = ptrtoint ptr %pd_step.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %pd_step.i, align 4
  %arrayidx67.i = getelementptr i8, ptr %306, i32 %sub54.i
  %307 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx67.i, align 1
  %arrayidx71.i = getelementptr %struct.ath5k_chan_pcal_info_rf2413, ptr %271, i32 0, i32 3, i32 %pdg.0223.i, i32 %sub54.i
  %309 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx71.i, align 1
  %add73.i = add i8 %310, %308
  %arrayidx76.i = getelementptr i8, ptr %306, i32 %point.0220.i
  %311 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %add73.i, ptr %arrayidx76.i, align 1
  %inc.i = add nuw nsw i32 %point.0220.i, 1
  %312 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx16.i, align 4
  %conv49.i = zext i8 %313 to i32
  %cmp50.i = icmp ult i32 %inc.i, %conv49.i
  br i1 %cmp50.i, label %for.body52.i.for.body52.i_crit_edge, label %for.body52.i.for.end.i_crit_edge

for.body52.i.for.end.i_crit_edge:                 ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body52.i.for.body52.i_crit_edge:              ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body52.i

for.end.i:                                        ; preds = %for.body52.i.for.end.i_crit_edge, %if.end38.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pdg.0223.i)
  %cmp77.i = icmp eq i32 %pdg.0223.i, 0
  br i1 %cmp77.i, label %if.then79.i, label %for.end.i.if.end83.i_crit_edge

for.end.i.if.end83.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i

if.then79.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %314 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %pd_pwr.i, align 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %315, align 2
  %318 = ptrtoint ptr %min_pwr.i to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 %317, ptr %min_pwr.i, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then79.i, %for.end.i.if.end83.i_crit_edge
  %319 = ptrtoint ptr %arrayidx4752 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx4752, align 1
  %conv86.i = zext i8 %320 to i32
  %sub87.i = add nsw i32 %conv86.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %pdg.0223.i, i32 %sub87.i)
  %cmp88.i = icmp eq i32 %pdg.0223.i, %sub87.i
  br i1 %cmp88.i, label %if.then90.i, label %if.end83.i.for.inc99.i_crit_edge

if.end83.i.for.inc99.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99.i

if.then90.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  %321 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %pd_pwr.i, align 4
  %323 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx16.i, align 4
  %conv93.i = zext i8 %324 to i32
  %sub94.i = add nsw i32 %conv93.i, -1
  %arrayidx95.i = getelementptr i16, ptr %322, i32 %sub94.i
  %325 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %arrayidx95.i, align 2
  %327 = ptrtoint ptr %max_pwr.i to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 %326, ptr %max_pwr.i, align 2
  br label %for.inc99.i

for.inc99.i:                                      ; preds = %if.then90.i, %if.end83.i.for.inc99.i_crit_edge
  %inc100.i = add nuw nsw i32 %pdg.0223.i, 1
  %328 = ptrtoint ptr %arrayidx4752 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx4752, align 1
  %conv9.i = zext i8 %329 to i32
  %cmp10.i = icmp ult i32 %inc100.i, %conv9.i
  br i1 %cmp10.i, label %for.inc99.i.for.body12.i_crit_edge, label %for.inc99.i.for.inc102.i_crit_edge

for.inc99.i.for.inc102.i_crit_edge:               ; preds = %for.inc99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.i

for.inc99.i.for.body12.i_crit_edge:               ; preds = %for.inc99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12.i

for.inc102.i:                                     ; preds = %for.inc99.i.for.inc102.i_crit_edge, %for.cond7.preheader.i.for.inc102.i_crit_edge
  %inc103.i = add nuw nsw i32 %pier.0228.i, 1
  %330 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx41, align 1
  %conv.i = zext i8 %331 to i32
  %cmp.i = icmp ult i32 %inc103.i, %conv.i
  br i1 %cmp.i, label %for.inc102.i.for.body.i_crit_edge, label %for.inc102.i.cleanup_crit_edge

for.inc102.i.cleanup_crit_edge:                   ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc102.i.for.body.i_crit_edge:                ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

err_out.i:                                        ; preds = %if.end7.i.i201.i.err_out.i_crit_edge, %for.body12.i.err_out.i_crit_edge, %for.body.i.err_out.i_crit_edge
  call fastcc void @ath5k_eeprom_free_pcal_info(ptr noundef %ah, i32 noundef %mode) #6
  br label %cleanup

cleanup:                                          ; preds = %err_out.i, %for.inc102.i.cleanup_crit_edge, %for.end539.cleanup_crit_edge, %if.then503.cleanup_crit_edge, %do.end450.cleanup_crit_edge, %do.end413.cleanup_crit_edge, %do.end377.cleanup_crit_edge, %if.then364.cleanup_crit_edge, %do.end275.cleanup_crit_edge, %if.then256.cleanup_crit_edge, %if.then220.cleanup_crit_edge, %do.end167.cleanup_crit_edge, %do.end140.cleanup_crit_edge, %if.then121.cleanup_crit_edge, %do.end72.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.body45.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %ath5k_cal_data_offset_2413.exit.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.inc.3.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb18.cleanup_crit_edge ], [ 0, %sw.bb29.cleanup_crit_edge ], [ -22, %ath5k_cal_data_offset_2413.exit.cleanup_crit_edge ], [ -12, %err_out.i ], [ 0, %for.end539.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %for.inc102.i.cleanup_crit_edge ], [ -5, %for.body45.cleanup_crit_edge ], [ -5, %do.end.cleanup_crit_edge ], [ -5, %do.end72.cleanup_crit_edge ], [ -5, %if.then121.cleanup_crit_edge ], [ -5, %do.end140.cleanup_crit_edge ], [ -5, %do.end167.cleanup_crit_edge ], [ -5, %if.then220.cleanup_crit_edge ], [ -5, %if.then256.cleanup_crit_edge ], [ -5, %do.end275.cleanup_crit_edge ], [ -5, %if.then364.cleanup_crit_edge ], [ -5, %do.end377.cleanup_crit_edge ], [ -5, %do.end413.cleanup_crit_edge ], [ -5, %do.end450.cleanup_crit_edge ], [ -5, %if.then503.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_eeprom_read_pcal_info_5111(ptr noundef %ah, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !25
  %ee_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  %1 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %2)
  %cmp = icmp ugt i16 %2, 12290
  %cond = select i1 %cmp, i32 336, i32 256
  %3 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %mode, label %entry.cleanup182_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb28
  ]

entry.cleanup182_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

sw.bb:                                            ; preds = %entry
  %ee_header = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %4 = ptrtoint ptr %ee_header to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ee_header, align 4
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %sw.bb.cleanup182_crit_edge, label %if.end

sw.bb.cleanup182_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

if.end:                                           ; preds = %sw.bb
  %call = tail call fastcc i32 @ath5k_eeprom_init_11a_pcal_freq(ptr noundef %ah, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end.cleanup182_crit_edge, label %if.end6

if.end.cleanup182_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add7 = or i32 %cond, 5
  %ee_pwr_cal_a = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %ee_header9 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %7 = ptrtoint ptr %ee_header9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ee_header9, align 4
  %9 = and i16 %8, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %sw.bb8.cleanup182_crit_edge, label %if.end20

sw.bb8.cleanup182_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

if.end20:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %ee_pwr_cal_b = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 47
  %add22 = add nuw nsw i32 %cond, 55
  %11 = ptrtoint ptr %ee_pwr_cal_b to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2412, ptr %ee_pwr_cal_b, align 4
  %arrayidx23 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 47, i32 1
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2447, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 47, i32 2
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2484, ptr %arrayidx25, align 4
  %arrayidx27 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45, i32 1
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %arrayidx27, align 1
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %ee_header29 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %15 = ptrtoint ptr %ee_header29 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ee_header29, align 4
  %17 = and i16 %16, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool33.not = icmp eq i16 %17, 0
  br i1 %tobool33.not, label %sw.bb28.cleanup182_crit_edge, label %if.end35

sw.bb28.cleanup182_crit_edge:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

if.end35:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  %ee_pwr_cal_g = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 48
  %add37 = add nuw nsw i32 %cond, 70
  %18 = ptrtoint ptr %ee_pwr_cal_g to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2312, ptr %ee_pwr_cal_g, align 4
  %arrayidx40 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 48, i32 1
  %19 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2412, ptr %arrayidx40, align 4
  %arrayidx42 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 48, i32 2
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2484, ptr %arrayidx42, align 4
  %arrayidx45 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45, i32 2
  %21 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %arrayidx45, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end35, %if.end20, %if.end6
  %pcal.0 = phi ptr [ %ee_pwr_cal_g, %if.end35 ], [ %ee_pwr_cal_b, %if.end20 ], [ %ee_pwr_cal_a, %if.end6 ]
  %offset.0 = phi i32 [ %add37, %if.end35 ], [ %add22, %if.end20 ], [ %add7, %if.end6 ]
  %arrayidx47 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45, i32 %mode
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp49266.not = icmp eq i8 %23, 0
  br i1 %cmp49266.not, label %sw.epilog.cleanup182_crit_edge, label %for.body.lr.ph

sw.epilog.cleanup182_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

for.body.lr.ph:                                   ; preds = %sw.epilog
  %bus_ops.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0268 = phi i32 [ 0, %for.body.lr.ph ], [ %inc180, %for.inc.for.body_crit_edge ]
  %offset.1267 = phi i32 [ %offset.0, %for.body.lr.ph ], [ %inc151, %for.inc.for.body_crit_edge ]
  %24 = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcal.0, i32 %i.0268, i32 3
  %25 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i = getelementptr inbounds %struct.ath_bus_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %eeprom_read.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %eeprom_read.i, align 4
  %call1.i = call zeroext i1 %28(ptr noundef %ah, i32 noundef %offset.1267, ptr noundef nonnull %val) #6
  br i1 %call1.i, label %do.end, label %for.body.cleanup182_crit_edge

for.body.cleanup182_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

do.end:                                           ; preds = %for.body
  %inc = add nuw nsw i32 %offset.1267, 1
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %val, align 2
  %31 = lshr i16 %30, 10
  %conv58 = trunc i16 %31 to i8
  %pcdac_max = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 3
  %32 = ptrtoint ptr %pcdac_max to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv58, ptr %pcdac_max, align 1
  %33 = lshr i16 %30, 4
  %34 = trunc i16 %33 to i8
  %conv62 = and i8 %34, 63
  %pcdac_min = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 2
  %35 = ptrtoint ptr %pcdac_min to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv62, ptr %pcdac_min, align 1
  %conv63 = trunc i16 %30 to i8
  %shl = shl i8 %conv63, 2
  %and64 = and i8 %shl, 60
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %and64, ptr %24, align 1
  %37 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i248 = getelementptr inbounds %struct.ath_bus_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %eeprom_read.i248 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %eeprom_read.i248, align 4
  %call1.i249 = call zeroext i1 %40(ptr noundef %ah, i32 noundef %inc, ptr noundef nonnull %val) #6
  br i1 %call1.i249, label %do.end73, label %do.end.cleanup182_crit_edge

do.end.cleanup182_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

do.end73:                                         ; preds = %do.end
  %inc68 = add nuw nsw i32 %offset.1267, 2
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %val, align 2
  %43 = lshr i16 %42, 14
  %44 = trunc i16 %43 to i8
  %45 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %24, align 1
  %or = or i8 %46, %44
  store i8 %or, ptr %24, align 1
  %47 = lshr i16 %42, 8
  %48 = trunc i16 %47 to i8
  %conv84 = and i8 %48, 63
  %arrayidx86 = getelementptr [11 x i8], ptr %24, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv84, ptr %arrayidx86, align 1
  %50 = trunc i16 %42 to i8
  %51 = lshr i8 %50, 2
  %arrayidx92 = getelementptr [11 x i8], ptr %24, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx92, align 1
  %shl94 = shl i8 %50, 4
  %and95 = and i8 %shl94, 48
  %arrayidx98 = getelementptr [11 x i8], ptr %24, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %and95, ptr %arrayidx98, align 1
  %54 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i251 = getelementptr inbounds %struct.ath_bus_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %eeprom_read.i251 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %eeprom_read.i251, align 4
  %call1.i252 = call zeroext i1 %57(ptr noundef %ah, i32 noundef %inc68, ptr noundef nonnull %val) #6
  br i1 %call1.i252, label %do.end105, label %do.end73.cleanup182_crit_edge

do.end73.cleanup182_crit_edge:                    ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

do.end105:                                        ; preds = %do.end73
  %inc100 = add nuw nsw i32 %offset.1267, 3
  %58 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %val, align 2
  %60 = lshr i16 %59, 12
  %61 = trunc i16 %60 to i8
  %62 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx98, align 1
  %or112 = or i8 %63, %61
  store i8 %or112, ptr %arrayidx98, align 1
  %64 = lshr i16 %59, 6
  %65 = trunc i16 %64 to i8
  %conv117 = and i8 %65, 63
  %arrayidx119 = getelementptr [11 x i8], ptr %24, i32 0, i32 4
  %66 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv117, ptr %arrayidx119, align 1
  %67 = trunc i16 %59 to i8
  %conv122 = and i8 %67, 63
  %arrayidx124 = getelementptr [11 x i8], ptr %24, i32 0, i32 5
  %68 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv122, ptr %arrayidx124, align 1
  %69 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i254 = getelementptr inbounds %struct.ath_bus_ops, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %eeprom_read.i254 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %eeprom_read.i254, align 4
  %call1.i255 = call zeroext i1 %72(ptr noundef %ah, i32 noundef %inc100, ptr noundef nonnull %val) #6
  br i1 %call1.i255, label %do.end131, label %do.end105.cleanup182_crit_edge

do.end105.cleanup182_crit_edge:                   ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

do.end131:                                        ; preds = %do.end105
  %inc126 = add nuw nsw i32 %offset.1267, 4
  %73 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %val, align 2
  %75 = lshr i16 %74, 10
  %conv135 = trunc i16 %75 to i8
  %arrayidx137 = getelementptr [11 x i8], ptr %24, i32 0, i32 6
  %76 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv135, ptr %arrayidx137, align 1
  %77 = lshr i16 %74, 4
  %78 = trunc i16 %77 to i8
  %conv141 = and i8 %78, 63
  %arrayidx143 = getelementptr [11 x i8], ptr %24, i32 0, i32 7
  %79 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv141, ptr %arrayidx143, align 1
  %conv144 = trunc i16 %74 to i8
  %shl145 = shl i8 %conv144, 2
  %and146 = and i8 %shl145, 60
  %arrayidx149 = getelementptr [11 x i8], ptr %24, i32 0, i32 8
  %80 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %and146, ptr %arrayidx149, align 1
  %81 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i257 = getelementptr inbounds %struct.ath_bus_ops, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %eeprom_read.i257 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %eeprom_read.i257, align 4
  %call1.i258 = call zeroext i1 %84(ptr noundef %ah, i32 noundef %inc126, ptr noundef nonnull %val) #6
  br i1 %call1.i258, label %for.inc, label %do.end131.cleanup182_crit_edge

do.end131.cleanup182_crit_edge:                   ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

for.inc:                                          ; preds = %do.end131
  %inc151 = add nuw nsw i32 %offset.1267, 5
  %85 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %val, align 2
  %87 = lshr i16 %86, 14
  %88 = trunc i16 %87 to i8
  %89 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx149, align 1
  %or163 = or i8 %90, %88
  store i8 %or163, ptr %arrayidx149, align 1
  %91 = lshr i16 %86, 8
  %92 = trunc i16 %91 to i8
  %conv168 = and i8 %92, 63
  %arrayidx170 = getelementptr [11 x i8], ptr %24, i32 0, i32 9
  %93 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv168, ptr %arrayidx170, align 1
  %94 = trunc i16 %86 to i8
  %95 = lshr i8 %94, 2
  %arrayidx176 = getelementptr [11 x i8], ptr %24, i32 0, i32 10
  %96 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx176, align 1
  %97 = ptrtoint ptr %pcdac_min to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %pcdac_min, align 1
  %99 = ptrtoint ptr %pcdac_max to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %pcdac_max, align 1
  %pcdac = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 1
  %101 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12289, i16 %102)
  %cmp.i = icmp ugt i16 %102, 12289
  %conv5.i = zext i8 %100 to i32
  %conv8.i = zext i8 %98 to i32
  %103 = ptrtoint ptr %pcdac to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %98, ptr %pcdac, align 1
  %104 = select i1 %cmp.i, i32 10, i32 5
  %mul.1.i = mul nuw nsw i32 %104, %conv5.i
  %sub.1.i = sub nuw nsw i32 100, %104
  %mul9.1.i = mul nuw nsw i32 %sub.1.i, %conv8.i
  %add.1.i = add nuw nsw i32 %mul9.1.i, %mul.1.i
  %div.1.lhs.trunc.i = trunc i32 %add.1.i to i16
  %div.130.i = udiv i16 %div.1.lhs.trunc.i, 100
  %conv10.1.i = trunc i16 %div.130.i to i8
  %arrayidx11.1.i = getelementptr %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv10.1.i, ptr %arrayidx11.1.i, align 1
  %106 = select i1 %cmp.i, i32 20, i32 10
  %mul.2.i = mul nuw nsw i32 %106, %conv5.i
  %sub.2.i = sub nuw nsw i32 100, %106
  %mul9.2.i = mul nuw nsw i32 %sub.2.i, %conv8.i
  %add.2.i = add nuw nsw i32 %mul9.2.i, %mul.2.i
  %div.2.lhs.trunc.i = trunc i32 %add.2.i to i16
  %div.231.i = udiv i16 %div.2.lhs.trunc.i, 100
  %conv10.2.i = trunc i16 %div.231.i to i8
  %arrayidx11.2.i = getelementptr %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 1, i32 2
  %107 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv10.2.i, ptr %arrayidx11.2.i, align 1
  %108 = select i1 %cmp.i, i32 30, i32 20
  %mul.3.i = mul nuw nsw i32 %108, %conv5.i
  %sub.3.i = sub nuw nsw i32 100, %108
  %mul9.3.i = mul nuw nsw i32 %sub.3.i, %conv8.i
  %add.3.i = add nuw nsw i32 %mul9.3.i, %mul.3.i
  %div.3.lhs.trunc.i = trunc i32 %add.3.i to i16
  %div.332.i = udiv i16 %div.3.lhs.trunc.i, 100
  %conv10.3.i = trunc i16 %div.332.i to i8
  %arrayidx11.3.i = getelementptr %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 1, i32 3
  %109 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv10.3.i, ptr %arrayidx11.3.i, align 1
  %110 = select i1 %cmp.i, i32 40, i32 30
  %mul.4.i = mul nuw nsw i32 %110, %conv5.i
  %sub.4.i = sub nuw nsw i32 100, %110
  %mul9.4.i = mul nuw nsw i32 %sub.4.i, %conv8.i
  %add.4.i = add nuw nsw i32 %mul9.4.i, %mul.4.i
  %div.4.lhs.trunc.i = trunc i32 %add.4.i to i16
  %div.433.i = udiv i16 %div.4.lhs.trunc.i, 100
  %conv10.4.i = trunc i16 %div.433.i to i8
  %arrayidx11.4.i = getelementptr %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 1, i32 4
  %111 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv10.4.i, ptr %arrayidx11.4.i, align 1
  %mul9.523.i = add nuw nsw i32 %conv5.i, %conv8.i
  %div.524.i = lshr i32 %mul9.523.i, 1
  %conv10.5.i = trunc i32 %div.524.i to i8
  %arrayidx11.5.i = getelementptr %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 1, i32 5
  %112 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv10.5.i, ptr %arrayidx11.5.i, align 1
  %113 = select i1 %cmp.i, i32 60, i32 70
  %mul.6.i = mul nuw nsw i32 %113, %conv5.i
  %sub.6.i = sub nuw nsw i32 100, %113
  %mul9.6.i = mul nuw nsw i32 %sub.6.i, %conv8.i
  %add.6.i = add nuw nsw i32 %mul9.6.i, %mul.6.i
  %div.634.lhs.trunc.i = trunc i32 %add.6.i to i16
  %div.63435.i = udiv i16 %div.634.lhs.trunc.i, 100
  %conv10.6.i = trunc i16 %div.63435.i to i8
  %arrayidx11.6.i = getelementptr %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 1, i32 6
  %114 = ptrtoint ptr %arrayidx11.6.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv10.6.i, ptr %arrayidx11.6.i, align 1
  %115 = select i1 %cmp.i, i32 70, i32 85
  %mul.7.i = mul nuw nsw i32 %115, %conv5.i
  %sub.7.i = sub nuw nsw i32 100, %115
  %mul9.7.i = mul nuw nsw i32 %sub.7.i, %conv8.i
  %add.7.i = add nuw nsw i32 %mul9.7.i, %mul.7.i
  %div.7.lhs.trunc.i = trunc i32 %add.7.i to i16
  %div.736.i = udiv i16 %div.7.lhs.trunc.i, 100
  %conv10.7.i = trunc i16 %div.736.i to i8
  %arrayidx11.7.i = getelementptr %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 1, i32 7
  %116 = ptrtoint ptr %arrayidx11.7.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv10.7.i, ptr %arrayidx11.7.i, align 1
  %117 = select i1 %cmp.i, i32 80, i32 90
  %mul.8.i = mul nuw nsw i32 %117, %conv5.i
  %sub.8.i = sub nuw nsw i32 100, %117
  %mul9.8.i = mul nuw nsw i32 %sub.8.i, %conv8.i
  %add.8.i = add nuw nsw i32 %mul9.8.i, %mul.8.i
  %div.8.lhs.trunc.i = trunc i32 %add.8.i to i16
  %div.837.i = udiv i16 %div.8.lhs.trunc.i, 100
  %conv10.8.i = trunc i16 %div.837.i to i8
  %arrayidx11.8.i = getelementptr %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 1, i32 8
  %118 = ptrtoint ptr %arrayidx11.8.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv10.8.i, ptr %arrayidx11.8.i, align 1
  %119 = select i1 %cmp.i, i32 90, i32 95
  %mul.9.i = mul nuw nsw i32 %119, %conv5.i
  %sub.9.i = sub nuw nsw i32 100, %119
  %mul9.9.i = mul nuw nsw i32 %sub.9.i, %conv8.i
  %add.9.i = add nuw nsw i32 %mul9.9.i, %mul.9.i
  %div.9.lhs.trunc.i = trunc i32 %add.9.i to i16
  %div.938.i = udiv i16 %div.9.lhs.trunc.i, 100
  %conv10.9.i = trunc i16 %div.938.i to i8
  %arrayidx11.9.i = getelementptr %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 1, i32 9
  %120 = ptrtoint ptr %arrayidx11.9.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv10.9.i, ptr %arrayidx11.9.i, align 1
  %arrayidx11.10.i = getelementptr %struct.ath5k_chan_pcal_info_rf5111, ptr %24, i32 0, i32 1, i32 10
  %121 = ptrtoint ptr %arrayidx11.10.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %100, ptr %arrayidx11.10.i, align 1
  %inc180 = add nuw nsw i32 %i.0268, 1
  %122 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %123 to i32
  %cmp49 = icmp ult i32 %inc180, %conv48
  br i1 %cmp49, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %phi.cmp = icmp eq i8 %123, 0
  %arrayidx.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 44, i32 %mode
  br i1 %phi.cmp, label %for.end.cleanup182_crit_edge, label %for.body.lr.ph.i

for.end.cleanup182_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

for.body.lr.ph.i:                                 ; preds = %for.end
  %arrayidx15.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 36, i32 %mode
  %arrayidx22.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 43, i32 %mode
  br label %for.body.i

for.body.i:                                       ; preds = %for.end59.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv130.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next131.i, %for.end59.i.for.body.i_crit_edge ]
  %124 = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcal.0, i32 %indvars.iv130.i, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %125 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %125, i32 noundef 3520, i32 noundef 48) #9
  %pd_curves.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcal.0, i32 %indvars.iv130.i, i32 4
  %126 = ptrtoint ptr %pd_curves.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call7.i.i.i.i, ptr %pd_curves.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %for.body.i.err_out.i_crit_edge, label %for.cond10.preheader.i

for.body.i.err_out.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

for.cond10.preheader.i:                           ; preds = %for.body.i
  %127 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx15.i, align 2
  %conv16.i = zext i16 %128 to i32
  %129 = and i32 %conv16.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool18.not.i = icmp eq i32 %129, 0
  br i1 %tobool18.not.i, label %for.cond10.preheader.i.if.then19.i_crit_edge, label %for.inc.i

for.cond10.preheader.i.if.then19.i_crit_edge:     ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19.i

if.then19.i:                                      ; preds = %for.inc.2.i.if.then19.i_crit_edge, %for.inc.1.i.if.then19.i_crit_edge, %for.inc.i.if.then19.i_crit_edge, %for.cond10.preheader.i.if.then19.i_crit_edge
  %conv11123.lcssa.i = phi i32 [ 0, %for.cond10.preheader.i.if.then19.i_crit_edge ], [ 1, %for.inc.i.if.then19.i_crit_edge ], [ 2, %for.inc.1.i.if.then19.i_crit_edge ], [ 3, %for.inc.2.i.if.then19.i_crit_edge ]
  %130 = trunc i32 %conv11123.lcssa.i to i8
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %arrayidx.i, align 1
  br label %for.end.i

for.inc.i:                                        ; preds = %for.cond10.preheader.i
  %132 = and i32 %conv16.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool18.not.1.i = icmp eq i32 %132, 0
  br i1 %tobool18.not.1.i, label %for.inc.i.if.then19.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then19.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %133 = and i32 %conv16.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool18.not.2.i = icmp eq i32 %133, 0
  br i1 %tobool18.not.2.i, label %for.inc.1.i.if.then19.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then19.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %134 = and i32 %conv16.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool18.not.3.i = icmp eq i32 %134, 0
  br i1 %tobool18.not.3.i, label %for.inc.2.i.if.then19.i_crit_edge, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.2.i.if.then19.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19.i

for.end.i:                                        ; preds = %for.inc.2.i.for.end.i_crit_edge, %if.then19.i
  %conv11120.i = phi i32 [ %conv11123.lcssa.i, %if.then19.i ], [ 4, %for.inc.2.i.for.end.i_crit_edge ]
  %135 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %arrayidx22.i, align 1
  %136 = ptrtoint ptr %pd_curves.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pd_curves.i, align 4
  %arrayidx27.i = getelementptr %struct.ath5k_pdgain_info, ptr %137, i32 %conv11120.i
  %138 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 11, ptr %arrayidx27.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %139 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i117.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef 3520, i32 noundef 11) #9
  %pd_step.i = getelementptr %struct.ath5k_pdgain_info, ptr %137, i32 %conv11120.i, i32 1
  %140 = ptrtoint ptr %pd_step.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call7.i.i.i117.i, ptr %pd_step.i, align 4
  %tobool30.not.i = icmp eq ptr %call7.i.i.i117.i, null
  br i1 %tobool30.not.i, label %for.end.i.err_out.i_crit_edge, label %if.end32.i

for.end.i.err_out.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

if.end32.i:                                       ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %141 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i118.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %141, i32 noundef 3520, i32 noundef 22) #9
  %pd_pwr.i = getelementptr %struct.ath5k_pdgain_info, ptr %137, i32 %conv11120.i, i32 2
  %142 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call7.i.i.i118.i, ptr %pd_pwr.i, align 4
  %tobool35.not.i = icmp eq ptr %call7.i.i.i118.i, null
  br i1 %tobool35.not.i, label %if.end32.i.err_out.i_crit_edge, label %for.cond38.preheader.i

if.end32.i.err_out.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

for.cond38.preheader.i:                           ; preds = %if.end32.i
  %143 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp42124.not.i = icmp eq i8 %144, 0
  br i1 %cmp42124.not.i, label %for.cond38.preheader.i.for.end59.i_crit_edge, label %for.cond38.preheader.i.for.body44.i_crit_edge

for.cond38.preheader.i.for.body44.i_crit_edge:    ; preds = %for.cond38.preheader.i
  br label %for.body44.i

for.cond38.preheader.i.for.end59.i_crit_edge:     ; preds = %for.cond38.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59.i

for.body44.i:                                     ; preds = %for.body44.i.for.body44.i_crit_edge, %for.cond38.preheader.i.for.body44.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body44.i.for.body44.i_crit_edge ], [ 0, %for.cond38.preheader.i.for.body44.i_crit_edge ]
  %arrayidx46.i = getelementptr [11 x i8], ptr %124, i32 0, i32 %indvars.iv.i
  %145 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = zext i8 %146 to i16
  %mul.i = shl nuw nsw i16 %conv47.i, 1
  %147 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pd_pwr.i, align 4
  %arrayidx51.i = getelementptr i16, ptr %148, i32 %indvars.iv.i
  %149 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %mul.i, ptr %arrayidx51.i, align 2
  %arrayidx53.i = getelementptr %struct.ath5k_chan_pcal_info_rf5111, ptr %124, i32 0, i32 1, i32 %indvars.iv.i
  %150 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx53.i, align 1
  %152 = ptrtoint ptr %pd_step.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pd_step.i, align 4
  %arrayidx56.i = getelementptr i8, ptr %153, i32 %indvars.iv.i
  %154 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %151, ptr %arrayidx56.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %155 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx27.i, align 4
  %157 = zext i8 %156 to i32
  %cmp42.i = icmp ult i32 %indvars.iv.next.i, %157
  br i1 %cmp42.i, label %for.body44.i.for.body44.i_crit_edge, label %for.body44.i.for.end59.i_crit_edge

for.body44.i.for.end59.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59.i

for.body44.i.for.body44.i_crit_edge:              ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44.i

for.end59.i:                                      ; preds = %for.body44.i.for.end59.i_crit_edge, %for.cond38.preheader.i.for.end59.i_crit_edge
  %158 = ptrtoint ptr %pd_pwr.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pd_pwr.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %159, align 2
  %min_pwr.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcal.0, i32 %indvars.iv130.i, i32 2
  %162 = ptrtoint ptr %min_pwr.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %min_pwr.i, align 4
  %163 = load ptr, ptr %pd_pwr.i, align 4
  %arrayidx65.i = getelementptr i16, ptr %163, i32 10
  %164 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx65.i, align 2
  %max_pwr.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcal.0, i32 %indvars.iv130.i, i32 1
  %166 = ptrtoint ptr %max_pwr.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %max_pwr.i, align 2
  %indvars.iv.next131.i = add nuw nsw i32 %indvars.iv130.i, 1
  %167 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx47, align 1
  %169 = zext i8 %168 to i32
  %cmp.i259 = icmp ult i32 %indvars.iv.next131.i, %169
  br i1 %cmp.i259, label %for.end59.i.for.body.i_crit_edge, label %for.end59.i.cleanup182_crit_edge

for.end59.i.cleanup182_crit_edge:                 ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup182

for.end59.i.for.body.i_crit_edge:                 ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

err_out.i:                                        ; preds = %if.end32.i.err_out.i_crit_edge, %for.end.i.err_out.i_crit_edge, %for.body.i.err_out.i_crit_edge
  call fastcc void @ath5k_eeprom_free_pcal_info(ptr noundef %ah, i32 noundef %mode) #6
  br label %cleanup182

cleanup182:                                       ; preds = %err_out.i, %for.end59.i.cleanup182_crit_edge, %for.end.cleanup182_crit_edge, %do.end131.cleanup182_crit_edge, %do.end105.cleanup182_crit_edge, %do.end73.cleanup182_crit_edge, %do.end.cleanup182_crit_edge, %for.body.cleanup182_crit_edge, %sw.epilog.cleanup182_crit_edge, %sw.bb28.cleanup182_crit_edge, %sw.bb8.cleanup182_crit_edge, %if.end.cleanup182_crit_edge, %sw.bb.cleanup182_crit_edge, %entry.cleanup182_crit_edge
  %retval.2 = phi i32 [ 0, %sw.bb.cleanup182_crit_edge ], [ %call, %if.end.cleanup182_crit_edge ], [ 0, %sw.bb8.cleanup182_crit_edge ], [ 0, %sw.bb28.cleanup182_crit_edge ], [ -22, %entry.cleanup182_crit_edge ], [ -12, %err_out.i ], [ 0, %for.end.cleanup182_crit_edge ], [ 0, %sw.epilog.cleanup182_crit_edge ], [ 0, %for.end59.i.cleanup182_crit_edge ], [ -5, %for.body.cleanup182_crit_edge ], [ -5, %do.end.cleanup182_crit_edge ], [ -5, %do.end73.cleanup182_crit_edge ], [ -5, %do.end105.cleanup182_crit_edge ], [ -5, %do.end131.cleanup182_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath5k_eeprom_init_11a_pcal_freq(ptr noundef %ah, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ee_pwr_cal_a = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !25
  %ee_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  %1 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %2)
  %cmp = icmp ugt i16 %2, 12290
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %val.i, align 2, !annotation !25
  %arrayidx.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx.i, align 1
  %bus_ops.i.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 25
  br label %do.body.i

do.body.i:                                        ; preds = %ath5k_eeprom_bin2freq.exit22.i.do.body.i_crit_edge, %if.then
  %i.025.i = phi i32 [ 0, %if.then ], [ %inc19.i, %ath5k_eeprom_bin2freq.exit22.i.do.body.i_crit_edge ]
  %o.024.i = phi i32 [ %offset, %if.then ], [ %inc.i, %ath5k_eeprom_bin2freq.exit22.i.do.body.i_crit_edge ]
  %inc.i = add i32 %o.024.i, 1
  %5 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %eeprom_read.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eeprom_read.i.i, align 4
  %call1.i.i = call zeroext i1 %8(ptr noundef %ah, i32 noundef %o.024.i, ptr noundef nonnull %val.i) #6
  br i1 %call1.i.i, label %do.end.i, label %do.body.i.ath5k_eeprom_read_freq_list.exit_crit_edge

do.body.i.ath5k_eeprom_read_freq_list.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_freq_list.exit

do.end.i:                                         ; preds = %do.body.i
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val.i, align 2
  %conv1.i = trunc i16 %10 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool.not.i = icmp eq i8 %conv1.i, 0
  br i1 %tobool.not.i, label %do.end.i.ath5k_eeprom_read_freq_list.exit_crit_edge, label %if.end3.i

do.end.i.ath5k_eeprom_read_freq_list.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_freq_list.exit

if.end3.i:                                        ; preds = %do.end.i
  %conv4.i = and i16 %10, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %conv4.i)
  %cmp.i.i = icmp eq i16 %conv4.i, 255
  br i1 %cmp.i.i, label %if.end3.i.ath5k_eeprom_bin2freq.exit.i_crit_edge, label %if.end.i.i

if.end3.i.ath5k_eeprom_bin2freq.exit.i_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.i

if.end.i.i:                                       ; preds = %if.end3.i
  %11 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %12)
  %cmp6.i.i = icmp ugt i16 %12, 12290
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.i = mul nuw nsw i16 %conv4.i, 5
  %add.i.i = add nuw nsw i16 %mul.i.i, 4800
  br label %ath5k_eeprom_bin2freq.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %conv4.i)
  %cmp12.i.i = icmp ugt i16 %conv4.i, 62
  %13 = mul nuw nsw i16 %conv4.i, 5
  %add16.i.i = add nuw nsw i16 %13, 310
  %mul19.i.i = mul nuw nsw i16 %conv4.i, 10
  %cond.in.i.i = select i1 %cmp12.i.i, i16 %add16.i.i, i16 %mul19.i.i
  %cond.i.i = add nuw nsw i16 %cond.in.i.i, 5100
  br label %ath5k_eeprom_bin2freq.exit.i

ath5k_eeprom_bin2freq.exit.i:                     ; preds = %if.else.i.i, %if.then8.i.i, %if.end3.i.ath5k_eeprom_bin2freq.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 255, %if.end3.i.ath5k_eeprom_bin2freq.exit.i_crit_edge ], [ %add.i.i, %if.then8.i.i ], [ %cond.i.i, %if.else.i.i ]
  %arrayidx7.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %ee_pwr_cal_a, i32 %i.025.i
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %retval.0.i.i, ptr %arrayidx7.i, align 4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %inc10.i = add i8 %16, 1
  store i8 %inc10.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %10)
  %tobool14.not.i = icmp ult i16 %10, 256
  br i1 %tobool14.not.i, label %ath5k_eeprom_bin2freq.exit.i.ath5k_eeprom_read_freq_list.exit_crit_edge, label %if.end16.i

ath5k_eeprom_bin2freq.exit.i.ath5k_eeprom_read_freq_list.exit_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_freq_list.exit

if.end16.i:                                       ; preds = %ath5k_eeprom_bin2freq.exit.i
  %17 = lshr i16 %10, 8
  %inc6.i = or i32 %i.025.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %17)
  %cmp.i1.i = icmp eq i16 %17, 255
  br i1 %cmp.i1.i, label %if.end16.i.ath5k_eeprom_bin2freq.exit22.i_crit_edge, label %if.end.i5.i

if.end16.i.ath5k_eeprom_bin2freq.exit22.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit22.i

if.end.i5.i:                                      ; preds = %if.end16.i
  %18 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %19)
  %cmp6.i4.i = icmp ugt i16 %19, 12290
  br i1 %cmp6.i4.i, label %if.then8.i9.i, label %if.else.i15.i

if.then8.i9.i:                                    ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i7.i = mul nuw nsw i16 %17, 5
  %add.i8.i = add nuw nsw i16 %mul.i7.i, 4800
  br label %ath5k_eeprom_bin2freq.exit22.i

if.else.i15.i:                                    ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16127, i16 %10)
  %cmp12.i10.i = icmp ugt i16 %10, 16127
  %20 = mul nuw nsw i16 %17, 5
  %add16.i11.i = add nuw nsw i16 %20, 310
  %mul19.i12.i = mul nuw nsw i16 %17, 10
  %cond.in.i13.i = select i1 %cmp12.i10.i, i16 %add16.i11.i, i16 %mul19.i12.i
  %cond.i14.i = add nuw nsw i16 %cond.in.i13.i, 5100
  br label %ath5k_eeprom_bin2freq.exit22.i

ath5k_eeprom_bin2freq.exit22.i:                   ; preds = %if.else.i15.i, %if.then8.i9.i, %if.end16.i.ath5k_eeprom_bin2freq.exit22.i_crit_edge
  %retval.0.i21.i = phi i16 [ 255, %if.end16.i.ath5k_eeprom_bin2freq.exit22.i_crit_edge ], [ %add.i8.i, %if.then8.i9.i ], [ %cond.i14.i, %if.else.i15.i ]
  %inc19.i = add nuw nsw i32 %i.025.i, 2
  %arrayidx20.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %ee_pwr_cal_a, i32 %inc6.i
  %21 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %retval.0.i21.i, ptr %arrayidx20.i, align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %inc24.i = add i8 %23, 1
  store i8 %inc24.i, ptr %arrayidx.i, align 1
  %cmp.i = icmp ult i32 %i.025.i, 8
  br i1 %cmp.i, label %ath5k_eeprom_bin2freq.exit22.i.do.body.i_crit_edge, label %ath5k_eeprom_bin2freq.exit22.i.ath5k_eeprom_read_freq_list.exit_crit_edge

ath5k_eeprom_bin2freq.exit22.i.ath5k_eeprom_read_freq_list.exit_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_freq_list.exit

ath5k_eeprom_bin2freq.exit22.i.do.body.i_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

ath5k_eeprom_read_freq_list.exit:                 ; preds = %ath5k_eeprom_bin2freq.exit22.i.ath5k_eeprom_read_freq_list.exit_crit_edge, %ath5k_eeprom_bin2freq.exit.i.ath5k_eeprom_read_freq_list.exit_crit_edge, %do.end.i.ath5k_eeprom_read_freq_list.exit_crit_edge, %do.body.i.ath5k_eeprom_read_freq_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %bus_ops.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 25
  %24 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i = getelementptr inbounds %struct.ath_bus_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %eeprom_read.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %eeprom_read.i, align 4
  %call1.i = call zeroext i1 %27(ptr noundef %ah, i32 noundef %offset, ptr noundef nonnull %val) #6
  br i1 %call1.i, label %do.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.else
  %inc = add i32 %offset, 1
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %val, align 2
  %30 = lshr i16 %29, 9
  %31 = ptrtoint ptr %ee_pwr_cal_a to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %ee_pwr_cal_a, align 4
  %32 = lshr i16 %29, 2
  %33 = and i16 %32, 127
  %arrayidx19 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 1
  %34 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx19, align 4
  %shl = shl i16 %29, 5
  %and23 = and i16 %shl, 96
  %arrayidx25 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 2
  %35 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %and23, ptr %arrayidx25, align 4
  %36 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i192 = getelementptr inbounds %struct.ath_bus_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %eeprom_read.i192 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eeprom_read.i192, align 4
  %call1.i193 = call zeroext i1 %39(ptr noundef %ah, i32 noundef %inc, ptr noundef nonnull %val) #6
  br i1 %call1.i193, label %do.end33, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end33:                                         ; preds = %do.end
  %inc28 = add i32 %offset, 2
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %val, align 2
  %42 = lshr i16 %41, 11
  %43 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx25, align 4
  %or187 = or i16 %44, %42
  store i16 %or187, ptr %arrayidx25, align 4
  %45 = lshr i16 %41, 4
  %46 = and i16 %45, 127
  %arrayidx46 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 3
  %47 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %arrayidx46, align 4
  %shl49 = shl i16 %41, 3
  %and51 = and i16 %shl49, 120
  %arrayidx53 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 4
  %48 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %and51, ptr %arrayidx53, align 4
  %49 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i195 = getelementptr inbounds %struct.ath_bus_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %eeprom_read.i195 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %eeprom_read.i195, align 4
  %call1.i196 = call zeroext i1 %52(ptr noundef %ah, i32 noundef %inc28, ptr noundef nonnull %val) #6
  br i1 %call1.i196, label %do.end61, label %do.end33.cleanup_crit_edge

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end61:                                         ; preds = %do.end33
  %inc56 = add i32 %offset, 3
  %53 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %val, align 2
  %55 = lshr i16 %54, 13
  %56 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx53, align 4
  %or68188 = or i16 %57, %55
  store i16 %or68188, ptr %arrayidx53, align 4
  %58 = lshr i16 %54, 6
  %59 = and i16 %58, 127
  %arrayidx75 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 5
  %60 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %arrayidx75, align 4
  %shl78 = shl i16 %54, 1
  %and80 = and i16 %shl78, 126
  %arrayidx82 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 6
  %61 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %and80, ptr %arrayidx82, align 4
  %62 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i198 = getelementptr inbounds %struct.ath_bus_ops, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %eeprom_read.i198 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %eeprom_read.i198, align 4
  %call1.i199 = call zeroext i1 %65(ptr noundef %ah, i32 noundef %inc56, ptr noundef nonnull %val) #6
  br i1 %call1.i199, label %do.end90, label %do.end61.cleanup_crit_edge

do.end61.cleanup_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end90:                                         ; preds = %do.end61
  %inc85 = add i32 %offset, 4
  %66 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %val, align 2
  %68 = lshr i16 %67, 15
  %69 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx82, align 4
  %or97189 = or i16 %70, %68
  store i16 %or97189, ptr %arrayidx82, align 4
  %71 = lshr i16 %67, 8
  %72 = and i16 %71, 127
  %arrayidx104 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 7
  %73 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %arrayidx104, align 4
  %74 = lshr i16 %67, 1
  %75 = and i16 %74, 127
  %arrayidx111 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 8
  %76 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %arrayidx111, align 4
  %shl114 = shl i16 %67, 6
  %and116 = and i16 %shl114, 64
  %arrayidx118 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 9
  %77 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %and116, ptr %arrayidx118, align 4
  %78 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i201 = getelementptr inbounds %struct.ath_bus_ops, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %eeprom_read.i201 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %eeprom_read.i201, align 4
  %call1.i202 = call zeroext i1 %81(ptr noundef %ah, i32 noundef %inc85, ptr noundef nonnull %val) #6
  br i1 %call1.i202, label %do.end126, label %do.end90.cleanup_crit_edge

do.end90.cleanup_crit_edge:                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end126:                                        ; preds = %do.end90
  %82 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %val, align 2
  %84 = lshr i16 %83, 10
  %85 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx118, align 4
  %or133190 = or i16 %86, %84
  store i16 %or133190, ptr %arrayidx118, align 4
  %ee_n_piers = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45
  %87 = ptrtoint ptr %ee_n_piers to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 10, ptr %ee_n_piers, align 1
  %88 = ptrtoint ptr %ee_pwr_cal_a to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %ee_pwr_cal_a, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %89)
  %cmp.i203 = icmp eq i16 %89, 255
  br i1 %cmp.i203, label %do.end126.ath5k_eeprom_bin2freq.exit_crit_edge, label %if.end.i

do.end126.ath5k_eeprom_bin2freq.exit_crit_edge:   ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit

if.end.i:                                         ; preds = %do.end126
  %90 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %91)
  %cmp6.i = icmp ugt i16 %91, 12290
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul i16 %89, 5
  %add.i = add i16 %mul.i, 4800
  br label %ath5k_eeprom_bin2freq.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %89)
  %cmp12.i = icmp ugt i16 %89, 62
  %92 = mul i16 %89, 5
  %add16.i = add i16 %92, 310
  %mul19.i = mul i16 %89, 10
  %cond.in.i = select i1 %cmp12.i, i16 %add16.i, i16 %mul19.i
  %cond.i = add i16 %cond.in.i, 5100
  br label %ath5k_eeprom_bin2freq.exit

ath5k_eeprom_bin2freq.exit:                       ; preds = %if.else.i, %if.then8.i, %do.end126.ath5k_eeprom_bin2freq.exit_crit_edge
  %retval.0.i = phi i16 [ 255, %do.end126.ath5k_eeprom_bin2freq.exit_crit_edge ], [ %add.i, %if.then8.i ], [ %cond.i, %if.else.i ]
  %93 = ptrtoint ptr %ee_pwr_cal_a to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %retval.0.i, ptr %ee_pwr_cal_a, align 4
  %arrayidx138.1 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 1
  %94 = ptrtoint ptr %arrayidx138.1 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx138.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %95)
  %cmp.i203.1 = icmp eq i16 %95, 255
  br i1 %cmp.i203.1, label %ath5k_eeprom_bin2freq.exit.ath5k_eeprom_bin2freq.exit.1_crit_edge, label %if.end.i.1

ath5k_eeprom_bin2freq.exit.ath5k_eeprom_bin2freq.exit.1_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.1

if.end.i.1:                                       ; preds = %ath5k_eeprom_bin2freq.exit
  %96 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %97)
  %cmp6.i.1 = icmp ugt i16 %97, 12290
  br i1 %cmp6.i.1, label %if.then8.i.1, label %if.else.i.1

if.else.i.1:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %95)
  %cmp12.i.1 = icmp ugt i16 %95, 62
  %98 = mul i16 %95, 5
  %add16.i.1 = add i16 %98, 310
  %mul19.i.1 = mul i16 %95, 10
  %cond.in.i.1 = select i1 %cmp12.i.1, i16 %add16.i.1, i16 %mul19.i.1
  %cond.i.1 = add i16 %cond.in.i.1, 5100
  br label %ath5k_eeprom_bin2freq.exit.1

if.then8.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.1 = mul i16 %95, 5
  %add.i.1 = add i16 %mul.i.1, 4800
  br label %ath5k_eeprom_bin2freq.exit.1

ath5k_eeprom_bin2freq.exit.1:                     ; preds = %if.then8.i.1, %if.else.i.1, %ath5k_eeprom_bin2freq.exit.ath5k_eeprom_bin2freq.exit.1_crit_edge
  %retval.0.i.1 = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.ath5k_eeprom_bin2freq.exit.1_crit_edge ], [ %add.i.1, %if.then8.i.1 ], [ %cond.i.1, %if.else.i.1 ]
  %99 = ptrtoint ptr %arrayidx138.1 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %retval.0.i.1, ptr %arrayidx138.1, align 4
  %arrayidx138.2 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 2
  %100 = ptrtoint ptr %arrayidx138.2 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx138.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %101)
  %cmp.i203.2 = icmp eq i16 %101, 255
  br i1 %cmp.i203.2, label %ath5k_eeprom_bin2freq.exit.1.ath5k_eeprom_bin2freq.exit.2_crit_edge, label %if.end.i.2

ath5k_eeprom_bin2freq.exit.1.ath5k_eeprom_bin2freq.exit.2_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.2

if.end.i.2:                                       ; preds = %ath5k_eeprom_bin2freq.exit.1
  %102 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %103)
  %cmp6.i.2 = icmp ugt i16 %103, 12290
  br i1 %cmp6.i.2, label %if.then8.i.2, label %if.else.i.2

if.else.i.2:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %101)
  %cmp12.i.2 = icmp ugt i16 %101, 62
  %104 = mul i16 %101, 5
  %add16.i.2 = add i16 %104, 310
  %mul19.i.2 = mul i16 %101, 10
  %cond.in.i.2 = select i1 %cmp12.i.2, i16 %add16.i.2, i16 %mul19.i.2
  %cond.i.2 = add i16 %cond.in.i.2, 5100
  br label %ath5k_eeprom_bin2freq.exit.2

if.then8.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.2 = mul i16 %101, 5
  %add.i.2 = add i16 %mul.i.2, 4800
  br label %ath5k_eeprom_bin2freq.exit.2

ath5k_eeprom_bin2freq.exit.2:                     ; preds = %if.then8.i.2, %if.else.i.2, %ath5k_eeprom_bin2freq.exit.1.ath5k_eeprom_bin2freq.exit.2_crit_edge
  %retval.0.i.2 = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.1.ath5k_eeprom_bin2freq.exit.2_crit_edge ], [ %add.i.2, %if.then8.i.2 ], [ %cond.i.2, %if.else.i.2 ]
  %105 = ptrtoint ptr %arrayidx138.2 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %retval.0.i.2, ptr %arrayidx138.2, align 4
  %arrayidx138.3 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 3
  %106 = ptrtoint ptr %arrayidx138.3 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx138.3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %107)
  %cmp.i203.3 = icmp eq i16 %107, 255
  br i1 %cmp.i203.3, label %ath5k_eeprom_bin2freq.exit.2.ath5k_eeprom_bin2freq.exit.3_crit_edge, label %if.end.i.3

ath5k_eeprom_bin2freq.exit.2.ath5k_eeprom_bin2freq.exit.3_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.3

if.end.i.3:                                       ; preds = %ath5k_eeprom_bin2freq.exit.2
  %108 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %109)
  %cmp6.i.3 = icmp ugt i16 %109, 12290
  br i1 %cmp6.i.3, label %if.then8.i.3, label %if.else.i.3

if.else.i.3:                                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %107)
  %cmp12.i.3 = icmp ugt i16 %107, 62
  %110 = mul i16 %107, 5
  %add16.i.3 = add i16 %110, 310
  %mul19.i.3 = mul i16 %107, 10
  %cond.in.i.3 = select i1 %cmp12.i.3, i16 %add16.i.3, i16 %mul19.i.3
  %cond.i.3 = add i16 %cond.in.i.3, 5100
  br label %ath5k_eeprom_bin2freq.exit.3

if.then8.i.3:                                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.3 = mul i16 %107, 5
  %add.i.3 = add i16 %mul.i.3, 4800
  br label %ath5k_eeprom_bin2freq.exit.3

ath5k_eeprom_bin2freq.exit.3:                     ; preds = %if.then8.i.3, %if.else.i.3, %ath5k_eeprom_bin2freq.exit.2.ath5k_eeprom_bin2freq.exit.3_crit_edge
  %retval.0.i.3 = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.2.ath5k_eeprom_bin2freq.exit.3_crit_edge ], [ %add.i.3, %if.then8.i.3 ], [ %cond.i.3, %if.else.i.3 ]
  %111 = ptrtoint ptr %arrayidx138.3 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %retval.0.i.3, ptr %arrayidx138.3, align 4
  %arrayidx138.4 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 4
  %112 = ptrtoint ptr %arrayidx138.4 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx138.4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %113)
  %cmp.i203.4 = icmp eq i16 %113, 255
  br i1 %cmp.i203.4, label %ath5k_eeprom_bin2freq.exit.3.ath5k_eeprom_bin2freq.exit.4_crit_edge, label %if.end.i.4

ath5k_eeprom_bin2freq.exit.3.ath5k_eeprom_bin2freq.exit.4_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.4

if.end.i.4:                                       ; preds = %ath5k_eeprom_bin2freq.exit.3
  %114 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %115)
  %cmp6.i.4 = icmp ugt i16 %115, 12290
  br i1 %cmp6.i.4, label %if.then8.i.4, label %if.else.i.4

if.else.i.4:                                      ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %113)
  %cmp12.i.4 = icmp ugt i16 %113, 62
  %116 = mul i16 %113, 5
  %add16.i.4 = add i16 %116, 310
  %mul19.i.4 = mul i16 %113, 10
  %cond.in.i.4 = select i1 %cmp12.i.4, i16 %add16.i.4, i16 %mul19.i.4
  %cond.i.4 = add i16 %cond.in.i.4, 5100
  br label %ath5k_eeprom_bin2freq.exit.4

if.then8.i.4:                                     ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.4 = mul i16 %113, 5
  %add.i.4 = add i16 %mul.i.4, 4800
  br label %ath5k_eeprom_bin2freq.exit.4

ath5k_eeprom_bin2freq.exit.4:                     ; preds = %if.then8.i.4, %if.else.i.4, %ath5k_eeprom_bin2freq.exit.3.ath5k_eeprom_bin2freq.exit.4_crit_edge
  %retval.0.i.4 = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.3.ath5k_eeprom_bin2freq.exit.4_crit_edge ], [ %add.i.4, %if.then8.i.4 ], [ %cond.i.4, %if.else.i.4 ]
  %117 = ptrtoint ptr %arrayidx138.4 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %retval.0.i.4, ptr %arrayidx138.4, align 4
  %arrayidx138.5 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 5
  %118 = ptrtoint ptr %arrayidx138.5 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx138.5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %119)
  %cmp.i203.5 = icmp eq i16 %119, 255
  br i1 %cmp.i203.5, label %ath5k_eeprom_bin2freq.exit.4.ath5k_eeprom_bin2freq.exit.5_crit_edge, label %if.end.i.5

ath5k_eeprom_bin2freq.exit.4.ath5k_eeprom_bin2freq.exit.5_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.5

if.end.i.5:                                       ; preds = %ath5k_eeprom_bin2freq.exit.4
  %120 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %121)
  %cmp6.i.5 = icmp ugt i16 %121, 12290
  br i1 %cmp6.i.5, label %if.then8.i.5, label %if.else.i.5

if.else.i.5:                                      ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %119)
  %cmp12.i.5 = icmp ugt i16 %119, 62
  %122 = mul i16 %119, 5
  %add16.i.5 = add i16 %122, 310
  %mul19.i.5 = mul i16 %119, 10
  %cond.in.i.5 = select i1 %cmp12.i.5, i16 %add16.i.5, i16 %mul19.i.5
  %cond.i.5 = add i16 %cond.in.i.5, 5100
  br label %ath5k_eeprom_bin2freq.exit.5

if.then8.i.5:                                     ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.5 = mul i16 %119, 5
  %add.i.5 = add i16 %mul.i.5, 4800
  br label %ath5k_eeprom_bin2freq.exit.5

ath5k_eeprom_bin2freq.exit.5:                     ; preds = %if.then8.i.5, %if.else.i.5, %ath5k_eeprom_bin2freq.exit.4.ath5k_eeprom_bin2freq.exit.5_crit_edge
  %retval.0.i.5 = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.4.ath5k_eeprom_bin2freq.exit.5_crit_edge ], [ %add.i.5, %if.then8.i.5 ], [ %cond.i.5, %if.else.i.5 ]
  %123 = ptrtoint ptr %arrayidx138.5 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %retval.0.i.5, ptr %arrayidx138.5, align 4
  %arrayidx138.6 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 6
  %124 = ptrtoint ptr %arrayidx138.6 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx138.6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %125)
  %cmp.i203.6 = icmp eq i16 %125, 255
  br i1 %cmp.i203.6, label %ath5k_eeprom_bin2freq.exit.5.ath5k_eeprom_bin2freq.exit.6_crit_edge, label %if.end.i.6

ath5k_eeprom_bin2freq.exit.5.ath5k_eeprom_bin2freq.exit.6_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.6

if.end.i.6:                                       ; preds = %ath5k_eeprom_bin2freq.exit.5
  %126 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %127)
  %cmp6.i.6 = icmp ugt i16 %127, 12290
  br i1 %cmp6.i.6, label %if.then8.i.6, label %if.else.i.6

if.else.i.6:                                      ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %125)
  %cmp12.i.6 = icmp ugt i16 %125, 62
  %128 = mul i16 %125, 5
  %add16.i.6 = add i16 %128, 310
  %mul19.i.6 = mul i16 %125, 10
  %cond.in.i.6 = select i1 %cmp12.i.6, i16 %add16.i.6, i16 %mul19.i.6
  %cond.i.6 = add i16 %cond.in.i.6, 5100
  br label %ath5k_eeprom_bin2freq.exit.6

if.then8.i.6:                                     ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.6 = mul i16 %125, 5
  %add.i.6 = add i16 %mul.i.6, 4800
  br label %ath5k_eeprom_bin2freq.exit.6

ath5k_eeprom_bin2freq.exit.6:                     ; preds = %if.then8.i.6, %if.else.i.6, %ath5k_eeprom_bin2freq.exit.5.ath5k_eeprom_bin2freq.exit.6_crit_edge
  %retval.0.i.6 = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.5.ath5k_eeprom_bin2freq.exit.6_crit_edge ], [ %add.i.6, %if.then8.i.6 ], [ %cond.i.6, %if.else.i.6 ]
  %129 = ptrtoint ptr %arrayidx138.6 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %retval.0.i.6, ptr %arrayidx138.6, align 4
  %arrayidx138.7 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 7
  %130 = ptrtoint ptr %arrayidx138.7 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx138.7, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %131)
  %cmp.i203.7 = icmp eq i16 %131, 255
  br i1 %cmp.i203.7, label %ath5k_eeprom_bin2freq.exit.6.ath5k_eeprom_bin2freq.exit.7_crit_edge, label %if.end.i.7

ath5k_eeprom_bin2freq.exit.6.ath5k_eeprom_bin2freq.exit.7_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.7

if.end.i.7:                                       ; preds = %ath5k_eeprom_bin2freq.exit.6
  %132 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %133)
  %cmp6.i.7 = icmp ugt i16 %133, 12290
  br i1 %cmp6.i.7, label %if.then8.i.7, label %if.else.i.7

if.else.i.7:                                      ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %131)
  %cmp12.i.7 = icmp ugt i16 %131, 62
  %134 = mul i16 %131, 5
  %add16.i.7 = add i16 %134, 310
  %mul19.i.7 = mul i16 %131, 10
  %cond.in.i.7 = select i1 %cmp12.i.7, i16 %add16.i.7, i16 %mul19.i.7
  %cond.i.7 = add i16 %cond.in.i.7, 5100
  br label %ath5k_eeprom_bin2freq.exit.7

if.then8.i.7:                                     ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.7 = mul i16 %131, 5
  %add.i.7 = add i16 %mul.i.7, 4800
  br label %ath5k_eeprom_bin2freq.exit.7

ath5k_eeprom_bin2freq.exit.7:                     ; preds = %if.then8.i.7, %if.else.i.7, %ath5k_eeprom_bin2freq.exit.6.ath5k_eeprom_bin2freq.exit.7_crit_edge
  %retval.0.i.7 = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.6.ath5k_eeprom_bin2freq.exit.7_crit_edge ], [ %add.i.7, %if.then8.i.7 ], [ %cond.i.7, %if.else.i.7 ]
  %135 = ptrtoint ptr %arrayidx138.7 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %retval.0.i.7, ptr %arrayidx138.7, align 4
  %arrayidx138.8 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 8
  %136 = ptrtoint ptr %arrayidx138.8 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx138.8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %137)
  %cmp.i203.8 = icmp eq i16 %137, 255
  br i1 %cmp.i203.8, label %ath5k_eeprom_bin2freq.exit.7.ath5k_eeprom_bin2freq.exit.8_crit_edge, label %if.end.i.8

ath5k_eeprom_bin2freq.exit.7.ath5k_eeprom_bin2freq.exit.8_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.8

if.end.i.8:                                       ; preds = %ath5k_eeprom_bin2freq.exit.7
  %138 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %139)
  %cmp6.i.8 = icmp ugt i16 %139, 12290
  br i1 %cmp6.i.8, label %if.then8.i.8, label %if.else.i.8

if.else.i.8:                                      ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %137)
  %cmp12.i.8 = icmp ugt i16 %137, 62
  %140 = mul i16 %137, 5
  %add16.i.8 = add i16 %140, 310
  %mul19.i.8 = mul i16 %137, 10
  %cond.in.i.8 = select i1 %cmp12.i.8, i16 %add16.i.8, i16 %mul19.i.8
  %cond.i.8 = add i16 %cond.in.i.8, 5100
  br label %ath5k_eeprom_bin2freq.exit.8

if.then8.i.8:                                     ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.8 = mul i16 %137, 5
  %add.i.8 = add i16 %mul.i.8, 4800
  br label %ath5k_eeprom_bin2freq.exit.8

ath5k_eeprom_bin2freq.exit.8:                     ; preds = %if.then8.i.8, %if.else.i.8, %ath5k_eeprom_bin2freq.exit.7.ath5k_eeprom_bin2freq.exit.8_crit_edge
  %retval.0.i.8 = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.7.ath5k_eeprom_bin2freq.exit.8_crit_edge ], [ %add.i.8, %if.then8.i.8 ], [ %cond.i.8, %if.else.i.8 ]
  %141 = ptrtoint ptr %arrayidx138.8 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %retval.0.i.8, ptr %arrayidx138.8, align 4
  %arrayidx138.9 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 46, i32 9
  %142 = ptrtoint ptr %arrayidx138.9 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx138.9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %143)
  %cmp.i203.9 = icmp eq i16 %143, 255
  br i1 %cmp.i203.9, label %ath5k_eeprom_bin2freq.exit.8.ath5k_eeprom_bin2freq.exit.9_crit_edge, label %if.end.i.9

ath5k_eeprom_bin2freq.exit.8.ath5k_eeprom_bin2freq.exit.9_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.9

if.end.i.9:                                       ; preds = %ath5k_eeprom_bin2freq.exit.8
  %144 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %145)
  %cmp6.i.9 = icmp ugt i16 %145, 12290
  br i1 %cmp6.i.9, label %if.then8.i.9, label %if.else.i.9

if.else.i.9:                                      ; preds = %if.end.i.9
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %143)
  %cmp12.i.9 = icmp ugt i16 %143, 62
  %146 = mul i16 %143, 5
  %add16.i.9 = add i16 %146, 310
  %mul19.i.9 = mul i16 %143, 10
  %cond.in.i.9 = select i1 %cmp12.i.9, i16 %add16.i.9, i16 %mul19.i.9
  %cond.i.9 = add i16 %cond.in.i.9, 5100
  br label %ath5k_eeprom_bin2freq.exit.9

if.then8.i.9:                                     ; preds = %if.end.i.9
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.9 = mul i16 %143, 5
  %add.i.9 = add i16 %mul.i.9, 4800
  br label %ath5k_eeprom_bin2freq.exit.9

ath5k_eeprom_bin2freq.exit.9:                     ; preds = %if.then8.i.9, %if.else.i.9, %ath5k_eeprom_bin2freq.exit.8.ath5k_eeprom_bin2freq.exit.9_crit_edge
  %retval.0.i.9 = phi i16 [ 255, %ath5k_eeprom_bin2freq.exit.8.ath5k_eeprom_bin2freq.exit.9_crit_edge ], [ %add.i.9, %if.then8.i.9 ], [ %cond.i.9, %if.else.i.9 ]
  %147 = ptrtoint ptr %arrayidx138.9 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %retval.0.i.9, ptr %arrayidx138.9, align 4
  br label %cleanup

cleanup:                                          ; preds = %ath5k_eeprom_bin2freq.exit.9, %do.end90.cleanup_crit_edge, %do.end61.cleanup_crit_edge, %do.end33.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.else.cleanup_crit_edge, %ath5k_eeprom_read_freq_list.exit
  %retval.0 = phi i32 [ -5, %if.else.cleanup_crit_edge ], [ -5, %do.end.cleanup_crit_edge ], [ -5, %do.end33.cleanup_crit_edge ], [ -5, %do.end61.cleanup_crit_edge ], [ -5, %do.end90.cleanup_crit_edge ], [ 0, %ath5k_eeprom_read_freq_list.exit ], [ 0, %ath5k_eeprom_bin2freq.exit.9 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_eeprom_init_11bg_2413(ptr noundef %ah, i32 noundef %mode, i32 noundef %offset) unnamed_addr #5 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ee_pwr_cal_b = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 47
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ee_pwr_cal_g = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 48
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %pcal.0 = phi ptr [ %ee_pwr_cal_g, %sw.bb1 ], [ %ee_pwr_cal_b, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %val.i, align 2, !annotation !25
  %arrayidx.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 45, i32 %mode
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx.i, align 1
  %bus_ops.i.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 25
  %ee_version.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  %inc.i = add i32 %offset, 1
  %3 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %eeprom_read.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eeprom_read.i.i, align 4
  %call1.i.i = call zeroext i1 %6(ptr noundef %ah, i32 noundef %offset, ptr noundef nonnull %val.i) #6
  br i1 %call1.i.i, label %do.end.i, label %sw.epilog.ath5k_eeprom_read_freq_list.exit_crit_edge

sw.epilog.ath5k_eeprom_read_freq_list.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_freq_list.exit

do.end.i:                                         ; preds = %sw.epilog
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val.i, align 2
  %conv1.i = trunc i16 %8 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool.not.i = icmp eq i8 %conv1.i, 0
  br i1 %tobool.not.i, label %do.end.i.ath5k_eeprom_read_freq_list.exit_crit_edge, label %if.end3.i

do.end.i.ath5k_eeprom_read_freq_list.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_freq_list.exit

if.end3.i:                                        ; preds = %do.end.i
  %conv4.i = and i16 %8, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %conv4.i)
  %cmp.i.i = icmp eq i16 %conv4.i, 255
  br i1 %cmp.i.i, label %if.end3.i.ath5k_eeprom_bin2freq.exit.i_crit_edge, label %if.end.i.i

if.end3.i.ath5k_eeprom_bin2freq.exit.i_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.i

if.end.i.i:                                       ; preds = %if.end3.i
  %9 = ptrtoint ptr %ee_version.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ee_version.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %10)
  %cmp6.i.i = icmp ugt i16 %10, 12290
  br i1 %cmp6.i.i, label %if.then28.i.i, label %if.else32.i.i

if.then28.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i.i = add nuw nsw i16 %conv4.i, 2300
  br label %ath5k_eeprom_bin2freq.exit.i

if.else32.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.i = add nuw nsw i16 %conv4.i, 2400
  br label %ath5k_eeprom_bin2freq.exit.i

ath5k_eeprom_bin2freq.exit.i:                     ; preds = %if.else32.i.i, %if.then28.i.i, %if.end3.i.ath5k_eeprom_bin2freq.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 255, %if.end3.i.ath5k_eeprom_bin2freq.exit.i_crit_edge ], [ %add30.i.i, %if.then28.i.i ], [ %add34.i.i, %if.else32.i.i ]
  %11 = ptrtoint ptr %pcal.0 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %retval.0.i.i, ptr %pcal.0, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %inc10.i = add i8 %13, 1
  store i8 %inc10.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %tobool14.not.i = icmp ult i16 %8, 256
  br i1 %tobool14.not.i, label %ath5k_eeprom_bin2freq.exit.i.ath5k_eeprom_read_freq_list.exit_crit_edge, label %if.end16.i

ath5k_eeprom_bin2freq.exit.i.ath5k_eeprom_read_freq_list.exit_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_freq_list.exit

if.end16.i:                                       ; preds = %ath5k_eeprom_bin2freq.exit.i
  %14 = lshr i16 %8, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %14)
  %cmp.i1.i = icmp eq i16 %14, 255
  br i1 %cmp.i1.i, label %if.end16.i.ath5k_eeprom_bin2freq.exit22.i_crit_edge, label %if.end.i5.i

if.end16.i.ath5k_eeprom_bin2freq.exit22.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit22.i

if.end.i5.i:                                      ; preds = %if.end16.i
  %15 = ptrtoint ptr %ee_version.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ee_version.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %16)
  %cmp6.i4.i = icmp ugt i16 %16, 12290
  br i1 %cmp6.i4.i, label %if.then28.i18.i, label %if.else32.i20.i

if.then28.i18.i:                                  ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i17.i = add nuw nsw i16 %14, 2300
  br label %ath5k_eeprom_bin2freq.exit22.i

if.else32.i20.i:                                  ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i19.i = add nuw nsw i16 %14, 2400
  br label %ath5k_eeprom_bin2freq.exit22.i

ath5k_eeprom_bin2freq.exit22.i:                   ; preds = %if.else32.i20.i, %if.then28.i18.i, %if.end16.i.ath5k_eeprom_bin2freq.exit22.i_crit_edge
  %retval.0.i21.i = phi i16 [ 255, %if.end16.i.ath5k_eeprom_bin2freq.exit22.i_crit_edge ], [ %add30.i17.i, %if.then28.i18.i ], [ %add34.i19.i, %if.else32.i20.i ]
  %arrayidx20.i = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcal.0, i32 1
  %17 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %retval.0.i21.i, ptr %arrayidx20.i, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %inc24.i = add i8 %19, 1
  store i8 %inc24.i, ptr %arrayidx.i, align 1
  %20 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_ops.i.i, align 4
  %eeprom_read.i.i.1 = getelementptr inbounds %struct.ath_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %eeprom_read.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eeprom_read.i.i.1, align 4
  %call1.i.i.1 = call zeroext i1 %23(ptr noundef %ah, i32 noundef %inc.i, ptr noundef nonnull %val.i) #6
  br i1 %call1.i.i.1, label %do.end.i.1, label %ath5k_eeprom_bin2freq.exit22.i.ath5k_eeprom_read_freq_list.exit_crit_edge

ath5k_eeprom_bin2freq.exit22.i.ath5k_eeprom_read_freq_list.exit_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_freq_list.exit

do.end.i.1:                                       ; preds = %ath5k_eeprom_bin2freq.exit22.i
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val.i, align 2
  %conv1.i.1 = trunc i16 %25 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i.1)
  %tobool.not.i.1 = icmp eq i8 %conv1.i.1, 0
  br i1 %tobool.not.i.1, label %do.end.i.1.ath5k_eeprom_read_freq_list.exit_crit_edge, label %if.end3.i.1

do.end.i.1.ath5k_eeprom_read_freq_list.exit_crit_edge: ; preds = %do.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_freq_list.exit

if.end3.i.1:                                      ; preds = %do.end.i.1
  %conv4.i.1 = and i16 %25, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %conv4.i.1)
  %cmp.i.i.1 = icmp eq i16 %conv4.i.1, 255
  br i1 %cmp.i.i.1, label %if.end3.i.1.ath5k_eeprom_bin2freq.exit.i.1_crit_edge, label %if.end.i.i.1

if.end3.i.1.ath5k_eeprom_bin2freq.exit.i.1_crit_edge: ; preds = %if.end3.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit.i.1

if.end.i.i.1:                                     ; preds = %if.end3.i.1
  %26 = ptrtoint ptr %ee_version.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ee_version.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %27)
  %cmp6.i.i.1 = icmp ugt i16 %27, 12290
  br i1 %cmp6.i.i.1, label %if.then28.i.i.1, label %if.else32.i.i.1

if.else32.i.i.1:                                  ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.i.1 = add nuw nsw i16 %conv4.i.1, 2400
  br label %ath5k_eeprom_bin2freq.exit.i.1

if.then28.i.i.1:                                  ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i.i.1 = add nuw nsw i16 %conv4.i.1, 2300
  br label %ath5k_eeprom_bin2freq.exit.i.1

ath5k_eeprom_bin2freq.exit.i.1:                   ; preds = %if.then28.i.i.1, %if.else32.i.i.1, %if.end3.i.1.ath5k_eeprom_bin2freq.exit.i.1_crit_edge
  %retval.0.i.i.1 = phi i16 [ 255, %if.end3.i.1.ath5k_eeprom_bin2freq.exit.i.1_crit_edge ], [ %add30.i.i.1, %if.then28.i.i.1 ], [ %add34.i.i.1, %if.else32.i.i.1 ]
  %arrayidx7.i.1 = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcal.0, i32 2
  %28 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %retval.0.i.i.1, ptr %arrayidx7.i.1, align 4
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %inc10.i.1 = add i8 %30, 1
  store i8 %inc10.i.1, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %25)
  %tobool14.not.i.1 = icmp ult i16 %25, 256
  br i1 %tobool14.not.i.1, label %ath5k_eeprom_bin2freq.exit.i.1.ath5k_eeprom_read_freq_list.exit_crit_edge, label %if.end16.i.1

ath5k_eeprom_bin2freq.exit.i.1.ath5k_eeprom_read_freq_list.exit_crit_edge: ; preds = %ath5k_eeprom_bin2freq.exit.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_read_freq_list.exit

if.end16.i.1:                                     ; preds = %ath5k_eeprom_bin2freq.exit.i.1
  %31 = lshr i16 %25, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %31)
  %cmp.i1.i.1 = icmp eq i16 %31, 255
  br i1 %cmp.i1.i.1, label %if.end16.i.1.ath5k_eeprom_bin2freq.exit22.i.1_crit_edge, label %if.end.i5.i.1

if.end16.i.1.ath5k_eeprom_bin2freq.exit22.i.1_crit_edge: ; preds = %if.end16.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath5k_eeprom_bin2freq.exit22.i.1

if.end.i5.i.1:                                    ; preds = %if.end16.i.1
  %32 = ptrtoint ptr %ee_version.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ee_version.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %33)
  %cmp6.i4.i.1 = icmp ugt i16 %33, 12290
  br i1 %cmp6.i4.i.1, label %if.then28.i18.i.1, label %if.else32.i20.i.1

if.else32.i20.i.1:                                ; preds = %if.end.i5.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i19.i.1 = add nuw nsw i16 %31, 2400
  br label %ath5k_eeprom_bin2freq.exit22.i.1

if.then28.i18.i.1:                                ; preds = %if.end.i5.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %add30.i17.i.1 = add nuw nsw i16 %31, 2300
  br label %ath5k_eeprom_bin2freq.exit22.i.1

ath5k_eeprom_bin2freq.exit22.i.1:                 ; preds = %if.then28.i18.i.1, %if.else32.i20.i.1, %if.end16.i.1.ath5k_eeprom_bin2freq.exit22.i.1_crit_edge
  %retval.0.i21.i.1 = phi i16 [ 255, %if.end16.i.1.ath5k_eeprom_bin2freq.exit22.i.1_crit_edge ], [ %add30.i17.i.1, %if.then28.i18.i.1 ], [ %add34.i19.i.1, %if.else32.i20.i.1 ]
  %arrayidx20.i.1 = getelementptr %struct.ath5k_chan_pcal_info, ptr %pcal.0, i32 3
  %34 = ptrtoint ptr %arrayidx20.i.1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %retval.0.i21.i.1, ptr %arrayidx20.i.1, align 4
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  %inc24.i.1 = add i8 %36, 1
  store i8 %inc24.i.1, ptr %arrayidx.i, align 1
  br label %ath5k_eeprom_read_freq_list.exit

ath5k_eeprom_read_freq_list.exit:                 ; preds = %ath5k_eeprom_bin2freq.exit22.i.1, %ath5k_eeprom_bin2freq.exit.i.1.ath5k_eeprom_read_freq_list.exit_crit_edge, %do.end.i.1.ath5k_eeprom_read_freq_list.exit_crit_edge, %ath5k_eeprom_bin2freq.exit22.i.ath5k_eeprom_read_freq_list.exit_crit_edge, %ath5k_eeprom_bin2freq.exit.i.ath5k_eeprom_read_freq_list.exit_crit_edge, %do.end.i.ath5k_eeprom_read_freq_list.exit_crit_edge, %sw.epilog.ath5k_eeprom_read_freq_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ath5k_eeprom_read_freq_list.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/eeprom.c", i32 1793, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath5k/eeprom.c", i32 109, i32 4}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath5k/eeprom.c", i32 123, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ath5k_pdgains_size_2413.pdgains_size, !11, !"pdgains_size", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath5k/eeprom.c", i32 1153, i32 28}
!12 = distinct !{null, !13, !"intercepts3", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath5k/eeprom.c", i32 648, i32 19}
!14 = distinct !{null, !15, !"intercepts3_2", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath5k/eeprom.c", i32 651, i32 19}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
!26 = !{ptr @ath5k_eeprom_read_pcal_info_2413, ptr @ath5k_eeprom_read_pcal_info_5111, ptr @ath5k_eeprom_read_pcal_info_5112}
