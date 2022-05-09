; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6656/key.c_pt.bc'
source_filename = "../drivers/staging/vt6656/key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.134, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.134 = type { i32, i16 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.vnt_private = type { ptr, ptr, i8, ptr, ptr, i64, i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, i32, [128 x ptr], i32, [128 x ptr], %struct.usb_anchor, i32, %struct.vnt_interrupt_buffer, i16, i8, i8, i8, %struct.vnt_cmd_card_init, %struct.vnt_rsp_card_init, i8, [6 x i8], [6 x i8], i8, i64, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i8, i8, [256 x i8], i8, i8, i8, i8, i8, [14 x i8], [14 x i8], [42 x i8], i16, i16, i32, i32, i16, i16, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i8, [4 x i8], i8, i8, %struct.delayed_work, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vnt_interrupt_buffer = type { ptr }
%struct.vnt_cmd_card_init = type { i8, i8, [6 x i8], i8, i8 }
%struct.vnt_rsp_card_init = type { i8, [6 x i8], i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }

@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 68, i64 32768]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_key_init_table(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %data) #3
  %0 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 7
  %7 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 8
  %8 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 9
  %9 = getelementptr inbounds [11 x i8], ptr %data, i32 0, i32 10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %data, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %1, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %2, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %3, align 1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %4, align 1
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 6, ptr %5, align 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 7, ptr %6, align 1
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %7, align 1
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 9, ptr %8, align 1
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %9, align 1
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 9, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef nonnull %data) #3
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %data) #3
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_out(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_set_keys(ptr nocapture noundef readonly %hw, ptr noundef %sta, ptr nocapture noundef readnone %vif, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %broadcast.i51 = alloca [6 x i8], align 1
  %broadcast.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %tobool.not = icmp eq ptr %sta, null
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %spec.select = select i1 %tobool.not, ptr null, ptr %addr
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cipher, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1027073, label %entry.sw.bb_crit_edge
    i32 1027077, label %entry.sw.bb_crit_edge71
    i32 1027074, label %entry.sw.epilog_crit_edge
    i32 1027076, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.bb_crit_edge71:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge71
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %broadcast.i) #3
  %5 = call ptr @memset(ptr %broadcast.i, i32 255, i32 6)
  %keyidx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %6 = ptrtoint ptr %keyidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %keyidx.i, align 1
  %tobool.not.i = icmp eq ptr %spec.select, null
  %broadcast.mac_addr.i = select i1 %tobool.not.i, ptr %broadcast.i, ptr %spec.select
  %hw_key_idx16.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %8 = ptrtoint ptr %hw_key_idx16.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %hw_key_idx16.i, align 2
  %phi.cast.i = zext i8 %7 to i32
  %keylen.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %9 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %keylen.i, align 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %10, label %sw.bb.vnt_set_keymode.exit_crit_edge [
    i8 5, label %if.end40.thread.i
    i8 13, label %if.then45.i
  ]

sw.bb.vnt_set_keymode.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_set_keymode.exit

if.end40.thread.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %key36.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx37.i = getelementptr [0 x i8], ptr %key36.i, i32 0, i32 15
  %12 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx37.i, align 1
  %14 = and i8 %13, 127
  store i8 %14, ptr %arrayidx37.i, align 1
  br label %vnt_set_keymode.exit

if.then45.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %key46.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx47.i = getelementptr [0 x i8], ptr %key46.i, i32 0, i32 15
  %15 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx47.i, align 1
  %17 = or i8 %16, -128
  store i8 %17, ptr %arrayidx47.i, align 1
  br label %vnt_set_keymode.exit

vnt_set_keymode.exit:                             ; preds = %if.then45.i, %if.end40.thread.i, %sw.bb.vnt_set_keymode.exit_crit_edge
  %key54.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %call55.i = call i32 @vnt_mac_set_keyentry(ptr noundef %1, i16 noundef zeroext -16316, i32 noundef 10, i32 noundef %phi.cast.i, ptr noundef nonnull %broadcast.mac_addr.i, ptr noundef %key54.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast.i) #3
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 8
  %20 = or i16 %19, 2
  store i16 %20, ptr %flags, align 8
  %21 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %broadcast.i51) #3
  %23 = call ptr @memset(ptr %broadcast.i51, i32 255, i32 6)
  %24 = ptrtoint ptr %keyidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %keyidx.i, align 1
  %broadcast.mac_addr.i55 = select i1 %tobool.not.i, ptr %broadcast.i51, ptr %spec.select
  %26 = ptrtoint ptr %hw_key_idx16.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %hw_key_idx16.i, align 2
  %phi.cast.i57 = zext i8 %25 to i32
  %27 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %keylen.i, align 2
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %28, label %vnt_set_keymode.exit.vnt_set_keymode.exit67_crit_edge [
    i8 5, label %if.end40.thread.i61
    i8 13, label %if.then45.i64
  ]

