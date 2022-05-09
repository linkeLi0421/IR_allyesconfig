; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ar9003_aic.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ar9003_aic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.125, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.126, %union.anon.127, %union.anon.128, %union.anon.129, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ath9k_hw_version = type { i32, i16, i16, i32, i16, i16, i16, i16, i32 }
%struct.ath9k_ops_config = type { i32, i32, i8, i32, i8, i32, i32, i32, i32, i8, i32, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_hw_capabilities = type { i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_channel = type { ptr, i16, i16, i16 }
%union.anon.125 = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.base_eep_header, [64 x i8], [2 x %struct.modal_eep_header], [8 x i8], [4 x i8], [3 x [8 x %struct.cal_data_per_freq]], [3 x [4 x %struct.cal_data_per_freq]], [8 x %struct.cal_target_power_leg], [8 x %struct.cal_target_power_ht], [8 x %struct.cal_target_power_ht], [3 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_ht], [4 x %struct.cal_target_power_ht], [24 x i8], [24 x %struct.cal_ctl_data], i8 }
%struct.base_eep_header = type <{ i16, i16, i16, i8, i8, [2 x i16], [6 x i8], i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [21 x i8] }>
%struct.modal_eep_header = type { [3 x i32], i32, [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, [3 x i8], i8, i8, i8, i8, [3 x i8], i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, i8, i8, [3 x i16], [6 x i8], [5 x %struct.spur_chan] }
%struct.spur_chan = type { i16, i8, i8 }
%struct.cal_data_per_freq = type { [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.cal_target_power_leg = type { i8, [4 x i8] }
%struct.cal_target_power_ht = type { i8, [8 x i8] }
%struct.cal_ctl_data = type { [3 x [8 x %struct.cal_ctl_edges]] }
%struct.cal_ctl_edges = type { i8, i8 }
%struct.ath_nf_limits = type { i16, i16, i16, [3 x i16], [3 x i16] }
%struct.ath9k_pacal_info = type { i32, i8, i8 }
%struct.ar5416Stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath9k_mib_stats }
%struct.ath9k_mib_stats = type { i32, i32, i32, i32, i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ath9k_cal_list = type { ptr, i32, ptr }
%union.anon.126 = type { [3 x i32] }
%union.anon.127 = type { [3 x i32] }
%union.anon.128 = type { [3 x i32] }
%union.anon.129 = type { [3 x i32] }
%struct.ath_hw_private_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ar5416AniState = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.ath9k_ani_default }
%struct.ath9k_ani_default = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ath_btcoex_hw = type { i32, %struct.ath9k_hw_mci, %struct.ath9k_hw_aic, i8, i8, i8, i8, i32, i32, i32, i32, [4 x i32], [4 x i32], [5 x i8] }
%struct.ath9k_hw_mci = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ath9k_hw_aic = type { i8, i8, i8, [79 x i32], i32 }
%struct.ath_hw_radar_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.ar5416IniArray = type { ptr, i32, i32 }
%struct.ath_gen_timer_table = type { [16 x ptr], i16, i8 }
%struct.ath9k_hw_wow = type { i32, i32, i8 }
%struct.ath_dynack = type { i8, i32, i32, %struct.list_head, %struct.spinlock, %struct.ath_dyn_rxbuf, %struct.ath_dyn_txbuf }
%struct.list_head = type { ptr, ptr }
%struct.ath_dyn_rxbuf = type { i16, i16, [64 x i32] }
%struct.ath_dyn_txbuf = type { i16, i16, [64 x %struct.haddr_pair], [64 x %struct.ts_info] }
%struct.haddr_pair = type { [6 x i8], [6 x i8] }
%struct.ts_info = type { i32, i32 }
%struct.ath_aic_out_info = type { i16, i16 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AIC cal is not done after 40ms\00", [33 x i8] zeroinitializer }, align 32
@com_att_db_table = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\03\09\0F\15\1B", [26 x i8] zeroinitializer }, align 32
@aic_lin_table = internal constant { [69 x i16], [54 x i8] } { [69 x i16] [i16 8191, i16 7300, i16 6506, i16 5799, i16 5168, i16 4606, i16 4105, i16 3659, i16 3261, i16 2906, i16 2590, i16 2309, i16 2057, i16 1834, i16 1634, i16 1457, i16 1298, i16 1157, i16 1031, i16 919, i16 819, i16 730, i16 651, i16 580, i16 517, i16 461, i16 411, i16 366, i16 326, i16 291, i16 259, i16 231, i16 206, i16 183, i16 163, i16 146, i16 130, i16 116, i16 103, i16 92, i16 82, i16 73, i16 65, i16 58, i16 52, i16 46, i16 41, i16 37, i16 33, i16 29, i16 26, i16 23, i16 21, i16 18, i16 16, i16 15, i16 13, i16 12, i16 10, i16 9, i16 8, i16 7, i16 7, i16 6, i16 5, i16 5, i16 4, i16 4, i16 3], [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 482, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"com_att_db_table\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 24, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"aic_lin_table\00", align 1
@___asan_gen_.13 = private constant [47 x i8] c"../drivers/net/wireless/ath/ath9k/ar9003_aic.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 28, i32 18 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @com_att_db_table, ptr @aic_lin_table], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com_att_db_table to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic_lin_table to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ar9003_aic_calibration(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aic_cal_state = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 1
  %0 = ptrtoint ptr %aic_cal_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aic_cal_state, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ar9003_aic_cal_start(ptr noundef %ah, i8 noundef zeroext 1)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc zeroext i8 @ar9003_aic_cal_continue(ptr noundef %ah, i1 noundef zeroext false)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %cal_ret.0 = phi i8 [ 3, %entry.sw.epilog_crit_edge ], [ 2, %sw.bb4 ], [ %call3, %sw.bb2 ], [ 1, %sw.bb ]
  ret i8 %cal_ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar9003_aic_cal_start(ptr noundef %ah, i8 noundef zeroext %min_valid_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %ah, i32 noundef -2147483328, i32 noundef 55280) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  tail call void %3(ptr noundef %ah, i32 noundef 0, i32 noundef 55284) #6
  %arrayidx = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 3, i32 %i.01
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 79
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  %conv = zext i8 %min_valid_count to i32
  %shl = shl nuw nsw i32 %conv, 17
  %or9 = or i32 %shl, 2130744960
  tail call void %6(ptr noundef %ah, i32 noundef %or9, i32 noundef 42672) #6
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  tail call void %8(ptr noundef %ah, i32 noundef 640, i32 noundef 46768) #6
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  tail call void %10(ptr noundef %ah, i32 noundef 8596976, i32 noundef 42676) #6
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  tail call void %12(ptr noundef %ah, i32 noundef 240, i32 noundef 46772) #6
  %13 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write, align 4
  tail call void %14(ptr noundef %ah, i32 noundef 747001032, i32 noundef 42680) #6
  %15 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write, align 4
  tail call void %16(ptr noundef %ah, i32 noundef 2111827, i32 noundef 42684) #6
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write, align 4
  tail call void %18(ptr noundef %ah, i32 noundef 17925, i32 noundef 42688) #6
  %19 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write, align 4
  tail call void %20(ptr noundef %ah, i32 noundef 17925, i32 noundef 46784) #6
  tail call fastcc void @ar9003_aic_gain_table(ptr noundef %ah)
  %21 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write, align 4
  %23 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ah, align 4
  %call = tail call i32 %24(ptr noundef %ah, i32 noundef 419872) #6
  %or28 = or i32 %call, 2
  tail call void %22(ptr noundef %ah, i32 noundef %or28, i32 noundef 419872) #6
  %25 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ah, align 4
  %call31 = tail call i32 %26(ptr noundef %ah, i32 noundef 32844) #6
  %aic_cal_start_time = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 4
  %27 = ptrtoint ptr %aic_cal_start_time to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call31, ptr %aic_cal_start_time, align 4
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %28 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw, align 4
  %call33 = tail call i32 %29(ptr noundef %ah, i32 noundef 46768, i32 noundef 0, i32 noundef 256) #6
  %30 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw, align 4
  %call36 = tail call i32 %31(ptr noundef %ah, i32 noundef 46768, i32 noundef 512, i32 noundef 0) #6
  %32 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmw, align 4
  %call39 = tail call i32 %33(ptr noundef %ah, i32 noundef 46768, i32 noundef 256, i32 noundef 0) #6
  %aic_caled_chan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 2
  %34 = ptrtoint ptr %aic_caled_chan to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %aic_caled_chan, align 2
  %aic_cal_state = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 1
  %35 = ptrtoint ptr %aic_cal_state to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %aic_cal_state, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ar9003_aic_cal_continue(ptr noundef %ah, i1 noundef zeroext %cal_once) unnamed_addr #0 align 64 {
entry:
  %cal_sram_valid.i.i = alloca [79 x i8], align 1
  %aic_sram.i.i = alloca [79 x %struct.ath_aic_out_info], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %config = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 1, i32 10
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and = lshr i32 %1, 16
  %shr = and i32 %and, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not = icmp eq i32 %shr, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %aic_cal_state = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 1
  %2 = ptrtoint ptr %aic_cal_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %aic_cal_state, align 1
  br label %cleanup62

if.end:                                           ; preds = %entry
  br i1 %cal_once, label %if.end.for.body_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0106 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ah, align 4
  %call6 = tail call i32 %4(ptr noundef %ah, i32 noundef 46768) #6
  %and7 = and i32 %call6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 0
  br i1 %cmp8, label %for.body.if.end11_crit_edge, label %if.end10

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end10:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #6
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %if.end10.if.end11_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end10.if.end11_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.end10.if.end11_crit_edge, %for.body.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  %call14 = tail call i32 %7(ptr noundef %ah, i32 noundef 46768) #6
  %and15 = and i32 %call14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16.not = icmp eq i32 %and15, 0
  br i1 %cmp16.not, label %if.end22, label %do.body

do.body:                                          ; preds = %if.end11
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask, align 4
  %and18 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body.exit_crit_edge, label %if.then20

do.body.exit_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #6
  br label %exit

if.end22:                                         ; preds = %if.end11
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  tail call void %11(ptr noundef %ah, i32 noundef -2147483328, i32 noundef 47088) #6
  %aic_caled_chan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 2
  %cal_once.not = xor i1 %cal_once, true
  br label %for.body26

for.body26:                                       ; preds = %for.body26.backedge, %if.end22
  %i.1107 = phi i32 [ 0, %if.end22 ], [ %i.1107.be, %for.body26.backedge ]
  %12 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah, align 4
  %call29 = tail call i32 %13(ptr noundef %ah, i32 noundef 47092) #6
  %and30 = and i32 %call29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %for.inc43, label %if.then32

if.then32:                                        ; preds = %for.body26
  %arrayidx = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 3, i32 %i.1107
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp33 = icmp eq i32 %15, 0
  br i1 %cmp33, label %if.then34, label %if.then32.if.end36_crit_edge

if.then32.if.end36_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %aic_caled_chan to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %aic_caled_chan, align 2
  %inc35 = add i8 %17, 1
  store i8 %inc35, ptr %aic_caled_chan, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then32.if.end36_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call29, ptr %arrayidx, align 4
  %inc44 = add nuw nsw i32 %i.1107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %inc44)
  %exitcond113.not = icmp eq i32 %inc44, 79
  %or.cond = select i1 %cal_once.not, i1 true, i1 %exitcond113.not
  br i1 %or.cond, label %if.end36.for.end45_crit_edge, label %if.end36.for.body26.backedge_crit_edge

if.end36.for.body26.backedge_crit_edge:           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.backedge

if.end36.for.end45_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end45

for.inc43:                                        ; preds = %for.body26
  %inc44.old = add nuw nsw i32 %i.1107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %inc44.old)
  %exitcond113.not.old = icmp eq i32 %inc44.old, 79
  br i1 %exitcond113.not.old, label %for.inc43.for.end45_crit_edge, label %for.inc43.for.body26.backedge_crit_edge

for.inc43.for.body26.backedge_crit_edge:          ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.backedge

for.inc43.for.end45_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end45

for.body26.backedge:                              ; preds = %for.inc43.for.body26.backedge_crit_edge, %if.end36.for.body26.backedge_crit_edge
  %i.1107.be = phi i32 [ %inc44.old, %for.inc43.for.body26.backedge_crit_edge ], [ %inc44, %if.end36.for.body26.backedge_crit_edge ]
  br label %for.body26

for.end45:                                        ; preds = %for.inc43.for.end45_crit_edge, %if.end36.for.end45_crit_edge
  %19 = ptrtoint ptr %aic_caled_chan to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %aic_caled_chan, align 2
  %conv = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp47.not = icmp ule i32 %shr, %conv
  %brmerge = or i1 %cmp47.not, %cal_once
  br i1 %brmerge, label %if.then51, label %if.else

if.then51:                                        ; preds = %for.end45
  %21 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write, align 4
  %23 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ah, align 4
  %call.i = tail call i32 %24(ptr noundef %ah, i32 noundef 419872) #6
  %and.i = and i32 %call.i, -3
  tail call void %22(ptr noundef %ah, i32 noundef %and.i, i32 noundef 419872) #6
  call void @llvm.lifetime.start.p0(i64 79, ptr nonnull %cal_sram_valid.i.i) #6
  call void @llvm.lifetime.start.p0(i64 316, ptr nonnull %aic_sram.i.i) #6
  %25 = call ptr @memset(ptr %cal_sram_valid.i.i, i32 0, i32 79)
  %26 = call ptr @memset(ptr %aic_sram.i.i, i32 0, i32 316)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then51
  %indvars.iv.i.i = phi i32 [ 0, %if.then51 ], [ %indvars.iv.next.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 3, i32 %indvars.iv.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %arrayidx6.i.i = getelementptr [79 x i8], ptr %cal_sram_valid.i.i, i32 0, i32 %indvars.iv.i.i
  %31 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx6.i.i, align 1
  %bf.set.i.i = tail call i8 @llvm.fshl.i8(i8 %29, i8 %29, i8 7) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set.i.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.set.i.i, -1
  br i1 %bf.cast.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and29.i.i = lshr i32 %28, 15
  %conv31.i.i = and i32 %and29.i.i, 7
  %and18.i.i = lshr i32 %28, 8
  %conv20.i.i = and i32 %and18.i.i, 63
  %32 = lshr i32 %28, 1
  %conv9.i.i = and i32 %32, 63
  %arrayidx37.i.i = getelementptr [6 x i8], ptr @com_att_db_table, i32 0, i32 %conv31.i.i
  %33 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx37.i.i, align 1
  %conv38.i.i = zext i8 %34 to i32
  %add.i.i = add nuw nsw i32 %conv20.i.i, %conv38.i.i
  %add45.i.i = add nuw nsw i32 %conv9.i.i, %conv38.i.i
  %35 = and i32 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %bf.cast49.not.i.i = icmp eq i32 %35, 0
  %36 = and i8 %bf.set.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %bf.cast55.not.i.i = icmp eq i8 %36, 0
  %arrayidx60.i.i = getelementptr [69 x i16], ptr @aic_lin_table, i32 0, i32 %add.i.i
  %37 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx60.i.i, align 2
  %39 = sub i16 0, %38
  %40 = select i1 %bf.cast49.not.i.i, i16 %39, i16 %38
  %arrayidx64.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %indvars.iv.i.i
  %41 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx64.i.i, align 2
  %arrayidx66.i.i = getelementptr [69 x i16], ptr @aic_lin_table, i32 0, i32 %add45.i.i
  %42 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx66.i.i, align 2
  %44 = sub i16 0, %43
  %45 = select i1 %bf.cast55.not.i.i, i16 %44, i16 %43
  %quad_path_gain_lin.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %indvars.iv.i.i, i32 1
  %46 = ptrtoint ptr %quad_path_gain_lin.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %quad_path_gain_lin.i.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 79
  br i1 %exitcond.not.i.i, label %if.end.i.i.for.body76.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end.i.i.for.body76.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body76.i.i

for.body76.i.i:                                   ; preds = %for.inc300.i.i.for.body76.i.i_crit_edge, %if.end.i.i.for.body76.i.i_crit_edge
  %indvars.iv710.i.i = phi i32 [ %indvars.iv.next711.i.i, %for.inc300.i.i.for.body76.i.i_crit_edge ], [ 0, %if.end.i.i.for.body76.i.i_crit_edge ]
  %cmp74702.i.i = phi i1 [ %cmp74.i.i, %for.inc300.i.i.for.body76.i.i_crit_edge ], [ true, %if.end.i.i.for.body76.i.i_crit_edge ]
  %arrayidx78.i.i = getelementptr [79 x i8], ptr %cal_sram_valid.i.i, i32 0, i32 %indvars.iv710.i.i
  %47 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx78.i.i, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool79.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool79.not.i.i, label %for.body76.i.i.for.cond8.i.i.i_crit_edge, label %for.body76.i.i.for.inc300.i.i_crit_edge

for.body76.i.i.for.inc300.i.i_crit_edge:          ; preds = %for.body76.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc300.i.i

for.body76.i.i.for.cond8.i.i.i_crit_edge:         ; preds = %for.body76.i.i
  br label %for.cond8.i.i.i

for.cond8.i.i.i:                                  ; preds = %for.body12.i.i.i.for.cond8.i.i.i_crit_edge, %for.body76.i.i.for.cond8.i.i.i_crit_edge
  %indvars.iv712.i.i = phi i32 [ %50, %for.body12.i.i.i.for.cond8.i.i.i_crit_edge ], [ %indvars.iv710.i.i, %for.body76.i.i.for.cond8.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv712.i.i)
  %49 = icmp sgt i32 %indvars.iv712.i.i, 0
  br i1 %49, label %for.body12.i.i.i, label %for.cond8.i.i.i.if.end20.thread.i.i.i_crit_edge

for.cond8.i.i.i.if.end20.thread.i.i.i_crit_edge:  ; preds = %for.cond8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.thread.i.i.i

for.body12.i.i.i:                                 ; preds = %for.cond8.i.i.i
  %50 = add nsw i32 %indvars.iv712.i.i, -1
  %arrayidx14.i.i.i = getelementptr i8, ptr %cal_sram_valid.i.i, i32 %50
  %51 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx14.i.i.i, align 1, !range !16
  %tobool15.not.i.i.i = icmp eq i8 %52, 0
  br i1 %tobool15.not.i.i.i, label %for.body12.i.i.i.for.cond8.i.i.i_crit_edge, label %if.end20.i.i.i

for.body12.i.i.i.for.cond8.i.i.i_crit_edge:       ; preds = %for.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond8.i.i.i

if.end20.i.i.i:                                   ; preds = %for.body12.i.i.i
  %53 = trunc i32 %50 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 78, i16 %53)
  %54 = icmp ugt i16 %53, 78
  br i1 %54, label %if.end20.i.i.i.if.end20.thread.i.i.i_crit_edge, label %if.end20.i.i.i.ar9003_aic_find_valid.exit.i.i_crit_edge

if.end20.i.i.i.ar9003_aic_find_valid.exit.i.i_crit_edge: ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ar9003_aic_find_valid.exit.i.i

if.end20.i.i.i.if.end20.thread.i.i.i_crit_edge:   ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.thread.i.i.i

if.end20.thread.i.i.i:                            ; preds = %if.end20.i.i.i.if.end20.thread.i.i.i_crit_edge, %for.cond8.i.i.i.if.end20.thread.i.i.i_crit_edge
  br label %ar9003_aic_find_valid.exit.i.i

ar9003_aic_find_valid.exit.i.i:                   ; preds = %if.end20.thread.i.i.i, %if.end20.i.i.i.ar9003_aic_find_valid.exit.i.i_crit_edge
  %55 = phi i16 [ -1, %if.end20.thread.i.i.i ], [ %53, %if.end20.i.i.i.ar9003_aic_find_valid.exit.i.i_crit_edge ]
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %ar9003_aic_find_valid.exit.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %indvars.iv710.i.i, %ar9003_aic_find_valid.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %indvars.iv.i.i.i)
  %exitcond715.not.i.i = icmp eq i32 %indvars.iv.i.i.i, 78
  br i1 %exitcond715.not.i.i, label %ar9003_aic_find_valid.exit614.thread.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %arrayidx.i.i.i = getelementptr i8, ptr %cal_sram_valid.i.i, i32 %indvars.iv.next.i.i.i
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i.i.i, align 1, !range !16
  %tobool4.not.i.i.i = icmp eq i8 %57, 0
  br i1 %tobool4.not.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge, label %ar9003_aic_find_valid.exit614.i.i

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i.i

ar9003_aic_find_valid.exit614.i.i:                ; preds = %for.body.i.i.i
  %58 = trunc i32 %indvars.iv.next.i.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp87.i.i = icmp slt i16 %55, 0
  br i1 %cmp87.i.i, label %ar9003_aic_find_valid.exit614.i.i.if.then89.i.i_crit_edge, label %if.end158.i.i

ar9003_aic_find_valid.exit614.i.i.if.then89.i.i_crit_edge: ; preds = %ar9003_aic_find_valid.exit614.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89.i.i

ar9003_aic_find_valid.exit614.thread.i.i:         ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp87724.i.i = icmp slt i16 %55, 0
  br i1 %cmp87724.i.i, label %ar9003_aic_find_valid.exit614.thread.i.i.if.then89.i.i_crit_edge, label %ar9003_aic_find_valid.exit614.thread.i.i.if.then162.i.i_crit_edge

ar9003_aic_find_valid.exit614.thread.i.i.if.then162.i.i_crit_edge: ; preds = %ar9003_aic_find_valid.exit614.thread.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then162.i.i

ar9003_aic_find_valid.exit614.thread.i.i.if.then89.i.i_crit_edge: ; preds = %ar9003_aic_find_valid.exit614.thread.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89.i.i

if.then89.i.i:                                    ; preds = %ar9003_aic_find_valid.exit614.thread.i.i.if.then89.i.i_crit_edge, %ar9003_aic_find_valid.exit614.i.i.if.then89.i.i_crit_edge
  %59 = phi i16 [ -1, %ar9003_aic_find_valid.exit614.thread.i.i.if.then89.i.i_crit_edge ], [ %58, %ar9003_aic_find_valid.exit614.i.i.if.then89.i.i_crit_edge ]
  %60 = and i16 %59, 255
  %61 = zext i16 %60 to i32
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %61, i32 78) #6
  br label %for.cond.i619.i.i

for.cond.i619.i.i:                                ; preds = %for.body.i623.i.i.for.cond.i619.i.i_crit_edge, %if.then89.i.i
  %indvars.iv.i617.i.i = phi i32 [ %indvars.iv.next.i620.i.i, %for.body.i623.i.i.for.cond.i619.i.i_crit_edge ], [ %61, %if.then89.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i617.i.i, i32 %umax.i.i)
  %exitcond718.not.i.i = icmp eq i32 %indvars.iv.i617.i.i, %umax.i.i
  br i1 %exitcond718.not.i.i, label %for.cond.i619.i.i.for.end302.i.i_crit_edge, label %for.body.i623.i.i

for.cond.i619.i.i.for.end302.i.i_crit_edge:       ; preds = %for.cond.i619.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end302.i.i

for.body.i623.i.i:                                ; preds = %for.cond.i619.i.i
  %indvars.iv.next.i620.i.i = add nuw nsw i32 %indvars.iv.i617.i.i, 1
  %arrayidx.i621.i.i = getelementptr i8, ptr %cal_sram_valid.i.i, i32 %indvars.iv.next.i620.i.i
  %62 = ptrtoint ptr %arrayidx.i621.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i621.i.i, align 1, !range !16
  %tobool4.not.i622.i.i = icmp eq i8 %63, 0
  br i1 %tobool4.not.i622.i.i, label %for.body.i623.i.i.for.cond.i619.i.i_crit_edge, label %if.end20.thread43.loopexit.i626.i.i

for.body.i623.i.i.for.cond.i619.i.i_crit_edge:    ; preds = %for.body.i623.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i619.i.i

if.end20.thread43.loopexit.i626.i.i:              ; preds = %for.body.i623.i.i
  %conv93685.i.i = and i32 %indvars.iv.next.i620.i.i, 65535
  %idxprom98.i.i = sext i16 %59 to i32
  %arrayidx99.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %idxprom98.i.i
  %64 = ptrtoint ptr %arrayidx99.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx99.i.i, align 2
  %conv101.i.i = sext i16 %65 to i32
  %arrayidx103.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %conv93685.i.i
  %66 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx103.i.i, align 2
  %conv105.i.i = sext i16 %67 to i32
  %sub.i.i = sub nsw i32 %conv101.i.i, %conv105.i.i
  %sub108.i.i = sub nsw i32 %idxprom98.i.i, %indvars.iv710.i.i
  %mul109.i.i = mul i32 %sub.i.i, %sub108.i.i
  %sub112.i.i = sub nsw i32 %conv93685.i.i, %indvars.iv710.i.i
  %shr113.i.i = ashr i32 %sub112.i.i, 1
  %add114.i.i = add i32 %mul109.i.i, %shr113.i.i
  %div.i.i = sdiv i32 %add114.i.i, %sub112.i.i
  %68 = trunc i32 %div.i.i to i16
  %conv123.i.i = add i16 %65, %68
  %arrayidx125.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %indvars.iv710.i.i
  %69 = ptrtoint ptr %arrayidx125.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv123.i.i, ptr %arrayidx125.i.i, align 2
  %quad_path_gain_lin129.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %idxprom98.i.i, i32 1
  %70 = ptrtoint ptr %quad_path_gain_lin129.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %quad_path_gain_lin129.i.i, align 2
  %conv130.i.i = sext i16 %71 to i32
  %quad_path_gain_lin133.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %conv93685.i.i, i32 1
  %72 = ptrtoint ptr %quad_path_gain_lin133.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %quad_path_gain_lin133.i.i, align 2
  %conv134.i.i = sext i16 %73 to i32
  %sub135.i.i = sub nsw i32 %conv130.i.i, %conv134.i.i
  %mul139.i.i = mul i32 %sub135.i.i, %sub108.i.i
  %add144.i.i = add i32 %mul139.i.i, %shr113.i.i
  %div148.i.i = sdiv i32 %add144.i.i, %sub112.i.i
  %74 = trunc i32 %div148.i.i to i16
  %conv154.i.i = add i16 %71, %74
  %quad_path_gain_lin157.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %indvars.iv710.i.i, i32 1
  %75 = ptrtoint ptr %quad_path_gain_lin157.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv154.i.i, ptr %quad_path_gain_lin157.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %59)
  %cmp234.i.i = icmp sgt i16 %59, -1
  br i1 %cmp234.i.i, label %if.end20.thread43.loopexit.i626.i.i.if.then236.i.i_crit_edge, label %if.end20.thread43.loopexit.i626.i.i.for.inc300.i.i_crit_edge

if.end20.thread43.loopexit.i626.i.i.for.inc300.i.i_crit_edge: ; preds = %if.end20.thread43.loopexit.i626.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc300.i.i

if.end20.thread43.loopexit.i626.i.i.if.then236.i.i_crit_edge: ; preds = %if.end20.thread43.loopexit.i626.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then236.i.i

if.end158.i.i:                                    ; preds = %ar9003_aic_find_valid.exit614.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp160.i.i = icmp slt i16 %58, 0
  br i1 %cmp160.i.i, label %if.end158.i.i.if.then162.i.i_crit_edge, label %if.end158.if.then236_crit_edge.i.i

if.end158.i.i.if.then162.i.i_crit_edge:           ; preds = %if.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then162.i.i

if.end158.if.then236_crit_edge.i.i:               ; preds = %if.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv159726.i.i = and i32 %indvars.iv.next.i.i.i, 65535
  %.pre.i.i = sub nsw i32 %conv159726.i.i, %indvars.iv710.i.i
  br label %if.then236.i.i

if.then162.i.i:                                   ; preds = %if.end158.i.i.if.then162.i.i_crit_edge, %ar9003_aic_find_valid.exit614.thread.i.i.if.then162.i.i_crit_edge
  %76 = and i16 %55, 255
  %77 = zext i16 %76 to i32
  br label %for.cond8.i631.i.i

for.cond8.i631.i.i:                               ; preds = %for.body12.i636.i.i.for.cond8.i631.i.i_crit_edge, %if.then162.i.i
  %indvars.iv716.i.i = phi i32 [ %indvars.iv.next717.i.i, %for.body12.i636.i.i.for.cond8.i631.i.i_crit_edge ], [ %77, %if.then162.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv716.i.i)
  %cmp10.i630.i.i = icmp sgt i32 %indvars.iv716.i.i, 0
  br i1 %cmp10.i630.i.i, label %for.body12.i636.i.i, label %for.cond8.i631.i.i.for.end302.i.i_crit_edge

for.cond8.i631.i.i.for.end302.i.i_crit_edge:      ; preds = %for.cond8.i631.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end302.i.i

for.body12.i636.i.i:                              ; preds = %for.cond8.i631.i.i
  %indvars.iv.next717.i.i = add nsw i32 %indvars.iv716.i.i, -1
  %conv939.i633.i.i = and i32 %indvars.iv.next717.i.i, 65535
  %arrayidx14.i634.i.i = getelementptr i8, ptr %cal_sram_valid.i.i, i32 %conv939.i633.i.i
  %78 = ptrtoint ptr %arrayidx14.i634.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx14.i634.i.i, align 1, !range !16
  %tobool15.not.i635.i.i = icmp eq i8 %79, 0
  br i1 %tobool15.not.i635.i.i, label %for.body12.i636.i.i.for.cond8.i631.i.i_crit_edge, label %if.end20.i637.i.i

for.body12.i636.i.i.for.cond8.i631.i.i_crit_edge: ; preds = %for.body12.i636.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond8.i631.i.i

if.end20.i637.i.i:                                ; preds = %for.body12.i636.i.i
  %80 = trunc i32 %indvars.iv.next717.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 78, i16 %80)
  %81 = icmp ugt i16 %80, 78
  br i1 %81, label %if.end20.i637.i.i.for.end302.i.i_crit_edge, label %if.end170.i.i

