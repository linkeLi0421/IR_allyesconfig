; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ar9003_wow.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ar9003_wow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath9k_hw_wow_apply_pattern\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_wow_apply_pattern\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_wow_apply_pattern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_wow_apply_pattern:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_wow_apply_pattern\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_wow_apply_pattern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_hw_wow_wakeup\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_wow_wakeup\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_wow_wakeup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_wow_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_wow_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_wow_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_hw_wow_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_wow_enable\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_wow_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_wow_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_wow_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_wow_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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

@__kstrtab_ath9k_hw_wow_apply_pattern = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_wow_apply_pattern = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_wow_apply_pattern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_wow_apply_pattern to i32), ptr @__kstrtab_ath9k_hw_wow_apply_pattern, ptr @__kstrtabns_ath9k_hw_wow_apply_pattern }, section "___ksymtab+ath9k_hw_wow_apply_pattern", align 4
@__kstrtab_ath9k_hw_wow_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_wow_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_wow_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_wow_wakeup to i32), ptr @__kstrtab_ath9k_hw_wow_wakeup, ptr @__kstrtabns_ath9k_hw_wow_wakeup }, section "___ksymtab+ath9k_hw_wow_wakeup", align 4
@__kstrtab_ath9k_hw_wow_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_wow_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_wow_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_wow_enable to i32), ptr @__kstrtab_ath9k_hw_wow_enable, ptr @__kstrtabns_ath9k_hw_wow_enable }, section "___ksymtab+ath9k_hw_wow_enable", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Failed to stop Rx DMA in 10ms AR_CR=0x%08x AR_DIAG_SW=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 576, i64 640, i64 704]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 576, i64 640, i64 704]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [47 x i8] c"../drivers/net/wireless/ath/ath9k/ar9003_wow.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 47, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_ath9k_hw_wow_apply_pattern, ptr @__ksymtab_ath9k_hw_wow_enable, ptr @__ksymtab_ath9k_hw_wow_wakeup, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_hw_wow_apply_pattern(ptr noundef %ah, ptr nocapture noundef readonly %user_pattern, ptr nocapture noundef readonly %user_mask, i32 noundef %pattern_count, i32 noundef %pattern_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wow = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 127
  %max_patterns = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 127, i32 2
  %0 = ptrtoint ptr %max_patterns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_patterns, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pattern_count)
  %cmp.not = icmp sgt i32 %conv, %pattern_count
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %pattern_count)
  %cmp2 = icmp slt i32 %pattern_count, 8
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %sub = add nsw i32 %pattern_count, -8
  %sub.sink = select i1 %cmp2, i32 %pattern_count, i32 %sub
  %.sink = select i1 %cmp2, i32 33372, i32 33648
  %shl7 = shl nuw i32 1, %sub.sink
  %call8 = tail call i32 %3(ptr noundef %ah, i32 noundef %.sink, i32 noundef %shl7, i32 noundef 0) #2
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %shl13 = shl i32 %pattern_count, 8
  %add = add i32 %shl13, 57600
  br label %for.body

