; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ar9003_rtt.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ar9003_rtt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.125, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.126, %union.anon.127, %union.anon.128, %union.anon.129, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
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
%struct.ath9k_hw_cal_data = type { i16, i16, i32, i32, i8, i8, [2 x i8], [3 x i16], [3 x [24 x i32]], [3 x i32], [8 x [3 x i32]], [3 x [16 x i32]], [3 x [6 x i32]], [6 x %struct.ath9k_nfcal_hist] }
%struct.ath9k_nfcal_hist = type { [5 x i16], i8, i16, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Load RTT value at idx %d, chain %d: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RTT value at idx %d, chain %d is: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not stop baseband\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 114, i32 4 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 182, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [47 x i8] c"../drivers/net/wireless/ath/ath9k/ar9003_rtt.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 246, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_rtt_enable(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %ah, i32 noundef 1, i32 noundef 42368) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_rtt_disable(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %ah, i32 noundef 0, i32 noundef 42368) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_rtt_set_mask(ptr noundef %ah, i32 noundef %rtt_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %shl = shl i32 %rtt_mask, 1
  %and = and i32 %shl, 126
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 42368, i32 noundef %and, i32 noundef 126) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ar9003_hw_rtt_force_restore(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef 42368, i32 noundef 128, i32 noundef 0, i32 noundef 1000) #2
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %call1 = tail call i32 %1(ptr noundef %ah, i32 noundef 42368, i32 noundef 128, i32 noundef 128) #2
  %call2 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef 42368, i32 noundef 128, i32 noundef 0, i32 noundef 1000) #2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %call2, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_rtt_load_hist(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 3
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc16.for.body_crit_edge, %entry
  %chain.038 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16.for.body_crit_edge ]
  %0 = ptrtoint ptr %rx_chainmask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_chainmask, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 1, %chain.038
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc16_crit_edge, label %for.cond1.preheader

for.body.for.inc16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc16

for.cond1.preheader:                              ; preds = %for.body
  %conv5 = trunc i32 %chain.038 to i8
  %2 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caldata, align 4
  %arrayidx6 = getelementptr %struct.ath9k_hw_cal_data, ptr %3, i32 0, i32 12, i32 %chain.038, i32 0
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6, align 4
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext %conv5, i32 noundef 0, i32 noundef %5)
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and7 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.cond1.preheader.for.inc_crit_edge, label %if.then9

for.cond1.preheader.for.inc_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.then9:                                         ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caldata, align 4
  %arrayidx14 = getelementptr %struct.ath9k_hw_cal_data, ptr %9, i32 0, i32 12, i32 %chain.038, i32 0
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %chain.038, i32 noundef %11) #2
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.cond1.preheader.for.inc_crit_edge
  %12 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %caldata, align 4
  %arrayidx6.1 = getelementptr %struct.ath9k_hw_cal_data, ptr %13, i32 0, i32 12, i32 %chain.038, i32 1
  %14 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.1, align 4
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext %conv5, i32 noundef 1, i32 noundef %15)
  %16 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_mask, align 4
  %and7.1 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1)
  %tobool8.not.1 = icmp eq i32 %and7.1, 0
  br i1 %tobool8.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.1

if.then9.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  %18 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %caldata, align 4
  %arrayidx14.1 = getelementptr %struct.ath9k_hw_cal_data, ptr %19, i32 0, i32 12, i32 %chain.038, i32 1
  %20 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14.1, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %chain.038, i32 noundef %21) #2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then9.1, %for.inc.for.inc.1_crit_edge
  %22 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %caldata, align 4
  %arrayidx6.2 = getelementptr %struct.ath9k_hw_cal_data, ptr %23, i32 0, i32 12, i32 %chain.038, i32 2
  %24 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.2, align 4
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext %conv5, i32 noundef 2, i32 noundef %25)
  %26 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_mask, align 4
  %and7.2 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2)
  %tobool8.not.2 = icmp eq i32 %and7.2, 0
  br i1 %tobool8.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then9.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.2

if.then9.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #4
  %28 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %caldata, align 4
  %arrayidx14.2 = getelementptr %struct.ath9k_hw_cal_data, ptr %29, i32 0, i32 12, i32 %chain.038, i32 2
  %30 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.2, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %chain.038, i32 noundef %31) #2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then9.2, %for.inc.1.for.inc.2_crit_edge
  %32 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %caldata, align 4
  %arrayidx6.3 = getelementptr %struct.ath9k_hw_cal_data, ptr %33, i32 0, i32 12, i32 %chain.038, i32 3
  %34 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx6.3, align 4
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext %conv5, i32 noundef 3, i32 noundef %35)
  %36 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug_mask, align 4
  %and7.3 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.3)
  %tobool8.not.3 = icmp eq i32 %and7.3, 0
  br i1 %tobool8.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then9.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.3

