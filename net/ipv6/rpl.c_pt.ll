; ModuleID = '/llk/IR_all_yes/net/ipv6/rpl.c_pt.bc'
source_filename = "../net/ipv6/rpl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ipv6_rpl_sr_hdr = type { i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { [0 x %struct.in6_addr] }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ipv6_rpl_srh_size(i8 noundef zeroext %n, i8 noundef zeroext %cmpri, i8 noundef zeroext %cmpre) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %n to i32
  %conv1 = zext i8 %cmpri to i32
  %sub = sub nsw i32 16, %conv1
  %mul = mul nsw i32 %sub, %conv
  %conv2 = zext i8 %cmpre to i32
  %sub3 = sub nsw i32 16, %conv2
  %add = add nsw i32 %sub3, %mul
  ret i32 %add
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_rpl_srh_decompress(ptr nocapture noundef %outhdr, ptr nocapture noundef readonly %inhdr, ptr nocapture noundef readonly %daddr, i8 noundef zeroext %n) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inhdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %inhdr, align 1
  %2 = ptrtoint ptr %outhdr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %outhdr, align 1
  %conv = zext i8 %n to i32
  %add = shl nuw nsw i32 %conv, 4
  %mul = add nuw nsw i32 %add, 16
  %shr = lshr exact i32 %mul, 3
  %conv2 = trunc i32 %shr to i8
  %hdrlen = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 1
  %3 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %hdrlen, align 1
  %pad = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 4
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load = load i32, ptr %pad, align 1
  %bf.clear = and i32 %bf.load, -15728641
  store i32 %bf.clear, ptr %pad, align 1
  %type = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %inhdr, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 1
  %type3 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 2
  %7 = ptrtoint ptr %type3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %type3, align 1
  %segments_left = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %inhdr, i32 0, i32 3
  %8 = ptrtoint ptr %segments_left to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %segments_left, align 1
  %segments_left4 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 3
  %10 = ptrtoint ptr %segments_left4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %segments_left4, align 1
  %bf.clear9 = and i32 %bf.load, 1048575
  store i32 %bf.clear9, ptr %pad, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %n)
  %cmp58.not = icmp eq i8 %n, 0
  br i1 %cmp58.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %segments = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 5
  %segments.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %inhdr, i32 0, i32 5
  %cmpri.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %inhdr, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.in6_addr], ptr %segments, i32 0, i32 %i.059
  %11 = ptrtoint ptr %cmpri.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load.i = load i32, ptr %cmpri.i, align 1
  %bf.lshr.i = lshr i32 %bf.load.i, 28
  %sub.i = sub nuw nsw i32 16, %bf.lshr.i
  %mul.i = mul i32 %sub.i, %i.059
  %arrayidx.i = getelementptr [0 x i8], ptr %segments.i, i32 0, i32 %mul.i
  %12 = call ptr @memcpy(ptr %arrayidx, ptr %daddr, i32 %bf.lshr.i)
  %arrayidx.i46 = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 %bf.lshr.i
  %13 = call ptr @memcpy(ptr %arrayidx.i46, ptr %arrayidx.i, i32 %sub.i)
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %segments16 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 5
  %arrayidx17 = getelementptr [0 x %struct.in6_addr], ptr %segments16, i32 0, i32 %conv
  %segments.i48 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %inhdr, i32 0, i32 5
  %cmpri.i49 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %inhdr, i32 0, i32 4
  %14 = ptrtoint ptr %cmpri.i49 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load.i50 = load i32, ptr %cmpri.i49, align 1
  %bf.lshr.i51 = lshr i32 %bf.load.i50, 28
  %sub.i52 = sub nuw nsw i32 16, %bf.lshr.i51
  %mul.i53 = mul nuw nsw i32 %sub.i52, %conv
  %arrayidx.i54 = getelementptr [0 x i8], ptr %segments.i48, i32 0, i32 %mul.i53
  %bf.lshr22 = lshr i32 %bf.load.i50, 24
  %conv24 = and i32 %bf.lshr22, 15
  %15 = call ptr @memcpy(ptr %arrayidx17, ptr %daddr, i32 %conv24)
  %arrayidx.i56 = getelementptr [16 x i8], ptr %arrayidx17, i32 0, i32 %conv24
  %sub.i57 = sub nuw nsw i32 16, %conv24
  %16 = call ptr @memcpy(ptr %arrayidx.i56, ptr %arrayidx.i54, i32 %sub.i57)
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_rpl_srh_compress(ptr nocapture noundef %outhdr, ptr nocapture noundef readonly %inhdr, ptr nocapture noundef readonly %daddr, i8 noundef zeroext %n) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv3.i = zext i8 %n to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %n)
  %cmp427.not.i = icmp eq i8 %n, 0
  %segments.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %inhdr, i32 0, i32 5
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc15.i.for.cond2.preheader.i_crit_edge, %entry
  %indvars.iv.i = phi i32 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc15.i.for.cond2.preheader.i_crit_edge ]
  br i1 %cmp427.not.i, label %for.cond2.preheader.i.for.inc15.i_crit_edge, label %for.body6.lr.ph.i