for.cond16.preheader:                             ; preds = %for.body
  %shl22 = shl i32 %pattern_count, 5
  %add23 = add i32 %shl22, 60416
  %4 = ptrtoint ptr %user_mask to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %mask_val.0.copyload = load i32, ptr %user_mask, align 1
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  tail call void %6(ptr noundef %ah, i32 noundef %mask_val.0.copyload, i32 noundef %add23) #2
  %add.ptr25 = getelementptr i8, ptr %user_mask, i32 4
  %7 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %mask_val.0.copyload.1 = load i32, ptr %add.ptr25, align 1
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  %add24.1 = add i32 %shl22, 60420
  tail call void %9(ptr noundef %ah, i32 noundef %mask_val.0.copyload.1, i32 noundef %add24.1) #2
  %add.ptr25.1 = getelementptr i8, ptr %user_mask, i32 8
  %10 = ptrtoint ptr %add.ptr25.1 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %mask_val.0.copyload.2 = load i32, ptr %add.ptr25.1, align 1
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  %add24.2 = add i32 %shl22, 60424
  tail call void %12(ptr noundef %ah, i32 noundef %mask_val.0.copyload.2, i32 noundef %add24.2) #2
  %add.ptr25.2 = getelementptr i8, ptr %user_mask, i32 12
  %13 = ptrtoint ptr %add.ptr25.2 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %mask_val.0.copyload.3 = load i32, ptr %add.ptr25.2, align 1
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %add24.3 = add i32 %shl22, 60428
  tail call void %15(ptr noundef %ah, i32 noundef %mask_val.0.copyload.3, i32 noundef %add24.3) #2
  %add.ptr25.3 = getelementptr i8, ptr %user_mask, i32 16
  %16 = ptrtoint ptr %add.ptr25.3 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %mask_val.0.copyload.4 = load i32, ptr %add.ptr25.3, align 1
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write, align 4
  %add24.4 = add i32 %shl22, 60432
  tail call void %18(ptr noundef %ah, i32 noundef %mask_val.0.copyload.4, i32 noundef %add24.4) #2
  %add.ptr25.4 = getelementptr i8, ptr %user_mask, i32 20
  %19 = ptrtoint ptr %add.ptr25.4 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %mask_val.0.copyload.5 = load i32, ptr %add.ptr25.4, align 1
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  %add24.5 = add i32 %shl22, 60436
  tail call void %21(ptr noundef %ah, i32 noundef %mask_val.0.copyload.5, i32 noundef %add24.5) #2
  %add.ptr25.5 = getelementptr i8, ptr %user_mask, i32 24
  %22 = ptrtoint ptr %add.ptr25.5 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %mask_val.0.copyload.6 = load i32, ptr %add.ptr25.5, align 1
  %23 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write, align 4
  %add24.6 = add i32 %shl22, 60440
  tail call void %24(ptr noundef %ah, i32 noundef %mask_val.0.copyload.6, i32 noundef %add24.6) #2
  %add.ptr25.6 = getelementptr i8, ptr %user_mask, i32 28
  %25 = ptrtoint ptr %add.ptr25.6 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %mask_val.0.copyload.7 = load i32, ptr %add.ptr25.6, align 1
  %26 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write, align 4
  %add24.7 = add i32 %shl22, 60444
  tail call void %27(ptr noundef %ah, i32 noundef %mask_val.0.copyload.7, i32 noundef %add24.7) #2
  br i1 %cmp2, label %if.end41, label %if.else72

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0168 = phi i32 [ 0, %if.end ], [ %add15, %for.body.for.body_crit_edge ]
  %user_pattern.addr.0167 = phi ptr [ %user_pattern, %if.end ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %28 = ptrtoint ptr %user_pattern.addr.0167 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %pattern_val.0.copyload = load i32, ptr %user_pattern.addr.0167, align 1
  %29 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write, align 4
  %add14 = add nuw nsw i32 %add, %i.0168
  tail call void %30(ptr noundef %ah, i32 noundef %pattern_val.0.copyload, i32 noundef %add14) #2
  %add.ptr = getelementptr i8, ptr %user_pattern.addr.0167, i32 4
  %add15 = add nuw nsw i32 %i.0168, 4
  %cmp10 = icmp ult i32 %i.0168, 252
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.cond16.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

if.end41:                                         ; preds = %for.cond16.preheader
  %add32 = add nsw i32 %pattern_count, 8
  %shl33 = shl nuw nsw i32 1, %add32
  %31 = ptrtoint ptr %wow to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wow, align 4
  %or = or i32 %32, %shl33
  store i32 %or, ptr %wow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %pattern_count)
  %cmp42 = icmp slt i32 %pattern_count, 4
  %and = and i32 %pattern_len, 255
  %and45 = shl i32 %pattern_count, 3
  br i1 %cmp42, label %if.then44, label %if.then59

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #4
  %sub46 = and i32 %and45, 24
  %shl47 = xor i32 %sub46, 24
  %shl48 = shl i32 %and, %shl47
  %shl52 = shl i32 255, %shl47
  %rmw54 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %33 = ptrtoint ptr %rmw54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmw54, align 4
  %call55 = tail call i32 %34(ptr noundef %ah, i32 noundef 33632, i32 noundef %shl48, i32 noundef %shl52) #2
  br label %cleanup

if.then59:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #4
  %sub62 = and i32 %and45, 56
  %shl63 = xor i32 %sub62, 56
  %shl64 = shl i32 %and, %shl63
  %shl68 = shl i32 255, %shl63
  %rmw70 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %35 = ptrtoint ptr %rmw70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmw70, align 4
  %call71 = tail call i32 %36(ptr noundef %ah, i32 noundef 33636, i32 noundef %shl64, i32 noundef %shl68) #2
  br label %cleanup

if.else72:                                        ; preds = %for.cond16.preheader
  %shl38 = shl nuw i32 1, %pattern_count
  %wow_event_mask2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 127, i32 1
  %37 = ptrtoint ptr %wow_event_mask2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wow_event_mask2, align 4
  %or40 = or i32 %38, %shl38
  store i32 %or40, ptr %wow_event_mask2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %pattern_count)
  %cmp73 = icmp ult i32 %pattern_count, 12
  br i1 %cmp73, label %if.then75, label %if.else88

if.then75:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #4
  %and76 = and i32 %pattern_len, 255
  %pattern_count.not = shl nuw nsw i32 %pattern_count, 3
  %sub78 = and i32 %pattern_count.not, 88
  %shl79 = xor i32 %sub78, 88
  %shl80 = shl i32 %and76, %shl79
  %shl84 = shl i32 255, %shl79
  %rmw86 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %39 = ptrtoint ptr %rmw86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmw86, align 4
  %call87 = tail call i32 %40(ptr noundef %ah, i32 noundef 33664, i32 noundef %shl80, i32 noundef %shl84) #2
  br label %cleanup

if.else88:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %pattern_count)
  %cmp89 = icmp ult i32 %pattern_count, 16
  br i1 %cmp89, label %if.then91, label %if.else88.cleanup_crit_edge

