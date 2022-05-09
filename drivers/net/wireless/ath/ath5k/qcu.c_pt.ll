; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/qcu.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/qcu.c"
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

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ath/ath5k/qcu.c\00", [59 x i8] zeroinitializer }, align 32
@switch.table.ath5k_hw_setup_tx_queue = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath5k/qcu.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 96, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [37 x i8] c"switch.table.ath5k_hw_setup_tx_queue\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @switch.table.ath5k_hw_setup_tx_queue], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_hw_setup_tx_queue to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_num_tx_pending(ptr nocapture noundef readonly %ah, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 3
  %0 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_queues, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue)
  %cmp.not = icmp ugt i32 %conv, %queue
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %4 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %6 = shl i32 %queue, 2
  %conv10 = add i32 %6, 2560
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %conv.i = and i32 %conv10, 65532
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !14
  %10 = lshr i32 %9, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %and = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end9
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %12, i32 2112
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #4, !srcloc !14
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %shl12 = shl nuw i32 1, %queue
  %and13 = and i32 %14, %shl12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_release_tx_queue(ptr nocapture noundef %ah, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 3
  %0 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_queues, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue)
  %cmp.not = icmp ugt i32 %conv, %queue
  br i1 %cmp.not, label %if.end22.critedge, label %do.end, !prof !16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #4
  br label %do.end25

if.end22.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 8
  %shl = shl nuw i32 1, %queue
  %neg = xor i32 %shl, -1
  %ah_txq_status = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 88
  %3 = ptrtoint ptr %ah_txq_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ah_txq_status, align 8
  %and = and i32 %4, %neg
  store i32 %and, ptr %ah_txq_status, align 8
  br label %do.end25

do.end25:                                         ; preds = %if.end22.critedge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath5k_hw_get_tx_queueprops(ptr nocapture noundef readonly %ah, i32 noundef %queue, ptr nocapture noundef writeonly %queue_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue
  %0 = call ptr @memcpy(ptr %queue_info, ptr %arrayidx, i32 32)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath5k_hw_set_tx_queueprops(ptr nocapture noundef %ah, i32 noundef %queue, ptr nocapture noundef readonly %qinfo) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 3
  %0 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_queues, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue)
  %cmp.not = icmp sgt i32 %conv, %queue
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %4 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qinfo, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %tqi_subtype = getelementptr inbounds %struct.ath5k_txq_info, ptr %qinfo, i32 0, i32 1
  %7 = ptrtoint ptr %tqi_subtype to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tqi_subtype, align 4
  %tqi_subtype8 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 1
  %9 = ptrtoint ptr %tqi_subtype8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tqi_subtype8, align 4
  %tqi_flags = getelementptr inbounds %struct.ath5k_txq_info, ptr %qinfo, i32 0, i32 2
  %10 = ptrtoint ptr %tqi_flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tqi_flags, align 4
  %tqi_flags9 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 2
  %12 = ptrtoint ptr %tqi_flags9 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %tqi_flags9, align 4
  %tqi_aifs = getelementptr inbounds %struct.ath5k_txq_info, ptr %qinfo, i32 0, i32 3
  %13 = ptrtoint ptr %tqi_aifs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tqi_aifs, align 2
  %15 = tail call i8 @llvm.umin.i8(i8 %14, i8 -4)
  %tqi_aifs17 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 3
  %16 = ptrtoint ptr %tqi_aifs17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tqi_aifs17, align 2
  %tqi_cw_min = getelementptr inbounds %struct.ath5k_txq_info, ptr %qinfo, i32 0, i32 4
  %17 = ptrtoint ptr %tqi_cw_min to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tqi_cw_min, align 4
  %19 = tail call i16 @llvm.umin.i16(i16 %18, i16 1023) #4
  %conv6.i = zext i16 %19 to i32
  %add.i = add nuw nsw i32 %conv6.i, 1
  %20 = tail call i32 @llvm.ctpop.i32(i32 %add.i) #4, !range !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp1.i.i = icmp ult i32 %20, 2
  br i1 %cmp1.i.i, label %if.end5.ath5k_cw_validate.exit_crit_edge, label %if.end.i

if.end5.ath5k_cw_validate.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_cw_validate.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.not.i.i = icmp ne i16 %19, 0
  %21 = tail call i32 @llvm.ctpop.i32(i32 %conv6.i) #4, !range !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp1.i66.i = icmp ult i32 %21, 2
  %or.cond.i = and i1 %cmp.not.i.i, %cmp1.i66.i
  br i1 %or.cond.i, label %if.then9.i, label %cond.end46.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = add nsw i16 %19, -1
  br label %ath5k_cw_validate.exit

cond.end46.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i67.i = add nsw i32 %conv6.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i67.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i67.i, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %sub.i67.i, i1 true) #4, !range !17
  %sub.i.i.i.i = sub nuw nsw i32 32, %22
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %23 = trunc i32 %sub.i.i.op.i.i to i16
  %.op = add i16 %23, -1
  %conv51.i = select i1 %tobool.not.i.i.i.i, i16 0, i16 %.op
  br label %ath5k_cw_validate.exit

ath5k_cw_validate.exit:                           ; preds = %cond.end46.i, %if.then9.i, %if.end5.ath5k_cw_validate.exit_crit_edge
  %retval.0.i = phi i16 [ %sub.i, %if.then9.i ], [ %conv51.i, %cond.end46.i ], [ %19, %if.end5.ath5k_cw_validate.exit_crit_edge ]
  %tqi_cw_min18 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 4
  %24 = ptrtoint ptr %tqi_cw_min18 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %retval.0.i, ptr %tqi_cw_min18, align 4
  %tqi_cw_max = getelementptr inbounds %struct.ath5k_txq_info, ptr %qinfo, i32 0, i32 5
  %25 = ptrtoint ptr %tqi_cw_max to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tqi_cw_max, align 2
  %27 = tail call i16 @llvm.umin.i16(i16 %26, i16 1023) #4
  %conv6.i71 = zext i16 %27 to i32
  %add.i72 = add nuw nsw i32 %conv6.i71, 1
  %28 = tail call i32 @llvm.ctpop.i32(i32 %add.i72) #4, !range !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp1.i.i73 = icmp ult i32 %28, 2
  br i1 %cmp1.i.i73, label %ath5k_cw_validate.exit.ath5k_cw_validate.exit109_crit_edge, label %if.end.i77