if.end20.i637.i.i.for.end302.i.i_crit_edge:       ; preds = %if.end20.i637.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end302.i.i

if.end170.i.i:                                    ; preds = %if.end20.i637.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %idxprom171.i.i = sext i16 %55 to i32
  %arrayidx172.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %idxprom171.i.i
  %82 = ptrtoint ptr %arrayidx172.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx172.i.i, align 2
  %conv174.i.i = sext i16 %83 to i32
  %arrayidx176.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %conv939.i633.i.i
  %84 = ptrtoint ptr %arrayidx176.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx176.i.i, align 2
  %conv178.i.i = sext i16 %85 to i32
  %sub179.i.i = sub nsw i32 %conv174.i.i, %conv178.i.i
  %sub182.i.i = sub nsw i32 %indvars.iv710.i.i, %idxprom171.i.i
  %mul183.i.i = mul i32 %sub179.i.i, %sub182.i.i
  %sub186.i.i = sub nsw i32 %idxprom171.i.i, %conv939.i633.i.i
  %shr187.i.i = ashr i32 %sub186.i.i, 1
  %add188.i.i = add i32 %mul183.i.i, %shr187.i.i
  %div192.i.i = sdiv i32 %add188.i.i, %sub186.i.i
  %86 = trunc i32 %div192.i.i to i16
  %conv198.i.i = add i16 %83, %86
  %arrayidx200.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %indvars.iv710.i.i
  %87 = ptrtoint ptr %arrayidx200.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv198.i.i, ptr %arrayidx200.i.i, align 2
  %quad_path_gain_lin204.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %idxprom171.i.i, i32 1
  %88 = ptrtoint ptr %quad_path_gain_lin204.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %quad_path_gain_lin204.i.i, align 2
  %conv205.i.i = sext i16 %89 to i32
  %quad_path_gain_lin208.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %conv939.i633.i.i, i32 1
  %90 = ptrtoint ptr %quad_path_gain_lin208.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %quad_path_gain_lin208.i.i, align 2
  %conv209.i.i = sext i16 %91 to i32
  %sub210.i.i = sub nsw i32 %conv205.i.i, %conv209.i.i
  %mul214.i.i = mul i32 %sub210.i.i, %sub182.i.i
  %add219.i.i = add i32 %mul214.i.i, %shr187.i.i
  %div223.i.i = sdiv i32 %add219.i.i, %sub186.i.i
  %92 = trunc i32 %div223.i.i to i16
  %conv229.i.i = add i16 %89, %92
  br label %for.inc300.sink.split.i.i

