; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/desc.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/desc.c"
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
%struct.ath5k_desc = type { i32, i32, %union.anon.129 }
%union.anon.129 = type { %struct.ath5k_hw_5212_tx_desc }
%struct.ath5k_hw_5212_tx_desc = type { %struct.ath5k_hw_4w_tx_ctl, %struct.ath5k_hw_tx_status }
%struct.ath5k_hw_4w_tx_ctl = type { i32, i32, i32, i32 }
%struct.ath5k_hw_tx_status = type { i32, i32 }
%struct.ath5k_tx_status = type { i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath5k_rx_status = type { i16, i16, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"zero rate\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath5k/desc.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zero retries\0A\00", [18 x i8] zeroinitializer }, align 32
@switch.table.ath5k_hw_setup_2word_tx_desc = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 201326592, i32 201326592, i32 268435456], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 400, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 401, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath5k/desc.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 271, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [42 x i8] c"switch.table.ath5k_hw_setup_2word_tx_desc\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @switch.table.ath5k_hw_setup_2word_tx_desc], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_hw_setup_2word_tx_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_setup_mrr_tx_desc(ptr noundef %ah, ptr nocapture noundef %desc, i32 noundef %tx_rate1, i32 noundef %tx_tries1, i32 noundef %tx_rate2, i32 noundef %tx_tries2, i32 noundef %tx_rate3, i32 noundef %tx_tries3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_rate1)
  %cmp1 = icmp ne i32 %tx_rate1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_tries1)
  %cmp2.not = icmp eq i32 %tx_tries1, 0
  %or.cond = or i1 %cmp1, %cmp2.not
  br i1 %or.cond, label %lor.lhs.false, label %if.end.do.body_crit_edge, !prof !16

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_rate2)
  %cmp3 = icmp ne i32 %tx_rate2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_tries2)
  %cmp5.not = icmp eq i32 %tx_tries2, 0
  %or.cond88 = or i1 %cmp3, %cmp5.not
  br i1 %or.cond88, label %lor.rhs, label %lor.lhs.false.do.body_crit_edge, !prof !16

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_rate3)
  %cmp6 = icmp eq i32 %tx_rate3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_tries3)
  %cmp7 = icmp ne i32 %tx_tries3, 0
  %spec.select = and i1 %cmp6, %cmp7
  br i1 %spec.select, label %lor.rhs.do.body_crit_edge, label %if.end37, !prof !17

lor.rhs.do.body_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %lor.rhs.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  %call = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %do.body.do.end24_crit_edge, label %if.then11

do.body.do.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then11, %do.body.do.end24_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 401, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end37:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp39 = icmp eq i32 %1, 2
  br i1 %cmp39, label %if.then40, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then40:                                        ; preds = %if.end37
  br i1 %cmp2.not, label %if.then40.if.end47_crit_edge, label %if.then43

