; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_qmath.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_qmath.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@log_table = internal constant { [33 x i16], [62 x i8] } { [33 x i16] [i16 0, i16 1455, i16 2866, i16 4236, i16 5568, i16 6863, i16 8124, i16 9352, i16 10549, i16 11716, i16 12855, i16 13968, i16 15055, i16 16117, i16 17156, i16 18173, i16 19168, i16 20143, i16 21098, i16 22034, i16 22952, i16 23852, i16 24736, i16 25604, i16 26455, i16 27292, i16 28114, i16 28922, i16 29717, i16 30498, i16 31267, i16 32024, i16 32767], [62 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"log_table\00", align 1
@___asan_gen_.2 = private constant [68 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_qmath.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 172, i32 18 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @log_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_table to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @qm_mulu16(i16 noundef zeroext %op1, i16 noundef zeroext %op2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %op1 to i32
  %conv1 = zext i16 %op2 to i32
  %mul = mul nuw i32 %conv1, %conv
  %shr = lshr i32 %mul, 16
  %conv2 = trunc i32 %shr to i16
  ret i16 %conv2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i16 @qm_muls16(i16 noundef signext %op1, i16 noundef signext %op2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i16 %op1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %op1)
  %cmp = icmp eq i16 %op1, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %op2)
  %cmp3 = icmp eq i16 %op2, -32768
  %or.cond = and i1 %cmp, %cmp3
  %conv6 = sext i16 %op2 to i32
  %mul = mul nsw i32 %conv6, %conv
  %0 = lshr i32 %mul, 15
  %phi.cast = trunc i32 %0 to i16
  %result.0 = select i1 %or.cond, i16 -1, i16 %phi.cast
  ret i16 %result.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qm_add32(i32 noundef %op1, i32 noundef %op2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %op2, %op1
  %0 = and i32 %op2, %op1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp slt i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp3 = icmp sgt i32 %add, 0
  %or.cond17 = and i1 %1, %cmp3
  br i1 %or.cond17, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op1)
  %cmp4 = icmp sgt i32 %op1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op2)
  %cmp6 = icmp sgt i32 %op2, 0
  %or.cond18 = and i1 %cmp4, %cmp6
  %2 = tail call i32 @llvm.umin.i32(i32 %add, i32 2147483647)
  %spec.select = select i1 %or.cond18, i32 %2, i32 %add
  br label %if.end10

if.end10:                                         ; preds = %if.else, %entry.if.end10_crit_edge
  %result.0 = phi i32 [ -2147483648, %entry.if.end10_crit_edge ], [ %spec.select, %if.else ]
  ret i32 %result.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i16 @qm_add16(i16 noundef signext %op1, i16 noundef signext %op2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.sadd.sat.i16(i16 %op1, i16 %op2)
  ret i16 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i16 @qm_sub16(i16 noundef signext %op1, i16 noundef signext %op2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.ssub.sat.i16(i16 %op1, i16 %op2)
  ret i16 %0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qm_shl32(i32 noundef %op, i32 noundef %shift) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %shift, i32 -31)
  %1 = tail call i32 @llvm.smin.i32(i32 %0, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp4 = icmp sgt i32 %1, -1
  br i1 %cmp4, label %for.cond.preheader, label %if.else7

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp617.not = icmp eq i32 %1, 0
  br i1 %cmp617.not, label %for.cond.preheader.if.end8_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %result.019 = phi i32 [ %result.0.i, %for.body.for.body_crit_edge ], [ %op, %for.cond.preheader.for.body_crit_edge ]
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add.i = shl i32 %result.019, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.019)
  %2 = icmp slt i32 %result.019, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp3.i = icmp sgt i32 %add.i, 0
  %or.cond17.i = and i1 %2, %cmp3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.019)
  %cmp4.i = icmp sgt i32 %result.019, 0
  %3 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 2147483647) #6
  %spec.select.i = select i1 %cmp4.i, i32 %3, i32 %add.i
  %result.0.i = select i1 %or.cond17.i, i32 -2147483648, i32 %spec.select.i
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.if.end8_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub nsw i32 0, %1
  %shr = ashr i32 %op, %sub
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %for.body.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge
  %result.1 = phi i32 [ %shr, %if.else7 ], [ %op, %for.cond.preheader.if.end8_crit_edge ], [ %result.0.i, %for.body.if.end8_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local signext i16 @qm_shl16(i16 noundef signext %op, i32 noundef %shift) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %shift, i32 -15)
  %1 = tail call i32 @llvm.smin.i32(i32 %0, i32 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp4 = icmp sgt i32 %0, 0
  br i1 %cmp4, label %for.body.preheader, label %if.else7

for.body.preheader:                               ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %result.020 = phi i16 [ %2, %for.body.for.body_crit_edge ], [ %op, %for.body.preheader ]
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %2 = tail call i16 @llvm.sadd.sat.i16(i16 %result.020, i16 %result.020) #6
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.if.end9_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = sext i16 %op to i32
  %sub = sub nsw i32 0, %1
  %shr = ashr i32 %conv, %sub
  %conv8 = trunc i32 %shr to i16
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %for.body.if.end9_crit_edge
  %result.1 = phi i16 [ %conv8, %if.else7 ], [ %2, %for.body.if.end9_crit_edge ]
  ret i16 %result.1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local signext i16 @qm_shr16(i16 noundef signext %op, i32 noundef %shift) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 0, %shift
  %0 = tail call i32 @llvm.smax.i32(i32 %sub, i32 -15) #6
  %1 = tail call i32 @llvm.smin.i32(i32 %0, i32 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp4.i = icmp sgt i32 %0, 0
  br i1 %cmp4.i, label %for.body.preheader.i, label %if.else7.i

for.body.preheader.i:                             ; preds = %entry
  %smax.i = tail call i32 @llvm.smax.i32(i32 %1, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %result.020.i = phi i16 [ %2, %for.body.i.for.body.i_crit_edge ], [ %op, %for.body.preheader.i ]
  %i.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %2 = tail call i16 @llvm.sadd.sat.i16(i16 %result.020.i, i16 %result.020.i) #6
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %for.body.i.qm_shl16.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.qm_shl16.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qm_shl16.exit

if.else7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i16 %op to i32
  %sub.i = sub nsw i32 0, %1
  %shr.i = ashr i32 %conv.i, %sub.i
  %conv8.i = trunc i32 %shr.i to i16
  br label %qm_shl16.exit

qm_shl16.exit:                                    ; preds = %if.else7.i, %for.body.i.qm_shl16.exit_crit_edge
  %result.1.i = phi i16 [ %conv8.i, %if.else7.i ], [ %2, %for.body.i.qm_shl16.exit_crit_edge ]
  ret i16 %result.1.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local signext i16 @qm_norm32(i32 noundef %op) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp = icmp eq i32 %op, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %shr7 = ashr i32 %op, 31
  %shr18 = ashr i32 %op, 30
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7, i32 %shr18)
  %cmp29 = icmp eq i32 %shr7, %shr18
  br i1 %cmp29, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %u16extraSignBits.011 = phi i16 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %op.addr.010 = phi i32 [ %shl, %while.body.while.body_crit_edge ], [ %op, %while.cond.preheader.while.body_crit_edge ]
  %inc = add i16 %u16extraSignBits.011, 1
  %shl = shl i32 %op.addr.010, 1
  %shr = ashr i32 %shl, 31
  %shr1 = ashr i32 %shl, 30
  %cmp2 = icmp eq i32 %shr, %shr1
  br i1 %cmp2, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 31, %entry.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %inc, %while.body.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @qm_log10(i32 noundef %N, i16 noundef signext %qN, ptr nocapture noundef writeonly %log10N, ptr nocapture noundef writeonly %qLog10N) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %N)
  %cmp.i = icmp eq i32 %N, 0
  br i1 %cmp.i, label %entry.qm_norm32.exit_crit_edge, label %while.cond.preheader.i

entry.qm_norm32.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %qm_norm32.exit

while.cond.preheader.i:                           ; preds = %entry
  %shr7.i = ashr i32 %N, 31
  %shr18.i = ashr i32 %N, 30
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.i, i32 %shr18.i)
  %cmp29.i = icmp eq i32 %shr7.i, %shr18.i
  br i1 %cmp29.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.qm_norm32.exit_crit_edge

while.cond.preheader.i.qm_norm32.exit_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qm_norm32.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %u16extraSignBits.011.i = phi i16 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %op.addr.010.i = phi i32 [ %shl.i, %while.body.i.while.body.i_crit_edge ], [ %N, %while.cond.preheader.i.while.body.i_crit_edge ]
  %inc.i = add i16 %u16extraSignBits.011.i, 1
  %shl.i = shl i32 %op.addr.010.i, 1
  %shr.i = ashr i32 %shl.i, 31
  %shr1.i = ashr i32 %shl.i, 30
  %cmp2.i = icmp eq i32 %shr.i, %shr1.i
  br i1 %cmp2.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.qm_norm32.exit_crit_edge

while.body.i.qm_norm32.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qm_norm32.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

qm_norm32.exit:                                   ; preds = %while.body.i.qm_norm32.exit_crit_edge, %while.cond.preheader.i.qm_norm32.exit_crit_edge, %entry.qm_norm32.exit_crit_edge
  %retval.0.i = phi i16 [ 31, %entry.qm_norm32.exit_crit_edge ], [ 0, %while.cond.preheader.i.qm_norm32.exit_crit_edge ], [ %inc.i, %while.body.i.qm_norm32.exit_crit_edge ]
  %conv54 = zext i16 %retval.0.i to i32
  %shl = shl i32 %N, %conv54
  %add = add i16 %qN, -30
  %sub = add i16 %add, %retval.0.i
  %0 = lshr i32 %shl, 25
  %conv6 = and i32 %0, 31
  %and7 = lshr i32 %shl, 9
  %arrayidx = getelementptr [33 x i16], ptr @log_table, i32 0, i32 %conv6
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %add12 = add nuw nsw i32 %conv6, 1
  %arrayidx13 = getelementptr [33 x i16], ptr @log_table, i32 0, i32 %add12
  %3 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx13, align 2
  %sub18 = sub i16 %4, %2
  %conv.i = and i32 %and7, 65535
  %conv1.i = zext i16 %sub18 to i32
  %mul.i = mul nuw i32 %conv.i, %conv1.i
  %shr.i55 = lshr i32 %mul.i, 16
  %conv2.i = trunc i32 %shr.i55 to i16
  %5 = tail call i16 @llvm.sadd.sat.i16(i16 %2, i16 %conv2.i) #6
  %conv23 = sext i16 %5 to i32
  %conv24 = sext i16 %sub to i32
  %.neg = mul nsw i32 %conv24, -32768
  %add.i = add nsw i32 %.neg, %conv23
  %6 = and i32 %.neg, %conv23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp slt i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp3.i = icmp sgt i32 %add.i, 0
  %or.cond17.i = and i1 %7, %cmp3.i
  br i1 %or.cond17.i, label %qm_norm32.exit.while.cond.preheader.i60_crit_edge, label %qm_add32.exit

qm_norm32.exit.while.cond.preheader.i60_crit_edge: ; preds = %qm_norm32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.i60

qm_add32.exit:                                    ; preds = %qm_norm32.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp4.i = icmp sgt i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub)
  %cmp6.i = icmp slt i16 %sub, 0
  %or.cond18.i = and i1 %cmp6.i, %cmp4.i
  %8 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 2147483647) #6
  %spec.select.i = select i1 %or.cond18.i, i32 %8, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp.i56 = icmp eq i32 %spec.select.i, 0
  br i1 %cmp.i56, label %qm_add32.exit.qm_norm32.exit70_crit_edge, label %qm_add32.exit.while.cond.preheader.i60_crit_edge

