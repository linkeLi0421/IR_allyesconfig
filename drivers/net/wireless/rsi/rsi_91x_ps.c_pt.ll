; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rsi/rsi_91x_ps.c_pt.bc'
source_filename = "../drivers/net/wireless/rsi/rsi_91x_ps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsi_hw = type { ptr, i32, ptr, [3 x ptr], [4 x %struct.ieee80211_tx_queue_params], [6 x %struct.ieee80211_supported_band], ptr, i8, i32, i16, i32, %struct.rsi_ps_info, %struct.spinlock, i32, ptr, i8, ptr, %struct.timer_list, i8, i32, %struct.eepromrw_info, i32, i8, [2 x i8], ptr, ptr, ptr, ptr }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rsi_ps_info = type <{ i8, i8, i8, i8, i8, i8, i16, i32, i16, i32, i16, i32 }>
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.eepromrw_info = type { i32, i32, i8, i16, [480 x i8] }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PS_NONE\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PS_DISABLE_REQ_SENT\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PS_ENABLE_REQ_SENT\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PS_ENABLED\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INVALID_STATE\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Cannot accept enable PS in %s state\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.rsi_enable_ps = private unnamed_addr constant [14 x i8] c"rsi_enable_ps\00", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Failed to send PS request to device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Cannot accept disable PS in %s state\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.rsi_disable_ps = private unnamed_addr constant [15 x i8] c"rsi_disable_ps\00", align 1
@__func__.rsi_conf_uapsd = private unnamed_addr constant [15 x i8] c"rsi_conf_uapsd\00", align 1
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid PS confirm type %x in state %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PS state changed %s => %s\0A\00", [37 x i8] zeroinitializer }, align 32
@switch.table.str_psstate = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.1, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@switch.table.rsi_enable_ps = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.1, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@switch.table.rsi_disable_ps = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.1, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@switch.table.rsi_handle_ps_confirm = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.1, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 28, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 30, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 32, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 34, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 36, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 72, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 79, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 92, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 138, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [41 x i8] c"../drivers/net/wireless/rsi/rsi_91x_ps.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 43, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant [25 x i8] c"switch.table.str_psstate\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"switch.table.rsi_enable_ps\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"switch.table.rsi_disable_ps\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [35 x i8] c"switch.table.rsi_handle_ps_confirm\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @switch.table.str_psstate, ptr @switch.table.rsi_enable_ps, ptr @switch.table.rsi_disable_ps, ptr @switch.table.rsi_handle_ps_confirm], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.str_psstate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsi_enable_ps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsi_disable_ps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsi_handle_ps_confirm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @str_psstate(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %state)
  %0 = icmp ult i32 %state, 4
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.str_psstate, i32 0, i32 %state
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.4, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rsi_default_ps_params(ptr nocapture noundef writeonly %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_info1 = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11
  %0 = ptrtoint ptr %ps_info1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ps_info1, align 1
  %sleep_type = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %sleep_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %sleep_type, align 1
  %tx_threshold = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11, i32 2
  %listen_interval = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11, i32 7
  %2 = call ptr @memset(ptr %tx_threshold, i32 0, i32 6)
  %3 = ptrtoint ptr %listen_interval to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 200, ptr %listen_interval, align 1
  %num_bcns_per_lis_int = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11, i32 8
  %deep_sleep_wakeup_period = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11, i32 11
  %4 = ptrtoint ptr %num_bcns_per_lis_int to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %num_bcns_per_lis_int, align 1
  %5 = ptrtoint ptr %deep_sleep_wakeup_period to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 200, ptr %deep_sleep_wakeup_period, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_enable_ps(ptr noundef %adapter, ptr noundef %vif) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_state = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 10
  %0 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ps_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default.i [
    i32 0, label %if.end
    i32 3, label %sw.bb3.i
    i32 2, label %entry.str_psstate.exit_crit_edge
    i32 1, label %sw.bb2.i
  ]

entry.str_psstate.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_psstate.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_psstate.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_psstate.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_psstate.exit

str_psstate.exit:                                 ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %entry.str_psstate.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.4, %sw.default.i ], [ @.str.3, %sw.bb3.i ], [ @.str.2, %sw.bb2.i ], [ @.str.1, %entry.str_psstate.exit_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rsi_enable_ps, ptr noundef nonnull %retval.0.i) #5
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @rsi_send_ps_request(ptr noundef %adapter, i1 noundef zeroext true, ptr noundef %vif) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rsi_enable_ps) #5
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ps_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %switch.lookup, label %if.end4.rsi_modify_ps_state.exit_crit_edge

if.end4.rsi_modify_ps_state.exit_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsi_modify_ps_state.exit

