; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/quantenna/qtnfmac/qlink_util.c_pt.bc'
source_filename = "../drivers/net/wireless/quantenna/qtnfmac/qlink_util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qlink_channel = type { i16, i16, i32, i8, i8, i8, i8, i32, i8, i8, [2 x i8] }
%struct.qlink_chandef = type { %struct.qlink_channel, i16, i16, i8, [3 x i8] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_acl_data = type { i32, i32, [0 x %struct.mac_address] }
%struct.mac_address = type { [6 x i8] }
%struct.qlink_acl_data = type { i32, i32, [0 x %struct.qlink_mac_address] }
%struct.qlink_mac_address = type { [6 x i8] }
%struct.qlink_tlv_reg_rule = type { %struct.qlink_tlv_hdr, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlink_tlv_hdr = type { i16, i16, [0 x i8] }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }

@switch.table.qlink_iface_type_to_nl_mask = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 8, i16 4, i16 2, i16 64, i16 32, i16 16], [20 x i8] zeroinitializer }, align 32
@switch.table.qlink_chandef_q2cfg = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.qlink_chandef_cfg2q = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\02\03\04\05\06\07\00\01", [24 x i8] zeroinitializer }, align 32
@switch.table.qlink_utils_band_cfg2q = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_ = private constant [55 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/qlink_util.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [41 x i8] c"switch.table.qlink_iface_type_to_nl_mask\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [33 x i8] c"switch.table.qlink_chandef_q2cfg\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [33 x i8] c"switch.table.qlink_chandef_cfg2q\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [36 x i8] c"switch.table.qlink_utils_band_cfg2q\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @switch.table.qlink_iface_type_to_nl_mask, ptr @switch.table.qlink_chandef_q2cfg, ptr @switch.table.qlink_chandef_cfg2q, ptr @switch.table.qlink_utils_band_cfg2q], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qlink_iface_type_to_nl_mask to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qlink_chandef_q2cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qlink_chandef_cfg2q to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qlink_utils_band_cfg2q to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @qlink_iface_type_to_nl_mask(i16 noundef zeroext %qlink_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i16 %qlink_type, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %0 = icmp ult i16 %switch.tableidx, 6
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i16], ptr @switch.table.qlink_iface_type_to_nl_mask, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %result.0 = phi i16 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i16 %result.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @qlink_chan_width_mask_to_nl(i16 noundef zeroext %qlink_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i16 %qlink_mask to i8
  %1 = shl i8 %0, 6
  %2 = and i8 %1, 64
  %3 = and i16 %qlink_mask, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool5.not = icmp eq i16 %3, 0
  %4 = or i8 %1, -128
  %result.1 = select i1 %tobool5.not, i8 %2, i8 %4
  %5 = lshr i8 %0, 2
  %6 = or i8 %5, %result.1
  ret i8 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlink_chandef_q2cfg(ptr noundef %wiphy, ptr nocapture noundef readonly %qch, ptr nocapture noundef writeonly %chdef) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %center_freq = getelementptr inbounds %struct.qlink_channel, ptr %qch, i32 0, i32 1
  %0 = ptrtoint ptr %center_freq to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %center_freq, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %mul.i = mul nuw nsw i32 %conv, 1000
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %wiphy, i32 noundef %mul.i) #7
  %3 = ptrtoint ptr %chdef to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %chdef, align 4
  %center_freq1 = getelementptr inbounds %struct.qlink_chandef, ptr %qch, i32 0, i32 1
  %4 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %center_freq1, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv3 = zext i16 %6 to i32
  %center_freq14 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chdef, i32 0, i32 2
  %7 = ptrtoint ptr %center_freq14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv3, ptr %center_freq14, align 4
  %center_freq2 = getelementptr inbounds %struct.qlink_chandef, ptr %qch, i32 0, i32 2
  %8 = ptrtoint ptr %center_freq2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %center_freq2, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv5 = zext i16 %10 to i32
  %center_freq26 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chdef, i32 0, i32 3
  %11 = ptrtoint ptr %center_freq26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv5, ptr %center_freq26, align 4
  %width = getelementptr inbounds %struct.qlink_chandef, ptr %qch, i32 0, i32 3
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %13)
  %14 = icmp ult i8 %13, 8
  br i1 %14, label %switch.lookup, label %entry.qlink_chanwidth_to_nl.exit_crit_edge