if.then236.i.i:                                   ; preds = %if.end158.if.then236_crit_edge.i.i, %if.end20.thread43.loopexit.i626.i.i.if.then236.i.i_crit_edge
  %sub239.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.end158.if.then236_crit_edge.i.i ], [ %sub112.i.i, %if.end20.thread43.loopexit.i626.i.i.if.then236.i.i_crit_edge ]
  %start_idx.0672679.i.i = phi i16 [ %55, %if.end158.if.then236_crit_edge.i.i ], [ %59, %if.end20.thread43.loopexit.i626.i.i.if.then236.i.i_crit_edge ]
  %conv159673678.i.i = phi i32 [ %conv159726.i.i, %if.end158.if.then236_crit_edge.i.i ], [ %conv93685.i.i, %if.end20.thread43.loopexit.i626.i.i.if.then236.i.i_crit_edge ]
  %conv233687.i.i = zext i16 %start_idx.0672679.i.i to i32
  %arrayidx241.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %conv233687.i.i
  %93 = ptrtoint ptr %arrayidx241.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx241.i.i, align 2
  %conv243.i.i = sext i16 %94 to i32
  %mul244.i.i = mul i32 %sub239.pre-phi.i.i, %conv243.i.i
  %sub247.i.i = sub nsw i32 %indvars.iv710.i.i, %conv233687.i.i
  %arrayidx249.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %conv159673678.i.i
  %95 = ptrtoint ptr %arrayidx249.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx249.i.i, align 2
  %conv251.i.i = sext i16 %96 to i32
  %mul252.i.i = mul i32 %sub247.i.i, %conv251.i.i
  %sub256.i.i = sub nsw i32 %conv159673678.i.i, %conv233687.i.i
  %shr257.i.i = ashr i32 %sub256.i.i, 1
  %add253.i.i = add i32 %mul244.i.i, %shr257.i.i
  %add258.i.i = add i32 %add253.i.i, %mul252.i.i
  %div262.i.i = sdiv i32 %add258.i.i, %sub256.i.i
  %conv263.i.i = trunc i32 %div262.i.i to i16
  %arrayidx265.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %indvars.iv710.i.i
  %97 = ptrtoint ptr %arrayidx265.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv263.i.i, ptr %arrayidx265.i.i, align 2
  %quad_path_gain_lin272.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %conv233687.i.i, i32 1
  %98 = ptrtoint ptr %quad_path_gain_lin272.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %quad_path_gain_lin272.i.i, align 2
  %conv273.i.i = sext i16 %99 to i32
  %mul274.i.i = mul i32 %sub239.pre-phi.i.i, %conv273.i.i
  %quad_path_gain_lin280.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %conv159673678.i.i, i32 1
  %100 = ptrtoint ptr %quad_path_gain_lin280.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %quad_path_gain_lin280.i.i, align 2
  %conv281.i.i = sext i16 %101 to i32
  %mul282.i.i = mul i32 %sub247.i.i, %conv281.i.i
  %add283.i.i = add i32 %mul274.i.i, %shr257.i.i
  %add288.i.i = add i32 %add283.i.i, %mul282.i.i
  %div292.i.i = sdiv i32 %add288.i.i, %sub256.i.i
  %conv293.i.i = trunc i32 %div292.i.i to i16
  br label %for.inc300.sink.split.i.i