switch.lookup:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.rsi_enable_ps, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %rsi_modify_ps_state.exit

rsi_modify_ps_state.exit:                         ; preds = %switch.lookup, %if.end4.rsi_modify_ps_state.exit_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.4, %if.end4.rsi_modify_ps_state.exit_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.2) #5
  %7 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ps_state, align 4
  br label %return

return:                                           ; preds = %rsi_modify_ps_state.exit, %if.then3, %str_psstate.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_ps_request(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_disable_ps(ptr noundef %adapter, ptr noundef %vif) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_state = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 10
  %0 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ps_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %sw.default.i [
    i32 3, label %if.end
    i32 0, label %entry.str_psstate.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 1, label %sw.bb2.i
  ]

entry.str_psstate.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_psstate.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_psstate.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_psstate.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_psstate.exit

str_psstate.exit:                                 ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %entry.str_psstate.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.4, %sw.default.i ], [ @.str.2, %sw.bb2.i ], [ @.str.1, %sw.bb1.i ], [ @.str, %entry.str_psstate.exit_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rsi_disable_ps, ptr noundef nonnull %retval.0.i) #5
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @rsi_send_ps_request(ptr noundef %adapter, i1 noundef zeroext false, ptr noundef %vif) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rsi_disable_ps) #5
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ps_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %switch.lookup, label %if.end4.rsi_modify_ps_state.exit_crit_edge

if.end4.rsi_modify_ps_state.exit_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsi_modify_ps_state.exit

switch.lookup:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.rsi_disable_ps, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %rsi_modify_ps_state.exit

rsi_modify_ps_state.exit:                         ; preds = %switch.lookup, %if.end4.rsi_modify_ps_state.exit_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.4, %if.end4.rsi_modify_ps_state.exit_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.1) #5
  %7 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %ps_state, align 4
  br label %return

return:                                           ; preds = %rsi_modify_ps_state.exit, %if.then3, %str_psstate.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_conf_uapsd(ptr noundef %adapter, ptr noundef %vif) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_state = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 10
  %0 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ps_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rsi_send_ps_request(ptr noundef %adapter, i1 noundef zeroext false, ptr noundef %vif) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.end3:                                          ; preds = %if.end
  %call2 = tail call i32 @rsi_send_ps_request(ptr noundef %adapter, i1 noundef zeroext true, ptr noundef %vif) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end3.if.then5_crit_edge

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end3.if.then5_crit_edge, %if.end.if.then5_crit_edge
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rsi_conf_uapsd) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_handle_ps_confirm(ptr nocapture noundef %adapter, ptr nocapture noundef readonly %msg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %msg, i32 12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %add.ptr, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #5
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %2, label %sw.default [
    i16 1, label %sw.bb
    i16 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %ps_state = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 10
  %4 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ps_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %rsi_modify_ps_state.exit, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rsi_modify_ps_state.exit:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #5
  %6 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %ps_state, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %ps_state3 = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 10
  %7 = ptrtoint ptr %ps_state3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ps_state3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp4 = icmp eq i32 %8, 2
  br i1 %cmp4, label %rsi_modify_ps_state.exit22, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rsi_modify_ps_state.exit22:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #5
  %9 = ptrtoint ptr %ps_state3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ps_state3, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  %conv = zext i16 %2 to i32
  %ps_state9 = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 10
  %10 = ptrtoint ptr %ps_state9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ps_state9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %switch.lookup, label %sw.default.str_psstate.exit_crit_edge

sw.default.str_psstate.exit_crit_edge:            ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %str_psstate.exit

switch.lookup:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.rsi_handle_ps_confirm, i32 0, i32 %11
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %str_psstate.exit

str_psstate.exit:                                 ; preds = %switch.lookup, %sw.default.str_psstate.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.4, %sw.default.str_psstate.exit_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %conv, ptr noundef nonnull %retval.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %str_psstate.exit, %rsi_modify_ps_state.exit22, %sw.bb2.cleanup_crit_edge, %rsi_modify_ps_state.exit, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %str_psstate.exit ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 0, %rsi_modify_ps_state.exit22 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %rsi_modify_ps_state.exit ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 28, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 30, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 32, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 34, i32 10}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 36, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 72, i32 4}
!12 = !{ptr @__func__.rsi_enable_ps, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 73, i32 4}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 79, i32 4}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 92, i32 4}
!18 = !{ptr @__func__.rsi_disable_ps, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 93, i32 4}
!20 = !{ptr @__func__.rsi_conf_uapsd, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 120, i32 4}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 138, i32 4}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/rsi/rsi_91x_ps.c", i32 43, i32 21}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