if.then9.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #4
  %38 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %caldata, align 4
  %arrayidx14.3 = getelementptr %struct.ath9k_hw_cal_data, ptr %39, i32 0, i32 12, i32 %chain.038, i32 3
  %40 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx14.3, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef %chain.038, i32 noundef %41) #2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then9.3, %for.inc.2.for.inc.3_crit_edge
  %42 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %caldata, align 4
  %arrayidx6.4 = getelementptr %struct.ath9k_hw_cal_data, ptr %43, i32 0, i32 12, i32 %chain.038, i32 4
  %44 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx6.4, align 4
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext %conv5, i32 noundef 4, i32 noundef %45)
  %46 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug_mask, align 4
  %and7.4 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.4)
  %tobool8.not.4 = icmp eq i32 %and7.4, 0
  br i1 %tobool8.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then9.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.4

if.then9.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #4
  %48 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %caldata, align 4
  %arrayidx14.4 = getelementptr %struct.ath9k_hw_cal_data, ptr %49, i32 0, i32 12, i32 %chain.038, i32 4
  %50 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx14.4, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef 4, i32 noundef %chain.038, i32 noundef %51) #2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then9.4, %for.inc.3.for.inc.4_crit_edge
  %52 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %caldata, align 4
  %arrayidx6.5 = getelementptr %struct.ath9k_hw_cal_data, ptr %53, i32 0, i32 12, i32 %chain.038, i32 5
  %54 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx6.5, align 4
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext %conv5, i32 noundef 5, i32 noundef %55)
  %56 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug_mask, align 4
  %and7.5 = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.5)
  %tobool8.not.5 = icmp eq i32 %and7.5, 0
  br i1 %tobool8.not.5, label %for.inc.4.for.inc16_crit_edge, label %if.then9.5

for.inc.4.for.inc16_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc16

if.then9.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #4
  %58 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %caldata, align 4
  %arrayidx14.5 = getelementptr %struct.ath9k_hw_cal_data, ptr %59, i32 0, i32 12, i32 %chain.038, i32 5
  %60 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx14.5, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef 5, i32 noundef %chain.038, i32 noundef %61) #2
  br label %for.inc16

for.inc16:                                        ; preds = %if.then9.5, %for.inc.4.for.inc16_crit_edge, %for.body.for.inc16_crit_edge
  %inc17 = add nuw nsw i32 %chain.038, 1
  %exitcond.not = icmp eq i32 %inc17, 3
  br i1 %exitcond.not, label %for.end18, label %for.inc16.for.body_crit_edge

for.inc16.for.body_crit_edge:                     ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end18:                                        ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext %chain, i32 noundef %index, i32 noundef %data28) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %data28, 4
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %chain)
  %tobool.not = icmp eq i8 %chain, 0
  %cond = select i1 %tobool.not, i32 41472, i32 45568
  %add = add nuw nsw i32 %cond, 904
  tail call void %1(ptr noundef %ah, i32 noundef %shl, i32 noundef %add) #2
  %shl1 = shl i32 %index, 2
  %and2 = and i32 %shl1, 28
  %or = or i32 %and2, 2
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %add8 = add nuw nsw i32 %cond, 900
  tail call void %3(ptr noundef %ah, i32 noundef %or, i32 noundef %add8) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #2
  %or9 = or i32 %and2, 3
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  tail call void %6(ptr noundef %ah, i32 noundef %or9, i32 noundef %add8) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #2
  %call = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %add8, i32 noundef 1, i32 noundef 0, i32 noundef 100) #2
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %and20 = or i32 %and2, 1
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  tail call void %9(ptr noundef %ah, i32 noundef %and20, i32 noundef %add8) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #2
  %call31 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %add8, i32 noundef 1, i32 noundef 0, i32 noundef 100) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_rtt_fill_hist(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 3
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %entry
  %chain.048 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17.for.body_crit_edge ]
  %0 = ptrtoint ptr %rx_chainmask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_chainmask, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 1, %chain.048
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc17_crit_edge, label %for.cond1.preheader

for.body.for.inc17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc17