ath5k_cw_validate.exit.ath5k_cw_validate.exit109_crit_edge: ; preds = %ath5k_cw_validate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath5k_cw_validate.exit109

if.end.i77:                                       ; preds = %ath5k_cw_validate.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.not.i.i74 = icmp ne i16 %27, 0
  %29 = tail call i32 @llvm.ctpop.i32(i32 %conv6.i71) #4, !range !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp1.i66.i75 = icmp ult i32 %29, 2
  %or.cond.i76 = and i1 %cmp.not.i.i74, %cmp1.i66.i75
  br i1 %or.cond.i76, label %if.then9.i79, label %cond.end46.i107

if.then9.i79:                                     ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i78 = add nsw i16 %27, -1
  br label %ath5k_cw_validate.exit109

cond.end46.i107:                                  ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i67.i99 = add nsw i32 %conv6.i71, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i67.i99)
  %tobool.not.i.i.i.i100 = icmp eq i32 %sub.i67.i99, 0
  %30 = tail call i32 @llvm.ctlz.i32(i32 %sub.i67.i99, i1 true) #4, !range !17
  %sub.i.i.i.i101 = sub nuw nsw i32 32, %30
  %sub.i.i.op.i.i102 = shl nuw i32 1, %sub.i.i.i.i101
  %31 = trunc i32 %sub.i.i.op.i.i102 to i16
  %.op111 = add i16 %31, -1
  %conv51.i106 = select i1 %tobool.not.i.i.i.i100, i16 0, i16 %.op111
  br label %ath5k_cw_validate.exit109

ath5k_cw_validate.exit109:                        ; preds = %cond.end46.i107, %if.then9.i79, %ath5k_cw_validate.exit.ath5k_cw_validate.exit109_crit_edge
  %retval.0.i108 = phi i16 [ %sub.i78, %if.then9.i79 ], [ %conv51.i106, %cond.end46.i107 ], [ %27, %ath5k_cw_validate.exit.ath5k_cw_validate.exit109_crit_edge ]
  %tqi_cw_max20 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 5
  %32 = ptrtoint ptr %tqi_cw_max20 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %retval.0.i108, ptr %tqi_cw_max20, align 2
  %tqi_cbr_period = getelementptr inbounds %struct.ath5k_txq_info, ptr %qinfo, i32 0, i32 6
  %33 = ptrtoint ptr %tqi_cbr_period to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tqi_cbr_period, align 4
  %tqi_cbr_period21 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 6
  %35 = ptrtoint ptr %tqi_cbr_period21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tqi_cbr_period21, align 4
  %tqi_cbr_overflow_limit = getelementptr inbounds %struct.ath5k_txq_info, ptr %qinfo, i32 0, i32 7
  %36 = ptrtoint ptr %tqi_cbr_overflow_limit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tqi_cbr_overflow_limit, align 4
  %tqi_cbr_overflow_limit22 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 7
  %38 = ptrtoint ptr %tqi_cbr_overflow_limit22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tqi_cbr_overflow_limit22, align 4
  %tqi_burst_time = getelementptr inbounds %struct.ath5k_txq_info, ptr %qinfo, i32 0, i32 8
  %39 = ptrtoint ptr %tqi_burst_time to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tqi_burst_time, align 4
  %tqi_burst_time23 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 8
  %41 = ptrtoint ptr %tqi_burst_time23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tqi_burst_time23, align 4
  %tqi_ready_time = getelementptr inbounds %struct.ath5k_txq_info, ptr %qinfo, i32 0, i32 9
  %42 = ptrtoint ptr %tqi_ready_time to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tqi_ready_time, align 4
  %tqi_ready_time24 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 9
  %44 = ptrtoint ptr %tqi_ready_time24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tqi_ready_time24, align 4
  %45 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qinfo, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %ath5k_cw_validate.exit109.cleanup_crit_edge [
    i32 1, label %land.lhs.true
    i32 4, label %ath5k_cw_validate.exit109.if.then38_crit_edge
  ]

ath5k_cw_validate.exit109.if.then38_crit_edge:    ; preds = %ath5k_cw_validate.exit109
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

ath5k_cw_validate.exit109.cleanup_crit_edge:      ; preds = %ath5k_cw_validate.exit109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %ath5k_cw_validate.exit109
  %48 = ptrtoint ptr %tqi_subtype to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tqi_subtype, align 4
  %50 = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %switch = icmp eq i32 %50, 2
  br i1 %switch, label %land.lhs.true.if.then38_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.then38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

