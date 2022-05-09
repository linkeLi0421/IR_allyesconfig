; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/caps.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/caps.c"
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

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_set_capabilities(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_capabilities = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %cap_range = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1
  %range_5ghz_min = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 2
  %2 = ptrtoint ptr %range_5ghz_min to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 5120, ptr %range_5ghz_min, align 4
  %range_5ghz_max = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 3
  %3 = ptrtoint ptr %range_5ghz_max to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 5430, ptr %range_5ghz_max, align 2
  %4 = ptrtoint ptr %cap_range to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %cap_range, align 4
  %range_2ghz_max = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 1
  %5 = ptrtoint ptr %range_2ghz_max to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %range_2ghz_max, align 2
  br label %if.end58.sink.split

if.else:                                          ; preds = %entry
  %ee_header1 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %6 = ptrtoint ptr %ee_header1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ee_header1, align 4
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.if.end17_crit_edge, label %if.then5

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end17

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %ee_regdomain = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 2
  %8 = ptrtoint ptr %ee_regdomain to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ee_regdomain, align 4
  %call = tail call zeroext i1 @ath_is_49ghz_allowed(i16 noundef zeroext %9) #2
  %spec.select = select i1 %call, i16 4920, i16 5005
  %10 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %spec.select, ptr %10, align 4
  %range_5ghz_max14 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 3
  %12 = ptrtoint ptr %range_5ghz_max14 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 6100, ptr %range_5ghz_max14, align 2
  %13 = ptrtoint ptr %ah_capabilities to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ah_capabilities, align 4
  %or.i121 = or i32 %14, 1
  store i32 %or.i121, ptr %ah_capabilities, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then5, %if.else.if.end17_crit_edge
  %15 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end17.if.then29_crit_edge

if.end17.if.then29_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end17
  %16 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool25.not = icmp eq i32 %16, 0
  br i1 %tobool25.not, label %lor.lhs.false.if.end58_crit_edge, label %land.lhs.true

lor.lhs.false.if.end58_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end58

land.lhs.true:                                    ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp27.not = icmp eq i32 %18, 1
  br i1 %cmp27.not, label %land.lhs.true.if.end58_crit_edge, label %land.lhs.true.if.then29_crit_edge

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then29

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end58

if.then29:                                        ; preds = %land.lhs.true.if.then29_crit_edge, %if.end17.if.then29_crit_edge
  %cap_range30 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1
  %19 = ptrtoint ptr %cap_range30 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2412, ptr %cap_range30, align 4
  %range_2ghz_max33 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 1, i32 1
  %20 = ptrtoint ptr %range_2ghz_max33 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2732, ptr %range_2ghz_max33, align 2
  %cap_needs_2GHz_ovr = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 6
  %21 = ptrtoint ptr %cap_needs_2GHz_ovr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cap_needs_2GHz_ovr, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool34.not = icmp eq i8 %22, 0
  br i1 %tobool34.not, label %if.then35, label %if.then29.if.end58_crit_edge

if.then29.if.end58_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end58

if.then35:                                        ; preds = %if.then29
  br i1 %tobool21.not, label %if.then35.if.end43_crit_edge, label %if.then40

if.then35.if.end43_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end43

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #4
  %23 = ptrtoint ptr %ah_capabilities to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ah_capabilities, align 4
  %or.i122 = or i32 %24, 2
  store i32 %or.i122, ptr %ah_capabilities, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then35.if.end43_crit_edge
  %25 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool47.not = icmp eq i32 %25, 0
  br i1 %tobool47.not, label %if.end43.if.end58_crit_edge, label %land.lhs.true48

if.end43.if.end58_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end58

land.lhs.true48:                                  ; preds = %if.end43
  %26 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp50.not = icmp eq i32 %27, 1
  br i1 %cmp50.not, label %land.lhs.true48.if.end58_crit_edge, label %land.lhs.true48.if.end58.sink.split_crit_edge

land.lhs.true48.if.end58.sink.split_crit_edge:    ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end58.sink.split

land.lhs.true48.if.end58_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end58

if.end58.sink.split:                              ; preds = %land.lhs.true48.if.end58.sink.split_crit_edge, %if.then
  %.sink127 = phi i32 [ 1, %if.then ], [ 4, %land.lhs.true48.if.end58.sink.split_crit_edge ]
  %28 = ptrtoint ptr %ah_capabilities to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ah_capabilities, align 4
  %or.i123 = or i32 %29, %.sink127
  store i32 %or.i123, ptr %ah_capabilities, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %land.lhs.true48.if.end58_crit_edge, %if.end43.if.end58_crit_edge, %if.then29.if.end58_crit_edge, %land.lhs.true.if.end58_crit_edge, %lor.lhs.false.if.end58_crit_edge
  %ah_radio_5ghz_revision = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 73
  %30 = ptrtoint ptr %ah_radio_5ghz_revision to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ah_radio_5ghz_revision, align 4
  %32 = and i16 %31, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %32)
  %cmp61 = icmp eq i16 %32, 64
  br i1 %cmp61, label %if.then63, label %if.end58.if.end66_crit_edge

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end66

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #4
  %33 = ptrtoint ptr %ah_capabilities to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ah_capabilities, align 4
  %and.i = and i32 %34, -2
  store i32 %and.i, ptr %ah_capabilities, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end58.if.end66_crit_edge
  %35 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp68 = icmp eq i32 %36, 0
  %spec.select128 = select i1 %cmp68, i8 2, i8 10
  %37 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %spec.select128, ptr %37, align 4
  %ah_mac_srev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 70
  %39 = ptrtoint ptr %ah_mac_srev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ah_mac_srev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %40)
  %cmp75 = icmp ugt i32 %40, 88
  %.sink125 = zext i1 %cmp75 to i8
  %41 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %.sink125, ptr %41, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp82 = icmp eq i32 %36, 2
  %.sink126 = zext i1 %cmp82 to i8
  %43 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 5
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.sink126, ptr %43, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_is_49ghz_allowed(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_enable_pspoll(ptr nocapture noundef readonly %ah, ptr nocapture noundef readnone %bssid, i16 noundef zeroext %assoc_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32772
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #2, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  %5 = and i32 %4, -12289
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !12
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %5) #2, !srcloc !13
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_disable_pspoll(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32772
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #2, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  %5 = or i32 %4, 12288
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !12
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %5) #2, !srcloc !13
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
!10 = !{i64 742617}
!11 = !{i64 2148927790}
!12 = !{i64 2148929145}
!13 = !{i64 742199}