if.else88.cleanup_crit_edge:                      ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then91:                                        ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #4
  %and92 = and i32 %pattern_len, 255
  %and93 = shl nuw nsw i32 %pattern_count, 3
  %sub94 = and i32 %and93, 120
  %shl95 = xor i32 %sub94, 120
  %shl96 = shl i32 %and92, %shl95
  %shl100 = shl i32 255, %shl95
  %rmw102 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %41 = ptrtoint ptr %rmw102 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw102, align 4
  %call103 = tail call i32 %42(ptr noundef %ah, i32 noundef 33668, i32 noundef %shl96, i32 noundef %shl100) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.else88.cleanup_crit_edge, %if.then75, %if.then59, %if.then44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %if.else88.cleanup_crit_edge ], [ 0, %if.then91 ], [ 0, %if.then75 ], [ 0, %if.then44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_hw_wow_wakeup(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 33372) #2
  %and = and i32 %call, 3342080
  %wow = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 127
  %2 = ptrtoint ptr %wow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wow, align 4
  %and1 = and i32 %and, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %and2 = lshr i32 %and1, 16
  %4 = and i32 %and2, 2
  %and5 = and i32 %and1, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp ne i32 %and5, 0
  %or8 = zext i1 %tobool6.not to i32
  %and10 = lshr i32 %and1, 18
  %5 = and i32 %and10, 4
  %6 = and i32 %and10, 8
  %wow_status.1 = or i32 %5, %4
  %7 = or i32 %wow_status.1, %6
  %8 = or i32 %7, %or8
  br label %if.end20

if.end20:                                         ; preds = %if.then, %entry.if.end20_crit_edge
  %wow_status.3 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ %8, %if.then ]
  %9 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah, align 4
  %call23 = tail call i32 %10(ptr noundef %ah, i32 noundef 33648) #2
  %wow_event_mask2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 127, i32 1
  %11 = ptrtoint ptr %wow_event_mask2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wow_event_mask2, align 4
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %13 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmw, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %16)
  %cmp = icmp eq i32 %16, 768
  %cond = select i1 %cmp, i32 16388, i32 16404
  %call36 = tail call i32 %14(ptr noundef %ah, i32 noundef %cond, i32 noundef 2097152, i32 noundef 251658240) #2
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write, align 4
  %19 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ah, align 4
  %call40 = tail call i32 %20(ptr noundef %ah, i32 noundef 33372) #2
  %and41 = and i32 %call40, -3473664
  tail call void %18(ptr noundef %ah, i32 noundef %and41, i32 noundef 33372) #2
  %21 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write, align 4
  %23 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ah, align 4
  %call46 = tail call i32 %24(ptr noundef %ah, i32 noundef 33648) #2
  %and47 = and i32 %call46, -256
  tail call void %22(ptr noundef %ah, i32 noundef %and47, i32 noundef 33648) #2
  %25 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write, align 4
  tail call void %26(ptr noundef %ah, i32 noundef 1792, i32 noundef 32792) #2
  %is_pciexpress = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 13
  %27 = ptrtoint ptr %is_pciexpress to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_pciexpress, align 2, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool50.not = icmp eq i8 %28, 0
  br i1 %tobool50.not, label %if.end20.if.end52_crit_edge, label %if.then51

if.end20.if.end52_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

if.then51:                                        ; preds = %if.end20
  %aspm_enabled.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 14
  %29 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %aspm_enabled.i, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then51.if.end52_crit_edge, label %if.end.i

if.then51.if.end52_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

if.end.i:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #4
  %ops.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63
  %31 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i, align 4
  tail call void %32(ptr noundef %ah, i1 noundef zeroext false) #2
  br label %if.end52

if.end52:                                         ; preds = %if.end.i, %if.then51.if.end52_crit_edge, %if.end20.if.end52_crit_edge
  %33 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %macVersion, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %if.end52.if.end71_crit_edge [
    i32 640, label %if.end52.if.then63_crit_edge
    i32 704, label %if.end52.if.then63_crit_edge119
    i32 576, label %if.end52.if.then63_crit_edge120
  ]

if.end52.if.then63_crit_edge120:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then63

if.end52.if.then63_crit_edge119:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then63

if.end52.if.then63_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then63

if.end52.if.end71_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end71

if.then63:                                        ; preds = %if.end52.if.then63_crit_edge, %if.end52.if.then63_crit_edge119, %if.end52.if.then63_crit_edge120
  %36 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ah, align 4
  %call66 = tail call i32 %37(ptr noundef %ah, i32 noundef 33696) #2
  %and67 = and i32 %call66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then69, label %if.then63.if.end71_crit_edge

if.then63.if.end71_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end71

if.then69:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @ath9k_hw_gen_timer_start_tsf2(ptr noundef %ah) #2
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then63.if.end71_crit_edge, %if.end52.if.end71_crit_edge
  %and24 = and i32 %call23, 65280
  %and26 = and i32 %and24, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp ne i32 %and26, 0
  %or32 = zext i1 %tobool27.not to i32
  %wow_status.4 = or i32 %wow_status.3, %or32
  %38 = ptrtoint ptr %wow to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %wow, align 4
  %39 = ptrtoint ptr %wow_event_mask2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %wow_event_mask2, align 4
  ret i32 %wow_status.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_gen_timer_start_tsf2(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_wow_enable(ptr noundef %ah, i32 noundef %pattern_enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wow = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 127
  %0 = ptrtoint ptr %wow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wow, align 4
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %5)
  %cmp = icmp eq i32 %5, 768
  %cond = select i1 %cmp, i32 16388, i32 16404
  %call = tail call i32 %3(ptr noundef %ah, i32 noundef %cond, i32 noundef 274759680, i32 noundef 0) #2
  %6 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw, align 4
  %8 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %9)
  %cmp6 = icmp eq i32 %9, 768
  %cond7 = select i1 %cmp6, i32 16388, i32 16404
  %call8 = tail call i32 %7(ptr noundef %ah, i32 noundef %cond7, i32 noundef 0, i32 noundef 2097152) #2
  %10 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw, align 4
  %call11 = tail call i32 %11(ptr noundef %ah, i32 noundef 33372, i32 noundef 536870912, i32 noundef 0) #2
  %12 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw, align 4
  %call14 = tail call i32 %13(ptr noundef %ah, i32 noundef 33376, i32 noundef 526626, i32 noundef 0) #2
  %and = and i32 %pattern_enable, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %write17 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %14 = ptrtoint ptr %write17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write17, align 4
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %15(ptr noundef %ah, i32 noundef 1073741824, i32 noundef 33396) #2
  br label %if.else22