if.then38:                                        ; preds = %land.lhs.true.if.then38_crit_edge, %ath5k_cw_validate.exit109.if.then38_crit_edge
  %51 = or i16 %11, 4096
  %52 = ptrtoint ptr %tqi_flags9 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %tqi_flags9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %land.lhs.true.cleanup_crit_edge, %ath5k_cw_validate.exit109.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -5, %do.end.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %ath5k_cw_validate.exit109.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath5k_hw_setup_tx_queue(ptr nocapture noundef %ah, i32 noundef %queue_type, ptr noundef %queue_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 3
  %0 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %switch.tableidx = add i32 %queue_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %3 = zext i32 %queue_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %queue_type, label %if.else.cleanup_crit_edge [
    i32 1, label %sw.bb3
    i32 4, label %if.else.if.end_crit_edge
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb3:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %tqi_subtype = getelementptr inbounds %struct.ath5k_txq_info, ptr %queue_info, i32 0, i32 1
  %4 = ptrtoint ptr %tqi_subtype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tqi_subtype, align 4
  br label %if.end

sw.bb5:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb6:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ath5k_hw_setup_tx_queue, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %sw.bb6, %sw.bb5, %sw.bb3, %if.else.if.end_crit_edge
  %queue.0 = phi i32 [ 8, %sw.bb6 ], [ 9, %sw.bb5 ], [ %5, %sw.bb3 ], [ 7, %if.else.if.end_crit_edge ], [ %switch.load, %switch.lookup ]
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue.0
  %7 = call ptr @memset(ptr %arrayidx, i32 0, i32 32)
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %queue_type, ptr %arrayidx, align 8
  %cmp11.not = icmp eq ptr %queue_info, null
  br i1 %cmp11.not, label %if.end.do.body_crit_edge, label %if.then13

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then13:                                        ; preds = %if.end
  %9 = ptrtoint ptr %queue_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %queue_type, ptr %queue_info, align 4
  %call = tail call i32 @ath5k_hw_set_tx_queueprops(ptr noundef %ah, i32 noundef %queue.0, ptr noundef nonnull %queue_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then13.do.body_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13.do.body_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %if.then13.do.body_crit_edge, %if.end.do.body_crit_edge
  %shl = shl nuw i32 1, %queue.0
  %ah_txq_status = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 88
  %10 = ptrtoint ptr %ah_txq_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ah_txq_status, align 8
  %or = or i32 %11, %shl
  store i32 %or, ptr %ah_txq_status, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then13.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %queue.0, %do.body ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_set_tx_retry_limits(ptr nocapture noundef readonly %ah, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue)
  %cmp1.not = icmp eq i32 %queue, 0
  br i1 %cmp1.not, label %if.end, label %if.then.if.end41_crit_edge

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %tqi_cw_min = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 0, i32 4
  %2 = ptrtoint ptr %tqi_cw_min to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tqi_cw_min, align 4
  %conv = zext i16 %3 to i32
  %shl = shl i32 %conv, 20
  %ah_retry_long = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 75
  %4 = ptrtoint ptr %ah_retry_long to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ah_retry_long, align 8
  %conv3 = zext i8 %5 to i32
  %shl4 = shl nuw nsw i32 %conv3, 14
  %and = and i32 %shl4, 1032192
  %or = or i32 %and, %shl
  %ah_retry_short = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 76
  %6 = ptrtoint ptr %ah_retry_short to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ah_retry_short, align 1
  %conv5 = zext i8 %7 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %and7 = and i32 %shl6, 16128
  %or8 = or i32 %or, %and7
  %shl11 = shl nuw nsw i32 %conv3, 4
  %and12 = and i32 %shl11, 240
  %or13 = or i32 %or8, %and12
  %and17 = and i32 %conv5, 15
  %or18 = or i32 %or13, %and17
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 32796
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or18) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #4, !srcloc !20
  br label %if.end41

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ah_retry_long19 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 75
  %11 = ptrtoint ptr %ah_retry_long19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ah_retry_long19, align 8
  %conv20 = zext i8 %12 to i32
  %and22 = and i32 %conv20, 15
  %shl25 = shl nuw nsw i32 %conv20, 8
  %and26 = and i32 %shl25, 16128
  %or27 = or i32 %and26, %and22
  %ah_retry_short29 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 76
  %13 = ptrtoint ptr %ah_retry_short29 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ah_retry_short29, align 1
  %15 = tail call i8 @llvm.umax.i8(i8 %12, i8 %14)
  %16 = zext i8 %15 to i32
  %shl36 = shl nuw nsw i32 %16, 14
  %and37 = and i32 %shl36, 1032192
  %or38 = or i32 %or27, %and37
  %17 = shl i32 %queue, 2
  %conv40 = add i32 %17, 4224
  %iobase.i57 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %18 = ptrtoint ptr %iobase.i57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i57, align 4
  %conv.i = and i32 %conv40, 65532
  %add.ptr.i58 = getelementptr i8, ptr %19, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %or38) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %20) #4, !srcloc !20
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.end, %if.then.if.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_reset_tx_queue(ptr noundef %ah, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 3
  %0 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_queues, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue)
  %cmp.not = icmp ugt i32 %conv, %queue
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %2 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %tqi_cw_min = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 4
  %6 = ptrtoint ptr %tqi_cw_min to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tqi_cw_min, align 4
  %8 = and i16 %7, 1023
  %and = zext i16 %8 to i32
  %tqi_cw_max = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 5
  %9 = ptrtoint ptr %tqi_cw_max to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tqi_cw_max, align 2
  %conv9 = zext i16 %10 to i32
  %shl10 = shl nuw nsw i32 %conv9, 10
  %and11 = and i32 %shl10, 1047552
  %or = or i32 %and11, %and
  %tqi_aifs = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 3
  %11 = ptrtoint ptr %tqi_aifs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tqi_aifs, align 2
  %conv12 = zext i8 %12 to i32
  %shl13 = shl nuw nsw i32 %conv12, 20
  %or15 = or i32 %or, %shl13
  %queue.tr = trunc i32 %queue to i16
  %13 = shl i16 %queue.tr, 2
  %conv17 = add i16 %13, 4160
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %conv.i = zext i16 %conv17 to i32
  %add.ptr.i = getelementptr i8, ptr %15, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or15) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #4, !srcloc !20
  tail call void @ath5k_hw_set_tx_retry_limits(ptr noundef %ah, i32 noundef %queue)
  %conv20 = add i16 %13, 4352
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i, align 4
  %conv.i489 = zext i16 %conv20 to i32
  %add.ptr.i490 = getelementptr i8, ptr %18, i32 %conv.i489
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i490) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %20 = or i32 %19, 65536
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i493 = getelementptr i8, ptr %22, i32 %conv.i489
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i493, i32 %20) #4, !srcloc !20
  %ah_mac_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 71
  %23 = ptrtoint ptr %ah_mac_version to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ah_mac_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %24)
  %cmp26 = icmp ult i16 %24, 64
  br i1 %cmp26, label %if.then28, label %if.end7.if.end37_crit_edge