for.cond2.preheader.i.for.inc15.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc15.i

for.body6.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %arrayidx.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 %indvars.iv.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  br label %for.body6.i

for.cond2.i:                                      ; preds = %for.body6.i
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv3.i
  br i1 %exitcond.not.i, label %for.cond2.i.for.inc15.i_crit_edge, label %for.cond2.i.for.body6.i_crit_edge

for.cond2.i.for.body6.i_crit_edge:                ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body6.i

for.cond2.i.for.inc15.i_crit_edge:                ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc15.i

for.body6.i:                                      ; preds = %for.cond2.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i, %for.cond2.i.for.body6.i_crit_edge ]
  %arrayidx8.i = getelementptr [0 x %struct.in6_addr], ptr %segments.i, i32 0, i32 %i.028.i
  %arrayidx11.i = getelementptr [16 x i8], ptr %arrayidx8.i, i32 0, i32 %indvars.iv.i
  %2 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp13.not.i = icmp eq i8 %1, %3
  br i1 %cmp13.not.i, label %for.cond2.i, label %cleanup.loopexit.i

for.inc15.i:                                      ; preds = %for.cond2.i.for.inc15.i_crit_edge, %for.cond2.preheader.i.for.inc15.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond34.not.i = icmp eq i32 %indvars.iv.next.i, 16
  br i1 %exitcond34.not.i, label %for.inc15.i.ipv6_rpl_srh_calc_cmpri.exit_crit_edge, label %for.inc15.i.for.cond2.preheader.i_crit_edge

for.inc15.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond2.preheader.i

for.inc15.i.ipv6_rpl_srh_calc_cmpri.exit_crit_edge: ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpri.exit

cleanup.loopexit.i:                               ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #4
  %phi.cast = and i32 %indvars.iv.i, 255
  br label %ipv6_rpl_srh_calc_cmpri.exit

ipv6_rpl_srh_calc_cmpri.exit:                     ; preds = %cleanup.loopexit.i, %for.inc15.i.ipv6_rpl_srh_calc_cmpri.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %cleanup.loopexit.i ], [ 15, %for.inc15.i.ipv6_rpl_srh_calc_cmpri.exit_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.in6_addr], ptr %segments.i, i32 0, i32 %conv3.i
  %4 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %daddr, align 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp4.not.i = icmp eq i8 %5, %7
  br i1 %cmp4.not.i, label %for.inc.i, label %ipv6_rpl_srh_calc_cmpri.exit.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

