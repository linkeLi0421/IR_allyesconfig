; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/pcu.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/pcu.c"
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

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ath/ath5k/pcu.c\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(%s:%d): mode %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_set_opmode = private unnamed_addr constant [20 x i8] c"ath5k_hw_set_opmode\00", align 1
@ack_rates_high = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 1, i32 1, i32 1, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 8, i32 8], [48 x i8] zeroinitializer }, align 32
@switch.table.ath5k_hw_get_default_slottime = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 21, i32 13, i32 6], [20 x i8] zeroinitializer }, align 32
@switch.table.ath5k_hw_get_default_sifs = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 64, i32 32, i32 6], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 594, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 882, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"ack_rates_high\00", align 1
@___asan_gen_.19 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath5k/pcu.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 82, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [43 x i8] c"switch.table.ath5k_hw_get_default_slottime\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [39 x i8] c"switch.table.ath5k_hw_get_default_sifs\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ack_rates_high, ptr @switch.table.ath5k_hw_get_default_slottime, ptr @switch.table.ath5k_hw_get_default_sifs], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ack_rates_high to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_hw_get_default_slottime to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_hw_get_default_sifs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_get_frame_duration(ptr nocapture noundef readonly %ah, i32 noundef %band, i32 noundef %len, ptr noundef %rate, i1 noundef zeroext %shortpre) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_bwmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %0 = ptrtoint ptr %ah_bwmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ah_bwmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %call = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %3, ptr noundef null, i32 noundef %band, i32 noundef %len, ptr noundef %rate) #4
  %4 = tail call i16 @llvm.bswap.i16(i16 %call)
  %conv = zext i16 %4 to i32
  %sub = add nsw i32 %conv, -96
  %spec.select = select i1 %shortpre, i32 %sub, i32 %conv
  br label %cleanup