if.end:                                           ; preds = %entry
  tail call void %15(ptr noundef %ah, i32 noundef -1, i32 noundef 33396) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pattern_enable)
  %tobool18.not = icmp eq i32 %pattern_enable, 0
  br i1 %tobool18.not, label %if.end.if.end25_crit_edge, label %if.end.if.else22_crit_edge

if.end.if.else22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else22

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end25

if.else22:                                        ; preds = %if.end.if.else22_crit_edge, %if.end.thread
  %write24 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.end.if.end25_crit_edge
  %write24.sink = phi ptr [ %write24, %if.else22 ], [ %write17, %if.end.if.end25_crit_edge ]
  %.sink = phi i32 [ 28800, %if.else22 ], [ -1, %if.end.if.end25_crit_edge ]
  %16 = ptrtoint ptr %write24.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write24.sink, align 4
  tail call void %17(ptr noundef %ah, i32 noundef %.sink, i32 noundef 33400) #2
  %write27 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %18 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write27, align 4
  tail call void %19(ptr noundef %ah, i32 noundef 4000, i32 noundef 33416) #2
  %macaddr.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9
  %20 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %sta_mac_addr.sroa.0.0.copyload.i = load i8, ptr %macaddr.i, align 4
  %sta_mac_addr.sroa.5.0.arraydecay1.sroa_idx.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9, i32 1
  %21 = ptrtoint ptr %sta_mac_addr.sroa.5.0.arraydecay1.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %sta_mac_addr.sroa.5.0.copyload.i = load i8, ptr %sta_mac_addr.sroa.5.0.arraydecay1.sroa_idx.i, align 1
  %sta_mac_addr.sroa.7.0.arraydecay1.sroa_idx.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9, i32 2
  %22 = ptrtoint ptr %sta_mac_addr.sroa.7.0.arraydecay1.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %sta_mac_addr.sroa.7.0.copyload.i = load i8, ptr %sta_mac_addr.sroa.7.0.arraydecay1.sroa_idx.i, align 2
  %sta_mac_addr.sroa.9.0.arraydecay1.sroa_idx.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9, i32 3
  %23 = ptrtoint ptr %sta_mac_addr.sroa.9.0.arraydecay1.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %sta_mac_addr.sroa.9.0.copyload.i = load i8, ptr %sta_mac_addr.sroa.9.0.arraydecay1.sroa_idx.i, align 1
  %sta_mac_addr.sroa.11.0.arraydecay1.sroa_idx.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9, i32 4
  %24 = ptrtoint ptr %sta_mac_addr.sroa.11.0.arraydecay1.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %sta_mac_addr.sroa.11.0.copyload.i = load i8, ptr %sta_mac_addr.sroa.11.0.arraydecay1.sroa_idx.i, align 4
  %sta_mac_addr.sroa.13.0.arraydecay1.sroa_idx.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9, i32 5
  %25 = ptrtoint ptr %sta_mac_addr.sroa.13.0.arraydecay1.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %sta_mac_addr.sroa.13.0.copyload.i = load i8, ptr %sta_mac_addr.sroa.13.0.arraydecay1.sroa_idx.i, align 1
  %curbssid.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 10
  %26 = ptrtoint ptr %curbssid.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %ap_mac_addr.sroa.0.0.copyload.i = load i8, ptr %curbssid.i, align 2
  %ap_mac_addr.sroa.6.0.arraydecay3.sroa_idx.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 10, i32 1
  %27 = ptrtoint ptr %ap_mac_addr.sroa.6.0.arraydecay3.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %ap_mac_addr.sroa.6.0.copyload.i = load i8, ptr %ap_mac_addr.sroa.6.0.arraydecay3.sroa_idx.i, align 1
  %ap_mac_addr.sroa.9.0.arraydecay3.sroa_idx.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 10, i32 2
  %28 = ptrtoint ptr %ap_mac_addr.sroa.9.0.arraydecay3.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %ap_mac_addr.sroa.9.0.copyload.i = load i8, ptr %ap_mac_addr.sroa.9.0.arraydecay3.sroa_idx.i, align 2
  %ap_mac_addr.sroa.12.0.arraydecay3.sroa_idx.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 10, i32 3
  %29 = ptrtoint ptr %ap_mac_addr.sroa.12.0.arraydecay3.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %ap_mac_addr.sroa.12.0.copyload.i = load i8, ptr %ap_mac_addr.sroa.12.0.arraydecay3.sroa_idx.i, align 1
  %ap_mac_addr.sroa.15.0.arraydecay3.sroa_idx.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 10, i32 4
  %30 = ptrtoint ptr %ap_mac_addr.sroa.15.0.arraydecay3.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %ap_mac_addr.sroa.15.0.copyload.i = load i8, ptr %ap_mac_addr.sroa.15.0.arraydecay3.sroa_idx.i, align 2
  %ap_mac_addr.sroa.18.0.arraydecay3.sroa_idx.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 10, i32 5
  %31 = ptrtoint ptr %ap_mac_addr.sroa.18.0.arraydecay3.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %ap_mac_addr.sroa.18.0.copyload.i = load i8, ptr %ap_mac_addr.sroa.18.0.arraydecay3.sroa_idx.i, align 1
  %txchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %32 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %txchainmask.i, align 4
  %conv.i = zext i8 %33 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 2
  %curchan.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %34 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %curchan.i, align 4
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %channelFlags.i, align 2
  %38 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i = icmp eq i16 %38, 0
  %spec.select.i = select i1 %tobool.not.i, i32 27, i32 11
  %39 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write27, align 4
  tail call void %40(ptr noundef %ah, i32 noundef 4128796, i32 noundef 57344) #2
  %41 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write27, align 4
  tail call void %42(ptr noundef %ah, i32 noundef 0, i32 noundef 57348) #2
  %43 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write27, align 4
  tail call void %44(ptr noundef %ah, i32 noundef 983040, i32 noundef 57352) #2
  %45 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write27, align 4
  tail call void %46(ptr noundef %ah, i32 noundef %spec.select.i, i32 noundef 57356) #2
  %47 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write27, align 4
  tail call void %48(ptr noundef %ah, i32 noundef 0, i32 noundef 57360) #2
  %49 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write27, align 4
  tail call void %50(ptr noundef %ah, i32 noundef 0, i32 noundef 57364) #2
  %51 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write27, align 4
  tail call void %52(ptr noundef %ah, i32 noundef 0, i32 noundef 57368) #2
  %53 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write27, align 4
  tail call void %54(ptr noundef %ah, i32 noundef %shl.i, i32 noundef 57372) #2
  %55 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write27, align 4
  tail call void %56(ptr noundef %ah, i32 noundef 0, i32 noundef 57376) #2
  %57 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write27, align 4
  tail call void %58(ptr noundef %ah, i32 noundef 0, i32 noundef 57380) #2
  %59 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write27, align 4
  tail call void %60(ptr noundef %ah, i32 noundef 0, i32 noundef 57384) #2
  %61 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write27, align 4
  tail call void %62(ptr noundef %ah, i32 noundef 0, i32 noundef 57388) #2
  %63 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %macVersion, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %64, label %if.end25.ath9k_wow_create_keep_alive_pattern.exit_crit_edge [
    i32 640, label %land.lhs.true.i
    i32 704, label %if.end25.if.then92.i_crit_edge
  ]