for.inc300.sink.split.i.i:                        ; preds = %if.then236.i.i, %if.end170.i.i
  %conv293.sink.i.i = phi i16 [ %conv293.i.i, %if.then236.i.i ], [ %conv229.i.i, %if.end170.i.i ]
  %quad_path_gain_lin296.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %indvars.iv710.i.i, i32 1
  %102 = ptrtoint ptr %quad_path_gain_lin296.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv293.sink.i.i, ptr %quad_path_gain_lin296.i.i, align 2
  br label %for.inc300.i.i

for.inc300.i.i:                                   ; preds = %for.inc300.sink.split.i.i, %if.end20.thread43.loopexit.i626.i.i.for.inc300.i.i_crit_edge, %for.body76.i.i.for.inc300.i.i_crit_edge
  %indvars.iv.next711.i.i = add nuw nsw i32 %indvars.iv710.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %indvars.iv710.i.i)
  %cmp74.i.i = icmp ult i32 %indvars.iv710.i.i, 78
  %exitcond719.not.i.i = icmp eq i32 %indvars.iv.next711.i.i, 79
  br i1 %exitcond719.not.i.i, label %for.inc300.i.i.for.end302.i.i_crit_edge, label %for.inc300.i.i.for.body76.i.i_crit_edge

for.inc300.i.i.for.body76.i.i_crit_edge:          ; preds = %for.inc300.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body76.i.i