if.end3:                                          ; preds = %entry
  %bitrate4 = getelementptr inbounds %struct.ieee80211_rate, ptr %rate, i32 0, i32 1
  %5 = ptrtoint ptr %bitrate4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bitrate4, align 4
  %conv5 = zext i16 %6 to i32
  %7 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 3, label %if.end3.sw.epilog_crit_edge
    i8 2, label %sw.bb8
    i8 1, label %sw.bb11
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %sub10 = add nuw nsw i32 %conv5, 1
  %div49 = lshr i32 %sub10, 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %sub15 = add nuw nsw i32 %conv5, 3
  %div1648 = lshr i32 %sub15, 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb8, %if.end3.sw.epilog_crit_edge
  %sifs.0 = phi i32 [ 10, %sw.default ], [ 64, %sw.bb11 ], [ 32, %sw.bb8 ], [ 6, %if.end3.sw.epilog_crit_edge ]
  %preamble.0 = phi i32 [ 20, %sw.default ], [ 80, %sw.bb11 ], [ 40, %sw.bb8 ], [ 14, %if.end3.sw.epilog_crit_edge ]
  %sym_time.0 = phi i32 [ 4, %sw.default ], [ 16, %sw.bb11 ], [ 8, %sw.bb8 ], [ 4, %if.end3.sw.epilog_crit_edge ]
  %bitrate.0 = phi i32 [ %conv5, %sw.default ], [ %div1648, %sw.bb11 ], [ %div49, %sw.bb8 ], [ %conv5, %if.end3.sw.epilog_crit_edge ]
  %mul18 = mul nuw nsw i32 %bitrate.0, %sym_time.0
  %8 = mul i32 %len, 80
  %add20 = add i32 %8, 219
  %sub21 = add i32 %add20, %mul18
  %div22 = sdiv i32 %sub21, %mul18
  %add23 = add nuw nsw i32 %preamble.0, %sifs.0
  %mul24 = mul i32 %div22, %sym_time.0
  %add25 = add i32 %add23, %mul24
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ %add25, %sw.epilog ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_generic_frame_duration(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath5k_hw_get_default_slottime(ptr nocapture noundef readonly %ah) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_bwmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %0 = ptrtoint ptr %ah_bwmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ah_bwmode, align 1
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  %ah_current_channel = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %3 = ptrtoint ptr %ah_current_channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ah_current_channel, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp = icmp eq i16 %6, 1
  br i1 %cmp, label %land.lhs.true, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  %ah_short_slot = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 81
  %7 = ptrtoint ptr %ah_short_slot to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ah_short_slot, align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool.not, i32 20, i32 9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ath5k_hw_get_default_slottime, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %land.lhs.true, %sw.default.sw.epilog_crit_edge
  %slot_time.0 = phi i32 [ 9, %sw.default.sw.epilog_crit_edge ], [ %spec.select, %land.lhs.true ], [ %switch.load, %switch.lookup ]
  ret i32 %slot_time.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath5k_hw_get_default_sifs(ptr nocapture noundef readonly %ah) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_bwmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %0 = ptrtoint ptr %ah_bwmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ah_bwmode, align 1
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ah_current_channel = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %3 = ptrtoint ptr %ah_current_channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ah_current_channel, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %spec.store.select = select i1 %cmp, i32 16, i32 10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ath5k_hw_get_default_sifs, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %sifs.0 = phi i32 [ %spec.store.select, %sw.default ], [ %switch.load, %switch.lookup ]
  ret i32 %sifs.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_update_mib_counters(ptr nocapture noundef %ah) local_unnamed_addr #0 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %ack_fail = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 59, i32 17
  %6 = ptrtoint ptr %ack_fail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ack_fail, align 4
  %add = add i32 %7, %5
  store i32 %add, ptr %ack_fail, align 4
  %8 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %conv.i45 = select i1 %cmp3, i32 32916, i32 32908
  %add.ptr.i46 = getelementptr i8, ptr %11, i32 %conv.i45
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #4, !srcloc !18
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %rts_fail = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 59, i32 18
  %14 = ptrtoint ptr %rts_fail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rts_fail, align 4
  %add8 = add i32 %15, %13
  store i32 %add8, ptr %rts_fail, align 4
  %16 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10 = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 4
  %conv.i48 = select i1 %cmp10, i32 32912, i32 32904
  %add.ptr.i49 = getelementptr i8, ptr %19, i32 %conv.i48
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #4, !srcloc !18
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %rts_ok = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 59, i32 19
  %22 = ptrtoint ptr %rts_ok to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rts_ok, align 4
  %add15 = add i32 %23, %21
  store i32 %add15, ptr %rts_ok, align 4
  %24 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp17 = icmp eq i32 %25, 0
  %26 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i, align 4
  %conv.i51 = select i1 %cmp17, i32 32924, i32 32916
  %add.ptr.i52 = getelementptr i8, ptr %27, i32 %conv.i51
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #4, !srcloc !18
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %fcs_error = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 59, i32 20
  %30 = ptrtoint ptr %fcs_error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fcs_error, align 4
  %add22 = add i32 %31, %29
  store i32 %add22, ptr %fcs_error, align 4
  %32 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp24 = icmp eq i32 %33, 0
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobase.i, align 4
  %conv.i54 = select i1 %cmp24, i32 32928, i32 32920
  %add.ptr.i55 = getelementptr i8, ptr %35, i32 %conv.i54
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #4, !srcloc !18
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %beacons = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 59, i32 21
  %38 = ptrtoint ptr %beacons to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %beacons, align 4
  %add29 = add i32 %39, %37
  store i32 %add29, ptr %beacons, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_set_lladdr(ptr nocapture noundef %ah, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %macaddr = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 9
  %0 = call ptr @memcpy(ptr %macaddr, ptr %mac, i32 6)
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %1 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 32772
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %4 = and i32 %3, 65535
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %mac, align 1
  %add.ptr = getelementptr i8, ptr %mac, i32 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %add.ptr, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #4
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %12, i32 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %7) #4, !srcloc !21
  %or = or i32 %5, %conv
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %14, i32 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %15) #4, !srcloc !21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_set_bssid(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath_hw_setbssidmask(ptr noundef %ah) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %curbssid = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 10
  %2 = ptrtoint ptr %curbssid to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %curbssid, align 1
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #4, !srcloc !21
  %add.ptr = getelementptr %struct.ath_common, ptr %ah, i32 0, i32 10, i32 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %add.ptr, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #4
  %conv = zext i16 %8 to i32
  %curaid = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 8
  %9 = ptrtoint ptr %curaid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %curaid, align 2
  %11 = and i16 %10, 16383
  %and = zext i16 %11 to i32
  %shl = shl nuw nsw i32 %and, 16
  %or = or i32 %shl, %conv
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %13, i32 32780
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %14) #4, !srcloc !21
  %15 = ptrtoint ptr %curaid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %curaid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp8 = icmp eq i16 %16, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 @ath5k_hw_disable_pspoll(ptr noundef %ah) #4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp14 = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i, align 4
  %conv.i = select i1 %cmp14, i32 32804, i32 32800
  %add.ptr.i49 = getelementptr i8, ptr %20, i32 %conv.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %22 = and i32 %21, -32513
  %23 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp26 = icmp eq i32 %24, 0
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase.i, align 4
  %conv.i51 = select i1 %cmp26, i32 32804, i32 32800
  %add.ptr.i52 = getelementptr i8, ptr %26, i32 %conv.i51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %22) #4, !srcloc !21
  %call30 = tail call i32 @ath5k_hw_enable_pspoll(ptr noundef %ah, ptr noundef null, i16 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_setbssidmask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_disable_pspoll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_enable_pspoll(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_set_bssid_mask(ptr noundef %ah, ptr nocapture noundef readonly %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bssidmask = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 11
  %0 = call ptr @memcpy(ptr %bssidmask, ptr %mask, i32 6)
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %1 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath_hw_setbssidmask(ptr noundef %ah) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_set_mcast_filter(ptr nocapture noundef readonly %ah, i32 noundef %filter0, i32 noundef %filter1) local_unnamed_addr #0 align 64 {
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
  %conv.i = select i1 %cmp, i32 32848, i32 32832
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %filter0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #4, !srcloc !21
  %5 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %conv.i10 = select i1 %cmp2, i32 32852, i32 32836
  %add.ptr.i11 = getelementptr i8, ptr %8, i32 %conv.i10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %filter1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %9) #4, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_get_rx_filter(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
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
  %conv.i = select i1 %cmp, i32 32844, i32 32828
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %6 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2 = icmp eq i32 %7, 2
  br i1 %cmp2, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %9, i32 33036
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #4, !srcloc !18
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %and = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp7 = icmp eq i32 %13, 1
  %cond9 = select i1 %cmp7, i32 128, i32 512
  %or = or i32 %cond9, %5
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %filter.0 = phi i32 [ %or, %if.then5 ], [ %5, %if.then.if.end_crit_edge ]
  %and10 = and i32 %11, 33685504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end19_crit_edge, label %if.then12

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp14 = icmp eq i32 %15, 1
  %cond16 = select i1 %cmp14, i32 64, i32 256
  %or17 = or i32 %cond16, %filter.0
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.end.if.end19_crit_edge, %entry.if.end19_crit_edge
  %filter.1 = phi i32 [ %or17, %if.then12 ], [ %filter.0, %if.end.if.end19_crit_edge ], [ %5, %entry.if.end19_crit_edge ]
  ret i32 %filter.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_set_rx_filter(ptr nocapture noundef readonly %ah, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end12.thread

if.end12.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1477 = icmp ne i32 %1, 0
  %and1878 = and i32 %filter, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1878)
  %tobool19.not79 = icmp eq i32 %and1878, 0
  %or.cond80 = or i1 %tobool19.not79, %cmp1477
  br label %if.else

if.then:                                          ; preds = %entry
  %and = lshr i32 %filter, 4
  %2 = and i32 %and, 32
  %and7 = and i32 %filter, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end12, label %if.end12.thread86

if.end12.thread86:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %or10 = or i32 %2, 33685504
  br label %if.then28

if.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool27.not = icmp eq i32 %2, 0
  br i1 %tobool27.not, label %if.end12.if.else_crit_edge, label %if.end12.if.then28_crit_edge

if.end12.if.then28_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then28:                                        ; preds = %if.end12.if.then28_crit_edge, %if.end12.thread86
  %data.193 = phi i32 [ %or10, %if.end12.thread86 ], [ %2, %if.end12.if.then28_crit_edge ]
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 52
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %6 = or i32 %5, 134217728
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %6) #4, !srcloc !21
  br label %if.end32

if.else:                                          ; preds = %if.end12.if.else_crit_edge, %if.end12.thread
  %or.cond85 = phi i1 [ %or.cond80, %if.end12.thread ], [ true, %if.end12.if.else_crit_edge ]
  %iobase.i67 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %9 = ptrtoint ptr %iobase.i67 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %10, i32 52
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %12 = and i32 %11, -134217729
  %13 = ptrtoint ptr %iobase.i67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i67, align 4
  %add.ptr.i70 = getelementptr i8, ptr %14, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %12) #4, !srcloc !21
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then28
  %or.cond84 = phi i1 [ %or.cond85, %if.else ], [ true, %if.then28 ]
  %data.182 = phi i32 [ 0, %if.else ], [ %data.193, %if.then28 ]
  %15 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp35 = icmp eq i32 %16, 0
  %iobase.i71 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %17 = ptrtoint ptr %iobase.i71 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i71, align 4
  %conv.i = select i1 %cmp35, i32 32844, i32 32828
  %add.ptr.i72 = getelementptr i8, ptr %18, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %19 = shl i32 %filter, 24
  %20 = or i32 %19, 536870912
  %and33 = select i1 %or.cond84, i32 %19, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %and33) #4, !srcloc !21
  %21 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp38 = icmp eq i32 %22, 2
  br i1 %cmp38, label %if.then40, label %if.end32.if.end41_crit_edge

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %iobase.i71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase.i71, align 4
  %add.ptr.i74 = getelementptr i8, ptr %24, i32 33036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %25 = tail call i32 @llvm.bswap.i32(i32 %data.182) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %25) #4, !srcloc !21
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end32.if.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ath5k_hw_get_tsf64(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !22
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_off() #4
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %1 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp12 = icmp eq i32 %2, 0
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i, align 4
  %conv.i = select i1 %cmp12, i32 32880, i32 32848
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %do.end11
  %tsf_upper1.0118 = phi i32 [ %6, %do.end11 ], [ %17, %if.end33.for.body_crit_edge ]
  %i.0117 = phi i32 [ 0, %do.end11 ], [ %inc, %if.end33.for.body_crit_edge ]
  %7 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp19 = icmp eq i32 %8, 0
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %conv.i111 = select i1 %cmp19, i32 32876, i32 32844
  %add.ptr.i112 = getelementptr i8, ptr %10, i32 %conv.i111
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %12 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp25 = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %conv.i114 = select i1 %cmp25, i32 32880, i32 32848
  %add.ptr.i115 = getelementptr i8, ptr %15, i32 %conv.i114
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #4, !srcloc !18
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %tsf_upper1.0118)
  %cmp30 = icmp eq i32 %17, %tsf_upper1.0118
  br i1 %cmp30, label %for.body.do.body34_crit_edge, label %if.end33