ipv6_rpl_srh_calc_cmpri.exit.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %ipv6_rpl_srh_calc_cmpri.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.i:                                        ; preds = %ipv6_rpl_srh_calc_cmpri.exit
  %arrayidx.1.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx2.1.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp4.not.1.i = icmp eq i8 %9, %11
  br i1 %cmp4.not.1.i, label %for.inc.1.i, label %for.inc.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx2.2.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp4.not.2.i = icmp eq i8 %13, %15
  br i1 %cmp4.not.2.i, label %for.inc.2.i, label %for.inc.1.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.1.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx2.3.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp4.not.3.i = icmp eq i8 %17, %19
  br i1 %cmp4.not.3.i, label %for.inc.3.i, label %for.inc.2.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.2.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx2.4.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp4.not.4.i = icmp eq i8 %21, %23
  br i1 %cmp4.not.4.i, label %for.inc.4.i, label %for.inc.3.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.3.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx2.5.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 5
  %26 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp4.not.5.i = icmp eq i8 %25, %27
  br i1 %cmp4.not.5.i, label %for.inc.5.i, label %for.inc.4.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.4.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 6
  %28 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.6.i, align 1
  %arrayidx2.6.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx2.6.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx2.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp4.not.6.i = icmp eq i8 %29, %31
  br i1 %cmp4.not.6.i, label %for.inc.6.i, label %for.inc.5.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.5.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 7
  %32 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.7.i, align 1
  %arrayidx2.7.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 7
  %34 = ptrtoint ptr %arrayidx2.7.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx2.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp4.not.7.i = icmp eq i8 %33, %35
  br i1 %cmp4.not.7.i, label %for.inc.7.i, label %for.inc.6.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.6.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %arrayidx.8.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 8
  %36 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.8.i, align 1
  %arrayidx2.8.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 8
  %38 = ptrtoint ptr %arrayidx2.8.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx2.8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp4.not.8.i = icmp eq i8 %37, %39
  br i1 %cmp4.not.8.i, label %for.inc.8.i, label %for.inc.7.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.7.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %arrayidx.9.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 9
  %40 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.9.i, align 1
  %arrayidx2.9.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 9
  %42 = ptrtoint ptr %arrayidx2.9.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx2.9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp4.not.9.i = icmp eq i8 %41, %43
  br i1 %cmp4.not.9.i, label %for.inc.9.i, label %for.inc.8.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.8.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %arrayidx.10.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 10
  %44 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.10.i, align 1
  %arrayidx2.10.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 10
  %46 = ptrtoint ptr %arrayidx2.10.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx2.10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp4.not.10.i = icmp eq i8 %45, %47
  br i1 %cmp4.not.10.i, label %for.inc.10.i, label %for.inc.9.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.9.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %arrayidx.11.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 11
  %48 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.11.i, align 1
  %arrayidx2.11.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 11
  %50 = ptrtoint ptr %arrayidx2.11.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx2.11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp4.not.11.i = icmp eq i8 %49, %51
  br i1 %cmp4.not.11.i, label %for.inc.11.i, label %for.inc.10.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.10.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %arrayidx.12.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 12
  %52 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.12.i, align 1
  %arrayidx2.12.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 12
  %54 = ptrtoint ptr %arrayidx2.12.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx2.12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp4.not.12.i = icmp eq i8 %53, %55
  br i1 %cmp4.not.12.i, label %for.inc.12.i, label %for.inc.11.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.11.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %arrayidx.13.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 13
  %56 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.13.i, align 1
  %arrayidx2.13.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 13
  %58 = ptrtoint ptr %arrayidx2.13.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx2.13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp4.not.13.i = icmp eq i8 %57, %59
  br i1 %cmp4.not.13.i, label %for.inc.13.i, label %for.inc.12.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge

for.inc.12.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge: ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ipv6_rpl_srh_calc_cmpre.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx.14.i = getelementptr [16 x i8], ptr %daddr, i32 0, i32 14
  %60 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.14.i, align 1
  %arrayidx2.14.i = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 14
  %62 = ptrtoint ptr %arrayidx2.14.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx2.14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp4.not.14.i = icmp eq i8 %61, %63
  %spec.select.i = select i1 %cmp4.not.14.i, i32 15, i32 14
  br label %ipv6_rpl_srh_calc_cmpre.exit

