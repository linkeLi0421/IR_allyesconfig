; ModuleID = '/llk/IR_all_yes/fs/ntfs/mst.c_pt.bc'
source_filename = "../fs/ntfs/mst.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.NTFS_RECORD = type { i32, i16, i16 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1111572804, i64 1213156421]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @post_read_mst_fixup(ptr nocapture noundef %b, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %usa_count2 = getelementptr inbounds %struct.NTFS_RECORD, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %usa_count2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %usa_count2, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %sub = add i16 %2, -1
  %and = and i32 %size, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %usa_ofs1 = getelementptr inbounds %struct.NTFS_RECORD, ptr %b, i32 0, i32 1
  %3 = ptrtoint ptr %usa_ofs1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %usa_ofs1, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv4 = zext i16 %5 to i32
  %and5 = and i32 %conv4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %conv9 = zext i16 %sub to i32
  %mul = shl nuw nsw i32 %conv9, 1
  %add = add nuw nsw i32 %mul, %conv4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp = icmp ule i32 %add, %size
  %shr = lshr i32 %size, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv9)
  %cmp13.not = icmp eq i32 %shr, %conv9
  %or.cond = select i1 %cmp, i1 %cmp13.not, i1 false
  br i1 %or.cond, label %if.end, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %div59 = lshr i32 %conv4, 1
  %add.ptr = getelementptr i16, ptr %b, i32 %div59
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr, align 2
  %add.ptr17 = getelementptr i16, ptr %b, i32 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub)
  %tobool18.not61 = icmp eq i16 %sub, 0
  br i1 %tobool18.not61, label %if.end.cleanup_crit_edge, label %while.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  %dec60 = add i16 %2, -2
  br label %while.body

while.cond:                                       ; preds = %while.body
  %add.ptr25 = getelementptr i16, ptr %data_pos.062, i32 256
  %dec = add i16 %dec63, -1
  %tobool18.not = icmp eq i16 %dec63, 0
  br i1 %tobool18.not, label %while.cond32.preheader, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.cond32.preheader:                           ; preds = %while.cond
  br i1 %tobool18.not61, label %while.cond32.preheader.cleanup_crit_edge, label %while.cond32.preheader.while.body35_crit_edge

while.cond32.preheader.while.body35_crit_edge:    ; preds = %while.cond32.preheader
  br label %while.body35

while.cond32.preheader.cleanup_crit_edge:         ; preds = %while.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.preheader
  %dec63 = phi i16 [ %dec, %while.cond.while.body_crit_edge ], [ %dec60, %while.body.preheader ]
  %data_pos.062 = phi ptr [ %add.ptr25, %while.cond.while.body_crit_edge ], [ %add.ptr17, %while.body.preheader ]
  %8 = ptrtoint ptr %data_pos.062 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data_pos.062, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %7)
  %cmp21.not = icmp eq i16 %9, %7
  br i1 %cmp21.not, label %while.cond, label %if.then23

if.then23:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %b to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 1111572804, ptr %b, align 1
  br label %cleanup