entry.qlink_chanwidth_to_nl.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlink_chanwidth_to_nl.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = sext i8 %13 to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.qlink_chandef_q2cfg, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %qlink_chanwidth_to_nl.exit

qlink_chanwidth_to_nl.exit:                       ; preds = %switch.lookup, %entry.qlink_chanwidth_to_nl.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %entry.qlink_chanwidth_to_nl.exit_crit_edge ]
  %width8 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chdef, i32 0, i32 1
  %17 = ptrtoint ptr %width8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %width8, align 4
  %edmg = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chdef, i32 0, i32 4
  %bw_config = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chdef, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %bw_config to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bw_config, align 4
  %19 = ptrtoint ptr %edmg to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %edmg, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qlink_chandef_cfg2q(ptr nocapture noundef readonly %chdef, ptr nocapture noundef writeonly %qch) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chdef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chdef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %qch to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %qch, align 1
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %center_freq, align 4
  %conv = trunc i32 %7 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %center_freq5 = getelementptr inbounds %struct.qlink_channel, ptr %qch, i32 0, i32 1
  %9 = ptrtoint ptr %center_freq5 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %center_freq5, align 1
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %flags7 = getelementptr inbounds %struct.qlink_channel, ptr %qch, i32 0, i32 2
  %13 = ptrtoint ptr %flags7 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %flags7, align 1
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chdef, i32 0, i32 2
  %14 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %center_freq1, align 4
  %conv8 = trunc i32 %15 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %center_freq19 = getelementptr inbounds %struct.qlink_chandef, ptr %qch, i32 0, i32 1
  %17 = ptrtoint ptr %center_freq19 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %center_freq19, align 1
  %center_freq2 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chdef, i32 0, i32 3
  %18 = ptrtoint ptr %center_freq2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %center_freq2, align 4
  %conv10 = trunc i32 %19 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv10)
  %center_freq211 = getelementptr inbounds %struct.qlink_chandef, ptr %qch, i32 0, i32 2
  %21 = ptrtoint ptr %center_freq211 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %center_freq211, align 1
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chdef, i32 0, i32 1
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %24 = icmp ult i32 %23, 8
  br i1 %24, label %switch.lookup, label %entry.qlink_chanwidth_nl_to_qlink.exit_crit_edge

entry.qlink_chanwidth_nl_to_qlink.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlink_chanwidth_nl_to_qlink.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.qlink_chandef_cfg2q, i32 0, i32 %23
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %25)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %qlink_chanwidth_nl_to_qlink.exit