if.end25.if.then92.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then92.i

if.end25.ath9k_wow_create_keep_alive_pattern.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #4
  br label %ath9k_wow_create_keep_alive_pattern.exit

land.lhs.true.i:                                  ; preds = %if.end25
  %macRev.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %66 = ptrtoint ptr %macRev.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %macRev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %67)
  %cmp86.i = icmp ugt i16 %67, 1
  br i1 %cmp86.i, label %land.lhs.true.i.if.then92.i_crit_edge, label %land.lhs.true.i.ath9k_wow_create_keep_alive_pattern.exit_crit_edge

land.lhs.true.i.ath9k_wow_create_keep_alive_pattern.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ath9k_wow_create_keep_alive_pattern.exit

land.lhs.true.i.if.then92.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then92.i

if.then92.i:                                      ; preds = %land.lhs.true.i.if.then92.i_crit_edge, %if.end25.if.then92.i_crit_edge
  %68 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write27, align 4
  tail call void %69(ptr noundef %ah, i32 noundef 0, i32 noundef 57392) #2
  br label %ath9k_wow_create_keep_alive_pattern.exit

ath9k_wow_create_keep_alive_pattern.exit:         ; preds = %if.then92.i, %land.lhs.true.i.ath9k_wow_create_keep_alive_pattern.exit_crit_edge, %if.end25.ath9k_wow_create_keep_alive_pattern.exit_crit_edge
  %wow_ka_data_word0.0.i = phi i32 [ 57396, %if.then92.i ], [ 57392, %land.lhs.true.i.ath9k_wow_create_keep_alive_pattern.exit_crit_edge ], [ 57392, %if.end25.ath9k_wow_create_keep_alive_pattern.exit_crit_edge ]
  %conv53.i = zext i8 %sta_mac_addr.sroa.9.0.copyload.i to i32
  %shl54.i = shl nuw nsw i32 %conv53.i, 8
  %conv57.i = zext i8 %sta_mac_addr.sroa.7.0.copyload.i to i32
  %or51.i = or i32 %shl54.i, %conv57.i
  %conv49.i = zext i8 %sta_mac_addr.sroa.11.0.copyload.i to i32
  %shl50.i = shl nuw nsw i32 %conv49.i, 16
  %or55.i = or i32 %or51.i, %shl50.i
  %conv46.i = zext i8 %sta_mac_addr.sroa.13.0.copyload.i to i32
  %shl47.i = shl nuw i32 %conv46.i, 24
  %or58.i = or i32 %or55.i, %shl47.i
  %conv38.i = zext i8 %ap_mac_addr.sroa.18.0.copyload.i to i32
  %shl39.i = shl nuw nsw i32 %conv38.i, 8
  %conv42.i = zext i8 %ap_mac_addr.sroa.15.0.copyload.i to i32
  %or36.i = or i32 %shl39.i, %conv42.i
  %conv34.i = zext i8 %sta_mac_addr.sroa.0.0.copyload.i to i32
  %shl35.i = shl nuw nsw i32 %conv34.i, 16
  %conv31.i = zext i8 %sta_mac_addr.sroa.5.0.copyload.i to i32
  %shl32.i = shl nuw i32 %conv31.i, 24
  %or40.i = or i32 %shl32.i, %shl35.i
  %or43.i = or i32 %or40.i, %or36.i
  %conv23.i = zext i8 %ap_mac_addr.sroa.6.0.copyload.i to i32
  %shl24.i = shl nuw nsw i32 %conv23.i, 8
  %conv27.i = zext i8 %ap_mac_addr.sroa.0.0.copyload.i to i32
  %or.i = or i32 %shl24.i, %conv27.i
  %conv20.i = zext i8 %ap_mac_addr.sroa.9.0.copyload.i to i32
  %shl21.i = shl nuw nsw i32 %conv20.i, 16
  %or25.i = or i32 %or.i, %shl21.i
  %conv17.i = zext i8 %ap_mac_addr.sroa.12.0.copyload.i to i32
  %shl18.i = shl nuw i32 %conv17.i, 24
  %or28.i = or i32 %or25.i, %shl18.i
  %70 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write27, align 4
  tail call void %71(ptr noundef %ah, i32 noundef 3998024, i32 noundef %wow_ka_data_word0.0.i) #2
  %72 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write27, align 4
  %add108.1.i = add nuw nsw i32 %wow_ka_data_word0.0.i, 4
  tail call void %73(ptr noundef %ah, i32 noundef %or28.i, i32 noundef %add108.1.i) #2
  %74 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write27, align 4
  %add108.2.i = or i32 %wow_ka_data_word0.0.i, 8
  tail call void %75(ptr noundef %ah, i32 noundef %or43.i, i32 noundef %add108.2.i) #2
  %76 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write27, align 4
  %add108.3.i = add nuw nsw i32 %wow_ka_data_word0.0.i, 12
  tail call void %77(ptr noundef %ah, i32 noundef %or58.i, i32 noundef %add108.3.i) #2
  %78 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write27, align 4
  %add108.4.i = add nuw nsw i32 %wow_ka_data_word0.0.i, 16
  tail call void %79(ptr noundef %ah, i32 noundef %or28.i, i32 noundef %add108.4.i) #2
  %80 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write27, align 4
  %add108.5.i = add nuw nsw i32 %wow_ka_data_word0.0.i, 20
  tail call void %81(ptr noundef %ah, i32 noundef %or36.i, i32 noundef %add108.5.i) #2
  %82 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ah, align 4
  %call29 = tail call i32 %83(ptr noundef %ah, i32 noundef 33404) #2
  %and31 = and i32 %pattern_enable, 4
  %and34 = and i32 %call29, -4
  %84 = shl nuw nsw i32 %and31, 18
  %85 = or i32 %1, %84
  %86 = lshr exact i32 %and31, 1
  %87 = or i32 %and34, %86
  %88 = xor i32 %87, 2
  %89 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write27, align 4
  tail call void %90(ptr noundef %ah, i32 noundef %88, i32 noundef 33404) #2
  %91 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rmw, align 4
  %call42 = tail call i32 %92(ptr noundef %ah, i32 noundef 32792, i32 noundef 8192, i32 noundef 65280) #2
  br i1 %tobool.not, label %if.else50, label %if.then45