vnt_set_keymode.exit.vnt_set_keymode.exit67_crit_edge: ; preds = %vnt_set_keymode.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_set_keymode.exit67

if.end40.thread.i61:                              ; preds = %vnt_set_keymode.exit
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx37.i60 = getelementptr [0 x i8], ptr %key54.i, i32 0, i32 15
  %30 = ptrtoint ptr %arrayidx37.i60 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx37.i60, align 1
  %32 = and i8 %31, 127
  store i8 %32, ptr %arrayidx37.i60, align 1
  br label %vnt_set_keymode.exit67

if.then45.i64:                                    ; preds = %vnt_set_keymode.exit
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx47.i63 = getelementptr [0 x i8], ptr %key54.i, i32 0, i32 15
  %33 = ptrtoint ptr %arrayidx47.i63 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx47.i63, align 1
  %35 = or i8 %34, -128
  store i8 %35, ptr %arrayidx47.i63, align 1
  br label %vnt_set_keymode.exit67

vnt_set_keymode.exit67:                           ; preds = %if.then45.i64, %if.end40.thread.i61, %vnt_set_keymode.exit.vnt_set_keymode.exit67_crit_edge
  %call55.i66 = call i32 @vnt_mac_set_keyentry(ptr noundef %22, i16 noundef zeroext -16316, i32 noundef 10, i32 noundef %phi.cast.i57, ptr noundef nonnull %broadcast.mac_addr.i55, ptr noundef %key54.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast.i51) #3
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %local_id = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 20
  %36 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %local_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp = icmp ult i8 %37, 2
  br i1 %cmp, label %sw.bb13.cleanup_crit_edge, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %.sink69 = phi i16 [ 6, %entry.sw.epilog_crit_edge ], [ 2, %sw.bb13.sw.epilog_crit_edge ]
  %key_dec_mode.0 = phi i32 [ 2, %entry.sw.epilog_crit_edge ], [ 3, %sw.bb13.sw.epilog_crit_edge ]
  %flags18 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %38 = ptrtoint ptr %flags18 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags18, align 8
  %40 = or i16 %39, %.sink69
  store i16 %40, ptr %flags18, align 8
  %41 = and i16 %39, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool24.not = icmp eq i16 %41, 0
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %call27 = tail call fastcc i32 @vnt_set_keymode(ptr noundef %hw, ptr noundef %spec.select, ptr noundef %key, i32 noundef 32768, i32 noundef %key_dec_mode.0)
  br label %cleanup

if.end28:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %call30 = tail call fastcc i32 @vnt_set_keymode(ptr noundef %hw, ptr noundef %spec.select, ptr noundef %key, i32 noundef 68, i32 noundef %key_dec_mode.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then25, %sw.bb13.cleanup_crit_edge, %vnt_set_keymode.exit67, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.then25 ], [ %call30, %if.end28 ], [ %call55.i66, %vnt_set_keymode.exit67 ], [ -95, %sw.bb13.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vnt_set_keymode(ptr nocapture noundef readonly %hw, ptr noundef %mac_addr, ptr noundef %key, i32 noundef %key_type, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %broadcast = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %broadcast) #3
  %2 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %3 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %keyidx, align 1
  %tobool.not = icmp eq ptr %mac_addr, null
  %broadcast.mac_addr = select i1 %tobool.not, ptr %broadcast, ptr %mac_addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 49220, i32 %key_type)
  %cmp.not = icmp eq i32 %key_type, 49220
  br i1 %cmp.not, label %sw.bb, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %key_entry_inuse = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 67
  %5 = ptrtoint ptr %key_entry_inuse to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %key_entry_inuse, align 4
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %for.cond.preheader.if.then8_crit_edge, label %for.inc