ipv6_rpl_srh_calc_cmpre.exit:                     ; preds = %for.inc.13.i, %for.inc.12.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.11.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.10.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.9.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.8.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.7.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.6.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.5.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.4.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.3.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.2.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.1.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %for.inc.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge, %ipv6_rpl_srh_calc_cmpri.exit.ipv6_rpl_srh_calc_cmpre.exit_crit_edge
  %retval.0.i72 = phi i32 [ 0, %ipv6_rpl_srh_calc_cmpri.exit.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 1, %for.inc.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 2, %for.inc.1.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 3, %for.inc.2.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 4, %for.inc.3.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 5, %for.inc.4.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 6, %for.inc.5.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 7, %for.inc.6.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 8, %for.inc.7.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 9, %for.inc.8.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 10, %for.inc.9.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 11, %for.inc.10.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 12, %for.inc.11.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ 13, %for.inc.12.i.ipv6_rpl_srh_calc_cmpre.exit_crit_edge ], [ %spec.select.i, %for.inc.13.i ]
  %64 = ptrtoint ptr %inhdr to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %inhdr, align 1
  %66 = ptrtoint ptr %outhdr to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %outhdr, align 1
  %sub = sub nsw i32 16, %retval.0.i
  %mul = mul nsw i32 %sub, %conv3.i
  %sub5 = sub nuw nsw i32 16, %retval.0.i72
  %add = add nsw i32 %sub5, %mul
  %shr = lshr i32 %add, 3
  %conv6 = trunc i32 %shr to i8
  %hdrlen = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 1
  %67 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv6, ptr %hdrlen, align 1
  %and = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %ipv6_rpl_srh_calc_cmpre.exit
  call void @__sanitizer_cov_trace_pc() #4
  %inc = add i8 %conv6, 1
  %68 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %inc, ptr %hdrlen, align 1
  %pad = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 4
  %69 = ptrtoint ptr %pad to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %bf.load = load i32, ptr %pad, align 1
  %.neg = mul nsw i32 %and, -1048576
  %bf.shl = add nsw i32 %.neg, 8388608
  %bf.clear = and i32 %bf.load, -15728641
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %pad, align 1
  br label %if.end

if.else:                                          ; preds = %ipv6_rpl_srh_calc_cmpre.exit
  call void @__sanitizer_cov_trace_pc() #4
  %pad10 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 4
  %70 = ptrtoint ptr %pad10 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %bf.load11 = load i32, ptr %pad10, align 1
  %bf.clear12 = and i32 %bf.load11, -15728641
  store i32 %bf.clear12, ptr %pad10, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %type = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %inhdr, i32 0, i32 2
  %71 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %type, align 1
  %type14 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 2
  %73 = ptrtoint ptr %type14 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %type14, align 1
  %segments_left = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %inhdr, i32 0, i32 3
  %74 = ptrtoint ptr %segments_left to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %segments_left, align 1
  %segments_left15 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 3
  %76 = ptrtoint ptr %segments_left15 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %segments_left15, align 1
  %cmpri17 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 4
  %77 = ptrtoint ptr %cmpri17 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %bf.load18 = load i32, ptr %cmpri17, align 1
  %bf.shl20 = shl i32 %retval.0.i, 28
  %bf.clear21 = and i32 %bf.load18, 16777215
  %bf.set22 = or i32 %bf.clear21, %bf.shl20
  %bf.value26 = shl nuw nsw i32 %retval.0.i72, 24
  %bf.set29 = or i32 %bf.set22, %bf.value26
  store i32 %bf.set29, ptr %cmpri17, align 1
  br i1 %cmp427.not.i, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %segments.i73 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc35, %for.body.for.body_crit_edge ]
  %78 = ptrtoint ptr %cmpri17 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %bf.load.i = load i32, ptr %cmpri17, align 1
  %bf.lshr.i = lshr i32 %bf.load.i, 28
  %sub.i = sub nuw nsw i32 16, %bf.lshr.i
  %mul.i = mul i32 %sub.i, %i.090
  %arrayidx.i74 = getelementptr [0 x i8], ptr %segments.i73, i32 0, i32 %mul.i
  %arrayidx34 = getelementptr [0 x %struct.in6_addr], ptr %segments.i, i32 0, i32 %i.090
  %arrayidx.i75 = getelementptr [16 x i8], ptr %arrayidx34, i32 0, i32 %retval.0.i
  %79 = call ptr @memcpy(ptr %arrayidx.i74, ptr %arrayidx.i75, i32 %sub)
  %inc35 = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc35, %conv3.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %segments.i77 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %outhdr, i32 0, i32 5
  %80 = ptrtoint ptr %cmpri17 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %bf.load.i79 = load i32, ptr %cmpri17, align 1
  %bf.lshr.i80 = lshr i32 %bf.load.i79, 28
  %sub.i81 = sub nuw nsw i32 16, %bf.lshr.i80
  %mul.i82 = mul nuw nsw i32 %sub.i81, %conv3.i
  %arrayidx.i83 = getelementptr [0 x i8], ptr %segments.i77, i32 0, i32 %mul.i82
  %arrayidx.i85 = getelementptr [16 x i8], ptr %arrayidx, i32 0, i32 %retval.0.i72
  %81 = call ptr @memcpy(ptr %arrayidx.i83, ptr %arrayidx.i85, i32 %sub5)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