for.inc300.i.i.for.end302.i.i_crit_edge:          ; preds = %for.inc300.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end302.i.i

for.end302.i.i:                                   ; preds = %for.inc300.i.i.for.end302.i.i_crit_edge, %if.end20.i637.i.i.for.end302.i.i_crit_edge, %for.cond8.i631.i.i.for.end302.i.i_crit_edge, %for.cond.i619.i.i.for.end302.i.i_crit_edge
  %cmp74695.i.i = phi i1 [ %cmp74702.i.i, %for.cond.i619.i.i.for.end302.i.i_crit_edge ], [ %cmp74702.i.i, %for.cond8.i631.i.i.for.end302.i.i_crit_edge ], [ %cmp74.i.i, %for.inc300.i.i.for.end302.i.i_crit_edge ], [ %cmp74702.i.i, %if.end20.i637.i.i.for.end302.i.i_crit_edge ]
  br label %for.cond.i642.i.i

for.cond.i642.i.i:                                ; preds = %for.body.i646.i.i.for.cond.i642.i.i_crit_edge, %for.end302.i.i
  %indvars.iv.i640.i.i = phi i32 [ %indvars.iv.next.i643.i.i, %for.body.i646.i.i.for.cond.i642.i.i_crit_edge ], [ 0, %for.end302.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %indvars.iv.i640.i.i)
  %exitcond720.not.i.i = icmp eq i32 %indvars.iv.i640.i.i, 78
  br i1 %exitcond720.not.i.i, label %for.cond.i642.i.i.ar9003_aic_find_valid.exit650.i.i_crit_edge, label %for.body.i646.i.i

