; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wcn36xx/pmc.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wcn36xx/pmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }

@wcn36xx_dbg_mask = external dso_local local_unnamed_addr global i32, align 4
@wcn36xx_pmc_enter_bmps_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017wcn36xx: Entered BMPS\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wcn36xx_pmc_enter_bmps_state\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/wcn36xx/pmc.c\00", [57 x i8] zeroinitializer }, align 32
@wcn36xx_pmc_enter_bmps_state._entry_ptr = internal global ptr @wcn36xx_pmc_enter_bmps_state._entry, section ".printk_index", align 4
@wcn36xx_pmc_enter_bmps_state._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013wcn36xx: ERROR Can not enter BMPS!\0A\00", [58 x i8] zeroinitializer }, align 32
@wcn36xx_pmc_enter_bmps_state._entry_ptr.5 = internal global ptr @wcn36xx_pmc_enter_bmps_state._entry.3, section ".printk_index", align 4
@wcn36xx_pmc_exit_bmps_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017wcn36xx: Not in BMPS mode, no need to exit\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wcn36xx_pmc_exit_bmps_state\00", [36 x i8] zeroinitializer }, align 32
@wcn36xx_pmc_exit_bmps_state._entry_ptr = internal global ptr @wcn36xx_pmc_exit_bmps_state._entry, section ".printk_index", align 4
@wcn36xx_enable_keep_alive_null_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017wcn36xx: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wcn36xx_enable_keep_alive_null_packet\00", [58 x i8] zeroinitializer }, align 32
@wcn36xx_enable_keep_alive_null_packet._entry_ptr = internal global ptr @wcn36xx_enable_keep_alive_null_packet._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 31, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 41, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 58, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [42 x i8] c"../drivers/net/wireless/ath/wcn36xx/pmc.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 71, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @wcn36xx_enable_keep_alive_null_packet._entry, ptr @wcn36xx_enable_keep_alive_null_packet._entry_ptr, ptr @wcn36xx_pmc_enter_bmps_state._entry, ptr @wcn36xx_pmc_enter_bmps_state._entry.3, ptr @wcn36xx_pmc_enter_bmps_state._entry_ptr, ptr @wcn36xx_pmc_enter_bmps_state._entry_ptr.5, ptr @wcn36xx_pmc_exit_bmps_state._entry, ptr @wcn36xx_pmc_exit_bmps_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_pmc_enter_bmps_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_pmc_enter_bmps_state._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_pmc_exit_bmps_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_enable_keep_alive_null_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_pmc_enter_bmps_state(ptr noundef %wcn, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @wcn36xx_smd_enter_bmps(ptr noundef %wcn, ptr noundef %vif) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body, label %do.end10

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %0 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %pw_state = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 24
  %1 = ptrtoint ptr %pw_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %pw_state, align 8
  %bmps_fail_ct = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 34
  %2 = ptrtoint ptr %bmps_fail_ct to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bmps_fail_ct, align 8
  %driver_flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 10
  %3 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_flags, align 8
  %or = or i32 %4, 1
  store i32 %or, ptr %driver_flags, align 8
  br label %if.end17

do.end10:                                         ; preds = %entry
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  %bmps_fail_ct13 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 34
  %5 = ptrtoint ptr %bmps_fail_ct13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bmps_fail_ct13, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %bmps_fail_ct13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then14, label %do.end10.if.end17_crit_edge

do.end10.if.end17_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then14:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ieee80211_connection_loss(ptr noundef %vif) #3
  %7 = ptrtoint ptr %bmps_fail_ct13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bmps_fail_ct13, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.end10.if.end17_crit_edge, %do.end7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_enter_bmps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_connection_loss(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_pmc_exit_bmps_state(ptr noundef %wcn, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pw_state = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 24
  %0 = ptrtoint ptr %pw_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pw_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 @wcn36xx_smd_exit_bmps(ptr noundef %wcn, ptr noundef %vif) #3
  %3 = ptrtoint ptr %pw_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pw_state, align 8
  %driver_flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 10
  %4 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_flags, align 8
  %and9 = and i32 %5, -2
  store i32 %and9, ptr %driver_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -114, %do.end ], [ -114, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_exit_bmps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_enable_keep_alive_null_packet(ptr noundef %wcn, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %0 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #6
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call i32 @wcn36xx_smd_keep_alive_req(ptr noundef %wcn, ptr noundef %vif, i32 noundef 1) #3
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_keep_alive_req(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wcn36xx/pmc.c", i32 31, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wcn36xx_pmc_enter_bmps_state._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wcn36xx_pmc_enter_bmps_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/wcn36xx/pmc.c", i32 41, i32 3}
!8 = !{ptr @wcn36xx_pmc_enter_bmps_state._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wcn36xx_pmc_enter_bmps_state._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wcn36xx/pmc.c", i32 58, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wcn36xx_pmc_exit_bmps_state._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @wcn36xx_pmc_exit_bmps_state._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/wcn36xx/pmc.c", i32 71, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @wcn36xx_enable_keep_alive_null_packet._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @wcn36xx_enable_keep_alive_null_packet._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