if.then40.if.end47_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %tx_tries1, 20
  %and = and i32 %shl, 15728640
  %tx_control_2 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %tx_control_2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_control_2, align 4
  %or = or i32 %3, %and
  store i32 %or, ptr %tx_control_2, align 4
  %shl44 = shl i32 %tx_rate1, 5
  %and45 = and i32 %shl44, 992
  %tx_control_3 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %tx_control_3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_control_3, align 4
  %or46 = or i32 %5, %and45
  store i32 %or46, ptr %tx_control_3, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.then40.if.end47_crit_edge
  br i1 %cmp5.not, label %if.end47.if.end58_crit_edge, label %if.then49

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %shl50 = shl i32 %tx_tries2, 24
  %and51 = and i32 %shl50, 251658240
  %tx_control_252 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %tx_control_252 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_control_252, align 4
  %or53 = or i32 %7, %and51
  store i32 %or53, ptr %tx_control_252, align 4
  %shl54 = shl i32 %tx_rate2, 10
  %and55 = and i32 %shl54, 31744
  %tx_control_356 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %tx_control_356 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_control_356, align 4
  %or57 = or i32 %9, %and55
  store i32 %or57, ptr %tx_control_356, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then49, %if.end47.if.end58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_tries3)
  %tobool59.not = icmp eq i32 %tx_tries3, 0
  br i1 %tobool59.not, label %if.end58.cleanup_crit_edge, label %if.then60

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %shl61 = shl i32 %tx_tries3, 28
  %tx_control_263 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %tx_control_263 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_control_263, align 4
  %or64 = or i32 %11, %shl61
  store i32 %or64, ptr %tx_control_263, align 4
  %shl65 = shl i32 %tx_rate3, 15
  %and66 = and i32 %shl65, 1015808
  %tx_control_367 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 3
  %12 = ptrtoint ptr %tx_control_367 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_control_367, align 4
  %or68 = or i32 %13, %and66
  store i32 %or68, ptr %tx_control_367, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end58.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end24 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then60 ], [ 1, %if.end58.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ath5k_hw_setup_rx_desc(ptr nocapture noundef readnone %ah, ptr nocapture noundef writeonly %desc, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ud = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2
  %0 = call ptr @memset(ptr %ud, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %tobool.not = icmp ult i32 %size, 4096
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !18

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_control_1 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 1
  %and6 = shl i32 %flags, 8
  %1 = and i32 %and6, 8192
  %2 = or i32 %1, %size
  %3 = ptrtoint ptr %rx_control_1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rx_control_1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath5k_hw_init_desc_functions(ptr nocapture noundef %ah) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.return.sink.split_crit_edge, label %if.else

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp ult i32 %1, 2
  br i1 %cmp2, label %if.else.return.sink.split_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else.return.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %ath5k_hw_setup_4word_tx_desc.sink = phi ptr [ @ath5k_hw_setup_4word_tx_desc, %entry.return.sink.split_crit_edge ], [ @ath5k_hw_setup_2word_tx_desc, %if.else.return.sink.split_crit_edge ]
  %ath5k_hw_proc_4word_tx_status.sink = phi ptr [ @ath5k_hw_proc_4word_tx_status, %entry.return.sink.split_crit_edge ], [ @ath5k_hw_proc_2word_tx_status, %if.else.return.sink.split_crit_edge ]
  %ath5k_hw_proc_5212_rx_status.sink = phi ptr [ @ath5k_hw_proc_5212_rx_status, %entry.return.sink.split_crit_edge ], [ @ath5k_hw_proc_5210_rx_status, %if.else.return.sink.split_crit_edge ]
  %ah_setup_tx_desc = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 116
  %2 = ptrtoint ptr %ah_setup_tx_desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ath5k_hw_setup_4word_tx_desc.sink, ptr %ah_setup_tx_desc, align 4
  %ah_proc_tx_desc = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 117
  %3 = ptrtoint ptr %ah_proc_tx_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ath5k_hw_proc_4word_tx_status.sink, ptr %ah_proc_tx_desc, align 8
  %ah_proc_rx_desc = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 118
  %4 = ptrtoint ptr %ah_proc_rx_desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ath5k_hw_proc_5212_rx_status.sink, ptr %ah_proc_rx_desc, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else.return_crit_edge
  %retval.0 = phi i32 [ -524, %if.else.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_hw_setup_4word_tx_desc(ptr noundef %ah, ptr nocapture noundef writeonly %desc, i32 noundef %pkt_len, i32 noundef %hdr_len, i32 noundef %padsize, i32 noundef %type, i32 noundef %tx_power, i32 noundef %tx_rate0, i32 noundef %tx_tries0, i32 noundef %key_index, i32 noundef %antenna_mode, i32 noundef %flags, i32 noundef %rtscts_rate, i32 noundef %rtscts_duration) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ud = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_tries0)
  %cmp = icmp eq i32 %tx_tries0, 0
  br i1 %cmp, label %do.body, label %if.end29, !prof !17

do.body:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.body.do.end16_crit_edge, label %if.then4

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then4, %do.body.do.end16_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 272, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end29:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_rate0)
  %cmp30 = icmp eq i32 %tx_rate0, 0
  br i1 %cmp30, label %do.body38, label %if.end71, !prof !17

do.body38:                                        ; preds = %if.end29
  %call39 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body38.do.end57_crit_edge, label %if.then41

do.body38.do.end57_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57

if.then41:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %do.end57

do.end57:                                         ; preds = %if.then41, %do.body38.do.end57_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 277, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end71:                                         ; preds = %if.end29
  %txp_offset = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 9
  %0 = ptrtoint ptr %txp_offset to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %txp_offset, align 8
  %conv = sext i16 %1 to i32
  %add = add i32 %conv, %tx_power
  %2 = tail call i32 @llvm.umin.i32(i32 %add, i32 63)
  %tx_stat = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %tx_stat to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %tx_stat, align 4
  %sub = sub i32 %pkt_len, %padsize
  %add77 = add i32 %sub, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add77)
  %tobool78.not = icmp ult i32 %add77, 4096
  br i1 %tobool78.not, label %if.end80, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end80:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp82 = icmp eq i32 %type, 3
  %add87 = add i32 %pkt_len, 3
  %div202 = and i32 %add87, -4
  %pkt_len.addr.0 = select i1 %cmp82, i32 %div202, i32 %pkt_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %pkt_len.addr.0)
  %tobool90.not = icmp ult i32 %pkt_len.addr.0, 4096
  br i1 %tobool90.not, label %if.end92, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end92:                                         ; preds = %if.end80
  %shl = shl nuw nsw i32 %2, 16
  %shl95 = shl i32 %antenna_mode, 25
  %and96 = and i32 %shl95, 503316480
  %or = or i32 %shl, %and96
  %shl98 = shl i32 %type, 20
  %and99 = and i32 %shl98, 15728640
  %or100 = or i32 %pkt_len.addr.0, %and99
  %shl101 = shl i32 %tx_tries0, 16
  %and102 = and i32 %shl101, 983040
  %and103 = and i32 %tx_rate0, 31
  %and104 = shl i32 %flags, 24
  %4 = and i32 %and104, 16777216
  %and109 = shl i32 %flags, 18
  %5 = and i32 %and109, 8388608
  %and114 = shl i32 %flags, 25
  %6 = and i32 %and114, 536870912
  %and119 = shl i32 %flags, 20
  %7 = and i32 %and119, 4194304
  %and124 = shl i32 %flags, 28
  %8 = and i32 %and124, -2147483648
  %or97 = or i32 %4, %add77
  %9 = or i32 %or97, %5
  %10 = or i32 %9, %6
  %11 = or i32 %10, %7
  %12 = or i32 %11, %8
  %13 = or i32 %12, %or
  %and129 = shl i32 %flags, 23
  %14 = and i32 %and129, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %key_index)
  %cmp134.not = icmp eq i32 %key_index, -1
  %or137 = or i32 %13, 1073741824
  %shl138 = shl i32 %key_index, 13
  %and139 = and i32 %shl138, 1040384
  %txctl0.5 = select i1 %cmp134.not, i32 %13, i32 %or137
  %or140 = select i1 %cmp134.not, i32 0, i32 %and139
  %15 = or i32 %or100, %or140
  %txctl1.1 = or i32 %15, %14
  %and142 = and i32 %flags, 12
  %16 = zext i32 %and142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and142, label %if.end150 [
    i32 0, label %if.end92.if.end156_crit_edge
    i32 12, label %if.end92.cleanup_crit_edge
  ]

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end92.if.end156_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.end150:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %and151 = and i32 %rtscts_duration, 32767
  %or152 = or i32 %and151, %and102
  %shl153 = shl i32 %rtscts_rate, 20
  %and154 = and i32 %shl153, 32505856
  %or155 = or i32 %and154, %and103
  br label %if.end156