for.cond.i642.i.i.ar9003_aic_find_valid.exit650.i.i_crit_edge: ; preds = %for.cond.i642.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ar9003_aic_find_valid.exit650.i.i

for.body.i646.i.i:                                ; preds = %for.cond.i642.i.i
  %indvars.iv.next.i643.i.i = add nuw nsw i32 %indvars.iv.i640.i.i, 1
  %arrayidx.i644.i.i = getelementptr i8, ptr %cal_sram_valid.i.i, i32 %indvars.iv.next.i643.i.i
  %103 = ptrtoint ptr %arrayidx.i644.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i644.i.i, align 1, !range !16
  %tobool4.not.i645.i.i = icmp eq i8 %104, 0
  br i1 %tobool4.not.i645.i.i, label %for.body.i646.i.i.for.cond.i642.i.i_crit_edge, label %if.end20.thread43.loopexit.i649.i.i

for.body.i646.i.i.for.cond.i642.i.i_crit_edge:    ; preds = %for.body.i646.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i642.i.i

if.end20.thread43.loopexit.i649.i.i:              ; preds = %for.body.i646.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %105 = trunc i32 %indvars.iv.next.i643.i.i to i16
  br label %ar9003_aic_find_valid.exit650.i.i

ar9003_aic_find_valid.exit650.i.i:                ; preds = %if.end20.thread43.loopexit.i649.i.i, %for.cond.i642.i.i.ar9003_aic_find_valid.exit650.i.i_crit_edge
  %106 = phi i16 [ %105, %if.end20.thread43.loopexit.i649.i.i ], [ -1, %for.cond.i642.i.i.ar9003_aic_find_valid.exit650.i.i_crit_edge ]
  %107 = tail call i16 @llvm.smax.i16(i16 %106, i16 0) #6
  %idxprom311688.i.i = zext i16 %107 to i32
  %arrayidx312.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 3, i32 %idxprom311688.i.i
  %108 = ptrtoint ptr %arrayidx312.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx312.i.i, align 4
  %and313.i.i = lshr i32 %109, 15
  %shr314.i.i = and i32 %and313.i.i, 7
  %arrayidx315.i.i = getelementptr [6 x i8], ptr @com_att_db_table, i32 0, i32 %shr314.i.i
  %110 = ptrtoint ptr %arrayidx315.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx315.i.i, align 1
  %112 = zext i8 %111 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr314.i.i)
  %cmp23.3.i.i.i = icmp ult i32 %shr314.i.i, 3
  %113 = add nsw i32 %shr314.i.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %113)
  %114 = icmp ult i32 %113, -2
  %.mux.i.i = select i1 %cmp23.3.i.i.i, i32 65536, i32 98304
  %.mux.mux.i.i = select i1 %114, i32 %.mux.i.i, i32 131072
  br label %for.body321.i.i

for.body321.i.i:                                  ; preds = %ar9003_aic_find_index.exit666.i.i.for.body321.i.i_crit_edge, %ar9003_aic_find_valid.exit650.i.i
  %indvars.iv721.i.i = phi i32 [ 0, %ar9003_aic_find_valid.exit650.i.i ], [ %indvars.iv.next722.i.i, %ar9003_aic_find_index.exit666.i.i.for.body321.i.i_crit_edge ]
  %arrayidx324.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %indvars.iv721.i.i
  %115 = ptrtoint ptr %arrayidx324.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx324.i.i, align 2
  %quad_path_gain_lin338.i.i = getelementptr [79 x %struct.ath_aic_out_info], ptr %aic_sram.i.i, i32 0, i32 %indvars.iv721.i.i, i32 1
  %117 = ptrtoint ptr %quad_path_gain_lin338.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %quad_path_gain_lin338.i.i, align 2
  %119 = tail call i16 @llvm.abs.i16(i16 %116, i1 false) #6
  %conv6.i.i.i = sext i16 %119 to i32
  br label %for.body.i652.i.i

for.body.i652.i.i:                                ; preds = %for.inc.i.i.i.for.body.i652.i.i_crit_edge, %for.body321.i.i
  %i.050.i.i.i = phi i16 [ 68, %for.body321.i.i ], [ %dec.i.i.i, %for.inc.i.i.i.for.body.i652.i.i_crit_edge ]
  %conv247.i.i.i = zext i16 %i.050.i.i.i to i32
  %arrayidx.i651.i.i = getelementptr [69 x i16], ptr @aic_lin_table, i32 0, i32 %conv247.i.i.i
  %120 = ptrtoint ptr %arrayidx.i651.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx.i651.i.i, align 2
  %conv5.i.i.i = zext i16 %121 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i.i, i32 %conv6.i.i.i)
  %cmp7.not.i.i.i = icmp slt i32 %conv5.i.i.i, %conv6.i.i.i
  br i1 %cmp7.not.i.i.i, label %for.inc.i.i.i, label %for.body.i652.i.i.ar9003_aic_find_index.exit.i.i_crit_edge

for.body.i652.i.i.ar9003_aic_find_index.exit.i.i_crit_edge: ; preds = %for.body.i652.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ar9003_aic_find_index.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i652.i.i
  %dec.i.i.i = add nsw i16 %i.050.i.i.i, -1
  %cmp3.not.i.i.i = icmp eq i16 %i.050.i.i.i, 0
  br i1 %cmp3.not.i.i.i, label %for.inc.i.i.i.ar9003_aic_find_index.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i652.i.i_crit_edge

for.inc.i.i.i.for.body.i652.i.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i652.i.i

for.inc.i.i.i.ar9003_aic_find_index.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ar9003_aic_find_index.exit.i.i