qm_add32.exit.while.cond.preheader.i60_crit_edge: ; preds = %qm_add32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.i60

qm_add32.exit.qm_norm32.exit70_crit_edge:         ; preds = %qm_add32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %qm_norm32.exit70

while.cond.preheader.i60:                         ; preds = %qm_add32.exit.while.cond.preheader.i60_crit_edge, %qm_norm32.exit.while.cond.preheader.i60_crit_edge
  %result.0.i79 = phi i32 [ %spec.select.i, %qm_add32.exit.while.cond.preheader.i60_crit_edge ], [ -2147483648, %qm_norm32.exit.while.cond.preheader.i60_crit_edge ]
  %shr7.i57 = ashr i32 %result.0.i79, 31
  %shr18.i58 = ashr i32 %result.0.i79, 30
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.i57, i32 %shr18.i58)
  %cmp29.i59 = icmp eq i32 %shr7.i57, %shr18.i58
  br i1 %cmp29.i59, label %while.cond.preheader.i60.while.body.i68_crit_edge, label %while.cond.preheader.i60.qm_norm32.exit70_crit_edge

while.cond.preheader.i60.qm_norm32.exit70_crit_edge: ; preds = %while.cond.preheader.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %qm_norm32.exit70

while.cond.preheader.i60.while.body.i68_crit_edge: ; preds = %while.cond.preheader.i60
  br label %while.body.i68