if.end156:                                        ; preds = %if.end150, %if.end92.if.end156_crit_edge
  %txctl2.0 = phi i32 [ %or152, %if.end150 ], [ %and102, %if.end92.if.end156_crit_edge ]
  %txctl3.0 = phi i32 [ %or155, %if.end150 ], [ %and103, %if.end92.if.end156_crit_edge ]
  %17 = ptrtoint ptr %ud to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %txctl0.5, ptr %ud, align 4
  %tx_control_1 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %tx_control_1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %txctl1.1, ptr %tx_control_1, align 4
  %tx_control_2 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %tx_control_2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %txctl2.0, ptr %tx_control_2, align 4
  %tx_control_3 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 3
  %20 = ptrtoint ptr %tx_control_3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %txctl3.0, ptr %tx_control_3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end156, %if.end92.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %do.end57, %do.end16
  %retval.0 = phi i32 [ -22, %do.end16 ], [ -22, %do.end57 ], [ 0, %if.end156 ], [ -22, %if.end71.cleanup_crit_edge ], [ -22, %if.end80.cleanup_crit_edge ], [ -22, %if.end92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath5k_hw_proc_4word_tx_status(ptr nocapture noundef readnone %ah, ptr noundef %desc, ptr nocapture noundef %ts) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_status_1 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %tx_status_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tx_status_1, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end6, !prof !17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end6:                                          ; preds = %entry
  %tx_stat = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %tx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_stat, align 4
  %shr = lshr i32 %3, 16
  %conv = trunc i32 %shr to i16
  %ts_tstamp = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %ts_tstamp to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %ts_tstamp, align 2
  %5 = trunc i32 %3 to i8
  %6 = lshr i8 %5, 4
  %ts_shortretry = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 6
  %7 = ptrtoint ptr %ts_shortretry to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ts_shortretry, align 2
  %and12 = lshr i32 %3, 8
  %8 = trunc i32 %and12 to i8
  %conv14 = and i8 %8, 15
  %ts_final_retry = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 4
  %9 = ptrtoint ptr %ts_final_retry to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv14, ptr %ts_final_retry, align 2
  %10 = trunc i32 %1 to i16
  %11 = lshr i16 %10, 1
  %conv17 = and i16 %11, 4095
  %12 = ptrtoint ptr %ts to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv17, ptr %ts, align 2
  %and18 = lshr i32 %1, 13
  %conv20 = trunc i32 %and18 to i8
  %ts_rssi = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 5
  %13 = ptrtoint ptr %ts_rssi to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv20, ptr %ts_rssi, align 1
  %and21 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %conv23 = select i1 %tobool22.not, i8 1, i8 2
  %ts_antenna = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 8
  %14 = ptrtoint ptr %ts_antenna to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv23, ptr %ts_antenna, align 2
  %ts_status = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 2
  %15 = ptrtoint ptr %ts_status to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ts_status, align 2
  %and24 = lshr i32 %1, 21
  %16 = trunc i32 %and24 to i8
  %conv26 = and i8 %16, 3
  %ts_final_idx = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 3
  %17 = ptrtoint ptr %ts_final_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv26, ptr %ts_final_idx, align 1
  %and27 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then29, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %do.end6
  %and30 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then29.if.end36_crit_edge, label %if.then32

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %ts_status to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %ts_status, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.then29.if.end36_crit_edge
  %and37 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end44_crit_edge, label %if.then39

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ts_status, align 2
  %21 = or i8 %20, 4
  store i8 %21, ptr %ts_status, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end36.if.end44_crit_edge
  %and45 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ts_status, align 2
  %24 = or i8 %23, 2
  store i8 %24, ptr %ts_status, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end44.cleanup_crit_edge, %do.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %entry.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %do.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_hw_proc_5212_rx_status(ptr noundef %ah, ptr noundef %desc, ptr nocapture noundef %rs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_status_1 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %rx_status_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rx_status_1, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_stat = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 2
  %2 = call ptr @memset(ptr %rs, i32 0, i32 12)
  %3 = ptrtoint ptr %rx_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %rx_stat, align 4
  %5 = trunc i32 %4 to i16
  %conv = and i16 %5, 4095
  %6 = ptrtoint ptr %rs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %rs, align 2
  %and9 = lshr i32 %4, 20
  %conv10 = trunc i32 %and9 to i8
  %rs_rssi = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 4
  %7 = ptrtoint ptr %rs_rssi to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10, ptr %rs_rssi, align 2
  %and11 = lshr i32 %4, 15
  %8 = trunc i32 %and11 to i8
  %conv13 = and i8 %8, 31
  %rs_rate = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 6
  %9 = ptrtoint ptr %rs_rate to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv13, ptr %rs_rate, align 2
  %shr15 = lshr i32 %4, 28
  %conv16 = trunc i32 %shr15 to i8
  %rs_antenna = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 7
  %10 = ptrtoint ptr %rs_antenna to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv16, ptr %rs_antenna, align 1
  %and17 = lshr i32 %4, 12
  %11 = trunc i32 %and17 to i8
  %12 = and i8 %11, 1
  %rs_more = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 8
  %13 = ptrtoint ptr %rs_more to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %rs_more, align 2
  %and24 = lshr i32 %1, 16
  %14 = trunc i32 %and24 to i16
  %conv26 = and i16 %14, 32767
  %rs_tstamp = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 1
  %15 = ptrtoint ptr %rs_tstamp to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv26, ptr %rs_tstamp, align 2
  %and27 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %and30 = lshr i32 %1, 9
  %16 = trunc i32 %and30 to i8
  %conv32 = and i8 %16, 127
  %conv32.sink = select i1 %tobool28.not, i8 -1, i8 %conv32
  %17 = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv32.sink, ptr %17, align 1
  %and35 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then37:                                        ; preds = %if.end
  %and38 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then37.if.end43_crit_edge, label %if.then40

if.then37.if.end43_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %rs_status = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 2
  %19 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rs_status, align 2
  %21 = or i8 %20, 1
  store i8 %21, ptr %rs_status, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then37.if.end43_crit_edge
  %and44 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end59_crit_edge, label %if.then46

if.end43.if.end59_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then46:                                        ; preds = %if.end43
  %rs_status47 = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 2
  %22 = ptrtoint ptr %rs_status47 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rs_status47, align 2
  %24 = or i8 %23, 2
  store i8 %24, ptr %rs_status47, align 2
  %and51 = lshr i32 %1, 8
  %conv53 = trunc i32 %and51 to i8
  %rs_phyerr = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 3
  %25 = ptrtoint ptr %rs_phyerr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv53, ptr %rs_phyerr, align 1
  %cap_has_phyerr_counters = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 4
  %26 = ptrtoint ptr %cap_has_phyerr_counters to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cap_has_phyerr_counters, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool54.not = icmp eq i8 %27, 0
  br i1 %tobool54.not, label %if.then55, label %if.then46.if.end59_crit_edge

if.then46.if.end59_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %conv57 = and i32 %and51, 255
  tail call void @ath5k_ani_phy_error_report(ptr noundef %ah, i32 noundef %conv57) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then46.if.end59_crit_edge, %if.end43.if.end59_crit_edge
  %and60 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end67_crit_edge, label %if.then62

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %rs_status63 = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 2
  %28 = ptrtoint ptr %rs_status63 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rs_status63, align 2
  %30 = or i8 %29, 8
  store i8 %30, ptr %rs_status63, align 2
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end59.if.end67_crit_edge
  %and68 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.cleanup_crit_edge, label %if.then70

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %rs_status71 = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 2
  %31 = ptrtoint ptr %rs_status71 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rs_status71, align 2
  %33 = or i8 %32, 16
  store i8 %33, ptr %rs_status71, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.end67.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %entry.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ], [ 0, %if.then70 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_hw_setup_2word_tx_desc(ptr noundef %ah, ptr nocapture noundef %desc, i32 noundef %pkt_len, i32 noundef %hdr_len, i32 noundef %padsize, i32 noundef %type, i32 noundef %tx_power, i32 noundef %tx_rate0, i32 noundef %tx_tries0, i32 noundef %key_index, i32 noundef %antenna_mode, i32 noundef %flags, i32 noundef %rtscts_rate, i32 noundef %rtscts_duration) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ud = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_tries0)
  %cmp = icmp eq i32 %tx_tries0, 0
  br i1 %cmp, label %do.body, label %if.end29, !prof !17

do.body:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.body.do.end16_crit_edge, label %if.then4

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then4, %do.body.do.end16_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end29:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_rate0)
  %cmp30 = icmp eq i32 %tx_rate0, 0
  br i1 %cmp30, label %do.body38, label %if.end71, !prof !17

