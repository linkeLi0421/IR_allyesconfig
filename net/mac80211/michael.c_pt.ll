; ModuleID = '/llk/IR_all_yes/net/mac80211/michael.c_pt.bc'
source_filename = "../net/mac80211/michael.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @michael_mic(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %data, i32 noundef %data_len, ptr nocapture noundef writeonly %mic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdr, align 2
  %addr3.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %2 = and i16 %1, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %2)
  %cmp.i.i.i = icmp eq i16 %2, 3
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %addr4.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 6
  br label %ieee80211_get_SA.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %3 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i11.not.i.i = icmp eq i16 %3, 0
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %spec.select.i = select i1 %cmp.i11.not.i.i, ptr %addr2.i.i, ptr %addr3.i.i
  br label %ieee80211_get_SA.exit.i

ieee80211_get_SA.exit.i:                          ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i25.i = phi ptr [ %addr4.i.i, %if.then.i.i ], [ %spec.select.i, %if.end.i.i ]
  %4 = and i16 %1, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %4)
  %cmp.i.i = icmp eq i16 %4, -30720
  br i1 %cmp.i.i, label %if.then.i, label %ieee80211_get_SA.exit.i.michael_mic_hdr.exit_crit_edge

ieee80211_get_SA.exit.i.michael_mic_hdr.exit_crit_edge: ; preds = %ieee80211_get_SA.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %michael_mic_hdr.exit

if.then.i:                                        ; preds = %ieee80211_get_SA.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i.i = getelementptr i8, ptr %hdr, i32 %retval.0.v.i.i.i
  %5 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %retval.0.i.i.i, align 1
  %7 = and i8 %6, 15
  %phi.cast.i = zext i8 %7 to i32
  br label %michael_mic_hdr.exit