for.body.do.body34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body34

if.end33:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.end33.do.body34_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end33.do.body34_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body34

do.body34:                                        ; preds = %if.end33.do.body34_crit_edge, %for.body.do.body34_crit_edge
  %i.0.lcssa = phi i32 [ 10, %if.end33.do.body34_crit_edge ], [ %i.0117, %for.body.do.body34_crit_edge ]
  %tsf_upper1.0.lcssa = phi i32 [ %17, %if.end33.do.body34_crit_edge ], [ %tsf_upper1.0118, %for.body.do.body34_crit_edge ]
  br i1 %tobool.not, label %if.then43, label %do.body34.do.body45_crit_edge

do.body34.do.body45_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body45

if.then43:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_on() #4
  br label %do.body45

do.body45:                                        ; preds = %if.then43, %do.body34.do.body45_crit_edge
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !23
  %and.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool53.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool53.not, label %if.then57, label %do.body45.do.end60_crit_edge, !prof !24

do.body45.do.end60_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body45.do.end60_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #4, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0.lcssa)
  %cmp65 = icmp eq i32 %i.0.lcssa, 10
  br i1 %cmp65, label %do.end82, label %do.end60.if.end88_crit_edge, !prof !24

do.end60.if.end88_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

do.end82:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 9, ptr noundef null) #4
  br label %if.end88

if.end88:                                         ; preds = %do.end82, %do.end60.if.end88_crit_edge
  %19 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %conv96 = zext i32 %tsf_upper1.0.lcssa to i64
  %shl = shl nuw i64 %conv96, 32
  %conv97 = zext i32 %19 to i64
  %or = or i64 %shl, %conv97
  ret i64 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_set_tsf64(ptr nocapture noundef readonly %ah, i64 noundef %tsf64) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %tsf64 to i32
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
  %conv.i = select i1 %cmp, i32 32876, i32 32844
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #4, !srcloc !21
  %shr = lshr i64 %tsf64, 32
  %conv4 = trunc i64 %shr to i32
  %5 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %conv.i15 = select i1 %cmp6, i32 32880, i32 32848
  %add.ptr.i16 = getelementptr i8, ptr %8, i32 %conv.i15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv4) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %9) #4, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_reset_tsf(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
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
  %conv.i = select i1 %cmp, i32 32804, i32 32800
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %5 = or i32 %4, 1
  %6 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %conv.i18 = select i1 %cmp2, i32 32804, i32 32800
  %add.ptr.i19 = getelementptr i8, ptr %9, i32 %conv.i18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %5) #4, !srcloc !21
  %10 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %conv.i21 = select i1 %cmp7, i32 32804, i32 32800
  %add.ptr.i22 = getelementptr i8, ptr %13, i32 %conv.i21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %5) #4, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_init_beacon_timers(ptr nocapture noundef readonly %ah, i32 noundef %next_beacon, i32 noundef %interval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 12
  %0 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opmode, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %entry.sw.default_crit_edge [
    i32 6, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge115
    i32 1, label %sw.bb3
  ]

entry.sw.bb_crit_edge115:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge115
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %3 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %. = select i1 %cmp, i32 -1, i32 65535
  %.83 = select i1 %cmp, i32 -1, i32 524287
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 32772
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %9 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2 = icmp eq i32 %10, 0
  %neg = select i1 %cmp2, i32 -2097153, i32 -1048577
  %and = and i32 %neg, %8
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %12, i32 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %and) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %13) #4, !srcloc !21
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i86 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %14 = ptrtoint ptr %iobase.i86 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i86, align 4
  %add.ptr.i87 = getelementptr i8, ptr %15, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %17 = or i32 %16, 524288
  %18 = ptrtoint ptr %iobase.i86 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i86, align 4
  %add.ptr.i89 = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %17) #4, !srcloc !21
  br label %sw.default

sw.default:                                       ; preds = %sw.bb3, %entry.sw.default_crit_edge
  %sub = shl i32 %next_beacon, 3
  %shl = add i32 %sub, -16
  %shl6 = add i32 %sub, -80
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %timer1.1 = phi i32 [ %shl, %sw.default ], [ %., %sw.bb ]
  %timer2.1 = phi i32 [ %shl6, %sw.default ], [ %.83, %sw.bb ]
  %add = add i32 %next_beacon, 1
  %20 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opmode, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %21, label %sw.epilog.if.end15_crit_edge [
    i32 3, label %sw.epilog.if.then11_crit_edge
    i32 7, label %sw.epilog.if.then11_crit_edge116
  ]

sw.epilog.if.then11_crit_edge116:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

sw.epilog.if.then11_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

