; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6655/key.c_pt.bc'
source_filename = "../drivers/staging/vt6655/key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.vnt_private = type { ptr, ptr, ptr, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, [2 x ptr], %struct.vnt_options, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i32, i8, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i16, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i32], i8, i8, i32, i8, i8, i8, i8, i8, [15 x i8], [57 x i8], [15 x i8], [57 x i8], [57 x i8], [57 x i8], i8, i8, i8, i8, [256 x i8], i16, i16, %struct.work_struct, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vnt_options = type { i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }

@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_set_keys(ptr nocapture noundef readonly %hw, ptr noundef %sta, ptr nocapture noundef readonly %vif, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %broadcast.i65 = alloca [6 x i8], align 1
  %broadcast.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
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
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %for.body.preheader
    i32 1027073, label %entry.sw.bb2_crit_edge
    i32 1027077, label %entry.sw.bb2_crit_edge89
    i32 1027074, label %entry.sw.epilog.sink.split_crit_edge
    i32 1027076, label %sw.bb19
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

entry.sw.bb2_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 0) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 1) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 2) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 3) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 4) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 5) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 6) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 7) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 8) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 9) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 10) #3
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge89
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 0) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 1) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 2) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 3) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 4) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 5) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 6) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 7) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 8) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 9) #3
  tail call void @MACvDisableKeyEntry(ptr noundef %1, i32 noundef 10) #3
  %5 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %broadcast.i) #3
  %7 = call ptr @memset(ptr %broadcast.i, i32 255, i32 6)
  %keyidx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %8 = ptrtoint ptr %keyidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %keyidx.i, align 1
  %tobool.not.i = icmp eq ptr %spec.select, null
  %broadcast.mac_addr.i = select i1 %tobool.not.i, ptr %broadcast.i, ptr %spec.select
  %hw_key_idx16.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %10 = ptrtoint ptr %hw_key_idx16.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %hw_key_idx16.i, align 2
  %phi.cast.i = zext i8 %9 to i32
  %keylen.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %11 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %keylen.i, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %12, label %sw.bb2.vnt_set_keymode.exit_crit_edge [
    i8 5, label %if.end58.thread.i
    i8 13, label %if.then63.i
  ]

sw.bb2.vnt_set_keymode.exit_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_set_keymode.exit

if.end58.thread.i:                                ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  %key54.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx55.i = getelementptr [0 x i8], ptr %key54.i, i32 0, i32 15
  %14 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx55.i, align 1
  %16 = and i8 %15, 127
  store i8 %16, ptr %arrayidx55.i, align 1
  br label %vnt_set_keymode.exit

if.then63.i:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  %key64.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx65.i = getelementptr [0 x i8], ptr %key64.i, i32 0, i32 15
  %17 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx65.i, align 1
  %19 = or i8 %18, -128
  store i8 %19, ptr %arrayidx65.i, align 1
  br label %vnt_set_keymode.exit