for.cond1.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain.048)
  %2 = icmp eq i32 %chain.048, 0
  %cond.i = select i1 %2, i32 41472, i32 45568
  %add.i = add nuw nsw i32 %cond.i, 900
  %add16.i = add nuw nsw i32 %cond.i, 904
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chain.048)
  %cmp1.i = icmp ugt i32 %chain.048, 1
  %mul.i = shl i32 %chain.048, 10
  %add4.i = add nuw nsw i32 %mul.i, 90124
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.cond1.preheader
  %i.045 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.inc.for.body4_crit_edge ]
  %shl.i = shl i32 %i.045, 2
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  tail call void %4(ptr noundef %ah, i32 noundef %shl.i, i32 noundef %add.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #2
  %or1.i = or i32 %shl.i, 1
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  tail call void %7(ptr noundef %ah, i32 noundef %or1.i, i32 noundef %add.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #2
  %call.i = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %add.i, i32 noundef 1, i32 noundef 0, i32 noundef 100) #2
  br i1 %call.i, label %if.end.i, label %for.body4.ar9003_hw_rtt_fill_hist_entry.exit_crit_edge

for.body4.ar9003_hw_rtt_fill_hist_entry.exit_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #4
  br label %ar9003_hw_rtt_fill_hist_entry.exit

if.end.i:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #4
  %9 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah, align 4
  %call17.i = tail call i32 %10(ptr noundef %ah, i32 noundef %add16.i) #2
  %shr.i = lshr i32 %call17.i, 4
  br label %ar9003_hw_rtt_fill_hist_entry.exit

ar9003_hw_rtt_fill_hist_entry.exit:               ; preds = %if.end.i, %for.body4.ar9003_hw_rtt_fill_hist_entry.exit_crit_edge
  %retval.0.i = phi i32 [ %shr.i, %if.end.i ], [ 195890093, %for.body4.ar9003_hw_rtt_fill_hist_entry.exit_crit_edge ]
  %11 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caldata, align 4
  %arrayidx6 = getelementptr %struct.ath9k_hw_cal_data, ptr %12, i32 0, i32 12, i32 %chain.048, i32 %i.045
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %arrayidx6, align 4
  %14 = load ptr, ptr %caldata, align 4
  %cal_flags.i = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %cal_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %cal_flags.i, align 4
  %17 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i41 = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.045)
  %cmp.not.i = icmp ne i32 %i.045, 5
  %or.cond.i = or i1 %cmp1.i, %cmp.not.i
  %or.cond = select i1 %tobool.not.i41, i1 true, i1 %or.cond.i
  br i1 %or.cond, label %ar9003_hw_rtt_fill_hist_entry.exit.ar9003_hw_patch_rtt.exit_crit_edge, label %if.end3.i

ar9003_hw_rtt_fill_hist_entry.exit.ar9003_hw_patch_rtt.exit_crit_edge: ; preds = %ar9003_hw_rtt_fill_hist_entry.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %ar9003_hw_patch_rtt.exit

if.end3.i:                                        ; preds = %ar9003_hw_rtt_fill_hist_entry.exit
  %18 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ah, align 4
  %call5.i = tail call i32 %19(ptr noundef %ah, i32 noundef %add4.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %tobool6.not.i = icmp sgt i32 %call5.i, -1
  br i1 %tobool6.not.i, label %if.end3.i.ar9003_hw_patch_rtt.exit_crit_edge, label %if.end8.i

if.end3.i.ar9003_hw_patch_rtt.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ar9003_hw_patch_rtt.exit

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #4
  %20 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caldata, align 4
  %arrayidx.i = getelementptr %struct.ath9k_hw_cal_data, ptr %21, i32 0, i32 6, i32 %chain.048
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %arrayidx13.i = getelementptr %struct.ath9k_hw_cal_data, ptr %21, i32 0, i32 12, i32 %chain.048, i32 5
  %24 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx13.i, align 4
  %and14.i = and i32 %25, -64001
  store i32 %and14.i, ptr %arrayidx13.i, align 4
  %and15.i = and i32 %conv.i, 32
  %and16.i = shl nuw nsw i32 %conv.i, 7
  %shl.i43 = and i32 %and16.i, 3968
  %or.i = or i32 %shl.i43, %and15.i
  %shl17.i = shl nuw nsw i32 %or.i, 4
  %26 = load ptr, ptr %caldata, align 4
  %arrayidx21.i = getelementptr %struct.ath9k_hw_cal_data, ptr %26, i32 0, i32 12, i32 %chain.048, i32 5
  %27 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx21.i, align 4
  %or22.i = or i32 %shl17.i, %28
  store i32 %or22.i, ptr %arrayidx21.i, align 4
  br label %ar9003_hw_patch_rtt.exit

ar9003_hw_patch_rtt.exit:                         ; preds = %if.end8.i, %if.end3.i.ar9003_hw_patch_rtt.exit_crit_edge, %ar9003_hw_rtt_fill_hist_entry.exit.ar9003_hw_patch_rtt.exit_crit_edge
  %29 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_mask, align 4
  %and8 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %ar9003_hw_patch_rtt.exit.for.inc_crit_edge, label %if.then10

ar9003_hw_patch_rtt.exit.for.inc_crit_edge:       ; preds = %ar9003_hw_patch_rtt.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.then10:                                        ; preds = %ar9003_hw_patch_rtt.exit
  call void @__sanitizer_cov_trace_pc() #4
  %31 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %caldata, align 4
  %arrayidx15 = getelementptr %struct.ath9k_hw_cal_data, ptr %32, i32 0, i32 12, i32 %chain.048, i32 %i.045
  %33 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx15, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, i32 noundef %i.045, i32 noundef %chain.048, i32 noundef %34) #2
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %ar9003_hw_patch_rtt.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.for.inc17_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body4