for.cond.preheader.if.then8_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

if.then8:                                         ; preds = %for.inc.8.if.then8_crit_edge, %for.inc.7.if.then8_crit_edge, %for.inc.6.if.then8_crit_edge, %for.inc.5.if.then8_crit_edge, %for.inc.4.if.then8_crit_edge, %for.inc.3.if.then8_crit_edge, %for.inc.2.if.then8_crit_edge, %for.inc.1.if.then8_crit_edge, %for.inc.if.then8_crit_edge, %for.cond.preheader.if.then8_crit_edge
  %conv91.lcssa = phi i32 [ 0, %for.cond.preheader.if.then8_crit_edge ], [ 1, %for.inc.if.then8_crit_edge ], [ 2, %for.inc.1.if.then8_crit_edge ], [ 3, %for.inc.2.if.then8_crit_edge ], [ 4, %for.inc.3.if.then8_crit_edge ], [ 5, %for.inc.4.if.then8_crit_edge ], [ 6, %for.inc.5.if.then8_crit_edge ], [ 7, %for.inc.6.if.then8_crit_edge ], [ 8, %for.inc.7.if.then8_crit_edge ], [ 9, %for.inc.8.if.then8_crit_edge ]
  %8 = trunc i32 %conv91.lcssa to i8
  tail call void @_set_bit(i32 noundef %conv91.lcssa, ptr noundef %key_entry_inuse) #3
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %9 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %hw_key_idx, align 2
  br label %if.end14

for.inc:                                          ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %key_entry_inuse to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %key_entry_inuse, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not.1 = icmp eq i32 %12, 0
  br i1 %tobool7.not.1, label %for.inc.if.then8_crit_edge, label %for.inc.1

for.inc.if.then8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

for.inc.1:                                        ; preds = %for.inc
  %13 = ptrtoint ptr %key_entry_inuse to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %key_entry_inuse, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not.2 = icmp eq i32 %15, 0
  br i1 %tobool7.not.2, label %for.inc.1.if.then8_crit_edge, label %for.inc.2

for.inc.1.if.then8_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

for.inc.2:                                        ; preds = %for.inc.1
  %16 = ptrtoint ptr %key_entry_inuse to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %key_entry_inuse, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.3 = icmp eq i32 %18, 0
  br i1 %tobool7.not.3, label %for.inc.2.if.then8_crit_edge, label %for.inc.3

for.inc.2.if.then8_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

for.inc.3:                                        ; preds = %for.inc.2
  %19 = ptrtoint ptr %key_entry_inuse to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %key_entry_inuse, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool7.not.4 = icmp eq i32 %21, 0
  br i1 %tobool7.not.4, label %for.inc.3.if.then8_crit_edge, label %for.inc.4

for.inc.3.if.then8_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

for.inc.4:                                        ; preds = %for.inc.3
  %22 = ptrtoint ptr %key_entry_inuse to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %key_entry_inuse, align 4
  %24 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool7.not.5 = icmp eq i32 %24, 0
  br i1 %tobool7.not.5, label %for.inc.4.if.then8_crit_edge, label %for.inc.5

for.inc.4.if.then8_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

for.inc.5:                                        ; preds = %for.inc.4
  %25 = ptrtoint ptr %key_entry_inuse to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %key_entry_inuse, align 4
  %27 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool7.not.6 = icmp eq i32 %27, 0
  br i1 %tobool7.not.6, label %for.inc.5.if.then8_crit_edge, label %for.inc.6

for.inc.5.if.then8_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