if.then45:                                        ; preds = %ath9k_wow_create_keep_alive_pattern.exit
  call void @__sanitizer_cov_trace_pc() #4
  %or46 = or i32 %85, 2097152
  %93 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmw, align 4
  %call49 = tail call i32 %94(ptr noundef %ah, i32 noundef 33392, i32 noundef 1, i32 noundef 0) #2
  br label %if.end54

if.else50:                                        ; preds = %ath9k_wow_create_keep_alive_pattern.exit
  call void @__sanitizer_cov_trace_pc() #4
  %95 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rmw, align 4
  %call53 = tail call i32 %96(ptr noundef %ah, i32 noundef 33392, i32 noundef 0, i32 noundef 1) #2
  br label %if.end54

if.end54:                                         ; preds = %if.else50, %if.then45
  %wow_event_mask.1 = phi i32 [ %or46, %if.then45 ], [ %85, %if.else50 ]
  %97 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ah, align 4
  %call57 = tail call i32 %98(ptr noundef %ah, i32 noundef 33372) #2
  %and59 = and i32 %pattern_enable, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %or62 = or i32 %call57, 327680
  %or58 = and i32 %call57, -327681
  %and65 = or i32 %or58, 262144
  %magic_pattern.0 = select i1 %tobool60.not, i32 %and65, i32 %or62
  %99 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write27, align 4
  tail call void %100(ptr noundef %ah, i32 noundef %magic_pattern.0, i32 noundef 33372) #2
  %101 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write27, align 4
  tail call void %102(ptr noundef %ah, i32 noundef 65535, i32 noundef 33640) #2
  %103 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ah, align 4
  %105 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %106)
  %cmp75 = icmp eq i32 %106, 768
  %cond76 = select i1 %cmp75, i32 16388, i32 16404
  %call77 = tail call i32 %104(ptr noundef %ah, i32 noundef %cond76) #2
  %or78 = and i32 %call77, -256409601
  %and79 = or i32 %or78, 255885312
  %107 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %macVersion, align 4
  %109 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %108)
  %cmp91 = icmp eq i32 %108, 768
  %cond92 = select i1 %cmp91, i32 16388, i32 16404
  tail call void %110(ptr noundef %ah, i32 noundef %and79, i32 noundef %cond92) #2
  %111 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rmw, align 4
  %call95 = tail call i32 %112(ptr noundef %ah, i32 noundef 32772, i32 noundef 0, i32 noundef 536870912) #2
  %113 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rmw, align 4
  %call98 = tail call i32 %114(ptr noundef %ah, i32 noundef 101384, i32 noundef 8192, i32 noundef 0) #2
  %is_pciexpress.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 13
  %115 = ptrtoint ptr %is_pciexpress.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %is_pciexpress.i, align 2, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i182 = icmp eq i8 %116, 0
  br i1 %tobool.not.i182, label %if.end54.ath9k_hw_wow_set_arwr_reg.exit_crit_edge, label %if.end.i