sw.epilog.if.end15_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then11:                                        ; preds = %sw.epilog.if.then11_crit_edge, %sw.epilog.if.then11_crit_edge116
  %ah_version12 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %23 = ptrtoint ptr %ah_version12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ah_version12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp13 = icmp eq i32 %24, 0
  %iobase.i90 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %25 = ptrtoint ptr %iobase.i90 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase.i90, align 4
  %conv.i = select i1 %cmp13, i32 32812, i32 32808
  %add.ptr.i91 = getelementptr i8, ptr %26, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 0) #4, !srcloc !21
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %sw.epilog.if.end15_crit_edge
  %ah_version16 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %27 = ptrtoint ptr %ah_version16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ah_version16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp17 = icmp eq i32 %28, 0
  %iobase.i92 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %29 = ptrtoint ptr %iobase.i92 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobase.i92, align 4
  %conv.i93 = select i1 %cmp17, i32 32812, i32 32808
  %add.ptr.i94 = getelementptr i8, ptr %30, i32 %conv.i93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 @llvm.bswap.i32(i32 %next_beacon) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %31) #4, !srcloc !21
  %32 = ptrtoint ptr %ah_version16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ah_version16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp22 = icmp eq i32 %33, 0
  %34 = ptrtoint ptr %iobase.i92 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobase.i92, align 4
  %conv.i96 = select i1 %cmp22, i32 32816, i32 32812
  %add.ptr.i97 = getelementptr i8, ptr %35, i32 %conv.i96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %36 = tail call i32 @llvm.bswap.i32(i32 %timer1.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %36) #4, !srcloc !21
  %37 = ptrtoint ptr %ah_version16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ah_version16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp27 = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %iobase.i92 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i92, align 4
  %conv.i99 = select i1 %cmp27, i32 32820, i32 32816
  %add.ptr.i100 = getelementptr i8, ptr %40, i32 %conv.i99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %41 = tail call i32 @llvm.bswap.i32(i32 %timer2.1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %41) #4, !srcloc !21
  %42 = ptrtoint ptr %ah_version16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ah_version16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp32 = icmp eq i32 %43, 0
  %44 = ptrtoint ptr %iobase.i92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iobase.i92, align 4
  %conv.i102 = select i1 %cmp32, i32 32824, i32 32820
  %add.ptr.i103 = getelementptr i8, ptr %45, i32 %conv.i102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %46 = tail call i32 @llvm.bswap.i32(i32 %add) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %46) #4, !srcloc !21
  %and36 = and i32 %interval, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool.not = icmp eq i32 %and36, 0
  br i1 %tobool.not, label %if.end15.if.end38_crit_edge, label %if.then37

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then37:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %ah_version16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ah_version16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i = icmp eq i32 %48, 0
  %49 = ptrtoint ptr %iobase.i92 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i92, align 4
  %conv.i.i = select i1 %cmp.i, i32 32804, i32 32800
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 %conv.i.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %52 = or i32 %51, 1
  %53 = ptrtoint ptr %ah_version16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ah_version16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp2.i = icmp eq i32 %54, 0
  %55 = ptrtoint ptr %iobase.i92 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iobase.i92, align 4
  %conv.i18.i = select i1 %cmp2.i, i32 32804, i32 32800
  %add.ptr.i19.i = getelementptr i8, ptr %56, i32 %conv.i18.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %52) #4, !srcloc !21
  %57 = ptrtoint ptr %ah_version16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ah_version16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp7.i = icmp eq i32 %58, 0
  %59 = ptrtoint ptr %iobase.i92 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iobase.i92, align 4
  %conv.i21.i = select i1 %cmp7.i, i32 32804, i32 32800
  %add.ptr.i22.i = getelementptr i8, ptr %60, i32 %conv.i21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %52) #4, !srcloc !21
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end15.if.end38_crit_edge
  %and39 = and i32 %interval, 8454143
  %61 = ptrtoint ptr %ah_version16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ah_version16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp41 = icmp eq i32 %62, 0
  %63 = ptrtoint ptr %iobase.i92 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iobase.i92, align 4
  %conv.i105 = select i1 %cmp41, i32 32804, i32 32800
  %add.ptr.i106 = getelementptr i8, ptr %64, i32 %conv.i105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %65 = tail call i32 @llvm.bswap.i32(i32 %and39) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %65) #4, !srcloc !21
  %66 = ptrtoint ptr %ah_version16 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ah_version16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp46 = icmp eq i32 %67, 0
  %68 = ptrtoint ptr %iobase.i92 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iobase.i92, align 4
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i108 = getelementptr i8, ptr %69, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 1024) #4, !srcloc !21
  br label %if.end50

if.else49:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i110 = getelementptr i8, ptr %69, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 1024) #4, !srcloc !21
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then48
  %70 = ptrtoint ptr %iobase.i92 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iobase.i92, align 4
  %add.ptr.i112 = getelementptr i8, ptr %71, i32 32772
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %73 = and i32 %72, -1025
  %74 = ptrtoint ptr %iobase.i92 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iobase.i92, align 4
  %add.ptr.i114 = getelementptr i8, ptr %75, i32 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %73) #4, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath5k_hw_check_beacon_timers(ptr nocapture noundef readonly %ah, i32 noundef %intval) local_unnamed_addr #0 align 64 {
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
  %conv.i = select i1 %cmp, i32 32812, i32 32808
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %6 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %conv.i27 = select i1 %cmp2, i32 32824, i32 32820
  %add.ptr.i28 = getelementptr i8, ptr %9, i32 %conv.i27
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #4, !srcloc !18
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %12 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8 = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %conv.i30 = select i1 %cmp8, i32 32816, i32 32812
  %add.ptr.i31 = getelementptr i8, ptr %15, i32 %conv.i30
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #4, !srcloc !18
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %sub.i = sub i32 %11, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 1
  br i1 %cmp.i, label %entry.land.lhs.true_crit_edge, label %lor.lhs.false.i

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

lor.lhs.false.i:                                  ; preds = %entry
  %sub1.i = sub i32 %5, %11
  %sub2.i = add i32 %intval, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %sub2.i)
  %cmp3.i = icmp eq i32 %sub1.i, %sub2.i
  br i1 %cmp3.i, label %lor.lhs.false.i.land.lhs.true_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %or.i = or i32 %5, 65536
  %sub5.i = sub i32 %or.i, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i, i32 %sub2.i)
  %cmp7.i = icmp eq i32 %sub5.i, %sub2.i
  br i1 %cmp7.i, label %lor.lhs.false4.i.land.lhs.true_crit_edge, label %ath5k_check_timer_win.exit

lor.lhs.false4.i.land.lhs.true_crit_edge:         ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