while.body.i68:                                   ; preds = %while.body.i68.while.body.i68_crit_edge, %while.cond.preheader.i60.while.body.i68_crit_edge
  %u16extraSignBits.011.i61 = phi i16 [ %inc.i63, %while.body.i68.while.body.i68_crit_edge ], [ 0, %while.cond.preheader.i60.while.body.i68_crit_edge ]
  %op.addr.010.i62 = phi i32 [ %shl.i64, %while.body.i68.while.body.i68_crit_edge ], [ %result.0.i79, %while.cond.preheader.i60.while.body.i68_crit_edge ]
  %inc.i63 = add i16 %u16extraSignBits.011.i61, 1
  %shl.i64 = shl i32 %op.addr.010.i62, 1
  %shr.i65 = ashr i32 %shl.i64, 31
  %shr1.i66 = ashr i32 %shl.i64, 30
  %cmp2.i67 = icmp eq i32 %shr.i65, %shr1.i66
  br i1 %cmp2.i67, label %while.body.i68.while.body.i68_crit_edge, label %while.body.i68.qm_norm32.exit70_crit_edge

while.body.i68.qm_norm32.exit70_crit_edge:        ; preds = %while.body.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %qm_norm32.exit70

while.body.i68.while.body.i68_crit_edge:          ; preds = %while.body.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i68