if.end7.if.end37_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then28:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i496 = getelementptr i8, ptr %26, i32 %conv.i489
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i496) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %28 = or i32 %27, 1
  %29 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i499 = getelementptr i8, ptr %30, i32 %conv.i489
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i499, i32 %28) #4, !srcloc !20
  br label %if.end37

if.end37:                                         ; preds = %if.then28, %if.end7.if.end37_crit_edge
  %tqi_cbr_period = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 6
  %31 = ptrtoint ptr %tqi_cbr_period to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tqi_cbr_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %if.end37.if.end68_crit_edge, label %if.then38

if.end37.if.end68_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

if.then38:                                        ; preds = %if.end37
  %and41 = and i32 %32, 16777215
  %tqi_cbr_overflow_limit = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 7
  %33 = ptrtoint ptr %tqi_cbr_overflow_limit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tqi_cbr_overflow_limit, align 4
  %shl42 = shl i32 %34, 24
  %or44 = or i32 %shl42, %and41
  %conv47 = add i16 %13, 2240
  %35 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i, align 4
  %conv.i501 = zext i16 %conv47 to i32
  %add.ptr.i502 = getelementptr i8, ptr %36, i32 %conv.i501
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %37 = tail call i32 @llvm.bswap.i32(i32 %or44) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i502, i32 %37) #4, !srcloc !20
  %conv50 = add i16 %13, 2496
  %38 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iobase.i, align 4
  %conv.i504 = zext i16 %conv50 to i32
  %add.ptr.i505 = getelementptr i8, ptr %39, i32 %conv.i504
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i505) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %41 = or i32 %40, 16777216
  %42 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i508 = getelementptr i8, ptr %43, i32 %conv.i504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i508, i32 %41) #4, !srcloc !20
  %44 = ptrtoint ptr %tqi_cbr_overflow_limit to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tqi_cbr_overflow_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool57.not = icmp eq i32 %45, 0
  br i1 %tobool57.not, label %if.then38.if.end68_crit_edge, label %if.then58

if.then38.if.end68_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

if.then58:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i511 = getelementptr i8, ptr %47, i32 %conv.i504
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i511) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %49 = or i32 %48, 65536
  %50 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i514 = getelementptr i8, ptr %51, i32 %conv.i504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i514, i32 %49) #4, !srcloc !20
  br label %if.end68

if.end68:                                         ; preds = %if.then58, %if.then38.if.end68_crit_edge, %if.end37.if.end68_crit_edge
  %tqi_ready_time = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 9
  %52 = ptrtoint ptr %tqi_ready_time to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tqi_ready_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool69.not = icmp eq i32 %53, 0
  br i1 %tobool69.not, label %if.end68.if.end81_crit_edge, label %land.lhs.true

if.end68.if.end81_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end68
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp71.not = icmp eq i32 %55, 3
  br i1 %cmp71.not, label %land.lhs.true.if.end81_crit_edge, label %if.then73

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

if.then73:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %and76 = and i32 %53, 16777215
  %or77 = or i32 %and76, 16777216
  %conv80 = add i16 %13, 2304
  %56 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iobase.i, align 4
  %conv.i516 = zext i16 %conv80 to i32
  %add.ptr.i517 = getelementptr i8, ptr %57, i32 %conv.i516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %58 = tail call i32 @llvm.bswap.i32(i32 %or77) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i517, i32 %58) #4, !srcloc !20
  br label %if.end81

if.end81:                                         ; preds = %if.then73, %land.lhs.true.if.end81_crit_edge, %if.end68.if.end81_crit_edge
  %tqi_burst_time = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 8
  %59 = ptrtoint ptr %tqi_burst_time to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tqi_burst_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool82.not = icmp eq i32 %60, 0
  br i1 %tobool82.not, label %if.end81.if.end104_crit_edge, label %if.then83

if.end81.if.end104_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104

if.then83:                                        ; preds = %if.end81
  %and86 = and i32 %60, 1048575
  %or87 = or i32 %and86, 1048576
  %conv90 = add i16 %13, 4288
  %61 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iobase.i, align 4
  %conv.i519 = zext i16 %conv90 to i32
  %add.ptr.i520 = getelementptr i8, ptr %62, i32 %conv.i519
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %63 = tail call i32 @llvm.bswap.i32(i32 %or87) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i520, i32 %63) #4, !srcloc !20
  %tqi_flags = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 2
  %64 = ptrtoint ptr %tqi_flags to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %tqi_flags, align 4
  %66 = and i16 %65, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool93.not = icmp eq i16 %66, 0
  br i1 %tobool93.not, label %if.then83.if.end104_crit_edge, label %if.then94

if.then83.if.end104_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104

if.then94:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #6
  %conv97 = add i16 %13, 2496
  %67 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iobase.i, align 4
  %conv.i522 = zext i16 %conv97 to i32
  %add.ptr.i523 = getelementptr i8, ptr %68, i32 %conv.i522
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i523) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %70 = or i32 %69, 131072
  %71 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i526 = getelementptr i8, ptr %72, i32 %conv.i522
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i526, i32 %70) #4, !srcloc !20
  br label %if.end104

if.end104:                                        ; preds = %if.then94, %if.then83.if.end104_crit_edge, %if.end81.if.end104_crit_edge
  %tqi_flags105 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue, i32 2
  %73 = ptrtoint ptr %tqi_flags105 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %tqi_flags105, align 4
  %75 = and i16 %74, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool108.not = icmp eq i16 %75, 0
  br i1 %tobool108.not, label %if.end104.if.end113_crit_edge, label %if.then109