for.inc.6:                                        ; preds = %for.inc.5
  %28 = ptrtoint ptr %key_entry_inuse to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %key_entry_inuse, align 4
  %30 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not.7 = icmp eq i32 %30, 0
  br i1 %tobool7.not.7, label %for.inc.6.if.then8_crit_edge, label %for.inc.7

for.inc.6.if.then8_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

for.inc.7:                                        ; preds = %for.inc.6
  %31 = ptrtoint ptr %key_entry_inuse to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %key_entry_inuse, align 4
  %33 = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool7.not.8 = icmp eq i32 %33, 0
  br i1 %tobool7.not.8, label %for.inc.7.if.then8_crit_edge, label %for.inc.8

for.inc.7.if.then8_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

for.inc.8:                                        ; preds = %for.inc.7
  %34 = ptrtoint ptr %key_entry_inuse to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %key_entry_inuse, align 4
  %36 = and i32 %35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool7.not.9 = icmp eq i32 %36, 0
  br i1 %tobool7.not.9, label %for.inc.8.if.then8_crit_edge, label %for.inc.8.if.end14_crit_edge

for.inc.8.if.end14_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

for.inc.8.if.then8_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

if.end14:                                         ; preds = %for.inc.8.if.end14_crit_edge, %if.then8
  %entry2.0 = phi i32 [ %conv91.lcssa, %if.then8 ], [ 0, %for.inc.8.if.end14_crit_edge ]
  %37 = zext i32 %key_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %key_type, label %if.end14.cleanup_crit_edge [
    i32 32768, label %if.end14.sw.epilog_crit_edge
    i32 68, label %if.end14.sw.bb17_crit_edge
  ]

if.end14.sw.bb17_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb17

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hw_key_idx16 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %38 = ptrtoint ptr %hw_key_idx16 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 10, ptr %hw_key_idx16, align 2
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb, %if.end14.sw.bb17_crit_edge
  %entry2.1 = phi i32 [ %entry2.0, %if.end14.sw.bb17_crit_edge ], [ 10, %sw.bb ]
  %shl = shl i32 %mode, 4
  %or = or i32 %shl, %mode
  %phi.cast = zext i8 %4 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %if.end14.sw.epilog_crit_edge
  %key_mode.0.in = phi i32 [ %or, %sw.bb17 ], [ %mode, %if.end14.sw.epilog_crit_edge ]
  %entry2.2 = phi i32 [ %entry2.1, %sw.bb17 ], [ %entry2.0, %if.end14.sw.epilog_crit_edge ]
  %key_inx.0 = phi i32 [ %phi.cast, %sw.bb17 ], [ 4, %if.end14.sw.epilog_crit_edge ]
  %or27 = or i32 %key_mode.0.in, %key_type
  %conv28 = trunc i32 %or27 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp29 = icmp eq i32 %mode, 0
  br i1 %cmp29, label %if.then31, label %sw.epilog.if.end52_crit_edge

sw.epilog.if.end52_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then31:                                        ; preds = %sw.epilog
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %39 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %keylen, align 2
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %40, label %if.then31.if.end52_crit_edge [
    i8 5, label %if.end40.thread
    i8 13, label %if.then45
  ]

if.then31.if.end52_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.end40.thread:                                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  %key36 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx37 = getelementptr [0 x i8], ptr %key36, i32 0, i32 15
  %42 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx37, align 1
  %44 = and i8 %43, 127
  store i8 %44, ptr %arrayidx37, align 1
  br label %if.end52

if.then45:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  %key46 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx47 = getelementptr [0 x i8], ptr %key46, i32 0, i32 15
  %45 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx47, align 1
  %47 = or i8 %46, -128
  store i8 %47, ptr %arrayidx47, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %if.end40.thread, %if.then31.if.end52_crit_edge, %sw.epilog.if.end52_crit_edge
  %key54 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %call55 = call i32 @vnt_mac_set_keyentry(ptr noundef %1, i16 noundef zeroext %conv28, i32 noundef %entry2.2, i32 noundef %key_inx.0, ptr noundef nonnull %broadcast.mac_addr, ptr noundef %key54) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call55, %if.end52 ], [ -22, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_set_keyentry(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