michael_mic_hdr.exit:                             ; preds = %if.then.i, %ieee80211_get_SA.exit.i.michael_mic_hdr.exit_crit_edge
  %tid.0.i = phi i32 [ %phi.cast.i, %if.then.i ], [ 0, %ieee80211_get_SA.exit.i.michael_mic_hdr.exit_crit_edge ]
  %8 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.not.i.i = icmp eq i16 %8, 0
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %retval.0.i.i = select i1 %cmp.i.not.i.i, ptr %addr1.i.i, ptr %addr3.i.i
  %9 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %key, align 1
  %add.ptr.i = getelementptr i8, ptr %key, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #2
  %14 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %retval.0.i.i, align 1
  %16 = xor i32 %15, %10
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #2
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17) #2
  %xor2.i.i = xor i32 %or.i.i.i, %13
  %add.i.i = add i32 %xor2.i.i, %17
  %and.i.i = lshr i32 %add.i.i, 8
  %shr.i.i = and i32 %and.i.i, 16711935
  %and7.i.i = shl i32 %add.i.i, 8
  %shl.i.i = and i32 %and7.i.i, -16711936
  %or.i.i = or i32 %shr.i.i, %shl.i.i
  %xor9.i.i = xor i32 %or.i.i, %xor2.i.i
  %add12.i.i = add i32 %xor9.i.i, %add.i.i
  %or.i44.i.i = tail call i32 @llvm.fshl.i32(i32 %add12.i.i, i32 %add12.i.i, i32 3) #2
  %xor16.i.i = xor i32 %or.i44.i.i, %xor9.i.i
  %add19.i.i = add i32 %xor16.i.i, %add12.i.i
  %or.i45.i.i = tail call i32 @llvm.fshl.i32(i32 %add19.i.i, i32 %add19.i.i, i32 30) #2
  %xor23.i.i = xor i32 %or.i45.i.i, %xor16.i.i
  %add26.i.i = add i32 %xor23.i.i, %add19.i.i
  %arrayidx.i = getelementptr i8, ptr %retval.0.i.i, i32 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayidx.i, align 1
  %20 = ptrtoint ptr %retval.0.i25.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %retval.0.i25.i, align 1
  %22 = zext i16 %21 to i32
  %23 = zext i16 %19 to i32
  %24 = shl nuw i32 %23, 16
  %25 = or i32 %24, %22
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #2
  %xor.i26.i = xor i32 %add26.i.i, %26
  %or.i.i27.i = tail call i32 @llvm.fshl.i32(i32 %xor.i26.i, i32 %xor.i26.i, i32 17) #2
  %xor2.i29.i = xor i32 %or.i.i27.i, %xor23.i.i
  %add.i30.i = add i32 %xor2.i29.i, %xor.i26.i
  %and.i31.i = lshr i32 %add.i30.i, 8
  %shr.i32.i = and i32 %and.i31.i, 16711935
  %and7.i33.i = shl i32 %add.i30.i, 8
  %shl.i34.i = and i32 %and7.i33.i, -16711936
  %or.i35.i = or i32 %shr.i32.i, %shl.i34.i
  %xor9.i36.i = xor i32 %or.i35.i, %xor2.i29.i
  %add12.i37.i = add i32 %xor9.i36.i, %add.i30.i
  %or.i44.i38.i = tail call i32 @llvm.fshl.i32(i32 %add12.i37.i, i32 %add12.i37.i, i32 3) #2
  %xor16.i39.i = xor i32 %or.i44.i38.i, %xor9.i36.i
  %add19.i40.i = add i32 %xor16.i39.i, %add12.i37.i
  %or.i45.i41.i = tail call i32 @llvm.fshl.i32(i32 %add19.i40.i, i32 %add19.i40.i, i32 30) #2
  %xor23.i42.i = xor i32 %or.i45.i41.i, %xor16.i39.i
  %add26.i43.i = add i32 %xor23.i42.i, %add19.i40.i
  %arrayidx10.i = getelementptr i8, ptr %retval.0.i25.i, i32 2
  %27 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %arrayidx10.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #2
  %xor.i44.i = xor i32 %add26.i43.i, %29
  %or.i.i45.i = tail call i32 @llvm.fshl.i32(i32 %xor.i44.i, i32 %xor.i44.i, i32 17) #2
  %xor2.i47.i = xor i32 %or.i.i45.i, %xor23.i42.i
  %add.i48.i = add i32 %xor2.i47.i, %xor.i44.i
  %and.i49.i = lshr i32 %add.i48.i, 8
  %shr.i50.i = and i32 %and.i49.i, 16711935
  %and7.i51.i = shl i32 %add.i48.i, 8
  %shl.i52.i = and i32 %and7.i51.i, -16711936
  %or.i53.i = or i32 %shr.i50.i, %shl.i52.i
  %xor9.i54.i = xor i32 %or.i53.i, %xor2.i47.i
  %add12.i55.i = add i32 %xor9.i54.i, %add.i48.i
  %or.i44.i56.i = tail call i32 @llvm.fshl.i32(i32 %add12.i55.i, i32 %add12.i55.i, i32 3) #2
  %xor16.i57.i = xor i32 %or.i44.i56.i, %xor9.i54.i
  %add19.i58.i = add i32 %xor16.i57.i, %add12.i55.i
  %or.i45.i59.i = tail call i32 @llvm.fshl.i32(i32 %add19.i58.i, i32 %add19.i58.i, i32 30) #2
  %xor23.i60.i = xor i32 %or.i45.i59.i, %xor16.i57.i
  %add26.i61.i = add i32 %xor23.i60.i, %add19.i58.i
  %xor.i62.i = xor i32 %add26.i61.i, %tid.0.i
  %or.i.i63.i = tail call i32 @llvm.fshl.i32(i32 %xor.i62.i, i32 %add26.i61.i, i32 17) #2
  %xor2.i65.i = xor i32 %or.i.i63.i, %xor23.i60.i
  %add.i66.i = add i32 %xor2.i65.i, %xor.i62.i
  %and.i67.i = lshr i32 %add.i66.i, 8
  %shr.i68.i = and i32 %and.i67.i, 16711935
  %and7.i69.i = shl i32 %add.i66.i, 8
  %shl.i70.i = and i32 %and7.i69.i, -16711936
  %or.i71.i = or i32 %shr.i68.i, %shl.i70.i
  %xor9.i72.i = xor i32 %or.i71.i, %xor2.i65.i
  %add12.i73.i = add i32 %xor9.i72.i, %add.i66.i
  %or.i44.i74.i = tail call i32 @llvm.fshl.i32(i32 %add12.i73.i, i32 %add12.i73.i, i32 3) #2
  %xor16.i75.i = xor i32 %or.i44.i74.i, %xor9.i72.i
  %add19.i76.i = add i32 %xor16.i75.i, %add12.i73.i
  %or.i45.i77.i = tail call i32 @llvm.fshl.i32(i32 %add19.i76.i, i32 %add19.i76.i, i32 30) #2
  %xor23.i78.i = xor i32 %or.i45.i77.i, %xor16.i75.i
  %add26.i79.i = add i32 %xor23.i78.i, %add19.i76.i
  %rem = and i32 %data_len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %data_len)
  %cmp58.not = icmp ult i32 %data_len, 4
  br i1 %cmp58.not, label %michael_mic_hdr.exit.while.cond.preheader_crit_edge, label %for.body.preheader