if.end104.if.end113_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end113

if.then109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  %76 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i529 = getelementptr i8, ptr %77, i32 %conv.i489
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i529, i32 8192) #4, !srcloc !20
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %if.end104.if.end113_crit_edge
  %78 = ptrtoint ptr %tqi_flags105 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %tqi_flags105, align 4
  %80 = and i16 %79, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool117.not = icmp eq i16 %80, 0
  br i1 %tobool117.not, label %if.end113.if.end122_crit_edge, label %if.then118

if.end113.if.end122_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end122

if.then118:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  %81 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i532 = getelementptr i8, ptr %82, i32 %conv.i489
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i532, i32 131072) #4, !srcloc !20
  br label %if.end122

if.end122:                                        ; preds = %if.then118, %if.end113.if.end122_crit_edge
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %84, label %if.end122.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb140
    i32 4, label %sw.bb163
  ]

if.end122.sw.epilog_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #6
  %conv126 = add i16 %13, 2496
  %86 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %iobase.i, align 4
  %conv.i534 = zext i16 %conv126 to i32
  %add.ptr.i535 = getelementptr i8, ptr %87, i32 %conv.i534
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i535) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %89 = or i32 %88, -1040187392
  %90 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i538 = getelementptr i8, ptr %91, i32 %conv.i534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i538, i32 %89) #4, !srcloc !20
  %92 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i541 = getelementptr i8, ptr %93, i32 %conv.i489
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i541) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %95 = or i32 %94, 11520
  %96 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i544 = getelementptr i8, ptr %97, i32 %conv.i489
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i544, i32 %95) #4, !srcloc !20
  br label %sw.epilog

sw.bb140:                                         ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #6
  %conv143 = add i16 %13, 2496
  %98 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %iobase.i, align 4
  %conv.i546 = zext i16 %conv143 to i32
  %add.ptr.i547 = getelementptr i8, ptr %99, i32 %conv.i546
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i547) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %101 = or i32 %100, 1644167168
  %102 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i550 = getelementptr i8, ptr %103, i32 %conv.i546
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i550, i32 %101) #4, !srcloc !20
  %104 = ptrtoint ptr %tqi_ready_time to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tqi_ready_time, align 4
  %sub = shl i32 %105, 10
  %mul = add i32 %sub, -8192
  %or151 = or i32 %mul, 16777216
  %conv154 = add i16 %13, 2304
  %106 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %iobase.i, align 4
  %conv.i552 = zext i16 %conv154 to i32
  %add.ptr.i553 = getelementptr i8, ptr %107, i32 %conv.i552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %108 = tail call i32 @llvm.bswap.i32(i32 %or151) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i553, i32 %108) #4, !srcloc !20
  %109 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i556 = getelementptr i8, ptr %110, i32 %conv.i489
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i556) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %112 = or i32 %111, 1024
  %113 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i559 = getelementptr i8, ptr %114, i32 %conv.i489
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i559, i32 %112) #4, !srcloc !20
  br label %sw.epilog

sw.bb163:                                         ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #6
  %conv166 = add i16 %13, 2496
  %115 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %iobase.i, align 4
  %conv.i561 = zext i16 %conv166 to i32
  %add.ptr.i562 = getelementptr i8, ptr %116, i32 %conv.i561
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i562) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %118 = or i32 %117, 536870912
  %119 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i565 = getelementptr i8, ptr %120, i32 %conv.i561
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i565, i32 %118) #4, !srcloc !20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb163, %sw.bb140, %sw.bb, %if.end122.sw.epilog_crit_edge
  %121 = ptrtoint ptr %tqi_flags105 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %tqi_flags105, align 4
  %123 = and i16 %122, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool176.not = icmp eq i16 %123, 0
  br i1 %tobool176.not, label %sw.epilog.if.end183_crit_edge, label %do.body178

sw.epilog.if.end183_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183

do.body178:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %shl179 = shl nuw i32 1, %queue
  %ah_txq_imr_txok = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 89
  %124 = ptrtoint ptr %ah_txq_imr_txok to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ah_txq_imr_txok, align 4
  %or180 = or i32 %125, %shl179
  store i32 %or180, ptr %ah_txq_imr_txok, align 4
  br label %if.end183

if.end183:                                        ; preds = %do.body178, %sw.epilog.if.end183_crit_edge
  %126 = ptrtoint ptr %tqi_flags105 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %tqi_flags105, align 4
  %128 = and i16 %127, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool187.not = icmp eq i16 %128, 0
  br i1 %tobool187.not, label %if.end183.if.end194_crit_edge, label %do.body189

if.end183.if.end194_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end194

do.body189:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  %shl190 = shl nuw i32 1, %queue
  %ah_txq_imr_txerr = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 90
  %129 = ptrtoint ptr %ah_txq_imr_txerr to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ah_txq_imr_txerr, align 8
  %or191 = or i32 %130, %shl190
  store i32 %or191, ptr %ah_txq_imr_txerr, align 8
  br label %if.end194

if.end194:                                        ; preds = %do.body189, %if.end183.if.end194_crit_edge
  %131 = ptrtoint ptr %tqi_flags105 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %tqi_flags105, align 4
  %133 = and i16 %132, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool198.not = icmp eq i16 %133, 0
  br i1 %tobool198.not, label %if.end194.if.end205_crit_edge, label %do.body200

if.end194.if.end205_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end205

do.body200:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #6
  %shl201 = shl nuw i32 1, %queue
  %ah_txq_imr_txurn = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 91
  %134 = ptrtoint ptr %ah_txq_imr_txurn to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ah_txq_imr_txurn, align 4
  %or202 = or i32 %135, %shl201
  store i32 %or202, ptr %ah_txq_imr_txurn, align 4
  br label %if.end205