do.body38:                                        ; preds = %if.end29
  %call39 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body38.do.end57_crit_edge, label %if.then41

do.body38.do.end57_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57

if.then41:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %do.end57

do.end57:                                         ; preds = %if.then41, %do.body38.do.end57_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 106, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end71:                                         ; preds = %if.end29
  %0 = call ptr @memset(ptr %ud, i32 0, i32 16)
  %sub = sub i32 %pkt_len, %padsize
  %add = add i32 %sub, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool73.not = icmp ult i32 %add, 4096
  br i1 %tobool73.not, label %if.end75, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %1 = ptrtoint ptr %ud to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %ud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp77 = icmp eq i32 %type, 3
  %add81 = add i32 %pkt_len, 3
  %div221 = and i32 %add81, -4
  %pkt_len.addr.0 = select i1 %cmp77, i32 %div221, i32 %pkt_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %pkt_len.addr.0)
  %tobool84.not = icmp ult i32 %pkt_len.addr.0, 4096
  br i1 %tobool84.not, label %if.end86, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end86:                                         ; preds = %if.end75
  %tx_control_1 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %tx_control_1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %pkt_len.addr.0, ptr %tx_control_1, align 4
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %3 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp88 = icmp eq i32 %4, 0
  br i1 %cmp88, label %if.then89, label %if.end86.if.else_crit_edge

