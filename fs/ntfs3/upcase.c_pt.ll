; ModuleID = '/llk/IR_all_yes/fs/ntfs3/upcase.c_pt.bc'
source_filename = "../fs/ntfs3/upcase.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_str = type { i8, i8, [10 x i16] }
%struct.le_str = type { i8, i8, [0 x i16] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_cmp_names(ptr nocapture noundef readonly %s1, i32 noundef %l1, ptr nocapture noundef readonly %s2, i32 noundef %l2, ptr noundef readonly %upcase, i1 noundef zeroext %bothcase) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %l1, i32 %l2)
  %tobool1.not = icmp eq ptr %upcase, null
  %or.cond = or i1 %tobool1.not, %bothcase
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool2.not76 = icmp eq i32 %0, 0
  br i1 %or.cond, label %for.cond.preheader, label %case_insentive

for.cond.preheader:                               ; preds = %entry
  br i1 %tobool2.not76, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %len.079 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %0, %for.cond.preheader.for.body_crit_edge ]
  %s1.addr.078 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %s1, %for.cond.preheader.for.body_crit_edge ]
  %s2.addr.077 = phi ptr [ %incdec.ptr13, %for.inc.for.body_crit_edge ], [ %s2, %for.cond.preheader.for.body_crit_edge ]
  %1 = ptrtoint ptr %s1.addr.078 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %s1.addr.078, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %s2.addr.077 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s2.addr.077, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv3 = zext i16 %6 to i32
  %sub = sub nsw i32 %conv, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  %bothcase.not = xor i1 %bothcase, true
  %or.cond62 = or i1 %tobool1.not, %bothcase.not
  br i1 %or.cond62, label %if.then5.cleanup_crit_edge, label %if.then5.for.body17.preheader_crit_edge

if.then5.for.body17.preheader_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body17.preheader

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i16, ptr %s1.addr.078, i32 1
  %incdec.ptr13 = getelementptr i16, ptr %s2.addr.077, i32 1
  %dec = add i32 %len.079, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sub14 = sub i32 %l1, %l2
  br label %cleanup

case_insentive:                                   ; preds = %entry
  br i1 %tobool2.not76, label %case_insentive.for.end29_crit_edge, label %case_insentive.for.body17.preheader_crit_edge

case_insentive.for.body17.preheader_crit_edge:    ; preds = %case_insentive
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body17.preheader

case_insentive.for.end29_crit_edge:               ; preds = %case_insentive
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end29

for.body17.preheader:                             ; preds = %case_insentive.for.body17.preheader_crit_edge, %if.then5.for.body17.preheader_crit_edge
  %len.198 = phi i32 [ %0, %case_insentive.for.body17.preheader_crit_edge ], [ %len.079, %if.then5.for.body17.preheader_crit_edge ]
  %diff1.096 = phi i32 [ 0, %case_insentive.for.body17.preheader_crit_edge ], [ %sub, %if.then5.for.body17.preheader_crit_edge ]
  %s1.addr.195 = phi ptr [ %s1, %case_insentive.for.body17.preheader_crit_edge ], [ %s1.addr.078, %if.then5.for.body17.preheader_crit_edge ]
  %s2.addr.194 = phi ptr [ %s2, %case_insentive.for.body17.preheader_crit_edge ], [ %s2.addr.077, %if.then5.for.body17.preheader_crit_edge ]
  br label %for.body17

for.body17:                                       ; preds = %for.inc25.for.body17_crit_edge, %for.body17.preheader
  %len.283 = phi i32 [ %dec28, %for.inc25.for.body17_crit_edge ], [ %len.198, %for.body17.preheader ]
  %s1.addr.282 = phi ptr [ %incdec.ptr26, %for.inc25.for.body17_crit_edge ], [ %s1.addr.195, %for.body17.preheader ]
  %s2.addr.281 = phi ptr [ %incdec.ptr27, %for.inc25.for.body17_crit_edge ], [ %s2.addr.194, %for.body17.preheader ]
  %7 = ptrtoint ptr %s1.addr.282 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %s1.addr.282, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 97, i16 %9)
  %cmp.i = icmp ult i16 %9, 97
  br i1 %cmp.i, label %for.body17.upcase_unicode_char.exit_crit_edge, label %if.end.i