if.end205:                                        ; preds = %do.body200, %if.end194.if.end205_crit_edge
  %136 = ptrtoint ptr %tqi_flags105 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %tqi_flags105, align 4
  %138 = and i16 %137, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool209.not = icmp eq i16 %138, 0
  br i1 %tobool209.not, label %if.end205.if.end216_crit_edge, label %do.body211

if.end205.if.end216_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end216

do.body211:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #6
  %shl212 = shl nuw i32 1, %queue
  %ah_txq_imr_txdesc = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 92
  %139 = ptrtoint ptr %ah_txq_imr_txdesc to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ah_txq_imr_txdesc, align 8
  %or213 = or i32 %140, %shl212
  store i32 %or213, ptr %ah_txq_imr_txdesc, align 8
  br label %if.end216

if.end216:                                        ; preds = %do.body211, %if.end205.if.end216_crit_edge
  %141 = ptrtoint ptr %tqi_flags105 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %tqi_flags105, align 4
  %143 = and i16 %142, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool220.not = icmp eq i16 %143, 0
  br i1 %tobool220.not, label %if.end216.if.end227_crit_edge, label %do.body222

if.end216.if.end227_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end227

do.body222:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #6
  %shl223 = shl nuw i32 1, %queue
  %ah_txq_imr_txeol = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 93
  %144 = ptrtoint ptr %ah_txq_imr_txeol to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ah_txq_imr_txeol, align 4
  %or224 = or i32 %145, %shl223
  store i32 %or224, ptr %ah_txq_imr_txeol, align 4
  br label %if.end227

if.end227:                                        ; preds = %do.body222, %if.end216.if.end227_crit_edge
  %146 = ptrtoint ptr %tqi_flags105 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %tqi_flags105, align 4
  %148 = and i16 %147, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %tobool231.not = icmp eq i16 %148, 0
  br i1 %tobool231.not, label %if.end227.if.end238_crit_edge, label %do.body233

if.end227.if.end238_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end238

do.body233:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #6
  %shl234 = shl nuw i32 1, %queue
  %ah_txq_imr_cbrorn = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 94
  %149 = ptrtoint ptr %ah_txq_imr_cbrorn to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ah_txq_imr_cbrorn, align 8
  %or235 = or i32 %150, %shl234
  store i32 %or235, ptr %ah_txq_imr_cbrorn, align 8
  br label %if.end238

if.end238:                                        ; preds = %do.body233, %if.end227.if.end238_crit_edge
  %151 = ptrtoint ptr %tqi_flags105 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %tqi_flags105, align 4
  %153 = and i16 %152, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool242.not = icmp eq i16 %153, 0
  br i1 %tobool242.not, label %if.end238.if.end249_crit_edge, label %do.body244

if.end238.if.end249_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end249

do.body244:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #6
  %shl245 = shl nuw i32 1, %queue
  %ah_txq_imr_cbrurn = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 95
  %154 = ptrtoint ptr %ah_txq_imr_cbrurn to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ah_txq_imr_cbrurn, align 4
  %or246 = or i32 %155, %shl245
  store i32 %or246, ptr %ah_txq_imr_cbrurn, align 4
  br label %if.end249

if.end249:                                        ; preds = %do.body244, %if.end238.if.end249_crit_edge
  %156 = ptrtoint ptr %tqi_flags105 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %tqi_flags105, align 4
  %158 = and i16 %157, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %158)
  %tobool253.not = icmp eq i16 %158, 0
  br i1 %tobool253.not, label %if.end249.if.end260_crit_edge, label %do.body255

if.end249.if.end260_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end260

do.body255:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #6
  %shl256 = shl nuw i32 1, %queue
  %ah_txq_imr_qtrig = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 96
  %159 = ptrtoint ptr %ah_txq_imr_qtrig to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %ah_txq_imr_qtrig, align 8
  %or257 = or i32 %160, %shl256
  store i32 %or257, ptr %ah_txq_imr_qtrig, align 8
  br label %if.end260

if.end260:                                        ; preds = %do.body255, %if.end249.if.end260_crit_edge
  %161 = ptrtoint ptr %tqi_flags105 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %tqi_flags105, align 4
  %163 = and i16 %162, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool264.not = icmp eq i16 %163, 0
  br i1 %tobool264.not, label %if.end260.if.end271_crit_edge, label %do.body266

if.end260.if.end271_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end271

do.body266:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #6
  %shl267 = shl nuw i32 1, %queue
  %ah_txq_imr_nofrm = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 97
  %164 = ptrtoint ptr %ah_txq_imr_nofrm to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ah_txq_imr_nofrm, align 4
  %or268 = or i32 %165, %shl267
  store i32 %or268, ptr %ah_txq_imr_nofrm, align 4
  br label %if.end271