vnt_set_keymode.exit:                             ; preds = %if.then63.i, %if.end58.thread.i, %sw.bb2.vnt_set_keymode.exit_crit_edge
  %key72.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %local_id.i = getelementptr inbounds %struct.vnt_private, ptr %6, i32 0, i32 36
  %20 = ptrtoint ptr %local_id.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %local_id.i, align 4
  call void @MACvSetKeyEntry(ptr noundef %6, i16 noundef zeroext -16316, i32 noundef 10, i32 noundef %phi.cast.i, ptr noundef nonnull %broadcast.mac_addr.i, ptr noundef %key72.i, i8 noundef zeroext %21) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast.i) #3
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags, align 8
  %24 = or i16 %23, 2
  store i16 %24, ptr %flags, align 8
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb19, %entry.sw.epilog.sink.split_crit_edge
  %.sink87 = phi i16 [ 2, %sw.bb19 ], [ 6, %entry.sw.epilog.sink.split_crit_edge ]
  %key_dec_mode.0.ph = phi i32 [ 3, %sw.bb19 ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %flags11 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %25 = ptrtoint ptr %flags11 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags11, align 8
  %27 = or i16 %26, %.sink87
  store i16 %27, ptr %flags11, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %cmp47.i = phi i1 [ true, %entry.sw.epilog_crit_edge ], [ false, %sw.epilog.sink.split ]
  %key_dec_mode.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %key_dec_mode.0.ph, %sw.epilog.sink.split ]
  %flags24 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %28 = ptrtoint ptr %flags24 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags24, align 8
  %30 = and i16 %29, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool26.not = icmp eq i16 %30, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @vnt_set_keymode(ptr noundef %hw, ptr noundef %spec.select, ptr noundef %key, i32 noundef 0, i32 noundef %key_dec_mode.0)
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %31 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %broadcast.i65) #3
  %33 = call ptr @memset(ptr %broadcast.i65, i32 255, i32 6)
  %keyidx.i67 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %34 = ptrtoint ptr %keyidx.i67 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %keyidx.i67, align 1
  %tobool.not.i68 = icmp eq ptr %spec.select, null
  %broadcast.mac_addr.i69 = select i1 %tobool.not.i68, ptr %broadcast.i65, ptr %spec.select
  %hw_key_idx16.i70 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %36 = ptrtoint ptr %hw_key_idx16.i70 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 10, ptr %hw_key_idx16.i70, align 2
  %phi.cast.i72 = zext i8 %35 to i32
  %37 = trunc i32 %key_dec_mode.0 to i16
  %38 = mul nuw nsw i16 %37, 17
  %conv45.i73 = or i16 %38, -16316
  br i1 %cmp47.i, label %if.then49.i, label %if.else.vnt_set_keymode.exit83_crit_edge

if.else.vnt_set_keymode.exit83_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_set_keymode.exit83

if.then49.i:                                      ; preds = %if.else
  %keylen.i74 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %39 = ptrtoint ptr %keylen.i74 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %keylen.i74, align 2
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %40, label %if.then49.i.vnt_set_keymode.exit83_crit_edge [
    i8 5, label %if.end58.thread.i77
    i8 13, label %if.then63.i80
  ]

if.then49.i.vnt_set_keymode.exit83_crit_edge:     ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_set_keymode.exit83

if.end58.thread.i77:                              ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #5
  %key54.i75 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx55.i76 = getelementptr [0 x i8], ptr %key54.i75, i32 0, i32 15
  %42 = ptrtoint ptr %arrayidx55.i76 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx55.i76, align 1
  %44 = and i8 %43, 127
  store i8 %44, ptr %arrayidx55.i76, align 1
  br label %vnt_set_keymode.exit83

if.then63.i80:                                    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #5
  %key64.i78 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx65.i79 = getelementptr [0 x i8], ptr %key64.i78, i32 0, i32 15
  %45 = ptrtoint ptr %arrayidx65.i79 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx65.i79, align 1
  %47 = or i8 %46, -128
  store i8 %47, ptr %arrayidx65.i79, align 1
  br label %vnt_set_keymode.exit83

vnt_set_keymode.exit83:                           ; preds = %if.then63.i80, %if.end58.thread.i77, %if.then49.i.vnt_set_keymode.exit83_crit_edge, %if.else.vnt_set_keymode.exit83_crit_edge
  %key72.i81 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %local_id.i82 = getelementptr inbounds %struct.vnt_private, ptr %32, i32 0, i32 36
  %48 = ptrtoint ptr %local_id.i82 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %local_id.i82, align 4
  call void @MACvSetKeyEntry(ptr noundef %32, i16 noundef zeroext %conv45.i73, i32 noundef 10, i32 noundef %phi.cast.i72, ptr noundef nonnull %broadcast.mac_addr.i69, ptr noundef %key72.i81, i8 noundef zeroext %49) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast.i65) #3
  %50 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bss_conf, align 8
  call fastcc void @vnt_set_keymode(ptr noundef %hw, ptr noundef %51, ptr noundef %key, i32 noundef 2, i32 noundef %key_dec_mode.0)
  br label %cleanup