if.end54.ath9k_hw_wow_set_arwr_reg.exit_crit_edge: ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #4
  br label %ath9k_hw_wow_set_arwr_reg.exit

if.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #4
  %117 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ah, align 4
  %119 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %120)
  %cmp.i = icmp eq i32 %120, 768
  %cond.i = select i1 %cmp.i, i32 16580, i32 16388
  %call.i = tail call i32 %118(ptr noundef %ah, i32 noundef %cond.i) #2
  %and.i = and i32 %call.i, -2392065
  %or1.i = or i32 %and.i, 2359296
  %121 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write27, align 4
  %123 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %124)
  %cmp5.i = icmp eq i32 %124, 768
  %cond6.i = select i1 %cmp5.i, i32 16580, i32 16388
  tail call void %122(ptr noundef %ah, i32 noundef %or1.i, i32 noundef %cond6.i) #2
  br label %ath9k_hw_wow_set_arwr_reg.exit

ath9k_hw_wow_set_arwr_reg.exit:                   ; preds = %if.end.i, %if.end54.ath9k_hw_wow_set_arwr_reg.exit_crit_edge
  %btcoex_enabled.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 27
  %125 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %btcoex_enabled.i, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i185 = icmp eq i8 %126, 0
  br i1 %tobool.not.i185, label %ath9k_hw_wow_set_arwr_reg.exit.if.end103_crit_edge, label %ath9k_hw_mci_is_enabled.exit

ath9k_hw_wow_set_arwr_reg.exit.if.end103_crit_edge: ; preds = %ath9k_hw_wow_set_arwr_reg.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end103

ath9k_hw_mci_is_enabled.exit:                     ; preds = %ath9k_hw_wow_set_arwr_reg.exit
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %127 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %caps.i, align 4
  %and.i186 = and i32 %128, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186)
  %tobool1.i.not = icmp eq i32 %and.i186, 0
  br i1 %tobool1.i.not, label %ath9k_hw_mci_is_enabled.exit.if.end103_crit_edge, label %if.then100

ath9k_hw_mci_is_enabled.exit.if.end103_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end103

if.then100:                                       ; preds = %ath9k_hw_mci_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #4
  %129 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write27, align 4
  tail call void %130(ptr noundef %ah, i32 noundef 2, i32 noundef 28724) #2
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %ath9k_hw_mci_is_enabled.exit.if.end103_crit_edge, %ath9k_hw_wow_set_arwr_reg.exit.if.end103_crit_edge
  %131 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmw, align 4
  %call106 = tail call i32 %132(ptr noundef %ah, i32 noundef 33744, i32 noundef 0, i32 noundef 32) #2
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %133 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %btcoex_enabled.i, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i.i.i = icmp eq i8 %134, 0
  br i1 %tobool.not.i.i.i, label %if.end103.set.i.i_crit_edge, label %ath9k_hw_mci_is_enabled.exit.i.i

if.end103.set.i.i_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #4
  br label %set.i.i

ath9k_hw_mci_is_enabled.exit.i.i:                 ; preds = %if.end103
  %caps.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %135 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %caps.i.i.i, align 4
  %and.i.i.i = and i32 %136, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.i.not.i.i, label %ath9k_hw_mci_is_enabled.exit.i.i.set.i.i_crit_edge, label %if.end.i.i

ath9k_hw_mci_is_enabled.exit.i.i.set.i.i_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %set.i.i

if.end.i.i:                                       ; preds = %ath9k_hw_mci_is_enabled.exit.i.i
  %call1.i.i = tail call i32 @ar9003_mci_state(ptr noundef %ah, i32 noundef 35) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.set.i.i_crit_edge, label %if.end.i.i.ath9k_hw_set_sta_powersave.exit.i_crit_edge

if.end.i.i.ath9k_hw_set_sta_powersave.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ath9k_hw_set_sta_powersave.exit.i

if.end.i.i.set.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %set.i.i

set.i.i:                                          ; preds = %if.end.i.i.set.i.i_crit_edge, %ath9k_hw_mci_is_enabled.exit.i.i.set.i.i_crit_edge, %if.end103.set.i.i_crit_edge
  %137 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rmw, align 4
  %call4.i.i = tail call i32 %138(ptr noundef %ah, i32 noundef 32772, i32 noundef 262144, i32 noundef 0) #2
  br label %ath9k_hw_set_sta_powersave.exit.i