if.end271:                                        ; preds = %do.body266, %if.end260.if.end271_crit_edge
  %ah_txq_status = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 88
  %166 = ptrtoint ptr %ah_txq_status to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ah_txq_status, align 8
  %ah_txq_imr_txok272 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 89
  %168 = ptrtoint ptr %ah_txq_imr_txok272 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %ah_txq_imr_txok272, align 4
  %and273 = and i32 %169, %167
  store i32 %and273, ptr %ah_txq_imr_txok272, align 4
  %ah_txq_imr_txerr275 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 90
  %170 = ptrtoint ptr %ah_txq_imr_txerr275 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ah_txq_imr_txerr275, align 8
  %and276 = and i32 %171, %167
  store i32 %and276, ptr %ah_txq_imr_txerr275, align 8
  %ah_txq_imr_txurn278 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 91
  %172 = ptrtoint ptr %ah_txq_imr_txurn278 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %ah_txq_imr_txurn278, align 4
  %and279 = and i32 %173, %167
  store i32 %and279, ptr %ah_txq_imr_txurn278, align 4
  %ah_txq_imr_txdesc281 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 92
  %174 = ptrtoint ptr %ah_txq_imr_txdesc281 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %ah_txq_imr_txdesc281, align 8
  %and282 = and i32 %175, %167
  store i32 %and282, ptr %ah_txq_imr_txdesc281, align 8
  %ah_txq_imr_txeol284 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 93
  %176 = ptrtoint ptr %ah_txq_imr_txeol284 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %ah_txq_imr_txeol284, align 4
  %and285 = and i32 %177, %167
  store i32 %and285, ptr %ah_txq_imr_txeol284, align 4
  %ah_txq_imr_cbrorn287 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 94
  %178 = ptrtoint ptr %ah_txq_imr_cbrorn287 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ah_txq_imr_cbrorn287, align 8
  %and288 = and i32 %179, %167
  store i32 %and288, ptr %ah_txq_imr_cbrorn287, align 8
  %ah_txq_imr_cbrurn290 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 95
  %180 = ptrtoint ptr %ah_txq_imr_cbrurn290 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %ah_txq_imr_cbrurn290, align 4
  %and291 = and i32 %181, %167
  store i32 %and291, ptr %ah_txq_imr_cbrurn290, align 4
  %ah_txq_imr_qtrig293 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 96
  %182 = ptrtoint ptr %ah_txq_imr_qtrig293 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ah_txq_imr_qtrig293, align 8
  %and294 = and i32 %183, %167
  store i32 %and294, ptr %ah_txq_imr_qtrig293, align 8
  %ah_txq_imr_nofrm296 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 97
  %184 = ptrtoint ptr %ah_txq_imr_nofrm296 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %ah_txq_imr_nofrm296, align 4
  %and297 = and i32 %185, %167
  store i32 %and297, ptr %ah_txq_imr_nofrm296, align 4
  %and300 = and i32 %and273, 1023
  %shl302 = shl i32 %and282, 16
  %and303 = and i32 %shl302, 67043328
  %or304 = or i32 %and303, %and300
  %186 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i567 = getelementptr i8, ptr %187, i32 164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %188 = tail call i32 @llvm.bswap.i32(i32 %or304) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i567, i32 %188) #4, !srcloc !20
  %189 = ptrtoint ptr %ah_txq_imr_txerr275 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %ah_txq_imr_txerr275, align 8
  %and307 = and i32 %190, 1023
  %191 = ptrtoint ptr %ah_txq_imr_txeol284 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %ah_txq_imr_txeol284, align 4
  %shl309 = shl i32 %192, 16
  %and310 = and i32 %shl309, 67043328
  %or311 = or i32 %and310, %and307
  %193 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i569 = getelementptr i8, ptr %194, i32 168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %195 = tail call i32 @llvm.bswap.i32(i32 %or311) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i569, i32 %195) #4, !srcloc !20
  %196 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i571 = getelementptr i8, ptr %197, i32 172
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i571) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %199 = and i32 %198, 16580607
  %200 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i573 = getelementptr i8, ptr %201, i32 172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i573, i32 %199) #4, !srcloc !20
  %202 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i575 = getelementptr i8, ptr %203, i32 172
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i575) #4, !srcloc !14
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %206 = ptrtoint ptr %ah_txq_imr_txurn278 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %ah_txq_imr_txurn278, align 4
  %and317 = and i32 %207, 1023
  %or318 = or i32 %and317, %205
  %208 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i577 = getelementptr i8, ptr %209, i32 172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %210 = tail call i32 @llvm.bswap.i32(i32 %or318) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i577, i32 %210) #4, !srcloc !20
  %211 = ptrtoint ptr %ah_txq_imr_cbrorn287 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %ah_txq_imr_cbrorn287, align 8
  %and321 = and i32 %212, 1023
  %213 = ptrtoint ptr %ah_txq_imr_cbrurn290 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %ah_txq_imr_cbrurn290, align 4
  %shl323 = shl i32 %214, 16
  %and324 = and i32 %shl323, 67043328
  %or325 = or i32 %and324, %and321
  %215 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i579 = getelementptr i8, ptr %216, i32 176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %217 = tail call i32 @llvm.bswap.i32(i32 %or325) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i579, i32 %217) #4, !srcloc !20
  %218 = ptrtoint ptr %ah_txq_imr_qtrig293 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ah_txq_imr_qtrig293, align 8
  %and328 = and i32 %219, 1023
  %220 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i581 = getelementptr i8, ptr %221, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %222 = tail call i32 @llvm.bswap.i32(i32 %and328) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i581, i32 %222) #4, !srcloc !20
  %223 = ptrtoint ptr %ah_txq_imr_nofrm296 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %ah_txq_imr_nofrm296, align 4
  %shl330 = shl i32 %224, 10
  %and331 = and i32 %shl330, 1047552
  %225 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i583 = getelementptr i8, ptr %226, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %227 = tail call i32 @llvm.bswap.i32(i32 %and331) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i583, i32 %227) #4, !srcloc !20
  %228 = ptrtoint ptr %ah_txq_imr_nofrm296 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %ah_txq_imr_nofrm296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp333 = icmp eq i32 %229, 0
  br i1 %cmp333, label %if.then335, label %if.end271.if.end336_crit_edge

if.end271.if.end336_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end336

if.then335:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #6
  %230 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i585 = getelementptr i8, ptr %231, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i585, i32 0) #4, !srcloc !20
  br label %if.end336