ar9003_aic_find_index.exit.i.i:                   ; preds = %for.inc.i.i.i.ar9003_aic_find_index.exit.i.i_crit_edge, %for.body.i652.i.i.ar9003_aic_find_index.exit.i.i_crit_edge
  %i.3.i.i.i = phi i16 [ %i.050.i.i.i, %for.body.i652.i.i.ar9003_aic_find_index.exit.i.i_crit_edge ], [ -1, %for.inc.i.i.i.ar9003_aic_find_index.exit.i.i_crit_edge ]
  %conv363.i.i = sub i16 %i.3.i.i.i, %112
  %122 = tail call i16 @llvm.abs.i16(i16 %118, i1 false) #6
  %conv6.i653.i.i = sext i16 %122 to i32
  br label %for.body.i659.i.i

for.body.i659.i.i:                                ; preds = %for.inc.i662.i.i.for.body.i659.i.i_crit_edge, %ar9003_aic_find_index.exit.i.i
  %i.050.i654.i.i = phi i16 [ 68, %ar9003_aic_find_index.exit.i.i ], [ %dec.i660.i.i, %for.inc.i662.i.i.for.body.i659.i.i_crit_edge ]
  %conv247.i655.i.i = zext i16 %i.050.i654.i.i to i32
  %arrayidx.i656.i.i = getelementptr [69 x i16], ptr @aic_lin_table, i32 0, i32 %conv247.i655.i.i
  %123 = ptrtoint ptr %arrayidx.i656.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx.i656.i.i, align 2
  %conv5.i657.i.i = zext i16 %124 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i657.i.i, i32 %conv6.i653.i.i)
  %cmp7.not.i658.i.i = icmp slt i32 %conv5.i657.i.i, %conv6.i653.i.i
  br i1 %cmp7.not.i658.i.i, label %for.inc.i662.i.i, label %for.body.i659.i.i.ar9003_aic_find_index.exit664.i.i_crit_edge

for.body.i659.i.i.ar9003_aic_find_index.exit664.i.i_crit_edge: ; preds = %for.body.i659.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ar9003_aic_find_index.exit664.i.i

for.inc.i662.i.i:                                 ; preds = %for.body.i659.i.i
  %dec.i660.i.i = add nsw i16 %i.050.i654.i.i, -1
  %cmp3.not.i661.i.i = icmp eq i16 %i.050.i654.i.i, 0
  br i1 %cmp3.not.i661.i.i, label %for.inc.i662.i.i.ar9003_aic_find_index.exit664.i.i_crit_edge, label %for.inc.i662.i.i.for.body.i659.i.i_crit_edge

for.inc.i662.i.i.for.body.i659.i.i_crit_edge:     ; preds = %for.inc.i662.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i659.i.i

for.inc.i662.i.i.ar9003_aic_find_index.exit664.i.i_crit_edge: ; preds = %for.inc.i662.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ar9003_aic_find_index.exit664.i.i

ar9003_aic_find_index.exit664.i.i:                ; preds = %for.inc.i662.i.i.ar9003_aic_find_index.exit664.i.i_crit_edge, %for.body.i659.i.i.ar9003_aic_find_index.exit664.i.i_crit_edge
  %i.3.i663.i.i = phi i16 [ %i.050.i654.i.i, %for.body.i659.i.i.ar9003_aic_find_index.exit664.i.i_crit_edge ], [ -1, %for.inc.i662.i.i.ar9003_aic_find_index.exit664.i.i_crit_edge ]
  %conv383.i.i = sub i16 %i.3.i663.i.i, %112
  %125 = zext i32 %shr314.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %shr314.i.i, label %for.end29.thread.i.fold.split731.i.i [
    i32 0, label %ar9003_aic_find_index.exit664.i.i.for.end29.thread.i.i.i_crit_edge
    i32 1, label %for.end29.thread.i.fold.split.i.i
    i32 5, label %ar9003_aic_find_index.exit664.i.i.ar9003_aic_find_index.exit666.i.i_crit_edge
  ]

ar9003_aic_find_index.exit664.i.i.ar9003_aic_find_index.exit666.i.i_crit_edge: ; preds = %ar9003_aic_find_index.exit664.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ar9003_aic_find_index.exit666.i.i

ar9003_aic_find_index.exit664.i.i.for.end29.thread.i.i.i_crit_edge: ; preds = %ar9003_aic_find_index.exit664.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.thread.i.i.i

for.end29.thread.i.fold.split.i.i:                ; preds = %ar9003_aic_find_index.exit664.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.thread.i.i.i

for.end29.thread.i.fold.split731.i.i:             ; preds = %ar9003_aic_find_index.exit664.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.thread.i.i.i

for.end29.thread.i.i.i:                           ; preds = %for.end29.thread.i.fold.split731.i.i, %for.end29.thread.i.fold.split.i.i, %ar9003_aic_find_index.exit664.i.i.for.end29.thread.i.i.i_crit_edge
  %i.2.ph.i.i.i = phi i32 [ %shr314.i.i, %ar9003_aic_find_index.exit664.i.i.for.end29.thread.i.i.i_crit_edge ], [ 32768, %for.end29.thread.i.fold.split.i.i ], [ %.mux.mux.i.i, %for.end29.thread.i.fold.split731.i.i ]
  br label %ar9003_aic_find_index.exit666.i.i

ar9003_aic_find_index.exit666.i.i:                ; preds = %for.end29.thread.i.i.i, %ar9003_aic_find_index.exit664.i.i.ar9003_aic_find_index.exit666.i.i_crit_edge
  %i.3.i665.i.i = phi i32 [ %i.2.ph.i.i.i, %for.end29.thread.i.i.i ], [ 2147450880, %ar9003_aic_find_index.exit664.i.i.ar9003_aic_find_index.exit666.i.i_crit_edge ]
  %126 = tail call i16 @llvm.smax.i16(i16 %conv363.i.i, i16 0) #6
  %127 = tail call i16 @llvm.umin.i16(i16 %126, i16 37) #6
  %128 = tail call i16 @llvm.smax.i16(i16 %conv383.i.i, i16 0) #6
  %129 = tail call i16 @llvm.umin.i16(i16 %128, i16 37) #6
  %sum.shift.i.i = lshr i16 %116, 15
  %130 = xor i16 %sum.shift.i.i, -1
  %131 = zext i16 %130 to i32
  %shl.i.i = shl nuw nsw i32 %131, 14
  %and436.i.i = and i32 %shl.i.i, 16384
  %132 = xor i16 %118, -1
  %133 = lshr i16 %132, 8
  %134 = and i16 %133, 128
  %and447.i.i = and i32 %i.3.i665.i.i, 229376
  %135 = shl nuw nsw i16 %127, 8
  %conv457.i.i = zext i16 %135 to i32
  %136 = shl nuw nsw i16 %129, 1
  %conv462.i.i = zext i16 %136 to i32
  %137 = or i16 %134, 1
  %or.i.i = zext i16 %137 to i32
  %or448.i.i = or i32 %and436.i.i, %or.i.i
  %or455.i.i = or i32 %or448.i.i, %conv457.i.i
  %or460.i.i = or i32 %or455.i.i, %conv462.i.i
  %or465.i.i = or i32 %or460.i.i, %and447.i.i
  %arrayidx468.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 3, i32 %indvars.iv721.i.i
  %138 = ptrtoint ptr %arrayidx468.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or465.i.i, ptr %arrayidx468.i.i, align 4
  %indvars.iv.next722.i.i = add nuw nsw i32 %indvars.iv721.i.i, 1
  %exitcond723.not.i.i = icmp eq i32 %indvars.iv.next722.i.i, 79
  br i1 %exitcond723.not.i.i, label %ar9003_aic_cal_done.exit, label %ar9003_aic_find_index.exit666.i.i.for.body321.i.i_crit_edge