if.end86.if.else_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then89:                                        ; preds = %if.end86
  %and90 = and i32 %hdr_len, -258049
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end96, label %if.then89.cleanup_crit_edge

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end96:                                         ; preds = %if.then89
  %shl = shl nuw nsw i32 %hdr_len, 12
  %and94 = and i32 %shl, 258048
  %or = or i32 %add, %and94
  %5 = ptrtoint ptr %ud to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %ud, align 4
  %6 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp98 = icmp eq i32 %.pr, 0
  br i1 %cmp98, label %if.then99, label %if.end96.if.else_crit_edge

if.end96.if.else_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then99:                                        ; preds = %if.end96
  %switch.tableidx = add i32 %type, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 3
  br i1 %7, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = shl i32 %type, 26
  %phi.bo220 = and i32 %phi.bo, 469762048
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ath5k_hw_setup_2word_tx_desc, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %frame_type.0 = phi i32 [ %phi.bo220, %sw.default ], [ %switch.load, %switch.lookup ]
  %shl103 = shl i32 %tx_rate0, 18
  %and104 = and i32 %shl103, 3932160
  %or105 = or i32 %frame_type.0, %and104
  %9 = ptrtoint ptr %ud to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ud, align 4
  %or107 = or i32 %or105, %10
  store i32 %or107, ptr %ud, align 4
  br label %if.end121