if.end336:                                        ; preds = %if.then335, %if.end271.if.end336_crit_edge
  %shl337 = shl nuw i32 1, %queue
  %conv340 = add i16 %13, 4096
  %232 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %iobase.i, align 4
  %conv.i587 = zext i16 %conv340 to i32
  %add.ptr.i588 = getelementptr i8, ptr %233, i32 %conv.i587
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %234 = tail call i32 @llvm.bswap.i32(i32 %shl337) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i588, i32 %234) #4, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %if.end336, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_set_ifs_intervals(ptr noundef %ah, i32 noundef %slot_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_current_channel = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %0 = ptrtoint ptr %ah_current_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah_current_channel, align 4
  %call = tail call i32 @ath5k_hw_htoclock(ptr noundef %ah, i32 noundef %slot_time) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %slot_time)
  %cmp = icmp ult i32 %slot_time, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call)
  %cmp1 = icmp ugt i32 %call, 65535
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ath5k_hw_get_default_sifs(ptr noundef %ah) #4
  %sub = add i32 %call2, -2
  %call3 = tail call i32 @ath5k_hw_htoclock(ptr noundef %ah, i32 noundef %sub) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp5 = icmp eq i32 %3, 1
  %. = zext i1 %cmp5 to i32
  %ah_bwmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %4 = ptrtoint ptr %ah_bwmode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ah_bwmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch.selectcmp = icmp eq i8 %5, 2
  %switch.select = select i1 %switch.selectcmp, i32 64, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %switch.selectcmp118 = icmp eq i8 %5, 1
  %switch.select119 = select i1 %switch.selectcmp118, i32 32, i32 %switch.select
  %n_bitrates = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 8, i32 %., i32 4
  %6 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9136.not = icmp eq i32 %7, 0
  br i1 %cmp9136.not, label %if.end.do.end_crit_edge, label %for.body.lr.ph

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

for.body.lr.ph:                                   ; preds = %if.end
  %bitrates = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 8, i32 %., i32 1
  %8 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitrates, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0137, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.cond.do.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx11 = getelementptr %struct.ieee80211_rate, ptr %9, i32 %i.0137
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %and = and i32 %11, %switch.select119
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %switch.select119)
  %cmp12.not = icmp eq i32 %and, %switch.select119
  br i1 %cmp12.not, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %arrayidx11, null
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.end42, !prof !21

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.cond.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 621, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end42:                                         ; preds = %for.end
  %call43 = tail call i32 @ath5k_hw_get_frame_duration(ptr noundef %ah, i32 noundef %., i32 noundef 10, ptr noundef nonnull %arrayidx11, i1 noundef zeroext false) #4
  %mul = shl i32 %slot_time, 1
  %add = add i32 %call2, %mul
  %add44 = add i32 %add, %call43
  %call45 = tail call i32 @ath5k_hw_htoclock(ptr noundef %ah, i32 noundef %add44) #4
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %12 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp46 = icmp eq i32 %13, 0
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  br i1 %cmp46, label %if.then48, label %if.end60

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %15, i32 32784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %call) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #4, !srcloc !20
  %shl = shl i32 %call45, 12
  %and49 = and i32 %shl, 67104768
  %add50 = add i32 %call2, %slot_time
  %call51 = tail call i32 @ath5k_hw_htoclock(ptr noundef %ah, i32 noundef %add50) #4
  %and53 = and i32 %call51, 4095
  %call56 = tail call i32 @ath5k_hw_htoclock(ptr noundef %ah, i32 noundef %add) #4
  %shl57 = shl i32 %call56, 11
  %or = or i32 %shl57, %call3
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %18, i32 32832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %19) #4, !srcloc !20
  %or58 = or i32 %and49, %and53
  %or59 = or i32 %or58, 67108864
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %21, i32 32836
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %or59) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %22) #4, !srcloc !20
  br label %cleanup

if.end60:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i125 = getelementptr i8, ptr %15, i32 4208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %call) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %23) #4, !srcloc !20
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %25, i32 4272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %26 = tail call i32 @llvm.bswap.i32(i32 %call45) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %26) #4, !srcloc !20
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %28, i32 4336
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %30 = and i32 %29, 268238847
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %shl63 = shl i32 %call2, 4
  %and64 = and i32 %shl63, 1008
  %or65 = or i32 %31, %and64
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %33, i32 4336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %34 = tail call i32 @llvm.bswap.i32(i32 %or65) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %34) #4, !srcloc !20
  %35 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %36, i32 4144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %37 = tail call i32 @llvm.bswap.i32(i32 %call3) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %37) #4, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then48, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then48 ], [ 0, %if.end60 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_htoclock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_default_sifs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_frame_duration(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_init_queues(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 3
  %2 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cap_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp138.not = icmp eq i8 %3, 0
  br i1 %cmp138.not, label %for.cond.preheader.if.end8_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call = tail call i32 @ath5k_hw_reset_tx_queue(ptr noundef %ah, i32 noundef %i.039)
  %inc = add nuw nsw i32 %i.039, 1
  %4 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cap_queues, align 4
  %conv = zext i8 %5 to i32
  %cmp1 = icmp ult i32 %inc, %conv
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath5k_hw_set_tx_retry_limits(ptr noundef %ah, i32 noundef 0)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.body.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge
  %ah_bwmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %6 = ptrtoint ptr %ah_bwmode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ah_bwmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp10 = icmp eq i8 %7, 3
  br i1 %cmp10, label %if.then12, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4336
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %11 = or i32 %10, 134217728
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %13, i32 4336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %11) #4, !srcloc !20
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  %ah_coverage_class = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 78
  %14 = ptrtoint ptr %ah_coverage_class to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ah_coverage_class, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call i32 @ath5k_hw_get_default_slottime(ptr noundef %ah) #4
  %call18 = tail call i32 @ath5k_hw_set_ifs_intervals(ptr noundef %ah, i32 noundef %call17)
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_default_slottime(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/qcu.c", i32 96, i32 6}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath5k/qcu.c", i32 704, i32 5}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 759447}
!15 = !{i64 2148944620}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i32 0, i32 33}
!18 = !{i32 0, i32 11}
!19 = !{i64 2148945975}
!20 = !{i64 759029}
!21 = !{!"branch_weights", i32 1, i32 2000}