for.body17.upcase_unicode_char.exit_crit_edge:    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #4
  br label %upcase_unicode_char.exit

if.end.i:                                         ; preds = %for.body17
  call void @__sanitizer_cov_trace_const_cmp2(i16 123, i16 %9)
  %cmp3.i = icmp ult i16 %9, 123
  br i1 %cmp3.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %sub.i = add nsw i16 %9, -32
  br label %upcase_unicode_char.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx.i = getelementptr i16, ptr %upcase, i32 %conv.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i, align 2
  br label %upcase_unicode_char.exit

upcase_unicode_char.exit:                         ; preds = %if.end8.i, %if.then5.i, %for.body17.upcase_unicode_char.exit_crit_edge
  %retval.0.i = phi i16 [ %sub.i, %if.then5.i ], [ %11, %if.end8.i ], [ %9, %for.body17.upcase_unicode_char.exit_crit_edge ]
  %conv18 = zext i16 %retval.0.i to i32
  %12 = ptrtoint ptr %s2.addr.281 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s2.addr.281, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv.i63 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 97, i16 %14)
  %cmp.i64 = icmp ult i16 %14, 97
  br i1 %cmp.i64, label %upcase_unicode_char.exit.upcase_unicode_char.exit72_crit_edge, label %if.end.i66

upcase_unicode_char.exit.upcase_unicode_char.exit72_crit_edge: ; preds = %upcase_unicode_char.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %upcase_unicode_char.exit72

if.end.i66:                                       ; preds = %upcase_unicode_char.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 123, i16 %14)
  %cmp3.i65 = icmp ult i16 %14, 123
  br i1 %cmp3.i65, label %if.then5.i68, label %if.end8.i70

if.then5.i68:                                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #4
  %sub.i67 = add nsw i16 %14, -32
  br label %upcase_unicode_char.exit72

if.end8.i70:                                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx.i69 = getelementptr i16, ptr %upcase, i32 %conv.i63
  %15 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i69, align 2
  br label %upcase_unicode_char.exit72

upcase_unicode_char.exit72:                       ; preds = %if.end8.i70, %if.then5.i68, %upcase_unicode_char.exit.upcase_unicode_char.exit72_crit_edge
  %retval.0.i71 = phi i16 [ %sub.i67, %if.then5.i68 ], [ %16, %if.end8.i70 ], [ %14, %upcase_unicode_char.exit.upcase_unicode_char.exit72_crit_edge ]
  %conv20 = zext i16 %retval.0.i71 to i32
  %sub21 = sub nsw i32 %conv18, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub21)
  %tobool22.not = icmp eq i32 %sub21, 0
  br i1 %tobool22.not, label %for.inc25, label %upcase_unicode_char.exit72.cleanup_crit_edge

upcase_unicode_char.exit72.cleanup_crit_edge:     ; preds = %upcase_unicode_char.exit72
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc25:                                        ; preds = %upcase_unicode_char.exit72
  %incdec.ptr26 = getelementptr i16, ptr %s1.addr.282, i32 1
  %incdec.ptr27 = getelementptr i16, ptr %s2.addr.281, i32 1
  %dec28 = add i32 %len.283, -1
  %tobool16.not = icmp eq i32 %dec28, 0
  br i1 %tobool16.not, label %for.inc25.for.end29_crit_edge, label %for.inc25.for.body17_crit_edge

for.inc25.for.body17_crit_edge:                   ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body17

for.inc25.for.end29_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end29

for.end29:                                        ; preds = %for.inc25.for.end29_crit_edge, %case_insentive.for.end29_crit_edge
  %diff1.097 = phi i32 [ 0, %case_insentive.for.end29_crit_edge ], [ %diff1.096, %for.inc25.for.end29_crit_edge ]
  %sub30 = sub i32 %l1, %l2
  call void @__sanitizer_cov_trace_cmp4(i32 %l1, i32 %l2)
  %tobool31.not = icmp eq i32 %l1, %l2
  %diff1.0.sub30 = select i1 %tobool31.not, i32 %diff1.097, i32 %sub30
  br label %cleanup