michael_mic_hdr.exit.while.cond.preheader_crit_edge: ; preds = %michael_mic_hdr.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.preheader

for.body.preheader:                               ; preds = %michael_mic_hdr.exit
  %div14 = lshr i32 %data_len, 2
  br label %for.body

while.cond.preheader:                             ; preds = %for.body.while.cond.preheader_crit_edge, %michael_mic_hdr.exit.while.cond.preheader_crit_edge
  %mctx.sroa.14.0.lcssa = phi i32 [ %xor23.i78.i, %michael_mic_hdr.exit.while.cond.preheader_crit_edge ], [ %xor23.i, %for.body.while.cond.preheader_crit_edge ]
  %mctx.sroa.0.0.lcssa = phi i32 [ %add26.i79.i, %michael_mic_hdr.exit.while.cond.preheader_crit_edge ], [ %add26.i, %for.body.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp1.not63 = icmp eq i32 %rem, 0
  br i1 %cmp1.not63, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %mul2 = and i32 %data_len, -4
  %dec = add nsw i32 %rem, -1
  %add = add i32 %dec, %mul2
  %arrayidx3 = getelementptr i8, ptr %data, i32 %add
  %30 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %31 to i32
  %or = or i32 %conv, 23040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp1.not = icmp eq i32 %dec, 0
  br i1 %cmp1.not, label %while.body.lr.ph.while.end_crit_edge, label %while.body.1

while.body.lr.ph.while.end_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %block.061 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mctx.sroa.0.060 = phi i32 [ %add26.i, %for.body.for.body_crit_edge ], [ %add26.i79.i, %for.body.preheader ]
  %mctx.sroa.14.059 = phi i32 [ %xor23.i, %for.body.for.body_crit_edge ], [ %xor23.i78.i, %for.body.preheader ]
  %mul = shl i32 %block.061, 2
  %arrayidx = getelementptr i8, ptr %data, i32 %mul
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #2
  %xor.i = xor i32 %34, %mctx.sroa.0.060
  %or.i.i15 = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 17) #2
  %xor2.i = xor i32 %or.i.i15, %mctx.sroa.14.059
  %add.i = add i32 %xor2.i, %xor.i
  %and.i = lshr i32 %add.i, 8
  %shr.i = and i32 %and.i, 16711935
  %and7.i = shl i32 %add.i, 8
  %shl.i = and i32 %and7.i, -16711936
  %or.i = or i32 %shr.i, %shl.i
  %xor9.i = xor i32 %or.i, %xor2.i
  %add12.i = add i32 %xor9.i, %add.i
  %or.i44.i = tail call i32 @llvm.fshl.i32(i32 %add12.i, i32 %add12.i, i32 3) #2
  %xor16.i = xor i32 %or.i44.i, %xor9.i
  %add19.i = add i32 %xor16.i, %add12.i
  %or.i45.i = tail call i32 @llvm.fshl.i32(i32 %add19.i, i32 %add19.i, i32 30) #2
  %xor23.i = xor i32 %or.i45.i, %xor16.i
  %add26.i = add i32 %xor23.i, %add19.i
  %inc = add nuw nsw i32 %block.061, 1
  %exitcond.not = icmp eq i32 %inc, %div14
  br i1 %exitcond.not, label %for.body.while.cond.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.while.cond.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.preheader