if.else:                                          ; preds = %if.end96.if.else_crit_edge, %if.end86.if.else_crit_edge
  %shl108 = shl i32 %tx_rate0, 18
  %and109 = and i32 %shl108, 3932160
  %shl110 = shl i32 %antenna_mode, 25
  %and113 = and i32 %shl110, 503316480
  %or114 = or i32 %and113, %and109
  %11 = ptrtoint ptr %ud to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ud, align 4
  %or116 = or i32 %or114, %12
  store i32 %or116, ptr %ud, align 4
  %shl117 = shl i32 %type, 20
  %and118 = and i32 %shl117, 7340032
  %or120 = or i32 %pkt_len.addr.0, %and118
  %13 = ptrtoint ptr %tx_control_1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or120, ptr %tx_control_1, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.else, %sw.epilog
  %and122 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end121.if.end127_crit_edge, label %if.then124

if.end121.if.end127_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ud to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ud, align 4
  %or126 = or i32 %15, 16777216
  store i32 %or126, ptr %ud, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.end121.if.end127_crit_edge
  %and128 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.if.end133_crit_edge, label %if.then130

if.end127.if.end133_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %ud to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ud, align 4
  %or132 = or i32 %17, 536870912
  store i32 %or132, ptr %ud, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.end127.if.end133_crit_edge
  %and134 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end133.if.end139_crit_edge, label %if.then136

if.end133.if.end139_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then136:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %ud to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ud, align 4
  %or138 = or i32 %19, 4194304
  store i32 %or138, ptr %ud, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.end133.if.end139_crit_edge
  %20 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp141 = icmp eq i32 %21, 1
  br i1 %cmp141, label %if.then142, label %if.end139.if.end155_crit_edge

if.end139.if.end155_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then142:                                       ; preds = %if.end139
  %and143 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.then142.if.end148_crit_edge, label %if.then145

if.then142.if.end148_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then145:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %ud to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ud, align 4
  %or147 = or i32 %23, 8388608
  store i32 %or147, ptr %ud, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.then142.if.end148_crit_edge
  %and149 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end148.if.end155_crit_edge, label %if.then151

if.end148.if.end155_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %tx_control_1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_control_1, align 4
  %or153 = or i32 %25, 8388608
  store i32 %or153, ptr %tx_control_1, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then151, %if.end148.if.end155_crit_edge, %if.end139.if.end155_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %key_index)
  %cmp156.not = icmp eq i32 %key_index, -1
  br i1 %cmp156.not, label %if.end155.if.end167_crit_edge, label %if.then157