cleanup:                                          ; preds = %vnt_set_keymode.exit83, %if.then27, %vnt_set_keymode.exit, %for.body.preheader
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @MACvDisableKeyEntry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vnt_set_keymode(ptr nocapture noundef readonly %hw, ptr noundef %mac_addr, ptr noundef %key, i32 noundef %key_type, i32 noundef %mode) unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %key_type)
  %cmp.not = icmp eq i32 %key_type, 1
  br i1 %cmp.not, label %sw.bb, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %key_entry_inuse = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 3
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
  %conv6.lcssa = phi i32 [ 0, %for.cond.preheader.if.then8_crit_edge ], [ 1, %for.inc.if.then8_crit_edge ], [ 2, %for.inc.1.if.then8_crit_edge ], [ 3, %for.inc.2.if.then8_crit_edge ], [ 4, %for.inc.3.if.then8_crit_edge ], [ 5, %for.inc.4.if.then8_crit_edge ], [ 6, %for.inc.5.if.then8_crit_edge ], [ 7, %for.inc.6.if.then8_crit_edge ], [ 8, %for.inc.7.if.then8_crit_edge ], [ 9, %for.inc.8.if.then8_crit_edge ]
  %8 = trunc i32 %conv6.lcssa to i8
  tail call void @_set_bit(i32 noundef %conv6.lcssa, ptr noundef %key_entry_inuse) #3
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
  %entry2.0 = phi i32 [ %conv6.lcssa, %if.then8 ], [ 0, %for.inc.8.if.end14_crit_edge ]
  %37 = zext i32 %key_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %key_type, label %if.end14.cleanup_crit_edge [
    i32 2, label %if.end14.sw.bb30_crit_edge
    i32 0, label %if.end14.if.then42_crit_edge
  ]

if.end14.if.then42_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then42

if.end14.sw.bb30_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb30

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hw_key_idx16 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %38 = ptrtoint ptr %hw_key_idx16 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 10, ptr %hw_key_idx16, align 2
  br label %sw.bb30

sw.bb30:                                          ; preds = %sw.bb, %if.end14.sw.bb30_crit_edge
  %key_mode.0 = phi i32 [ 0, %if.end14.sw.bb30_crit_edge ], [ 16388, %sw.bb ]
  %entry2.2 = phi i32 [ %entry2.0, %if.end14.sw.bb30_crit_edge ], [ 10, %sw.bb ]
  %shl = shl i32 %mode, 4
  %conv31 = or i32 %shl, %mode
  %or32 = or i32 %conv31, %key_mode.0
  %conv36 = or i32 %or32, 64
  %phi.cast = zext i8 %4 to i32
  br label %if.then42

if.then42:                                        ; preds = %sw.bb30, %if.end14.if.then42_crit_edge
  %key_mode.2 = phi i32 [ %conv36, %sw.bb30 ], [ %mode, %if.end14.if.then42_crit_edge ]
  %entry2.4 = phi i32 [ %entry2.2, %sw.bb30 ], [ %entry2.0, %if.end14.if.then42_crit_edge ]
  %key_inx.0 = phi i32 [ %phi.cast, %sw.bb30 ], [ 4, %if.end14.if.then42_crit_edge ]
  %39 = trunc i32 %key_mode.2 to i16
  %conv45 = or i16 %39, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp47 = icmp eq i32 %mode, 0
  br i1 %cmp47, label %if.then49, label %if.then42.if.end70_crit_edge

if.then42.if.end70_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end70

if.then49:                                        ; preds = %if.then42
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %40 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %keylen, align 2
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %41, label %if.then49.if.end70_crit_edge [
    i8 5, label %if.end58.thread
    i8 13, label %if.then63
  ]

if.then49.if.end70_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end70

if.end58.thread:                                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #5
  %key54 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx55 = getelementptr [0 x i8], ptr %key54, i32 0, i32 15
  %43 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx55, align 1
  %45 = and i8 %44, 127
  store i8 %45, ptr %arrayidx55, align 1
  br label %if.end70

if.then63:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #5
  %key64 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx65 = getelementptr [0 x i8], ptr %key64, i32 0, i32 15
  %46 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx65, align 1
  %48 = or i8 %47, -128
  store i8 %48, ptr %arrayidx65, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.then63, %if.end58.thread, %if.then49.if.end70_crit_edge, %if.then42.if.end70_crit_edge
  %key72 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %local_id = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 36
  %49 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %local_id, align 4
  call void @MACvSetKeyEntry(ptr noundef %1, i16 noundef zeroext %conv45, i32 noundef %entry2.4, i32 noundef %key_inx.0, ptr noundef nonnull %broadcast.mac_addr, ptr noundef %key72, i8 noundef zeroext %50) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end14.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @MACvSetKeyEntry(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