while.body.1:                                     ; preds = %while.body.lr.ph
  %shl.1 = shl nuw nsw i32 %or, 8
  %dec.1 = add nsw i32 %rem, -2
  %add.1 = add i32 %dec.1, %mul2
  %arrayidx3.1 = getelementptr i8, ptr %data, i32 %add.1
  %35 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx3.1, align 1
  %conv.1 = zext i8 %36 to i32
  %or.1 = or i32 %shl.1, %conv.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %cmp1.not.1 = icmp eq i32 %dec.1, 0
  br i1 %cmp1.not.1, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #4
  %shl.2 = shl nuw nsw i32 %or.1, 8
  %dec.2 = add nsw i32 %rem, -3
  %add.2 = add i32 %dec.2, %mul2
  %arrayidx3.2 = getelementptr i8, ptr %data, i32 %add.2
  %37 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx3.2, align 1
  %conv.2 = zext i8 %38 to i32
  %or.2 = or i32 %shl.2, %conv.2
  br label %while.end

while.end:                                        ; preds = %while.body.2, %while.body.1.while.end_crit_edge, %while.body.lr.ph.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %val.0.lcssa = phi i32 [ 90, %while.cond.preheader.while.end_crit_edge ], [ %or, %while.body.lr.ph.while.end_crit_edge ], [ %or.1, %while.body.1.while.end_crit_edge ], [ %or.2, %while.body.2 ]
  %xor.i17 = xor i32 %val.0.lcssa, %mctx.sroa.0.0.lcssa
  %or.i.i18 = tail call i32 @llvm.fshl.i32(i32 %xor.i17, i32 %xor.i17, i32 17) #2
  %xor2.i20 = xor i32 %or.i.i18, %mctx.sroa.14.0.lcssa
  %add.i21 = add i32 %xor2.i20, %xor.i17
  %and.i22 = lshr i32 %add.i21, 8
  %shr.i23 = and i32 %and.i22, 16711935
  %and7.i24 = shl i32 %add.i21, 8
  %shl.i25 = and i32 %and7.i24, -16711936
  %or.i26 = or i32 %shr.i23, %shl.i25
  %xor9.i27 = xor i32 %or.i26, %xor2.i20
  %add12.i28 = add i32 %xor9.i27, %add.i21
  %or.i44.i29 = tail call i32 @llvm.fshl.i32(i32 %add12.i28, i32 %add12.i28, i32 3) #2
  %xor16.i30 = xor i32 %or.i44.i29, %xor9.i27
  %add19.i31 = add i32 %xor16.i30, %add12.i28
  %or.i45.i32 = tail call i32 @llvm.fshl.i32(i32 %add19.i31, i32 %add19.i31, i32 30) #2
  %xor23.i33 = xor i32 %or.i45.i32, %xor16.i30
  %add26.i34 = add i32 %xor23.i33, %add19.i31
  %or.i.i35 = tail call i32 @llvm.fshl.i32(i32 %add26.i34, i32 %add26.i34, i32 17) #2
  %xor2.i37 = xor i32 %or.i.i35, %xor23.i33
  %add.i38 = add i32 %xor2.i37, %add26.i34
  %and.i39 = lshr i32 %add.i38, 8
  %shr.i40 = and i32 %and.i39, 16711935
  %and7.i41 = shl i32 %add.i38, 8
  %shl.i42 = and i32 %and7.i41, -16711936
  %or.i43 = or i32 %shr.i40, %shl.i42
  %xor9.i44 = xor i32 %or.i43, %xor2.i37
  %add12.i45 = add i32 %xor9.i44, %add.i38
  %or.i44.i46 = tail call i32 @llvm.fshl.i32(i32 %add12.i45, i32 %add12.i45, i32 3) #2
  %xor16.i47 = xor i32 %or.i44.i46, %xor9.i44
  %add19.i48 = add i32 %xor16.i47, %add12.i45
  %or.i45.i49 = tail call i32 @llvm.fshl.i32(i32 %add19.i48, i32 %add19.i48, i32 30) #2
  %xor23.i50 = xor i32 %or.i45.i49, %xor16.i47
  %add26.i51 = add i32 %xor23.i50, %add19.i48
  %39 = tail call i32 @llvm.bswap.i32(i32 %add26.i51) #2
  %40 = ptrtoint ptr %mic to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %mic, align 1
  %add.ptr = getelementptr i8, ptr %mic, i32 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %xor23.i50) #2
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %add.ptr, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