ath5k_check_timer_win.exit:                       ; preds = %lor.lhs.false4.i
  %or9.i = or i32 %11, 65536
  %sub10.i = sub i32 %or9.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub10.i)
  %cmp11.i = icmp eq i32 %sub10.i, 1
  br i1 %cmp11.i, label %ath5k_check_timer_win.exit.land.lhs.true_crit_edge, label %ath5k_check_timer_win.exit.if.end_crit_edge

ath5k_check_timer_win.exit.if.end_crit_edge:      ; preds = %ath5k_check_timer_win.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

ath5k_check_timer_win.exit.land.lhs.true_crit_edge: ; preds = %ath5k_check_timer_win.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %ath5k_check_timer_win.exit.land.lhs.true_crit_edge, %lor.lhs.false4.i.land.lhs.true_crit_edge, %lor.lhs.false.i.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %shr = lshr i32 %17, 3
  %sub.i32 = sub i32 %5, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i32)
  %cmp.i33 = icmp eq i32 %sub.i32, 2
  br i1 %cmp.i33, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false.i37

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i37:                                ; preds = %land.lhs.true
  %sub1.i34 = sub i32 %shr, %5
  %sub2.i35 = add i32 %intval, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i34, i32 %sub2.i35)
  %cmp3.i36 = icmp eq i32 %sub1.i34, %sub2.i35
  br i1 %cmp3.i36, label %lor.lhs.false.i37.cleanup_crit_edge, label %lor.lhs.false4.i41

lor.lhs.false.i37.cleanup_crit_edge:              ; preds = %lor.lhs.false.i37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false4.i41:                               ; preds = %lor.lhs.false.i37
  %or.i38 = or i32 %shr, 65536
  %sub5.i39 = sub i32 %or.i38, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i39, i32 %sub2.i35)
  %cmp7.i40 = icmp eq i32 %sub5.i39, %sub2.i35
  br i1 %cmp7.i40, label %lor.lhs.false4.i41.cleanup_crit_edge, label %ath5k_check_timer_win.exit47

lor.lhs.false4.i41.cleanup_crit_edge:             ; preds = %lor.lhs.false4.i41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ath5k_check_timer_win.exit47:                     ; preds = %lor.lhs.false4.i41
  %or9.i42 = or i32 %5, 65536
  %sub10.i43 = sub i32 %or9.i42, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub10.i43)
  %cmp11.i44 = icmp eq i32 %sub10.i43, 2
  br i1 %cmp11.i44, label %ath5k_check_timer_win.exit47.cleanup_crit_edge, label %ath5k_check_timer_win.exit47.if.end_crit_edge

ath5k_check_timer_win.exit47.if.end_crit_edge:    ; preds = %ath5k_check_timer_win.exit47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

ath5k_check_timer_win.exit47.cleanup_crit_edge:   ; preds = %ath5k_check_timer_win.exit47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ath5k_check_timer_win.exit47.if.end_crit_edge, %ath5k_check_timer_win.exit.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ath5k_check_timer_win.exit47.cleanup_crit_edge, %lor.lhs.false4.i41.cleanup_crit_edge, %lor.lhs.false.i37.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %ath5k_check_timer_win.exit47.cleanup_crit_edge ], [ true, %lor.lhs.false4.i41.cleanup_crit_edge ], [ true, %lor.lhs.false.i37.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_set_coverage_class(ptr noundef %ah, i8 noundef zeroext %coverage_class) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_bwmode.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %0 = ptrtoint ptr %ah_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ah_bwmode.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %1, label %sw.default.i [
    i8 3, label %ath5k_hw_get_default_slottime.exit.thread
    i8 2, label %ath5k_hw_get_default_slottime.exit.thread34
    i8 1, label %ath5k_hw_get_default_slottime.exit.thread40
  ]

ath5k_hw_get_default_slottime.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv30 = zext i8 %coverage_class to i32
  %mul31 = mul nuw nsw i32 %conv30, 3
  %add32 = add nuw nsw i32 %mul31, 6
  br label %ath5k_hw_get_default_sifs.exit

ath5k_hw_get_default_slottime.exit.thread34:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv36 = zext i8 %coverage_class to i32
  %mul37 = mul nuw nsw i32 %conv36, 3
  %add38 = add nuw nsw i32 %mul37, 13
  br label %ath5k_hw_get_default_sifs.exit

ath5k_hw_get_default_slottime.exit.thread40:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv42 = zext i8 %coverage_class to i32
  %mul43 = mul nuw nsw i32 %conv42, 3
  %add44 = add nuw nsw i32 %mul43, 21
  br label %ath5k_hw_get_default_sifs.exit

sw.default.i:                                     ; preds = %entry
  %ah_current_channel.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %3 = ptrtoint ptr %ah_current_channel.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ah_current_channel.i, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_value.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp.i = icmp eq i16 %6, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.default.i.ath5k_hw_get_default_slottime.exit_crit_edge

sw.default.i.ath5k_hw_get_default_slottime.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_get_default_slottime.exit

land.lhs.true.i:                                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #6
  %ah_short_slot.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 81
  %7 = ptrtoint ptr %ah_short_slot.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ah_short_slot.i, align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %spec.select.i = select i1 %tobool.not.i, i32 20, i32 9
  br label %ath5k_hw_get_default_slottime.exit

ath5k_hw_get_default_slottime.exit:               ; preds = %land.lhs.true.i, %sw.default.i.ath5k_hw_get_default_slottime.exit_crit_edge
  %slot_time.0.i = phi i32 [ 9, %sw.default.i.ath5k_hw_get_default_slottime.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %conv = zext i8 %coverage_class to i32
  %mul = mul nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %slot_time.0.i, %mul
  %9 = ptrtoint ptr %ah_current_channel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah_current_channel.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i18 = icmp eq i32 %12, 1
  %spec.store.select.i = select i1 %cmp.i18, i32 16, i32 10
  br label %ath5k_hw_get_default_sifs.exit

ath5k_hw_get_default_sifs.exit:                   ; preds = %ath5k_hw_get_default_slottime.exit, %ath5k_hw_get_default_slottime.exit.thread40, %ath5k_hw_get_default_slottime.exit.thread34, %ath5k_hw_get_default_slottime.exit.thread
  %add33 = phi i32 [ %add, %ath5k_hw_get_default_slottime.exit ], [ %add44, %ath5k_hw_get_default_slottime.exit.thread40 ], [ %add38, %ath5k_hw_get_default_slottime.exit.thread34 ], [ %add32, %ath5k_hw_get_default_slottime.exit.thread ]
  %sifs.0.i = phi i32 [ %spec.store.select.i, %ath5k_hw_get_default_slottime.exit ], [ 64, %ath5k_hw_get_default_slottime.exit.thread40 ], [ 32, %ath5k_hw_get_default_slottime.exit.thread34 ], [ 6, %ath5k_hw_get_default_slottime.exit.thread ]
  %add2 = add nuw nsw i32 %sifs.0.i, %add33
  %call3 = tail call i32 @ath5k_hw_set_ifs_intervals(ptr noundef %ah, i32 noundef %add33) #4
  %call.i = tail call i32 @ath5k_hw_clocktoh(ptr noundef %ah, i32 noundef 8191) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add2)
  %cmp.not.i = icmp ugt i32 %call.i, %add2
  br i1 %cmp.not.i, label %if.end.i, label %ath5k_hw_get_default_sifs.exit.ath5k_hw_set_ack_timeout.exit_crit_edge

ath5k_hw_get_default_sifs.exit.ath5k_hw_set_ack_timeout.exit_crit_edge: ; preds = %ath5k_hw_get_default_sifs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_set_ack_timeout.exit

if.end.i:                                         ; preds = %ath5k_hw_get_default_sifs.exit
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %13 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 32788
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %16 = and i32 %15, 14745599
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %call2.i = tail call i32 @ath5k_hw_htoclock(ptr noundef %ah, i32 noundef %add2) #4
  %and3.i = and i32 %call2.i, 8191
  %or.i = or i32 %and3.i, %17
  %18 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %19, i32 32788
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %20) #4, !srcloc !21
  br label %ath5k_hw_set_ack_timeout.exit