for.inc.for.inc17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc17

for.inc17:                                        ; preds = %for.inc.for.inc17_crit_edge, %for.body.for.inc17_crit_edge
  %inc18 = add nuw nsw i32 %chain.048, 1
  %exitcond50.not = icmp eq i32 %inc18, 3
  br i1 %exitcond50.not, label %for.end19, label %for.inc17.for.body_crit_edge

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end19:                                        ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #4
  %35 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %caldata, align 4
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %36, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cal_flags) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_rtt_clear_hist(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %rx_chainmask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_chainmask, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.for.inc6_crit_edge, label %for.cond1.preheader

entry.for.inc6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc6

for.cond1.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 0, i32 noundef 2, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 0, i32 noundef 3, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 0, i32 noundef 4, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 0, i32 noundef 5, i32 noundef 0)
  br label %for.inc6

for.inc6:                                         ; preds = %for.cond1.preheader, %entry.for.inc6_crit_edge
  %3 = ptrtoint ptr %rx_chainmask to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rx_chainmask, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.1 = icmp eq i8 %5, 0
  br i1 %tobool.not.1, label %for.inc6.for.inc6.1_crit_edge, label %for.cond1.preheader.1

for.inc6.for.inc6.1_crit_edge:                    ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc6.1

for.cond1.preheader.1:                            ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 1, i32 noundef 1, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 1, i32 noundef 2, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 1, i32 noundef 3, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 1, i32 noundef 4, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 1, i32 noundef 5, i32 noundef 0)
  br label %for.inc6.1

for.inc6.1:                                       ; preds = %for.cond1.preheader.1, %for.inc6.for.inc6.1_crit_edge
  %6 = ptrtoint ptr %rx_chainmask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_chainmask, align 1
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.2 = icmp eq i8 %8, 0
  br i1 %tobool.not.2, label %for.inc6.1.for.inc6.2_crit_edge, label %for.cond1.preheader.2

for.inc6.1.for.inc6.2_crit_edge:                  ; preds = %for.inc6.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc6.2

for.cond1.preheader.2:                            ; preds = %for.inc6.1
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 2, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 2, i32 noundef 1, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 2, i32 noundef 2, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 2, i32 noundef 3, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 2, i32 noundef 4, i32 noundef 0)
  tail call fastcc void @ar9003_hw_rtt_load_hist_entry(ptr noundef %ah, i8 noundef zeroext 2, i32 noundef 5, i32 noundef 0)
  br label %for.inc6.2

for.inc6.2:                                       ; preds = %for.cond1.preheader.2, %for.inc6.1.for.inc6.2_crit_edge
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %9 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caldata, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %for.inc6.2.if.end12_crit_edge, label %if.then10

for.inc6.2.if.end12_crit_edge:                    ; preds = %for.inc6.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