while.body35:                                     ; preds = %while.body35.while.body35_crit_edge, %while.cond32.preheader.while.body35_crit_edge
  %usa_count.168 = phi i16 [ %usa_count.1, %while.body35.while.body35_crit_edge ], [ %sub, %while.cond32.preheader.while.body35_crit_edge ]
  %data_pos.167 = phi ptr [ %add.ptr36, %while.body35.while.body35_crit_edge ], [ %add.ptr17, %while.cond32.preheader.while.body35_crit_edge ]
  %usa_pos.066 = phi ptr [ %incdec.ptr, %while.body35.while.body35_crit_edge ], [ %add.ptr, %while.cond32.preheader.while.body35_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %usa_pos.066, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %incdec.ptr, align 2
  %13 = ptrtoint ptr %data_pos.167 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %data_pos.167, align 2
  %add.ptr36 = getelementptr i16, ptr %data_pos.167, i32 256
  %usa_count.1 = add i16 %usa_count.168, -1
  %tobool34.not = icmp eq i16 %usa_count.1, 0
  br i1 %tobool34.not, label %while.body35.cleanup_crit_edge, label %while.body35.while.body35_crit_edge

while.body35.while.body35_crit_edge:              ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body35

while.body35.cleanup_crit_edge:                   ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %while.body35.cleanup_crit_edge, %if.then23, %while.cond32.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then23 ], [ 0, %lor.lhs.false7.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond32.preheader.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %while.body35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pre_write_mst_fixup(ptr noundef %b, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %b, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %b to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %b, align 1
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end [
    i32 1111572804, label %lor.lhs.false.cleanup_crit_edge
    i32 1213156421, label %lor.lhs.false.cleanup_crit_edge67
  ]

lor.lhs.false.cleanup_crit_edge67:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %usa_count5 = getelementptr inbounds %struct.NTFS_RECORD, ptr %b, i32 0, i32 2
  %3 = ptrtoint ptr %usa_count5 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %usa_count5, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %sub = add i16 %5, -1
  %and = and i32 %size, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false8:                                   ; preds = %if.end
  %usa_ofs4 = getelementptr inbounds %struct.NTFS_RECORD, ptr %b, i32 0, i32 1
  %6 = ptrtoint ptr %usa_ofs4 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %usa_ofs4, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv9 = zext i16 %8 to i32
  %and10 = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %conv14 = zext i16 %sub to i32
  %mul = shl nuw nsw i32 %conv14, 1
  %add = add nuw nsw i32 %mul, %conv9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp = icmp ule i32 %add, %size
  %shr = lshr i32 %size, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv14)
  %cmp18.not = icmp eq i32 %shr, %conv14
  %or.cond = select i1 %cmp, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %if.end21, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false12
  %add.ptr = getelementptr i8, ptr %b, i32 %conv9
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #2
  %add25 = add i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %11)
  %switch = icmp ugt i16 %11, -3
  %spec.select = select i1 %switch, i16 1, i16 %add25
  %12 = tail call i16 @llvm.bswap.i16(i16 %spec.select)
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub)
  %tobool36.not63 = icmp eq i16 %sub, 0
  br i1 %tobool36.not63, label %if.end21.cleanup_crit_edge, label %while.body.preheader

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

while.body.preheader:                             ; preds = %if.end21
  %add.ptr35 = getelementptr i16, ptr %b, i32 255
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %usa_count.066 = phi i16 [ %dec, %while.body.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %data_pos.065 = phi ptr [ %add.ptr37, %while.body.while.body_crit_edge ], [ %add.ptr35, %while.body.preheader ]
  %usa_pos.064 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %dec = add i16 %usa_count.066, -1
  %14 = ptrtoint ptr %data_pos.065 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data_pos.065, align 2
  %incdec.ptr = getelementptr i16, ptr %usa_pos.064, i32 1
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %incdec.ptr, align 2
  store i16 %12, ptr %data_pos.065, align 2
  %add.ptr37 = getelementptr i16, ptr %data_pos.065, i32 256
  %tobool36.not = icmp eq i16 %dec, 0
  br i1 %tobool36.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge67, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge67 ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @post_write_mst_fixup(ptr nocapture noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %usa_count2 = getelementptr inbounds %struct.NTFS_RECORD, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %usa_count2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %usa_count2, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %usa_count.012 = add i16 %2, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %usa_count.012)
  %tobool.not13 = icmp eq i16 %usa_count.012, 0
  br i1 %tobool.not13, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %add.ptr6 = getelementptr i16, ptr %b, i32 255
  %usa_ofs1 = getelementptr inbounds %struct.NTFS_RECORD, ptr %b, i32 0, i32 1
  %3 = ptrtoint ptr %usa_ofs1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %usa_ofs1, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = lshr i16 %5, 1
  %div = zext i16 %6 to i32
  %add.ptr = getelementptr i16, ptr %b, i32 %div
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %usa_count.016 = phi i16 [ %usa_count.0, %while.body.while.body_crit_edge ], [ %usa_count.012, %while.body.preheader ]
  %usa_pos.015 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %data_pos.014 = phi ptr [ %add.ptr7, %while.body.while.body_crit_edge ], [ %add.ptr6, %while.body.preheader ]
  %incdec.ptr = getelementptr i16, ptr %usa_pos.015, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %incdec.ptr, align 2
  %9 = ptrtoint ptr %data_pos.014 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %data_pos.014, align 2
  %add.ptr7 = getelementptr i16, ptr %data_pos.014, i32 256
  %usa_count.0 = add i16 %usa_count.016, -1
  %tobool.not = icmp eq i16 %usa_count.0, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

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