ath5k_hw_set_ack_timeout.exit:                    ; preds = %if.end.i, %ath5k_hw_get_default_sifs.exit.ath5k_hw_set_ack_timeout.exit_crit_edge
  %call.i20 = tail call i32 @ath5k_hw_clocktoh(ptr noundef %ah, i32 noundef 8191) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i20, i32 %add2)
  %cmp.not.i21 = icmp ugt i32 %call.i20, %add2
  br i1 %cmp.not.i21, label %if.end.i28, label %ath5k_hw_set_ack_timeout.exit.ath5k_hw_set_cts_timeout.exit_crit_edge

ath5k_hw_set_ack_timeout.exit.ath5k_hw_set_cts_timeout.exit_crit_edge: ; preds = %ath5k_hw_set_ack_timeout.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_hw_set_cts_timeout.exit

if.end.i28:                                       ; preds = %ath5k_hw_set_ack_timeout.exit
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i.i22 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %21 = ptrtoint ptr %iobase.i.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i.i22, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %22, i32 32788
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %24 = and i32 %23, -65312
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  %call2.i24 = tail call i32 @ath5k_hw_htoclock(ptr noundef %ah, i32 noundef %add2) #4
  %shl.i = shl i32 %call2.i24, 16
  %and3.i25 = and i32 %shl.i, 536805376
  %or.i26 = or i32 %and3.i25, %25
  %26 = ptrtoint ptr %iobase.i.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i.i22, align 4
  %add.ptr.i2.i27 = getelementptr i8, ptr %27, i32 32788
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i26) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i27, i32 %28) #4, !srcloc !21
  br label %ath5k_hw_set_cts_timeout.exit

ath5k_hw_set_cts_timeout.exit:                    ; preds = %if.end.i28, %ath5k_hw_set_ack_timeout.exit.ath5k_hw_set_cts_timeout.exit_crit_edge
  %ah_coverage_class = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 78
  %29 = ptrtoint ptr %ah_coverage_class to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %coverage_class, ptr %ah_coverage_class, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_ifs_intervals(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_start_rx_pcu(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
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
  %conv.i = select i1 %cmp, i32 32872, i32 32840
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %6 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  %neg = select i1 %cmp2, i32 -65, i32 -33
  %and = and i32 %neg, %5
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %conv.i15 = select i1 %cmp2, i32 32872, i32 32840
  %add.ptr.i16 = getelementptr i8, ptr %9, i32 %conv.i15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %10) #4, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_stop_rx_pcu(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
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
  %conv.i = select i1 %cmp, i32 32872, i32 32840
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %6 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  %cond4 = select i1 %cmp2, i32 64, i32 32
  %or = or i32 %cond4, %5
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %conv.i15 = select i1 %cmp2, i32 32872, i32 32840
  %add.ptr.i16 = getelementptr i8, ptr %9, i32 %conv.i15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %10) #4, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_set_opmode(ptr noundef %ah, i32 noundef %op_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.rhs:                                         ; preds = %entry
  %call1 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs.do.end_crit_edge, label %if.then, !prof !26

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ath5k_hw_set_opmode, i32 noundef 882, i32 noundef %op_mode) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32772
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %5 = and i32 %4, 64751
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %7 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %neg = select i1 %cmp, i32 -270008320, i32 -268697600
  %and7 = and i32 %neg, %6
  %9 = zext i32 %op_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %op_mode, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %do.end.sw.bb17_crit_edge
    i32 7, label %do.end.sw.bb17_crit_edge95
    i32 2, label %sw.bb28
    i32 6, label %do.end.sw.bb34_crit_edge
  ]

do.end.sw.bb34_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb34

do.end.sw.bb17_crit_edge95:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb17

do.end.sw.bb17_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %or13 = or i32 %and7, 269615104
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %or8 = or i32 %and7, 268566528
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %11, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %13 = or i32 %12, 536870912
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %13) #4, !srcloc !21
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end.sw.bb17_crit_edge, %do.end.sw.bb17_crit_edge95
  br i1 %cmp, label %if.then22, label %if.else24

if.then22:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  %or23 = or i32 %and7, 269549568
  br label %sw.epilog

if.else24:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  %or18 = or i32 %and7, 268500992
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %17, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %19 = and i32 %18, -536870913
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %19) #4, !srcloc !21
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %or32 = select i1 %cmp, i32 268697600, i32 268435456
  %or33 = or i32 %and7, %or32
  br label %sw.bb34

