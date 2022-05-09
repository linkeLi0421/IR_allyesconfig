; ModuleID = '/llk/IR_all_yes/fs/hfs/string.c_pt.bc'
source_filename = "../fs/hfs/string.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.anon.3 = type { i32, i32 }

@caseorder = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F \22#()*+,/0123456789:;<=>?@ABCDEFGHWY]_fhjlrtvxz~\8C\8E\90\92\95\97\9E\A0\A2\A4\A7\A9\AA\AB\AC\ADNHWY]_fhjlrtvxz~\8C\8E\90\92\95\97\9E\A0\A2\A4\A7\AF\B0\B1\B2\B3JLZ`{\7F\98OIQJKLZ`cdenopq{\84\85\86\7F\80\9A\9B\9C\98\B4\B5\B6\B7\B8\B9\BA\94\BB\BC\BD\BE\BF\C0M\81\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CBU\8A\CCM\81\CD\CE\CF\D0\D1\D2\D3&'\D4 IK\80\82\82\D5\D6$%-.\D7\D8\A6\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", [64 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"caseorder\00", align 1
@___asan_gen_.2 = private constant [19 x i8] c"../fs/hfs/string.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 30, i32 22 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @caseorder], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caseorder to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_hash_dentry(ptr noundef %dentry, ptr nocapture noundef %this) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %this, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 31)
  %3 = ptrtoint ptr %dentry to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not10 = icmp eq i32 %2, 0
  br i1 %tobool.not10, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %name1 = getelementptr inbounds %struct.qstr, ptr %this, i32 0, i32 1
  %4 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name1, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %len.013 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %2, %for.body.preheader ]
  %hash.012 = phi i32 [ %mul.i, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %name.011 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %incdec.ptr = getelementptr i8, ptr %name.011, i32 1
  %6 = ptrtoint ptr %name.011 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %name.011, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [256 x i8], ptr @caseorder, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv, 4
  %add.i = add i32 %shl.i, %hash.012
  %shr.i = lshr i32 %conv, 4
  %add1.i = add i32 %add.i, %shr.i
  %mul.i = mul i32 %add1.i, 11
  %dec = add nsw i32 %len.013, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %hash.0.lcssa = phi i32 [ %3, %entry.for.end_crit_edge ], [ %mul.i, %for.body.for.end_crit_edge ]
  %mul.i.i.i = mul i32 %hash.0.lcssa, 1640531527
  %hash4 = getelementptr inbounds %struct.anon.3, ptr %this, i32 0, i32 1
  %10 = ptrtoint ptr %hash4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i.i.i, ptr %hash4, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_strcmp(ptr nocapture noundef readonly %s1, i32 noundef %len1, ptr nocapture noundef readonly %s2, i32 noundef %len2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %len1, i32 %len2)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %s1.addr.0 = phi ptr [ %s1, %entry ], [ %incdec.ptr, %while.body.while.cond_crit_edge ]
  %s2.addr.0 = phi ptr [ %s2, %entry ], [ %incdec.ptr1, %while.body.while.cond_crit_edge ]
  %len.0 = phi i32 [ %0, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool.not = icmp eq i32 %len.0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %dec = add i32 %len.0, -1
  %incdec.ptr = getelementptr i8, ptr %s1.addr.0, i32 1
  %1 = ptrtoint ptr %s1.addr.0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %s1.addr.0, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [256 x i8], ptr @caseorder, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %incdec.ptr1 = getelementptr i8, ptr %s2.addr.0, i32 1
  %5 = ptrtoint ptr %s2.addr.0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s2.addr.0, align 1
  %idxprom2 = zext i8 %6 to i32
  %arrayidx3 = getelementptr [256 x i8], ptr @caseorder, i32 0, i32 %idxprom2
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %sub = sub nsw i32 %conv, %conv4
  %tobool5.not = icmp eq i32 %sub, 0
  br i1 %tobool5.not, label %while.body.while.cond_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  %sub6 = sub i32 %len1, %len2
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub6, %while.end ], [ %sub, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_compare_dentry(ptr nocapture noundef readnone %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %name) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %len)
  %cmp = icmp ugt i32 %len, 30
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp2 = icmp ult i32 %1, 31
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp5.not = icmp eq i32 %1, %len
  br i1 %cmp5.not, label %if.else.if.end8_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.else.if.end8_crit_edge ], [ 31, %if.then.if.end8_crit_edge ]
  %name9 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %2 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name9, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end8
  %len.addr.1 = phi i32 [ %len.addr.0, %if.end8 ], [ %dec, %while.body.while.cond_crit_edge ]
  %n1.0 = phi ptr [ %str, %if.end8 ], [ %incdec.ptr, %while.body.while.cond_crit_edge ]
  %n2.0 = phi ptr [ %3, %if.end8 ], [ %incdec.ptr10, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1)
  %tobool.not = icmp eq i32 %len.addr.1, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %dec = add i32 %len.addr.1, -1
  %incdec.ptr = getelementptr i8, ptr %n1.0, i32 1
  %4 = ptrtoint ptr %n1.0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %n1.0, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [256 x i8], ptr @caseorder, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %incdec.ptr10 = getelementptr i8, ptr %n2.0, i32 1
  %8 = ptrtoint ptr %n2.0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n2.0, align 1
  %idxprom11 = zext i8 %9 to i32
  %arrayidx12 = getelementptr [256 x i8], ptr @caseorder, i32 0, i32 %idxprom11
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12, align 1
  %cmp14.not = icmp eq i8 %7, %11
  br i1 %cmp14.not, label %while.body.while.cond_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @caseorder, !1, !"caseorder", i1 false, i1 false}
!1 = !{!"../fs/hfs/string.c", i32 30, i32 22}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