if.then10:                                        ; preds = %for.inc6.2
  call void @__sanitizer_cov_trace_pc() #4
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %10, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %cal_flags) #2
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.inc6.2.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ar9003_hw_rtt_restore(ptr noundef %ah, ptr nocapture noundef readonly %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %0 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caldata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cal_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cal_flags, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.if.end44_crit_edge, label %if.then3

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end44

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %5 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %channelFlags, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not = icmp eq i16 %7, 0
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %8 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmw, align 4
  %caldac = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %caldac to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %caldac, align 2
  %conv7 = zext i8 %11 to i32
  %. = select i1 %tobool4.not, i32 19, i32 9
  %.110 = select i1 %tobool4.not, i32 33030144, i32 32256
  %shl25 = shl nuw nsw i32 %conv7, %.
  %and26 = and i32 %shl25, %.110
  %call27 = tail call i32 %9(ptr noundef %ah, i32 noundef 90124, i32 noundef %and26, i32 noundef %.110) #2
  %12 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw, align 4
  %14 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caldata, align 4
  %arrayidx32 = getelementptr %struct.ath9k_hw_cal_data, ptr %15, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %17 to i32
  %shl34 = shl nuw nsw i32 %conv33, %.
  %and35 = and i32 %shl34, %.110
  %call36 = tail call i32 %13(ptr noundef %ah, i32 noundef 91148, i32 noundef %and35, i32 noundef %.110) #2
  %rmw39 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %18 = ptrtoint ptr %rmw39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw39, align 4
  %call40 = tail call i32 %19(ptr noundef %ah, i32 noundef 91148, i32 noundef -2147483648, i32 noundef -2147483648) #2
  %20 = ptrtoint ptr %rmw39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw39, align 4
  %call43 = tail call i32 %21(ptr noundef %ah, i32 noundef 90124, i32 noundef -2147483648, i32 noundef -2147483648) #2
  br label %if.end44

if.end44:                                         ; preds = %if.then3, %if.end.if.end44_crit_edge
  %22 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %caldata, align 4
  %cal_flags46 = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %cal_flags46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %cal_flags46, align 4
  %and1.i92 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i92)
  %tobool48.not = icmp eq i32 %and1.i92, 0
  br i1 %tobool48.not, label %if.end44.cleanup_crit_edge, label %if.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %26 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i, align 4
  tail call void %27(ptr noundef %ah, i32 noundef 1, i32 noundef 42368) #2
  %28 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %caldata, align 4
  %cal_flags52 = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %cal_flags52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %cal_flags52, align 4
  %32 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not = icmp eq i32 %32, 0
  %rmw.i95 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %33 = ptrtoint ptr %rmw.i95 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmw.i95, align 4
  %.111 = select i1 %tobool54.not, i32 32, i32 96
  %call.i96 = tail call i32 %34(ptr noundef %ah, i32 noundef 42368, i32 noundef %.111, i32 noundef 126) #2
  %rfbus_req.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 17
  %35 = ptrtoint ptr %rfbus_req.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rfbus_req.i, align 4
  %call1.i = tail call zeroext i1 %36(ptr noundef %ah) #2
  br i1 %call1.i, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.3, ptr noundef %common.i, ptr noundef nonnull @.str.4) #2
  br label %fail

if.end61:                                         ; preds = %if.end50
  tail call void @ar9003_hw_rtt_load_hist(ptr noundef %ah)
  %call.i97 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef 42368, i32 noundef 128, i32 noundef 0, i32 noundef 1000) #2
  br i1 %call.i97, label %if.end.i, label %if.end61.fail_crit_edge

if.end61.fail_crit_edge:                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %fail

if.end.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  %rmw.i98 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %37 = ptrtoint ptr %rmw.i98 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmw.i98, align 4
  %call1.i99 = tail call i32 %38(ptr noundef %ah, i32 noundef 42368, i32 noundef 128, i32 noundef 128) #2
  %call2.i = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef 42368, i32 noundef 128, i32 noundef 0, i32 noundef 1000) #2
  br label %fail

fail:                                             ; preds = %if.end.i, %if.end61.fail_crit_edge, %if.then59
  %restore.0.off0 = phi i1 [ false, %if.then59 ], [ false, %if.end61.fail_crit_edge ], [ %call2.i, %if.end.i ]
  %rfbus_done.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 18
  %39 = ptrtoint ptr %rfbus_done.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rfbus_done.i, align 4
  tail call void %40(ptr noundef %ah) #2
  %41 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write.i, align 4
  tail call void %42(ptr noundef %ah, i32 noundef 0, i32 noundef 42368) #2
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end44.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %restore.0.off0, %fail ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end44.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_rtt.c", i32 114, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_rtt.c", i32 182, i32 4}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_rtt.c", i32 246, i32 3}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