sw.bb34:                                          ; preds = %sw.bb28, %do.end.sw.bb34_crit_edge
  %pcu_reg.0 = phi i32 [ %and7, %do.end.sw.bb34_crit_edge ], [ %or33, %sw.bb28 ]
  %or38 = select i1 %cmp, i32 269484032, i32 268435456
  %or39 = or i32 %pcu_reg.0, %or38
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb34, %if.else24, %if.then22, %if.else, %if.then12
  %pcu_reg.1 = phi i32 [ %or39, %sw.bb34 ], [ %or23, %if.then22 ], [ %or18, %if.else24 ], [ %or13, %if.then12 ], [ %or8, %if.else ]
  %beacon_reg.0 = phi i32 [ 0, %sw.bb34 ], [ 0, %if.then22 ], [ 0, %if.else24 ], [ 16777216, %if.then12 ], [ 16777216, %if.else ]
  %macaddr = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 9
  %22 = ptrtoint ptr %macaddr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %macaddr, align 1
  %add.ptr = getelementptr %struct.ath_common, ptr %ah, i32 0, i32 9, i32 4
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %add.ptr, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #4
  %conv = zext i16 %26 to i32
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %28, i32 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %23) #4, !srcloc !21
  %or44 = or i32 %pcu_reg.1, %conv
  %29 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %30, i32 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 @llvm.bswap.i32(i32 %or44) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %31) #4, !srcloc !21
  %32 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp46 = icmp eq i32 %33, 0
  br i1 %cmp46, label %if.then48, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then48:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %35, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %beacon_reg.0) #4, !srcloc !21
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %sw.epilog.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_pcu_init(ptr noundef %ah, i32 noundef %op_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ath5k_hw_set_bssid(ptr noundef %ah)
  %call = tail call i32 @ath5k_hw_set_opmode(ptr noundef %ah, i32 noundef %op_mode)
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nvifs = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 22
  %2 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nvifs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %n_bitrates.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 8, i32 0, i32 4
  %4 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_bitrates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp91.not.i = icmp eq i32 %5, 0
  br i1 %cmp91.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %ah_ack_bitrate_high.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 79
  %bitrates.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 8, i32 0, i32 1
  %ah_bwmode.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %hw.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %iobase.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %ah_ack_bitrate_high.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ah_ack_bitrate_high.i, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitrates.i, align 4
  %arrayidx4.i = getelementptr [12 x i32], ptr @ack_rates_high, i32 0, i32 %i.092.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.ieee80211_rate, ptr %9, i32 %11
  br label %if.end19.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.092.i)
  %cmp6.i = icmp ult i32 %i.092.i, 4
  %12 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bitrates.i, align 4
  %spec.select.idx.i = select i1 %cmp6.i, i32 0, i32 4
  %spec.select.i = getelementptr %struct.ieee80211_rate, ptr %13, i32 %spec.select.idx.i
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then.i
  %rate.0.i = phi ptr [ %arrayidx5.i, %if.then.i ], [ %spec.select.i, %if.else.i ]
  %hw_value.i = getelementptr inbounds %struct.ieee80211_rate, ptr %rate.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hw_value.i, align 2
  %shl.i = shl i16 %15, 2
  %16 = ptrtoint ptr %ah_bwmode.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ah_bwmode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end3.i.i

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i.i, align 4
  %call.i.i = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %19, ptr noundef null, i32 noundef 0, i32 noundef 10, ptr noundef %rate.0.i) #4
  %20 = tail call i16 @llvm.bswap.i16(i16 %call.i.i) #4
  %conv.i.i = zext i16 %20 to i32
  br label %ath5k_hw_get_frame_duration.exit.i

if.end3.i.i:                                      ; preds = %if.end19.i
  %bitrate4.i.i = getelementptr inbounds %struct.ieee80211_rate, ptr %rate.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %bitrate4.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bitrate4.i.i, align 4
  %conv5.i.i = zext i16 %22 to i32
  %23 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %17, label %sw.default.i.i [
    i8 3, label %if.end3.i.i.sw.epilog.i.i_crit_edge
    i8 2, label %sw.bb8.i.i
    i8 1, label %sw.bb11.i.i
  ]

if.end3.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub10.i.i = add nuw nsw i32 %conv5.i.i, 1
  %div49.i.i = lshr i32 %sub10.i.i, 1
  br label %sw.epilog.i.i

sw.bb11.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub15.i.i = add nuw nsw i32 %conv5.i.i, 3
  %div1648.i.i = lshr i32 %sub15.i.i, 2
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb11.i.i, %sw.bb8.i.i, %if.end3.i.i.sw.epilog.i.i_crit_edge
  %sifs.0.i.i = phi i32 [ 10, %sw.default.i.i ], [ 64, %sw.bb11.i.i ], [ 32, %sw.bb8.i.i ], [ 6, %if.end3.i.i.sw.epilog.i.i_crit_edge ]
  %preamble.0.i.i = phi i32 [ 20, %sw.default.i.i ], [ 80, %sw.bb11.i.i ], [ 40, %sw.bb8.i.i ], [ 14, %if.end3.i.i.sw.epilog.i.i_crit_edge ]
  %sym_time.0.i.i = phi i32 [ 4, %sw.default.i.i ], [ 16, %sw.bb11.i.i ], [ 8, %sw.bb8.i.i ], [ 4, %if.end3.i.i.sw.epilog.i.i_crit_edge ]
  %bitrate.0.i.i = phi i32 [ %conv5.i.i, %sw.default.i.i ], [ %div1648.i.i, %sw.bb11.i.i ], [ %div49.i.i, %sw.bb8.i.i ], [ %conv5.i.i, %if.end3.i.i.sw.epilog.i.i_crit_edge ]
  %mul18.i.i = mul nuw nsw i32 %bitrate.0.i.i, %sym_time.0.i.i
  %sub21.i.i = add nuw nsw i32 %mul18.i.i, 1019
  %div22.i90.i = udiv i32 %sub21.i.i, %mul18.i.i
  %add23.i.i = add nuw nsw i32 %preamble.0.i.i, %sifs.0.i.i
  %mul24.i.i = mul nuw nsw i32 %div22.i90.i, %sym_time.0.i.i
  %add25.i.i = add nuw nsw i32 %add23.i.i, %mul24.i.i
  br label %ath5k_hw_get_frame_duration.exit.i

ath5k_hw_get_frame_duration.exit.i:               ; preds = %sw.epilog.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add25.i.i, %sw.epilog.i.i ], [ %conv.i.i, %if.then.i.i ]
  %conv22.i = and i32 %retval.0.i.i, 65535
  %conv23.i = add i16 %shl.i, -30976
  %24 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i.i, align 4
  %conv.i55.i = zext i16 %conv23.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %conv.i55.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv22.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %26) #4, !srcloc !21
  %27 = ptrtoint ptr %rate.0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate.0.i, align 4
  %and.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool24.not.i, label %ath5k_hw_get_frame_duration.exit.i.cleanup.i_crit_edge, label %if.end26.i

ath5k_hw_get_frame_duration.exit.i.cleanup.i_crit_edge: ; preds = %ath5k_hw_get_frame_duration.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end26.i:                                       ; preds = %ath5k_hw_get_frame_duration.exit.i
  %29 = ptrtoint ptr %ah_bwmode.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ah_bwmode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i57.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i57.i, label %if.then.i62.i, label %if.end3.i65.i