ath9k_hw_set_sta_powersave.exit.i:                ; preds = %set.i.i, %if.end.i.i.ath9k_hw_set_sta_powersave.exit.i_crit_edge
  %139 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write27, align 4
  tail call void %140(ptr noundef %ah, i32 noundef 32, i32 noundef 8) #2
  %141 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %142)
  %cmp.i189 = icmp ugt i32 %142, 447
  %cond.i190 = select i1 %cmp.i189, i32 12, i32 4
  %call1.i = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef 8, i32 noundef %cond.i190, i32 noundef 0, i32 noundef 100000) #2
  br i1 %call1.i, label %if.end.i191, label %if.then.i

if.then.i:                                        ; preds = %ath9k_hw_set_sta_powersave.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %143 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ah, align 4
  %call3.i = tail call i32 %144(ptr noundef %ah, i32 noundef 8) #2
  %145 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ah, align 4
  %call6.i = tail call i32 %146(ptr noundef %ah, i32 noundef 32840) #2
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.1, i32 noundef %call3.i, i32 noundef %call6.i) #2
  br label %ath9k_hw_set_powermode_wow_sleep.exit

if.end.i191:                                      ; preds = %ath9k_hw_set_sta_powersave.exit.i
  %147 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %macVersion, align 4
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %148, label %if.end.i191.if.end35.i_crit_edge [
    i32 640, label %if.end.i191.if.then13.i_crit_edge
    i32 704, label %if.end.i191.if.then13.i_crit_edge196
    i32 576, label %if.then24.i
  ]

if.end.i191.if.then13.i_crit_edge196:             ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then13.i

if.end.i191.if.then13.i_crit_edge:                ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then13.i

if.end.i191.if.end35.i_crit_edge:                 ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end35.i

if.then13.i:                                      ; preds = %if.end.i191.if.then13.i_crit_edge, %if.end.i191.if.then13.i_crit_edge196
  %150 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ah, align 4
  %call16.i = tail call i32 %151(ptr noundef %ah, i32 noundef 33752) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i192 = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i192, label %if.then13.i.if.end35.sink.split.i_crit_edge, label %if.then13.i.if.end35.i_crit_edge

if.then13.i.if.end35.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end35.i

if.then13.i.if.end35.sink.split.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end35.sink.split.i

if.then24.i:                                      ; preds = %if.end.i191
  %152 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ah, align 4
  %call27.i = tail call i32 %153(ptr noundef %ah, i32 noundef 33216) #2
  %and.i193 = and i32 %call27.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i193)
  %tobool28.not.i = icmp eq i32 %and.i193, 0
  br i1 %tobool28.not.i, label %if.then24.i.if.end35.sink.split.i_crit_edge, label %if.then24.i.if.end35.i_crit_edge

if.then24.i.if.end35.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end35.i

if.then24.i.if.end35.sink.split.i_crit_edge:      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end35.sink.split.i

if.end35.sink.split.i:                            ; preds = %if.then24.i.if.end35.sink.split.i_crit_edge, %if.then13.i.if.end35.sink.split.i_crit_edge
  %154 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rmw, align 4
  %call32.i = tail call i32 %155(ptr noundef %ah, i32 noundef 33696, i32 noundef 0, i32 noundef 1) #2
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end35.sink.split.i, %if.then24.i.if.end35.i_crit_edge, %if.then13.i.if.end35.i_crit_edge, %if.end.i191.if.end35.i_crit_edge
  %156 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %btcoex_enabled.i, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i.i = icmp eq i8 %157, 0
  br i1 %tobool.not.i.i, label %if.end35.i.if.end40.i_crit_edge, label %ath9k_hw_mci_is_enabled.exit.i

if.end35.i.if.end40.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end40.i

ath9k_hw_mci_is_enabled.exit.i:                   ; preds = %if.end35.i
  %caps.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %158 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %159, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.i.not.i, label %ath9k_hw_mci_is_enabled.exit.i.if.end40.i_crit_edge, label %if.then37.i

ath9k_hw_mci_is_enabled.exit.i.if.end40.i_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end40.i

if.then37.i:                                      ; preds = %ath9k_hw_mci_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %160 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write27, align 4
  tail call void %161(ptr noundef %ah, i32 noundef 2, i32 noundef 28724) #2
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %ath9k_hw_mci_is_enabled.exit.i.if.end40.i_crit_edge, %if.end35.i.if.end40.i_crit_edge
  %162 = ptrtoint ptr %write27 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write27, align 4
  %164 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %165)
  %cmp45.i = icmp eq i32 %165, 20
  %cond46.i = select i1 %cmp45.i, i32 131148, i32 28748
  tail call void %163(ptr noundef %ah, i32 noundef 2, i32 noundef %cond46.i) #2
  br label %ath9k_hw_set_powermode_wow_sleep.exit

ath9k_hw_set_powermode_wow_sleep.exit:            ; preds = %if.end40.i, %if.then.i
  %166 = shl nuw nsw i32 %and59, 16
  %167 = or i32 %wow_event_mask.1, %166
  %168 = ptrtoint ptr %wow to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %wow, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ar9003_mci_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_ath9k_hw_wow_apply_pattern, !1, !"__ksymtab_ath9k_hw_wow_apply_pattern", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_wow.c", i32 181, i32 1}
!2 = !{ptr @__ksymtab_ath9k_hw_wow_wakeup, !3, !"__ksymtab_ath9k_hw_wow_wakeup", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_wow.c", i32 267, i32 1}
!4 = !{ptr @__ksymtab_ath9k_hw_wow_enable, !5, !"__ksymtab_ath9k_hw_wow_enable", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_wow.c", i32 454, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_wow.c", i32 47, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i8 0, i8 2}
