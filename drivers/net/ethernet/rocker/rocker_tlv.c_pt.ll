; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/rocker/rocker_tlv.c_pt.bc'
source_filename = "../drivers/net/ethernet/rocker/rocker_tlv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rocker_tlv = type { i32, i16 }
%struct.rocker_desc_info = type { ptr, i32, i32, ptr, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rocker_tlv_parse(ptr nocapture noundef writeonly %tb, i32 noundef %maxtype, ptr noundef %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add = shl i32 %maxtype, 2
  %mul = add i32 %add, 4
  %0 = call ptr @memset(ptr %tb, i32 0, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %buf_len)
  %cmp.i15 = icmp sgt i32 %buf_len, 7
  br i1 %cmp.i15, label %entry.land.lhs.true.i_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %tlv.017 = phi ptr [ %add.ptr.i, %if.end.land.lhs.true.i_crit_edge ], [ %buf, %entry.land.lhs.true.i_crit_edge ]
  %rem.016 = phi i32 [ %sub1.i, %if.end.land.lhs.true.i_crit_edge ], [ %buf_len, %entry.land.lhs.true.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %tlv.017, i32 0, i32 1
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %2)
  %cmp1.i = icmp ult i16 %2, 8
  %conv.i = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.016, i32 %conv.i)
  %cmp5.i.not = icmp ult i32 %rem.016, %conv.i
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.for.end_crit_edge, label %for.body

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %land.lhs.true.i
  %3 = ptrtoint ptr %tlv.017 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tlv.017, align 4
  %5 = add i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %maxtype)
  %.not = icmp ult i32 %5, %maxtype
  br i1 %.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx = getelementptr ptr, ptr %tb, i32 %4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tlv.017, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len.i, align 4
  %conv.i12 = zext i16 %8 to i32
  %sub.i = add nuw nsw i32 %conv.i12, 7
  %and.i = and i32 %sub.i, 131064
  %sub1.i = sub nsw i32 %rem.016, %and.i
  %add.ptr.i = getelementptr i8, ptr %tlv.017, i32 %and.i
  %cmp.i = icmp sgt i32 %sub1.i, 7
  br i1 %cmp.i, label %if.end.land.lhs.true.i_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true.i

for.end:                                          ; preds = %if.end.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rocker_tlv_put(ptr nocapture noundef %desc_info, i32 noundef %attrtype, i32 noundef %attrlen, ptr nocapture noundef readonly %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %data_size = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 1
  %0 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_size, align 4
  %tlv_size = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %2 = ptrtoint ptr %tlv_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tlv_size, align 4
  %sub = sub i32 %1, %3
  %sub.i = add i32 %attrlen, 15
  %and.i = and i32 %sub.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %and.i)
  %cmp = icmp slt i32 %sub, %and.i
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %4 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_info, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %add = add i32 %3, %and.i
  %6 = ptrtoint ptr %tlv_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %tlv_size, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %attrtype, ptr %add.ptr.i, align 4
  %8 = trunc i32 %attrlen to i16
  %conv = add i16 %8, 8
  %len = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %len, align 4
  %add.ptr.i22 = getelementptr i8, ptr %add.ptr.i, i32 8
  %10 = call ptr @memcpy(ptr %add.ptr.i22, ptr %data, i32 %attrlen)
  %conv7 = zext i16 %conv to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %conv7
  %add.i.neg.i = sub i32 -8, %attrlen
  %sub.i23 = add i32 %add.i.neg.i, %and.i
  %11 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub.i23)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