if.then.i62.i:                                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw.i.i, align 4
  %call.i59.i = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %32, ptr noundef null, i32 noundef 0, i32 noundef 10, ptr noundef %rate.0.i) #4
  %33 = tail call i16 @llvm.bswap.i16(i16 %call.i59.i) #4
  %conv.i60.i = zext i16 %33 to i32
  %sub.i61.i = add nsw i32 %conv.i60.i, -96
  br label %ath5k_hw_get_frame_duration.exit85.i

if.end3.i65.i:                                    ; preds = %if.end26.i
  %bitrate4.i63.i = getelementptr inbounds %struct.ieee80211_rate, ptr %rate.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %bitrate4.i63.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bitrate4.i63.i, align 4
  %conv5.i64.i = zext i16 %35 to i32
  %36 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %30, label %sw.default.i72.i [
    i8 3, label %if.end3.i65.i.sw.epilog.i83.i_crit_edge
    i8 2, label %sw.bb8.i68.i
    i8 1, label %sw.bb11.i71.i
  ]

if.end3.i65.i.sw.epilog.i83.i_crit_edge:          ; preds = %if.end3.i65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i83.i

sw.bb8.i68.i:                                     ; preds = %if.end3.i65.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub10.i66.i = add nuw nsw i32 %conv5.i64.i, 1
  %div49.i67.i = lshr i32 %sub10.i66.i, 1
  br label %sw.epilog.i83.i

sw.bb11.i71.i:                                    ; preds = %if.end3.i65.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub15.i69.i = add nuw nsw i32 %conv5.i64.i, 3
  %div1648.i70.i = lshr i32 %sub15.i69.i, 2
  br label %sw.epilog.i83.i

sw.default.i72.i:                                 ; preds = %if.end3.i65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i83.i

sw.epilog.i83.i:                                  ; preds = %sw.default.i72.i, %sw.bb11.i71.i, %sw.bb8.i68.i, %if.end3.i65.i.sw.epilog.i83.i_crit_edge
  %sifs.0.i73.i = phi i32 [ 10, %sw.default.i72.i ], [ 64, %sw.bb11.i71.i ], [ 32, %sw.bb8.i68.i ], [ 6, %if.end3.i65.i.sw.epilog.i83.i_crit_edge ]
  %preamble.0.i74.i = phi i32 [ 20, %sw.default.i72.i ], [ 80, %sw.bb11.i71.i ], [ 40, %sw.bb8.i68.i ], [ 14, %if.end3.i65.i.sw.epilog.i83.i_crit_edge ]
  %sym_time.0.i75.i = phi i32 [ 4, %sw.default.i72.i ], [ 16, %sw.bb11.i71.i ], [ 8, %sw.bb8.i68.i ], [ 4, %if.end3.i65.i.sw.epilog.i83.i_crit_edge ]
  %bitrate.0.i76.i = phi i32 [ %conv5.i64.i, %sw.default.i72.i ], [ %div1648.i70.i, %sw.bb11.i71.i ], [ %div49.i67.i, %sw.bb8.i68.i ], [ %conv5.i64.i, %if.end3.i65.i.sw.epilog.i83.i_crit_edge ]
  %mul18.i77.i = mul nuw nsw i32 %bitrate.0.i76.i, %sym_time.0.i75.i
  %sub21.i78.i = add nuw nsw i32 %mul18.i77.i, 1019
  %div22.i7989.i = udiv i32 %sub21.i78.i, %mul18.i77.i
  %add23.i80.i = add nuw nsw i32 %preamble.0.i74.i, %sifs.0.i73.i
  %mul24.i81.i = mul nuw nsw i32 %div22.i7989.i, %sym_time.0.i75.i
  %add25.i82.i = add nuw nsw i32 %add23.i80.i, %mul24.i81.i
  br label %ath5k_hw_get_frame_duration.exit85.i

ath5k_hw_get_frame_duration.exit85.i:             ; preds = %sw.epilog.i83.i, %if.then.i62.i
  %retval.0.i84.i = phi i32 [ %add25.i82.i, %sw.epilog.i83.i ], [ %sub.i61.i, %if.then.i62.i ]
  %conv30.i = and i32 %retval.0.i84.i, 65535
  %conv32.i = add i16 %shl.i, -30960
  %37 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i.i, align 4
  %conv.i87.i = zext i16 %conv32.i to i32
  %add.ptr.i88.i = getelementptr i8, ptr %38, i32 %conv.i87.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv30.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 %39) #4, !srcloc !21
  br label %cleanup.i

cleanup.i:                                        ; preds = %ath5k_hw_get_frame_duration.exit85.i, %ath5k_hw_get_frame_duration.exit.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.092.i, 1
  %40 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_bitrates.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %41
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %42 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 32792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2130247680) #4, !srcloc !21
  %ah_mac_srev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 70
  %44 = ptrtoint ptr %ah_mac_srev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ah_mac_srev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 119, i32 %45)
  %cmp1 = icmp ugt i32 %45, 119
  br i1 %cmp1, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %47, i32 33048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 -1442840320) #4, !srcloc !21
  %48 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %49, i32 33052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 271712256) #4, !srcloc !21
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %50 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp6 = icmp eq i32 %51, 2
  br i1 %cmp6, label %if.then8, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %53, i32 33032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 1375731712) #4, !srcloc !21
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %ah_coverage_class = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 78
  %54 = ptrtoint ptr %ah_coverage_class to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ah_coverage_class, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp11.not = icmp eq i8 %55, 0
  br i1 %cmp11.not, label %if.end9.if.end15_crit_edge, label %if.then13

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath5k_hw_set_coverage_class(ptr noundef %ah, i8 noundef zeroext %55)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  %56 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp17 = icmp eq i32 %57, 2
  br i1 %cmp17, label %if.then19, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then19:                                        ; preds = %if.end15
  %ah_ack_bitrate_high = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 79
  %58 = ptrtoint ptr %ah_ack_bitrate_high to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ah_ack_bitrate_high, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool20.not = icmp eq i8 %59, 0
  %60 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %61, i32 32772
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  %63 = and i32 %62, -4
  %64 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %65, i32 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %63) #4, !srcloc !21
  br label %if.end25

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  %66 = or i32 %62, 3
  %67 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %68, i32 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %66) #4, !srcloc !21
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then21, %if.end15.if.end25_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_clocktoh(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_htoclock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/pcu.c", i32 594, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath5k/pcu.c", i32 882, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.ath5k_hw_set_opmode, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ack_rates_high, !7, !"ack_rates_high", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath5k/pcu.c", i32 82, i32 27}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = !{i64 796483}
!19 = !{i64 2148964612}
!20 = !{i64 2148965967}
!21 = !{i64 796065}
!22 = !{i64 919779, i64 919840}
!23 = !{i64 922511}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 922796}
!26 = !{!"branch_weights", i32 2000, i32 1}