if.end155.if.end167_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.then157:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %ud to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ud, align 4
  %or159 = or i32 %27, 1073741824
  store i32 %or159, ptr %ud, align 4
  %shl160 = shl i32 %key_index, 13
  %28 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp162 = icmp eq i32 %29, 0
  %cond163 = select i1 %cmp162, i32 516096, i32 1040384
  %and164 = and i32 %cond163, %shl160
  %30 = ptrtoint ptr %tx_control_1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_control_1, align 4
  %or166 = or i32 %and164, %31
  store i32 %or166, ptr %tx_control_1, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then157, %if.end155.if.end167_crit_edge
  %32 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp169 = icmp ne i32 %33, 0
  %and170 = and i32 %flags, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  %or.cond = or i1 %tobool171.not, %cmp169
  br i1 %or.cond, label %if.end167.cleanup_crit_edge, label %if.then172

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then172:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  %and173 = and i32 %rtscts_duration, -524288
  %34 = ptrtoint ptr %tx_control_1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_control_1, align 4
  %or175 = or i32 %35, %and173
  store i32 %or175, ptr %tx_control_1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then172, %if.end167.cleanup_crit_edge, %if.then89.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %do.end57, %do.end16
  %retval.0 = phi i32 [ -22, %do.end16 ], [ -22, %do.end57 ], [ -22, %if.end71.cleanup_crit_edge ], [ -22, %if.end75.cleanup_crit_edge ], [ -22, %if.then89.cleanup_crit_edge ], [ 0, %if.then172 ], [ 0, %if.end167.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath5k_hw_proc_2word_tx_status(ptr nocapture noundef readnone %ah, ptr nocapture noundef readonly %desc, ptr nocapture noundef %ts) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_stat = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 2
  %tx_status_1 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %tx_status_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_status_1, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %tx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_stat, align 4
  %shr = lshr i32 %3, 16
  %conv = trunc i32 %shr to i16
  %ts_tstamp = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %ts_tstamp to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %ts_tstamp, align 2
  %5 = load i32, ptr %tx_stat, align 4
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 4
  %ts_shortretry = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 6
  %8 = ptrtoint ptr %ts_shortretry to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %ts_shortretry, align 2
  %9 = load i32, ptr %tx_stat, align 4
  %and8 = lshr i32 %9, 8
  %10 = trunc i32 %and8 to i8
  %conv10 = and i8 %10, 15
  %ts_final_retry = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 4
  %11 = ptrtoint ptr %ts_final_retry to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %ts_final_retry, align 2
  %12 = ptrtoint ptr %tx_status_1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_status_1, align 4
  %14 = trunc i32 %13 to i16
  %15 = lshr i16 %14, 1
  %conv14 = and i16 %15, 4095
  %16 = ptrtoint ptr %ts to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv14, ptr %ts, align 2
  %17 = load i32, ptr %tx_status_1, align 4
  %and16 = lshr i32 %17, 13
  %conv18 = trunc i32 %and16 to i8
  %ts_rssi = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 5
  %18 = ptrtoint ptr %ts_rssi to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv18, ptr %ts_rssi, align 1
  %ts_antenna = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 8
  %19 = ptrtoint ptr %ts_antenna to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %ts_antenna, align 2
  %ts_status = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 2
  %20 = ptrtoint ptr %ts_status to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ts_status, align 2
  %ts_final_idx = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 3
  %21 = ptrtoint ptr %ts_final_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ts_final_idx, align 1
  %22 = load i32, ptr %tx_stat, align 4
  %and20 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.end
  %and24 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then22.if.end30_crit_edge, label %if.then26

if.then22.if.end30_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %ts_status to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ts_status, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then22.if.end30_crit_edge
  %24 = ptrtoint ptr %tx_stat to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_stat, align 4
  %and32 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end39_crit_edge, label %if.then34

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ts_status, align 2
  %28 = or i8 %27, 4
  store i8 %28, ptr %ts_status, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end30.if.end39_crit_edge
  %29 = ptrtoint ptr %tx_stat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_stat, align 4
  %and41 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.cleanup_crit_edge, label %if.then43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ts_status, align 2
  %33 = or i8 %32, 2
  store i8 %33, ptr %ts_status, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %entry.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %if.then43 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath5k_hw_proc_5210_rx_status(ptr nocapture noundef readonly %ah, ptr nocapture noundef readonly %desc, ptr nocapture noundef %rs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_status_1 = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %rx_status_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_status_1, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_stat = getelementptr inbounds %struct.ath5k_desc, ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 2
  %2 = call ptr @memset(ptr %rs, i32 0, i32 12)
  %3 = ptrtoint ptr %rx_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_stat, align 4
  %5 = trunc i32 %4 to i16
  %conv = and i16 %5, 4095
  %6 = ptrtoint ptr %rs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %rs, align 2
  %7 = load i32, ptr %rx_stat, align 4
  %and6 = lshr i32 %7, 19
  %conv7 = trunc i32 %and6 to i8
  %rs_rssi = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 4
  %8 = ptrtoint ptr %rs_rssi to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %rs_rssi, align 2
  %9 = load i32, ptr %rx_stat, align 4
  %and9 = lshr i32 %9, 15
  %10 = trunc i32 %and9 to i8
  %conv11 = and i8 %10, 15
  %rs_rate = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 6
  %11 = ptrtoint ptr %rs_rate to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %rs_rate, align 2
  %12 = load i32, ptr %rx_stat, align 4
  %and13 = lshr i32 %12, 12
  %13 = trunc i32 %and13 to i8
  %14 = and i8 %13, 1
  %rs_more = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 8
  %15 = ptrtoint ptr %rs_more to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %rs_more, align 2
  %16 = ptrtoint ptr %rx_status_1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_status_1, align 4
  %and21 = lshr i32 %17, 15
  %18 = trunc i32 %and21 to i16
  %conv23 = and i16 %18, 8191
  %rs_tstamp = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 1
  %19 = ptrtoint ptr %rs_tstamp to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv23, ptr %rs_tstamp, align 2
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %20 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp eq i32 %21, 1
  %22 = ptrtoint ptr %rx_stat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_stat, align 4
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and27 = lshr i32 %23, 27
  %24 = trunc i32 %and27 to i8
  %conv29 = and i8 %24, 7
  br label %if.end35

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and31 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %conv33 = select i1 %tobool32.not, i8 1, i8 2
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then25
  %conv33.sink = phi i8 [ %conv29, %if.then25 ], [ %conv33, %if.else ]
  %25 = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 7
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv33.sink, ptr %25, align 1
  %27 = ptrtoint ptr %rx_status_1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_status_1, align 4
  %and37 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %and41 = lshr i32 %28, 9
  %29 = trunc i32 %and41 to i8
  %conv43 = and i8 %29, 63
  %conv43.sink = select i1 %tobool38.not, i8 -1, i8 %conv43
  %30 = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv43.sink, ptr %30, align 1
  %32 = ptrtoint ptr %rx_status_1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_status_1, align 4
  %and48 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then50:                                        ; preds = %if.end35
  %and52 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then50.if.end57_crit_edge, label %if.then54

if.then50.if.end57_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %rs_status = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 2
  %34 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rs_status, align 2
  %36 = or i8 %35, 1
  store i8 %36, ptr %rs_status, align 2
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.then50.if.end57_crit_edge
  %37 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp59 = icmp eq i32 %38, 0
  br i1 %cmp59, label %land.lhs.true, label %if.end57.if.end69_crit_edge

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end57
  %39 = ptrtoint ptr %rx_status_1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_status_1, align 4
  %and62 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %land.lhs.true.if.end69_crit_edge, label %if.then64

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %rs_status65 = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 2
  %41 = ptrtoint ptr %rs_status65 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rs_status65, align 2
  %43 = or i8 %42, 4
  store i8 %43, ptr %rs_status65, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %land.lhs.true.if.end69_crit_edge, %if.end57.if.end69_crit_edge
  %44 = ptrtoint ptr %rx_status_1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_status_1, align 4
  %and71 = and i32 %45, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end69.if.end82_crit_edge, label %if.then73

if.end69.if.end82_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %rs_status74 = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 2
  %46 = ptrtoint ptr %rs_status74 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rs_status74, align 2
  %48 = or i8 %47, 2
  store i8 %48, ptr %rs_status74, align 2
  %49 = ptrtoint ptr %rx_status_1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_status_1, align 4
  %51 = trunc i32 %50 to i8
  %52 = lshr i8 %51, 5
  %rs_phyerr = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 3
  %53 = ptrtoint ptr %rs_phyerr to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %rs_phyerr, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then73, %if.end69.if.end82_crit_edge
  %54 = ptrtoint ptr %rx_status_1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_status_1, align 4
  %and84 = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end82.cleanup_crit_edge, label %if.then86

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %rs_status87 = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 2
  %56 = ptrtoint ptr %rs_status87 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rs_status87, align 2
  %58 = or i8 %57, 8
  store i8 %58, ptr %rs_status87, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %if.end82.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %entry.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ], [ 0, %if.then86 ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_ani_phy_error_report(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/desc.c", i32 400, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath5k/desc.c", i32 401, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath5k/desc.c", i32 271, i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 4001, i32 1}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i8 0, i8 2}