cleanup:                                          ; preds = %for.end29, %upcase_unicode_char.exit72.cleanup_crit_edge, %for.end, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %diff1.0.sub30, %for.end29 ], [ %sub14, %for.end ], [ %sub, %if.then5.cleanup_crit_edge ], [ %sub21, %upcase_unicode_char.exit72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_cmp_names_cpu(ptr nocapture noundef readonly %uni1, ptr nocapture noundef readonly %uni2, ptr noundef readonly %upcase, i1 noundef zeroext %bothcase) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.cpu_str, ptr %uni1, i32 0, i32 2
  %name1 = getelementptr inbounds %struct.le_str, ptr %uni2, i32 0, i32 2
  %0 = ptrtoint ptr %uni1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uni1, align 2
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %uni2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %uni2, align 2
  %conv4 = zext i8 %3 to i32
  %4 = tail call i8 @llvm.umin.i8(i8 %1, i8 %3)
  %5 = zext i8 %4 to i32
  %tobool7.not = icmp eq ptr %upcase, null
  %or.cond = or i1 %tobool7.not, %bothcase
  br i1 %or.cond, label %for.cond.preheader, label %entry.case_insentive_crit_edge

entry.case_insentive_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %case_insentive

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool8.not90 = icmp eq i8 %4, 0
  br i1 %tobool8.not90, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %len5.093 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %s2.092 = phi ptr [ %incdec.ptr20, %for.inc.for.body_crit_edge ], [ %name1, %for.cond.preheader.for.body_crit_edge ]
  %s1.091 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %name, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %s1.091 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %s1.091, align 2
  %conv9 = zext i16 %7 to i32
  %8 = ptrtoint ptr %s2.092 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s2.092, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv10 = zext i16 %10 to i32
  %sub = sub nsw i32 %conv9, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool11.not = icmp eq i32 %sub, 0
  br i1 %tobool11.not, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body
  %bothcase.not = xor i1 %bothcase, true
  %or.cond75 = or i1 %tobool7.not, %bothcase.not
  br i1 %or.cond75, label %if.then12.cleanup_crit_edge, label %if.then12.case_insentive_crit_edge

if.then12.case_insentive_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  br label %case_insentive

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i16, ptr %s1.091, i32 1
  %incdec.ptr20 = getelementptr i16, ptr %s2.092, i32 1
  %dec = add nsw i32 %len5.093, -1
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sub21 = sub nsw i32 %conv, %conv4
  br label %cleanup

case_insentive:                                   ; preds = %if.then12.case_insentive_crit_edge, %entry.case_insentive_crit_edge
  %s1.1 = phi ptr [ %name, %entry.case_insentive_crit_edge ], [ %s1.091, %if.then12.case_insentive_crit_edge ]
  %s2.1 = phi ptr [ %name1, %entry.case_insentive_crit_edge ], [ %s2.092, %if.then12.case_insentive_crit_edge ]
  %len5.1 = phi i32 [ %5, %entry.case_insentive_crit_edge ], [ %len5.093, %if.then12.case_insentive_crit_edge ]
  %diff1.0 = phi i32 [ 0, %entry.case_insentive_crit_edge ], [ %sub, %if.then12.case_insentive_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len5.1)
  %tobool23.not94 = icmp eq i32 %len5.1, 0
  br i1 %tobool23.not94, label %case_insentive.for.end36_crit_edge, label %case_insentive.for.body24_crit_edge

case_insentive.for.body24_crit_edge:              ; preds = %case_insentive
  br label %for.body24

case_insentive.for.end36_crit_edge:               ; preds = %case_insentive
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end36

for.body24:                                       ; preds = %for.inc32.for.body24_crit_edge, %case_insentive.for.body24_crit_edge
  %len5.297 = phi i32 [ %dec35, %for.inc32.for.body24_crit_edge ], [ %len5.1, %case_insentive.for.body24_crit_edge ]
  %s2.296 = phi ptr [ %incdec.ptr34, %for.inc32.for.body24_crit_edge ], [ %s2.1, %case_insentive.for.body24_crit_edge ]
  %s1.295 = phi ptr [ %incdec.ptr33, %for.inc32.for.body24_crit_edge ], [ %s1.1, %case_insentive.for.body24_crit_edge ]
  %11 = ptrtoint ptr %s1.295 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %s1.295, align 2
  %conv.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 97, i16 %12)
  %cmp.i = icmp ult i16 %12, 97
  br i1 %cmp.i, label %for.body24.upcase_unicode_char.exit_crit_edge, label %if.end.i