qm_norm32.exit70:                                 ; preds = %while.body.i68.qm_norm32.exit70_crit_edge, %while.cond.preheader.i60.qm_norm32.exit70_crit_edge, %qm_add32.exit.qm_norm32.exit70_crit_edge
  %result.0.i80 = phi i32 [ 0, %qm_add32.exit.qm_norm32.exit70_crit_edge ], [ %result.0.i79, %while.cond.preheader.i60.qm_norm32.exit70_crit_edge ], [ %result.0.i79, %while.body.i68.qm_norm32.exit70_crit_edge ]
  %retval.0.i69 = phi i16 [ 31, %qm_add32.exit.qm_norm32.exit70_crit_edge ], [ 0, %while.cond.preheader.i60.qm_norm32.exit70_crit_edge ], [ %inc.i63, %while.body.i68.qm_norm32.exit70_crit_edge ]
  %9 = tail call i16 @llvm.smax.i16(i16 %retval.0.i69, i16 -15)
  %10 = tail call i16 @llvm.smin.i16(i16 %9, i16 47)
  %11 = add nsw i16 %10, -16
  %12 = sext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %10)
  %cmp4.i71 = icmp sgt i16 %10, 15
  br i1 %cmp4.i71, label %for.cond.preheader.i, label %if.else7.i

for.cond.preheader.i:                             ; preds = %qm_norm32.exit70
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp617.not.i = icmp eq i16 %11, 0
  br i1 %cmp617.not.i, label %for.cond.preheader.i.qm_shl32.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.qm_shl32.exit_crit_edge:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qm_shl32.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %result.019.i = phi i32 [ %result.0.i.i, %for.body.i.for.body.i_crit_edge ], [ %result.0.i80, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ %inc.i72, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.i.i = shl i32 %result.019.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.019.i)
  %13 = icmp slt i32 %result.019.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp3.i.i = icmp sgt i32 %add.i.i, 0
  %or.cond17.i.i = and i1 %13, %cmp3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.019.i)
  %cmp4.i.i = icmp sgt i32 %result.019.i, 0
  %14 = tail call i32 @llvm.umin.i32(i32 %add.i.i, i32 2147483647) #6
  %spec.select.i.i = select i1 %cmp4.i.i, i32 %14, i32 %add.i.i
  %result.0.i.i = select i1 %or.cond17.i.i, i32 -2147483648, i32 %spec.select.i.i
  %inc.i72 = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i72, %12
  br i1 %exitcond.not.i, label %for.body.i.qm_shl32.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.qm_shl32.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qm_shl32.exit

if.else7.i:                                       ; preds = %qm_norm32.exit70
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub nsw i32 0, %12
  %shr.i73 = ashr i32 %result.0.i80, %sub.i
  br label %qm_shl32.exit

qm_shl32.exit:                                    ; preds = %if.else7.i, %for.body.i.qm_shl32.exit_crit_edge, %for.cond.preheader.i.qm_shl32.exit_crit_edge
  %result.1.i = phi i32 [ %shr.i73, %if.else7.i ], [ %result.0.i80, %for.cond.preheader.i.qm_shl32.exit_crit_edge ], [ %result.0.i.i, %for.body.i.qm_shl32.exit_crit_edge ]
  %sext = shl i32 %result.1.i, 16
  %conv.i74 = ashr exact i32 %sext, 16
  %mul.i76 = mul nsw i32 %conv.i74, 19728
  %15 = lshr i32 %mul.i76, 15
  %phi.cast.i = trunc i32 %15 to i16
  %16 = ptrtoint ptr %log10N to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %phi.cast.i, ptr %log10N, align 2
  %17 = ptrtoint ptr %qLog10N to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %retval.0.i69, ptr %qLog10N, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.sadd.sat.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.ssub.sat.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @log_table, !1, !"log_table", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_qmath.c", i32 172, i32 18}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
