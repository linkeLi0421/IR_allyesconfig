; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/rfkill.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/rfkill.c"
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(%s:%d): rfkill disable (gpio:%d polarity:%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.ath5k_rfkill_disable = private unnamed_addr constant [21 x i8] c"ath5k_rfkill_disable\00", align 1
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(%s:%d): rfkill enable (gpio:%d polarity:%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.ath5k_rfkill_enable = private unnamed_addr constant [20 x i8] c"ath5k_rfkill_enable\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 41, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [43 x i8] c"../drivers/net/wireless/ath/ath5k/rfkill.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 50, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_rfkill_hw_start(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ee_rfkill_pin = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 6
  %0 = ptrtoint ptr %ee_rfkill_pin to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ee_rfkill_pin, align 4
  %conv = zext i8 %1 to i16
  %rf_kill = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 43
  %2 = ptrtoint ptr %rf_kill to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %rf_kill, align 4
  %ee_rfkill_pol = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 7
  %3 = ptrtoint ptr %ee_rfkill_pol to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ee_rfkill_pol, align 1, !range !16
  %polarity = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 43, i32 1
  %5 = ptrtoint ptr %polarity to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %polarity, align 2
  %toggleq = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 43, i32 2
  tail call void @tasklet_setup(ptr noundef %toggleq, ptr noundef nonnull @ath5k_tasklet_rfkill_toggle) #2
  %debug.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %6 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.ath5k_rfkill_disable.exit_crit_edge, label %land.rhs.i

entry.ath5k_rfkill_disable.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %ath5k_rfkill_disable.exit

land.rhs.i:                                       ; preds = %entry
  %call.i = tail call i32 @net_ratelimit() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i.ath5k_rfkill_disable.exit_crit_edge, label %if.then.i, !prof !17

land.rhs.i.ath5k_rfkill_disable.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ath5k_rfkill_disable.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %rf_kill to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rf_kill, align 4
  %conv.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %polarity to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %polarity, align 2, !range !16
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ath5k_rfkill_disable, i32 noundef 42, i32 noundef %conv.i, i32 noundef %12) #2
  br label %ath5k_rfkill_disable.exit

ath5k_rfkill_disable.exit:                        ; preds = %if.then.i, %land.rhs.i.ath5k_rfkill_disable.exit_crit_edge, %entry.ath5k_rfkill_disable.exit_crit_edge
  %13 = ptrtoint ptr %rf_kill to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rf_kill, align 4
  %conv9.i = zext i16 %14 to i32
  %call10.i = tail call i32 @ath5k_hw_set_gpio_output(ptr noundef %ah, i32 noundef %conv9.i) #2
  %15 = ptrtoint ptr %rf_kill to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rf_kill, align 4
  %conv13.i = zext i16 %16 to i32
  %17 = ptrtoint ptr %polarity to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %polarity, align 2, !range !16
  %19 = xor i8 %18, 1
  %20 = zext i8 %19 to i32
  %call19.i = tail call i32 @ath5k_hw_set_gpio(ptr noundef %ah, i32 noundef %conv13.i, i32 noundef %20) #2
  %ee_header = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %21 = ptrtoint ptr %ee_header to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ee_header, align 4
  %23 = and i16 %22, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool8.not = icmp eq i16 %23, 0
  br i1 %tobool8.not, label %ath5k_rfkill_disable.exit.if.end_crit_edge, label %if.then

ath5k_rfkill_disable.exit.if.end_crit_edge:       ; preds = %ath5k_rfkill_disable.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %ath5k_rfkill_disable.exit
  call void @__sanitizer_cov_trace_pc() #4
  %24 = ptrtoint ptr %rf_kill to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rf_kill, align 4
  %conv.i17 = zext i16 %25 to i32
  %call.i18 = tail call i32 @ath5k_hw_set_gpio_input(ptr noundef %ah, i32 noundef %conv.i17) #2
  %26 = ptrtoint ptr %rf_kill to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rf_kill, align 4
  %conv3.i = zext i16 %27 to i32
  %call4.i = tail call i32 @ath5k_hw_get_gpio(ptr noundef %ah, i32 noundef %conv3.i) #2
  %28 = ptrtoint ptr %rf_kill to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rf_kill, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool9.i = icmp ne i32 %call4.i, 0
  %cond.i = zext i1 %tobool9.i to i32
  %conv7.i = zext i16 %29 to i32
  tail call void @ath5k_hw_set_gpio_intr(ptr noundef %ah, i32 noundef %conv7.i, i32 noundef %cond.i) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %ath5k_rfkill_disable.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_tasklet_rfkill_toggle(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -23648
  %rf_kill.i = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %rf_kill.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rf_kill.i, align 4
  %conv.i = zext i16 %1 to i32
  %call.i = tail call i32 @ath5k_hw_get_gpio(ptr noundef %add.ptr, i32 noundef %conv.i) #2
  %polarity.i = getelementptr i8, ptr %t, i32 -2
  %2 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %polarity.i, align 2, !range !16
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %4)
  %cmp.i = icmp eq i32 %call.i, %4
  %hw = getelementptr i8, ptr %t, i32 -22668
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %8, i1 noundef zeroext %cmp.i, i32 noundef 1) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_rfkill_hw_stop(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ee_header = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 4
  %0 = ptrtoint ptr %ee_header to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ee_header, align 4
  %2 = and i16 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %rf_kill.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 43
  %3 = ptrtoint ptr %rf_kill.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rf_kill.i, align 4
  %conv.i = zext i16 %4 to i32
  %call.i = tail call i32 @ath5k_hw_set_gpio_input(ptr noundef %ah, i32 noundef %conv.i) #2
  %5 = ptrtoint ptr %rf_kill.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rf_kill.i, align 4
  %conv3.i = zext i16 %6 to i32
  %call4.i = tail call i32 @ath5k_hw_get_gpio(ptr noundef %ah, i32 noundef %conv3.i) #2
  %7 = ptrtoint ptr %rf_kill.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rf_kill.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool11.not.i = icmp eq i32 %call4.i, 0
  %cond.i = zext i1 %tobool11.not.i to i32
  %conv7.i = zext i16 %8 to i32
  tail call void @ath5k_hw_set_gpio_intr(ptr noundef %ah, i32 noundef %conv7.i, i32 noundef %cond.i) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %toggleq = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 43, i32 2
  tail call void @tasklet_kill(ptr noundef %toggleq) #2
  %debug.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %9 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.ath5k_rfkill_enable.exit_crit_edge, label %land.rhs.i

if.end.ath5k_rfkill_enable.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %ath5k_rfkill_enable.exit

land.rhs.i:                                       ; preds = %if.end
  %call.i4 = tail call i32 @net_ratelimit() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool1.not.i = icmp eq i32 %call.i4, 0
  br i1 %tobool1.not.i, label %land.rhs.i.ath5k_rfkill_enable.exit_crit_edge, label %if.then.i, !prof !17

land.rhs.i.ath5k_rfkill_enable.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ath5k_rfkill_enable.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  %rf_kill.i5 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 43
  %11 = ptrtoint ptr %rf_kill.i5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rf_kill.i5, align 4
  %conv.i6 = zext i16 %12 to i32
  %polarity.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 43, i32 1
  %13 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %polarity.i, align 2, !range !16
  %15 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ath5k_rfkill_enable, i32 noundef 51, i32 noundef %conv.i6, i32 noundef %15) #2
  br label %ath5k_rfkill_enable.exit

ath5k_rfkill_enable.exit:                         ; preds = %if.then.i, %land.rhs.i.ath5k_rfkill_enable.exit_crit_edge, %if.end.ath5k_rfkill_enable.exit_crit_edge
  %rf_kill7.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 43
  %16 = ptrtoint ptr %rf_kill7.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rf_kill7.i, align 4
  %conv9.i = zext i16 %17 to i32
  %call10.i = tail call i32 @ath5k_hw_set_gpio_output(ptr noundef %ah, i32 noundef %conv9.i) #2
  %18 = ptrtoint ptr %rf_kill7.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rf_kill7.i, align 4
  %conv13.i = zext i16 %19 to i32
  %polarity15.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 43, i32 1
  %20 = ptrtoint ptr %polarity15.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %polarity15.i, align 2, !range !16
  %22 = zext i8 %21 to i32
  %call18.i = tail call i32 @ath5k_hw_set_gpio(ptr noundef %ah, i32 noundef %conv13.i, i32 noundef %22) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_gpio(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_gpio_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_gpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_gpio_input(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_gpio_intr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/rfkill.c", i32 41, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.ath5k_rfkill_disable, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath5k/rfkill.c", i32 50, i32 2}
!6 = !{ptr @__func__.ath5k_rfkill_enable, !5, !"<string literal>", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i8 0, i8 2}
!17 = !{!"branch_weights", i32 2000, i32 1}