ar9003_aic_find_index.exit666.i.i.for.body321.i.i_crit_edge: ; preds = %ar9003_aic_find_index.exit666.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body321.i.i

ar9003_aic_cal_done.exit:                         ; preds = %ar9003_aic_find_index.exit666.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %106)
  %cmp306.i.i = icmp sgt i16 %106, -1
  %139 = xor i1 %cmp74695.i.i, true
  %spec.select610.i.i = select i1 %cmp306.i.i, i1 %139, i1 false
  call void @llvm.lifetime.end.p0(i64 316, ptr nonnull %aic_sram.i.i) #6
  call void @llvm.lifetime.end.p0(i64 79, ptr nonnull %cal_sram_valid.i.i) #6
  %spec.select.i = select i1 %spec.select610.i.i, i8 2, i8 3
  %140 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 1
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %spec.select.i, ptr %140, align 1
  br label %exit

if.else:                                          ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #8
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %142 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmw, align 4
  %call53 = tail call i32 %143(ptr noundef %ah, i32 noundef 46768, i32 noundef 0, i32 noundef 256) #6
  %144 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rmw, align 4
  %call56 = tail call i32 %145(ptr noundef %ah, i32 noundef 46768, i32 noundef 512, i32 noundef 0) #6
  %146 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rmw, align 4
  %call59 = tail call i32 %147(ptr noundef %ah, i32 noundef 46768, i32 noundef 256, i32 noundef 0) #6
  br label %exit

exit:                                             ; preds = %if.else, %ar9003_aic_cal_done.exit, %if.then20, %do.body.exit_crit_edge
  %aic_cal_state61 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 1
  %148 = ptrtoint ptr %aic_cal_state61 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %aic_cal_state61, align 1
  br label %cleanup62

cleanup62:                                        ; preds = %exit, %if.then
  %retval.0 = phi i8 [ %149, %exit ], [ 3, %if.then ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ar9003_aic_start_normal(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aic1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2
  %aic_cal_state = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 1
  %0 = ptrtoint ptr %aic_cal_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aic_cal_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @ar9003_aic_gain_table(ptr noundef %ah)
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  tail call void %3(ptr noundef %ah, i32 noundef -2147483648, i32 noundef 47088) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %indvars.iv = phi i32 [ 0, %if.end ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %arrayidx = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 3, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void %5(ptr noundef %ah, i32 noundef %7, i32 noundef 47092) #6
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 79
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  tail call void %9(ptr noundef %ah, i32 noundef 128, i32 noundef 42672) #6
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  tail call void %11(ptr noundef %ah, i32 noundef 5975536, i32 noundef 42676) #6
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  tail call void %13(ptr noundef %ah, i32 noundef 276180168, i32 noundef 42680) #6
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  tail call void %15(ptr noundef %ah, i32 noundef 18979403, i32 noundef 42684) #6
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  tail call void %17(ptr noundef %ah, i32 noundef 7681, i32 noundef 42688) #6
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  tail call void %19(ptr noundef %ah, i32 noundef 240, i32 noundef 46772) #6
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  tail call void %21(ptr noundef %ah, i32 noundef 7681, i32 noundef 46784) #6
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  tail call void %23(ptr noundef %ah, i32 noundef 129, i32 noundef 46768) #6
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  tail call void %25(ptr noundef %ah, i32 noundef 1073741824, i32 noundef 91404) #6
  %26 = ptrtoint ptr %aic1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %aic1, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %for.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar9003_aic_gain_table(ptr noundef %ah) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %ah, i32 noundef 740297216, i32 noundef 40544) #6
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  tail call void %3(ptr noundef %ah, i32 noundef 1548633144, i32 noundef 40548) #6
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  tail call void %5(ptr noundef %ah, i32 noundef -2147483008, i32 noundef 55280) #6
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  tail call void %7(ptr noundef %ah, i32 noundef 32287, i32 noundef 55284) #6
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  tail call void %9(ptr noundef %ah, i32 noundef 65119, i32 noundef 55284) #6
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  tail call void %11(ptr noundef %ah, i32 noundef 97951, i32 noundef 55284) #6
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  tail call void %13(ptr noundef %ah, i32 noundef 31774, i32 noundef 55284) #6
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  tail call void %15(ptr noundef %ah, i32 noundef 64606, i32 noundef 55284) #6
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  tail call void %17(ptr noundef %ah, i32 noundef 97438, i32 noundef 55284) #6
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  tail call void %19(ptr noundef %ah, i32 noundef 24079, i32 noundef 55284) #6
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  tail call void %21(ptr noundef %ah, i32 noundef 56911, i32 noundef 55284) #6
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  tail call void %23(ptr noundef %ah, i32 noundef 89743, i32 noundef 55284) #6
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  tail call void %25(ptr noundef %ah, i32 noundef 19975, i32 noundef 55284) #6
  %26 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write, align 4
  tail call void %27(ptr noundef %ah, i32 noundef 52807, i32 noundef 55284) #6
  %28 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write, align 4
  tail call void %29(ptr noundef %ah, i32 noundef 85639, i32 noundef 55284) #6
  %30 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write, align 4
  tail call void %31(ptr noundef %ah, i32 noundef 118471, i32 noundef 55284) #6
  %32 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write, align 4
  tail call void %33(ptr noundef %ah, i32 noundef 50755, i32 noundef 55284) #6
  %34 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write, align 4
  tail call void %35(ptr noundef %ah, i32 noundef 83587, i32 noundef 55284) #6
  %36 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write, align 4
  tail call void %37(ptr noundef %ah, i32 noundef 16897, i32 noundef 55284) #6
  %38 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write, align 4
  tail call void %39(ptr noundef %ah, i32 noundef 49729, i32 noundef 55284) #6
  %40 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write, align 4
  tail call void %41(ptr noundef %ah, i32 noundef 82561, i32 noundef 55284) #6
  %42 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write, align 4
  tail call void %43(ptr noundef %ah, i32 noundef 115393, i32 noundef 55284) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i8 @ar9003_aic_cal_reset(ptr nocapture noundef writeonly %ah) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aic_cal_state = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 2, i32 1
  %0 = ptrtoint ptr %aic_cal_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %aic_cal_state, align 1
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ar9003_aic_calibration_single(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 1, i32 10
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and = lshr i32 %1, 16
  %2 = trunc i32 %and to i8
  %conv = and i8 %2, 127
  tail call fastcc void @ar9003_aic_cal_start(ptr noundef %ah, i8 noundef zeroext %conv)
  %call1 = tail call fastcc zeroext i8 @ar9003_aic_cal_continue(ptr noundef %ah, i1 noundef zeroext true)
  ret i8 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ar9003_hw_attach_aic_ops(ptr nocapture noundef writeonly %ah) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_aic_enabled = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 26
  %0 = ptrtoint ptr %is_aic_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ar9003_hw_is_aic_enabled, ptr %is_aic_enabled, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ar9003_hw_is_aic_enabled(ptr nocapture noundef readnone %ah) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.abs.i16(i16, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_aic.c", i32 482, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @com_att_db_table, !4, !"com_att_db_table", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_aic.c", i32 24, i32 17}
!5 = !{ptr @aic_lin_table, !6, !"aic_lin_table", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_aic.c", i32 28, i32 18}
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
