; ModuleID = '/llk/IR_all_yes/drivers/block/drbd/drbd_nla.c_pt.bc'
source_filename = "../drivers/block/drbd/drbd_nla.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nlattr = type { i16, i16 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_nla_parse_nested(ptr noundef %tb, i32 noundef %maxtype, ptr noundef %nla, ptr noundef %policy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nla, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %1)
  %cmp.i28.i = icmp ugt i16 %1, 7
  br i1 %cmp.i28.i, label %land.lhs.true.i.preheader.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

land.lhs.true.i.preheader.i:                      ; preds = %entry
  %conv.i.i = zext i16 %1 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.preheader.i
  %nla.addr.030.i = phi ptr [ %add.ptr.i25.i, %for.inc.i.land.lhs.true.i.i_crit_edge ], [ %add.ptr.i.i, %land.lhs.true.i.preheader.i ]
  %rem.029.i = phi i32 [ %sub1.i.i, %for.inc.i.land.lhs.true.i.i_crit_edge ], [ %sub.i.i, %land.lhs.true.i.preheader.i ]
  %2 = ptrtoint ptr %nla.addr.030.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nla.addr.030.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp1.i.i = icmp ult i16 %3, 4
  %conv.i21.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.029.i, i32 %conv.i21.i)
  %cmp5.i.not.i = icmp ult i32 %rem.029.i, %conv.i21.i
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.then_crit_edge, label %for.body.i

land.lhs.true.i.i.if.then_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.body.i:                                       ; preds = %land.lhs.true.i.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla.addr.030.i, i32 0, i32 1
  %4 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla_type.i, align 2
  %6 = and i16 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not.i = icmp eq i16 %6, 0
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %and6.i = and i16 %5, -16385
  %7 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %and6.i, ptr %nla_type.i, align 2
  %8 = and i16 %5, 16383
  %and.i.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %maxtype)
  %cmp.i = icmp sgt i32 %and.i.i, %maxtype
  br i1 %cmp.i, label %if.then.i.if.end_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %nla.addr.030.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nla.addr.030.i, align 2
  %conv.i22.i = zext i16 %10 to i32
  %sub.i23.i = add nuw nsw i32 %conv.i22.i, 3
  %and.i24.i = and i32 %sub.i23.i, 131068
  %sub1.i.i = sub nsw i32 %rem.029.i, %and.i24.i
  %add.ptr.i25.i = getelementptr i8, ptr %nla.addr.030.i, i32 %and.i24.i
  %cmp.i.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i.i, label %for.inc.i.land.lhs.true.i.i_crit_edge, label %for.inc.i.if.then_crit_edge

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true.i.i

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %land.lhs.true.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  %add.ptr.i.i5 = getelementptr i8, ptr %nla, i32 4
  %11 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nla, align 2
  %conv.i.i6 = zext i16 %12 to i32
  %sub.i.i7 = add nsw i32 %conv.i.i6, -4
  %call2.i = tail call i32 @__nla_parse(ptr noundef %tb, i32 noundef %maxtype, ptr noundef %add.ptr.i.i5, i32 noundef %sub.i.i7, ptr noundef %policy, i32 noundef 0, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then.i.if.end_crit_edge
  %err.0 = phi i32 [ %call2.i, %if.then ], [ -95, %if.then.i.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drbd_nla_find_nested(i32 noundef %maxtype, ptr noundef %nla, i32 noundef %attrtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nla, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %1)
  %cmp.i28.i = icmp ugt i16 %1, 7
  br i1 %cmp.i28.i, label %land.lhs.true.i.preheader.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true.i.preheader.i:                      ; preds = %entry
  %conv.i.i = zext i16 %1 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.preheader.i
  %nla.addr.030.i = phi ptr [ %add.ptr.i25.i, %for.inc.i.land.lhs.true.i.i_crit_edge ], [ %add.ptr.i.i, %land.lhs.true.i.preheader.i ]
  %rem.029.i = phi i32 [ %sub1.i.i, %for.inc.i.land.lhs.true.i.i_crit_edge ], [ %sub.i.i, %land.lhs.true.i.preheader.i ]
  %2 = ptrtoint ptr %nla.addr.030.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nla.addr.030.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp1.i.i = icmp ult i16 %3, 4
  %conv.i21.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.029.i, i32 %conv.i21.i)
  %cmp5.i.not.i = icmp ult i32 %rem.029.i, %conv.i21.i
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.end_crit_edge, label %for.body.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

for.body.i:                                       ; preds = %land.lhs.true.i.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla.addr.030.i, i32 0, i32 1
  %4 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla_type.i, align 2
  %6 = and i16 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not.i = icmp eq i16 %6, 0
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %and6.i = and i16 %5, -16385
  %7 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %and6.i, ptr %nla_type.i, align 2
  %8 = and i16 %5, 16383
  %and.i.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %maxtype)
  %cmp.i = icmp sgt i32 %and.i.i, %maxtype
  br i1 %cmp.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %nla.addr.030.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nla.addr.030.i, align 2
  %conv.i22.i = zext i16 %10 to i32
  %sub.i23.i = add nuw nsw i32 %conv.i22.i, 3
  %and.i24.i = and i32 %sub.i23.i, 131068
  %sub1.i.i = sub nsw i32 %rem.029.i, %and.i24.i
  %add.ptr.i25.i = getelementptr i8, ptr %nla.addr.030.i, i32 %and.i24.i
  %cmp.i.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i.i, label %for.inc.i.land.lhs.true.i.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

for.inc.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true.i.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr.i.i5 = getelementptr i8, ptr %nla, i32 4
  %11 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nla, align 2
  %conv.i.i6 = zext i16 %12 to i32
  %sub.i.i7 = add nsw i32 %conv.i.i6, -4
  %call2.i = tail call ptr @nla_find(ptr noundef %add.ptr.i.i5, i32 noundef %sub.i.i7, i32 noundef %attrtype) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2.i, %if.end ], [ inttoptr (i32 -95 to ptr), %if.then.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_store2_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