for.body24.upcase_unicode_char.exit_crit_edge:    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #4
  br label %upcase_unicode_char.exit

if.end.i:                                         ; preds = %for.body24
  call void @__sanitizer_cov_trace_const_cmp2(i16 123, i16 %12)
  %cmp3.i = icmp ult i16 %12, 123
  br i1 %cmp3.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %sub.i = add nsw i16 %12, -32
  br label %upcase_unicode_char.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx.i = getelementptr i16, ptr %upcase, i32 %conv.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  br label %upcase_unicode_char.exit

upcase_unicode_char.exit:                         ; preds = %if.end8.i, %if.then5.i, %for.body24.upcase_unicode_char.exit_crit_edge
  %retval.0.i = phi i16 [ %sub.i, %if.then5.i ], [ %14, %if.end8.i ], [ %12, %for.body24.upcase_unicode_char.exit_crit_edge ]
  %conv25 = zext i16 %retval.0.i to i32
  %15 = ptrtoint ptr %s2.296 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %s2.296, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv.i76 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 97, i16 %17)
  %cmp.i77 = icmp ult i16 %17, 97
  br i1 %cmp.i77, label %upcase_unicode_char.exit.upcase_unicode_char.exit85_crit_edge, label %if.end.i79

upcase_unicode_char.exit.upcase_unicode_char.exit85_crit_edge: ; preds = %upcase_unicode_char.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %upcase_unicode_char.exit85

if.end.i79:                                       ; preds = %upcase_unicode_char.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 123, i16 %17)
  %cmp3.i78 = icmp ult i16 %17, 123
  br i1 %cmp3.i78, label %if.then5.i81, label %if.end8.i83

if.then5.i81:                                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #4
  %sub.i80 = add nsw i16 %17, -32
  br label %upcase_unicode_char.exit85

if.end8.i83:                                      ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx.i82 = getelementptr i16, ptr %upcase, i32 %conv.i76
  %18 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i82, align 2
  br label %upcase_unicode_char.exit85

upcase_unicode_char.exit85:                       ; preds = %if.end8.i83, %if.then5.i81, %upcase_unicode_char.exit.upcase_unicode_char.exit85_crit_edge
  %retval.0.i84 = phi i16 [ %sub.i80, %if.then5.i81 ], [ %19, %if.end8.i83 ], [ %17, %upcase_unicode_char.exit.upcase_unicode_char.exit85_crit_edge ]
  %conv27 = zext i16 %retval.0.i84 to i32
  %sub28 = sub nsw i32 %conv25, %conv27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28)
  %tobool29.not = icmp eq i32 %sub28, 0
  br i1 %tobool29.not, label %for.inc32, label %upcase_unicode_char.exit85.cleanup_crit_edge

upcase_unicode_char.exit85.cleanup_crit_edge:     ; preds = %upcase_unicode_char.exit85
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc32:                                        ; preds = %upcase_unicode_char.exit85
  %incdec.ptr33 = getelementptr i16, ptr %s1.295, i32 1
  %incdec.ptr34 = getelementptr i16, ptr %s2.296, i32 1
  %dec35 = add i32 %len5.297, -1
  %tobool23.not = icmp eq i32 %dec35, 0
  br i1 %tobool23.not, label %for.inc32.for.end36_crit_edge, label %for.inc32.for.body24_crit_edge

for.inc32.for.body24_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body24

for.inc32.for.end36_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end36

for.end36:                                        ; preds = %for.inc32.for.end36_crit_edge, %case_insentive.for.end36_crit_edge
  %sub37 = sub nsw i32 %conv, %conv4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %tobool38.not = icmp eq i8 %1, %3
  %diff1.0.sub37 = select i1 %tobool38.not, i32 %diff1.0, i32 %sub37
  br label %cleanup

cleanup:                                          ; preds = %for.end36, %upcase_unicode_char.exit85.cleanup_crit_edge, %for.end, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ %diff1.0.sub37, %for.end36 ], [ %sub21, %for.end ], [ %sub, %if.then12.cleanup_crit_edge ], [ %sub28, %upcase_unicode_char.exit85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