qlink_chanwidth_nl_to_qlink.exit:                 ; preds = %switch.lookup, %entry.qlink_chanwidth_nl_to_qlink.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup ], [ -1, %entry.qlink_chanwidth_nl_to_qlink.exit_crit_edge ]
  %width12 = getelementptr inbounds %struct.qlink_chandef, ptr %qch, i32 0, i32 3
  %26 = ptrtoint ptr %width12 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %retval.0.i, ptr %width12, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qlink_hidden_ssid_nl2q(i32 noundef %nl_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nl_val)
  %switch.selectcmp = icmp eq i32 %nl_val, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nl_val)
  %switch.selectcmp3 = icmp eq i32 %nl_val, 1
  %switch.select4 = select i1 %switch.selectcmp3, i32 1, i32 %switch.select
  ret i32 %switch.select4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qtnf_utils_is_bit_set(ptr nocapture noundef readonly %arr, i32 noundef %bit, i32 noundef %arr_max_len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div8 = lshr i32 %bit, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div8, i32 %arr_max_len)
  %cmp.not = icmp ult i32 %div8, %arr_max_len
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = and i32 %bit, 7
  %shl = shl nuw nsw i32 1, %sub
  %arrayidx = getelementptr i8, ptr %arr, i32 %div8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %1 to i32
  %and = and i32 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qlink_acl_data_cfg2q(ptr nocapture noundef readonly %acl, ptr nocapture noundef writeonly %qacl) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %acl, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 16777216, %sw.bb1 ], [ %1, %entry.sw.epilog.sink.split_crit_edge ]
  %3 = ptrtoint ptr %qacl to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %.sink, ptr %qacl, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %n_acl_entries = getelementptr inbounds %struct.cfg80211_acl_data, ptr %acl, i32 0, i32 1
  %4 = ptrtoint ptr %n_acl_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_acl_entries, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %num_entries = getelementptr inbounds %struct.qlink_acl_data, ptr %qacl, i32 0, i32 1
  %7 = ptrtoint ptr %num_entries to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %num_entries, align 1
  %mac_addrs = getelementptr inbounds %struct.qlink_acl_data, ptr %qacl, i32 0, i32 2
  %mac_addrs3 = getelementptr inbounds %struct.cfg80211_acl_data, ptr %acl, i32 0, i32 2
  %8 = ptrtoint ptr %n_acl_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_acl_entries, align 4
  %mul = mul i32 %9, 6
  %10 = call ptr @memcpy(ptr %mac_addrs, ptr %mac_addrs3, i32 %mul)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qlink_utils_band_cfg2q(i32 noundef %band) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %band)
  %0 = icmp ult i32 %band, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qlink_utils_band_cfg2q, i32 0, i32 %band
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qlink_utils_dfs_state_cfg2q(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %switch.selectcmp = icmp eq i32 %state, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %switch.selectcmp3 = icmp eq i32 %state, 0
  %switch.select4 = select i1 %switch.selectcmp3, i32 0, i32 %switch.select
  ret i32 %switch.select4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qlink_utils_chflags_cfg2q(i32 noundef %cfgflags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %cfgflags, 443
  ret i32 %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qlink_utils_regrule_q2nl(ptr nocapture noundef writeonly %rule, ptr nocapture noundef readonly %tlv) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start_freq_khz = getelementptr inbounds %struct.qlink_tlv_reg_rule, ptr %tlv, i32 0, i32 1
  %0 = ptrtoint ptr %start_freq_khz to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %start_freq_khz, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rule, align 4
  %end_freq_khz = getelementptr inbounds %struct.qlink_tlv_reg_rule, ptr %tlv, i32 0, i32 2
  %4 = ptrtoint ptr %end_freq_khz to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %end_freq_khz, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %end_freq_khz3 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %end_freq_khz3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %end_freq_khz3, align 4
  %max_bandwidth_khz = getelementptr inbounds %struct.qlink_tlv_reg_rule, ptr %tlv, i32 0, i32 3
  %8 = ptrtoint ptr %max_bandwidth_khz to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %max_bandwidth_khz, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %max_bandwidth_khz5 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %rule, i32 0, i32 2
  %11 = ptrtoint ptr %max_bandwidth_khz5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_bandwidth_khz5, align 4
  %max_antenna_gain = getelementptr inbounds %struct.qlink_tlv_reg_rule, ptr %tlv, i32 0, i32 4
  %12 = ptrtoint ptr %max_antenna_gain to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %max_antenna_gain, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %power_rule = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %rule, i32 0, i32 1
  %15 = ptrtoint ptr %power_rule to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %power_rule, align 4
  %max_eirp = getelementptr inbounds %struct.qlink_tlv_reg_rule, ptr %tlv, i32 0, i32 5
  %16 = ptrtoint ptr %max_eirp to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %max_eirp, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %max_eirp8 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %rule, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %max_eirp8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_eirp8, align 4
  %dfs_cac_ms = getelementptr inbounds %struct.qlink_tlv_reg_rule, ptr %tlv, i32 0, i32 7
  %20 = ptrtoint ptr %dfs_cac_ms to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %dfs_cac_ms, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %dfs_cac_ms9 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %rule, i32 0, i32 4
  %23 = ptrtoint ptr %dfs_cac_ms9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dfs_cac_ms9, align 4
  %flags = getelementptr inbounds %struct.qlink_tlv_reg_rule, ptr %tlv, i32 0, i32 6
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %flags, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = and i32 %26, 255
  %and36.i = shl i32 %26, 3
  %28 = and i32 %and36.i, 2048
  %29 = or i32 %28, %27
  %30 = and i32 %and36.i, 4096
  %31 = or i32 %29, %30
  %32 = and i32 %and36.i, 8192
  %33 = or i32 %31, %32
  %34 = and i32 %and36.i, 16384
  %35 = or i32 %33, %34
  %36 = and i32 %and36.i, 32768
  %37 = or i32 %35, %36
  %38 = and i32 %and36.i, 65536
  %39 = or i32 %37, %38
  %flags10 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %rule, i32 0, i32 3
  %40 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %flags10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

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
