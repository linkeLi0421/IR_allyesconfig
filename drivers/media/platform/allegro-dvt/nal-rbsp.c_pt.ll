; ModuleID = '/llk/IR_all_yes/drivers/media/platform/allegro-dvt/nal-rbsp.c_pt.bc'
source_filename = "../drivers/media/platform/allegro-dvt/nal-rbsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nal_rbsp_ops = type { ptr, ptr, ptr, ptr }
%struct.rbsp = type { ptr, i32, i32, i32, ptr, i32 }

@write = dso_local global { %struct.nal_rbsp_ops, [16 x i8] } { %struct.nal_rbsp_ops { ptr @__rbsp_write_bit, ptr @__rbsp_write_bits, ptr @rbsp_write_uev, ptr @rbsp_write_sev }, [16 x i8] zeroinitializer }, align 32
@read = dso_local global { %struct.nal_rbsp_ops, [16 x i8] } { %struct.nal_rbsp_ops { ptr @__rbsp_read_bit, ptr @rbsp_read_bits, ptr @rbsp_read_uev, ptr @rbsp_read_sev }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 249, i32 21 }
@___asan_gen_.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@___asan_gen_.5 = private constant [49 x i8] c"../drivers/media/platform/allegro-dvt/nal-rbsp.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 267, i32 21 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @write, ptr @read], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rbsp_init(ptr noundef writeonly %rbsp, ptr noundef %addr, i32 noundef %size, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rbsp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %rbsp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %addr, ptr %rbsp, align 4
  %size1 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %1 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size1, align 4
  %pos = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pos, align 4
  %ops2 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 4
  %3 = ptrtoint ptr %ops2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ops, ptr %ops2, align 4
  %error = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %error, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rbsp_unsupported(ptr nocapture noundef writeonly %rbsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -22, ptr %error, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__rbsp_write_bit(ptr nocapture noundef %rbsp, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %num_consecutive_zeros.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 3
  %2 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_consecutive_zeros.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %3)
  %cmp.i = icmp eq i32 %3, 22
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @add_emulation_prevention_three_byte(ptr noundef %rbsp) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %pos.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %4 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos.i, align 4
  %div43.i = lshr i32 %5, 3
  %size.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div43.i, i32 %7)
  %cmp2.not.i = icmp ult i32 %div43.i, %7
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.rbsp_write_bit.exit_crit_edge

if.end.i.rbsp_write_bit.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_write_bit.exit

if.end4.i:                                        ; preds = %if.end.i
  %rem.i = and i32 %5, 7
  %sub.i = xor i32 %rem.i, 7
  %shl.i = shl nuw i32 1, %sub.i
  %8 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rbsp, align 4
  %arrayidx.i = getelementptr i8, ptr %9, i32 %div43.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = trunc i32 %shl.i to i8
  %13 = xor i8 %12, -1
  %conv5.i = and i8 %11, %13
  store i8 %conv5.i, ptr %arrayidx.i, align 1
  %conv6.i = zext i1 %tobool to i32
  %shl7.i = shl nuw i32 %conv6.i, %sub.i
  %14 = load ptr, ptr %rbsp, align 4
  %arrayidx9.i = getelementptr i8, ptr %14, i32 %div43.i
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9.i, align 1
  %17 = trunc i32 %shl7.i to i8
  %conv11.i = or i8 %16, %17
  store i8 %conv11.i, ptr %arrayidx9.i, align 1
  %18 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pos.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %pos.i, align 4
  br i1 %tobool, label %if.end4.i.if.end26.i_crit_edge, label %lor.lhs.false.i

if.end4.i.if.end26.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_consecutive_zeros.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp16.i = icmp ult i32 %21, 7
  %rem19.i = and i32 %inc.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19.i)
  %cmp20.i = icmp eq i32 %rem19.i, 0
  %or.cond.i = select i1 %cmp16.i, i1 %cmp20.i, i1 false
  %inc25.i = add i32 %21, 1
  %spec.select.i = select i1 %or.cond.i, i32 0, i32 %inc25.i
  br label %if.end26.i

if.end26.i:                                       ; preds = %lor.lhs.false.i, %if.end4.i.if.end26.i_crit_edge
  %storemerge.i = phi i32 [ 0, %if.end4.i.if.end26.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %22 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge.i, ptr %num_consecutive_zeros.i, align 4
  br label %rbsp_write_bit.exit

rbsp_write_bit.exit:                              ; preds = %if.end26.i, %if.end.i.rbsp_write_bit.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end26.i ], [ -22, %if.end.i.rbsp_write_bit.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__rbsp_write_bits(ptr nocapture noundef %rbsp, i32 noundef %n, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %n)
  %cmp.i = icmp ugt i32 %n, 32
  br i1 %cmp.i, label %entry.rbsp_write_bits.exit_crit_edge, label %while.cond.preheader.i

entry.rbsp_write_bits.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_write_bits.exit

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not10.i = icmp eq i32 %n, 0
  br i1 %tobool.not10.i, label %while.cond.preheader.i.rbsp_write_bits.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.rbsp_write_bits.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_write_bits.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %num_consecutive_zeros.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 3
  %pos.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %size.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %2 = ptrtoint ptr %num_consecutive_zeros.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr.i = load i32, ptr %num_consecutive_zeros.i.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %rbsp_write_bit.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %3 = phi i32 [ %.pr.i, %while.body.lr.ph.i ], [ %storemerge.i.i, %rbsp_write_bit.exit.i.while.body.i_crit_edge ]
  %n.addr.011.i = phi i32 [ %n, %while.body.lr.ph.i ], [ %dec.i, %rbsp_write_bit.exit.i.while.body.i_crit_edge ]
  %dec.i = add i32 %n.addr.011.i, -1
  %4 = shl nuw i32 1, %dec.i
  %5 = and i32 %4, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.i = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 22
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.if.end.i.i_crit_edge

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @add_emulation_prevention_three_byte(ptr noundef %rbsp) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.if.end.i.i_crit_edge
  %6 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos.i.i, align 4
  %div43.i.i = lshr i32 %7, 3
  %8 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div43.i.i, i32 %9)
  %cmp2.not.i.i = icmp ult i32 %div43.i.i, %9
  br i1 %cmp2.not.i.i, label %if.end4.i.i, label %if.end.i.i.rbsp_write_bits.exit_crit_edge

if.end.i.i.rbsp_write_bits.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_write_bits.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %rem.i.i = and i32 %7, 7
  %sub.i.i = xor i32 %rem.i.i, 7
  %shl.i.i = shl nuw i32 1, %sub.i.i
  %10 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rbsp, align 4
  %arrayidx.i.i = getelementptr i8, ptr %11, i32 %div43.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 1
  %14 = trunc i32 %shl.i.i to i8
  %15 = xor i8 %14, -1
  %conv5.i.i = and i8 %13, %15
  store i8 %conv5.i.i, ptr %arrayidx.i.i, align 1
  %conv6.i.i = zext i1 %tobool1.i to i32
  %shl7.i.i = shl nuw i32 %conv6.i.i, %sub.i.i
  %16 = load ptr, ptr %rbsp, align 4
  %arrayidx9.i.i = getelementptr i8, ptr %16, i32 %div43.i.i
  %17 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx9.i.i, align 1
  %19 = trunc i32 %shl7.i.i to i8
  %conv11.i.i = or i8 %18, %19
  store i8 %conv11.i.i, ptr %arrayidx9.i.i, align 1
  %20 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pos.i.i, align 4
  %inc.i.i = add i32 %21, 1
  store i32 %inc.i.i, ptr %pos.i.i, align 4
  br i1 %tobool1.i, label %if.end4.i.i.rbsp_write_bit.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end4.i.i.rbsp_write_bit.exit.i_crit_edge:      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_write_bit.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %num_consecutive_zeros.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_consecutive_zeros.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %23)
  %cmp16.i.i = icmp ult i32 %23, 7
  %rem19.i.i = and i32 %inc.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19.i.i)
  %cmp20.i.i = icmp eq i32 %rem19.i.i, 0
  %or.cond.i.i = select i1 %cmp16.i.i, i1 %cmp20.i.i, i1 false
  %inc25.i.i = add i32 %23, 1
  %spec.select.i = select i1 %or.cond.i.i, i32 0, i32 %inc25.i.i
  br label %rbsp_write_bit.exit.i

rbsp_write_bit.exit.i:                            ; preds = %lor.lhs.false.i.i, %if.end4.i.i.rbsp_write_bit.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ 0, %if.end4.i.i.rbsp_write_bit.exit.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i.i ]
  %24 = ptrtoint ptr %num_consecutive_zeros.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge.i.i, ptr %num_consecutive_zeros.i.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %rbsp_write_bit.exit.i.rbsp_write_bits.exit_crit_edge, label %rbsp_write_bit.exit.i.while.body.i_crit_edge

rbsp_write_bit.exit.i.while.body.i_crit_edge:     ; preds = %rbsp_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

rbsp_write_bit.exit.i.rbsp_write_bits.exit_crit_edge: ; preds = %rbsp_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_write_bits.exit

rbsp_write_bits.exit:                             ; preds = %rbsp_write_bit.exit.i.rbsp_write_bits.exit_crit_edge, %if.end.i.i.rbsp_write_bits.exit_crit_edge, %while.cond.preheader.i.rbsp_write_bits.exit_crit_edge, %entry.rbsp_write_bits.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.rbsp_write_bits.exit_crit_edge ], [ 0, %while.cond.preheader.i.rbsp_write_bits.exit_crit_edge ], [ 0, %rbsp_write_bit.exit.i.rbsp_write_bits.exit_crit_edge ], [ -22, %if.end.i.i.rbsp_write_bits.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rbsp_write_uev(ptr nocapture noundef %rbsp, ptr noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.false4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false4:                                      ; preds = %entry
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  %add = add i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not.i.i = icmp eq i32 %add, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %add, i1 true) #6, !range !13
  br i1 %tobool.not.i.i, label %cond.false4.cleanup_crit_edge, label %cond.end6

cond.false4.cleanup_crit_edge:                    ; preds = %cond.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end6:                                        ; preds = %cond.false4
  %cond7 = xor i32 %2, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond7)
  %tobool.not10.i = icmp eq i32 %cond7, 0
  br i1 %tobool.not10.i, label %cond.end6.while.body.lr.ph.i31_crit_edge, label %while.body.lr.ph.i

cond.end6.while.body.lr.ph.i31_crit_edge:         ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i31

while.body.lr.ph.i:                               ; preds = %cond.end6
  %num_consecutive_zeros.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 3
  %pos.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %size.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %3 = ptrtoint ptr %num_consecutive_zeros.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr.i = load i32, ptr %num_consecutive_zeros.i.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %4 = phi i32 [ %.pr.i, %while.body.lr.ph.i ], [ %spec.select.i, %if.end4.i.i.while.body.i_crit_edge ]
  %n.addr.011.i = phi i32 [ %cond7, %while.body.lr.ph.i ], [ %dec.i, %if.end4.i.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %n.addr.011.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 22
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.if.end.i.i_crit_edge

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @add_emulation_prevention_three_byte(ptr noundef %rbsp) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.if.end.i.i_crit_edge
  %5 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pos.i.i, align 4
  %div43.i.i = lshr i32 %6, 3
  %7 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div43.i.i, i32 %8)
  %cmp2.not.i.i = icmp ult i32 %div43.i.i, %8
  br i1 %cmp2.not.i.i, label %if.end4.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %rem.i.i = and i32 %6, 7
  %sub.i.i = xor i32 %rem.i.i, 7
  %shl.i.i = shl nuw i32 1, %sub.i.i
  %9 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rbsp, align 4
  %arrayidx.i.i = getelementptr i8, ptr %10, i32 %div43.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %13 = trunc i32 %shl.i.i to i8
  %14 = xor i8 %13, -1
  %conv5.i.i = and i8 %12, %14
  store i8 %conv5.i.i, ptr %arrayidx.i.i, align 1
  %15 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pos.i.i, align 4
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %pos.i.i, align 4
  %17 = ptrtoint ptr %num_consecutive_zeros.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_consecutive_zeros.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %cmp16.i.i = icmp ult i32 %18, 7
  %rem19.i.i = and i32 %inc.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19.i.i)
  %cmp20.i.i = icmp eq i32 %rem19.i.i, 0
  %or.cond.i.i = select i1 %cmp16.i.i, i1 %cmp20.i.i, i1 false
  %inc25.i.i = add i32 %18, 1
  %spec.select.i = select i1 %or.cond.i.i, i32 0, i32 %inc25.i.i
  %19 = ptrtoint ptr %num_consecutive_zeros.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.i, ptr %num_consecutive_zeros.i.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.preheader.i26, label %if.end4.i.i.while.body.i_crit_edge

if.end4.i.i.while.body.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.cond.preheader.i26:                         ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add12 = sub nuw nsw i32 32, %2
  br label %while.body.lr.ph.i31

while.body.lr.ph.i31:                             ; preds = %while.cond.preheader.i26, %cond.end6.while.body.lr.ph.i31_crit_edge
  %add127480 = phi i32 [ %add12, %while.cond.preheader.i26 ], [ 1, %cond.end6.while.body.lr.ph.i31_crit_edge ]
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %add137579.in = load i32, ptr %value, align 4
  %add137579 = add i32 %add137579.in, 1
  %num_consecutive_zeros.i.i27 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 3
  %pos.i.i28 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %size.i.i29 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %21 = ptrtoint ptr %num_consecutive_zeros.i.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i30 = load i32, ptr %num_consecutive_zeros.i.i27, align 4
  br label %while.body.i35

while.body.i35:                                   ; preds = %rbsp_write_bit.exit.i.while.body.i35_crit_edge, %while.body.lr.ph.i31
  %22 = phi i32 [ %.pr.i30, %while.body.lr.ph.i31 ], [ %storemerge.i.i, %rbsp_write_bit.exit.i.while.body.i35_crit_edge ]
  %n.addr.011.i32 = phi i32 [ %add127480, %while.body.lr.ph.i31 ], [ %dec.i33, %rbsp_write_bit.exit.i.while.body.i35_crit_edge ]
  %dec.i33 = add nsw i32 %n.addr.011.i32, -1
  %23 = shl nuw i32 1, %dec.i33
  %24 = and i32 %23, %add137579
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool1.i = icmp ne i32 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %22)
  %cmp.i.i34 = icmp eq i32 %22, 22
  br i1 %cmp.i.i34, label %if.then.i.i36, label %while.body.i35.if.end.i.i39_crit_edge

while.body.i35.if.end.i.i39_crit_edge:            ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i39

if.then.i.i36:                                    ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @add_emulation_prevention_three_byte(ptr noundef %rbsp) #6
  br label %if.end.i.i39

if.end.i.i39:                                     ; preds = %if.then.i.i36, %while.body.i35.if.end.i.i39_crit_edge
  %25 = ptrtoint ptr %pos.i.i28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pos.i.i28, align 4
  %div43.i.i37 = lshr i32 %26, 3
  %27 = ptrtoint ptr %size.i.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i.i29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div43.i.i37, i32 %28)
  %cmp2.not.i.i38 = icmp ult i32 %div43.i.i37, %28
  br i1 %cmp2.not.i.i38, label %if.end4.i.i47, label %if.end.i.i39.cleanup_crit_edge

if.end.i.i39.cleanup_crit_edge:                   ; preds = %if.end.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i.i47:                                    ; preds = %if.end.i.i39
  %rem.i.i40 = and i32 %26, 7
  %sub.i.i41 = xor i32 %rem.i.i40, 7
  %shl.i.i42 = shl nuw i32 1, %sub.i.i41
  %29 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rbsp, align 4
  %arrayidx.i.i43 = getelementptr i8, ptr %30, i32 %div43.i.i37
  %31 = ptrtoint ptr %arrayidx.i.i43 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i43, align 1
  %33 = trunc i32 %shl.i.i42 to i8
  %34 = xor i8 %33, -1
  %conv5.i.i44 = and i8 %32, %34
  store i8 %conv5.i.i44, ptr %arrayidx.i.i43, align 1
  %conv6.i.i = zext i1 %tobool1.i to i32
  %shl7.i.i = shl nuw i32 %conv6.i.i, %sub.i.i41
  %35 = load ptr, ptr %rbsp, align 4
  %arrayidx9.i.i45 = getelementptr i8, ptr %35, i32 %div43.i.i37
  %36 = ptrtoint ptr %arrayidx9.i.i45 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx9.i.i45, align 1
  %38 = trunc i32 %shl7.i.i to i8
  %conv11.i.i = or i8 %37, %38
  store i8 %conv11.i.i, ptr %arrayidx9.i.i45, align 1
  %39 = ptrtoint ptr %pos.i.i28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pos.i.i28, align 4
  %inc.i.i46 = add i32 %40, 1
  store i32 %inc.i.i46, ptr %pos.i.i28, align 4
  br i1 %tobool1.i, label %if.end4.i.i47.rbsp_write_bit.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end4.i.i47.rbsp_write_bit.exit.i_crit_edge:    ; preds = %if.end4.i.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_write_bit.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end4.i.i47
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %num_consecutive_zeros.i.i27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_consecutive_zeros.i.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %42)
  %cmp16.i.i48 = icmp ult i32 %42, 7
  %rem19.i.i49 = and i32 %inc.i.i46, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19.i.i49)
  %cmp20.i.i50 = icmp eq i32 %rem19.i.i49, 0
  %or.cond.i.i51 = select i1 %cmp16.i.i48, i1 %cmp20.i.i50, i1 false
  %inc25.i.i52 = add i32 %42, 1
  %spec.select.i53 = select i1 %or.cond.i.i51, i32 0, i32 %inc25.i.i52
  br label %rbsp_write_bit.exit.i

rbsp_write_bit.exit.i:                            ; preds = %lor.lhs.false.i.i, %if.end4.i.i47.rbsp_write_bit.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ 0, %if.end4.i.i47.rbsp_write_bit.exit.i_crit_edge ], [ %spec.select.i53, %lor.lhs.false.i.i ]
  %43 = ptrtoint ptr %num_consecutive_zeros.i.i27 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge.i.i, ptr %num_consecutive_zeros.i.i27, align 4
  %tobool.not.i54 = icmp eq i32 %dec.i33, 0
  br i1 %tobool.not.i54, label %rbsp_write_bit.exit.i.cleanup_crit_edge, label %rbsp_write_bit.exit.i.while.body.i35_crit_edge

rbsp_write_bit.exit.i.while.body.i35_crit_edge:   ; preds = %rbsp_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i35

rbsp_write_bit.exit.i.cleanup_crit_edge:          ; preds = %rbsp_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %rbsp_write_bit.exit.i.cleanup_crit_edge, %if.end.i.i39.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %cond.false4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %cond.false4.cleanup_crit_edge ], [ 0, %rbsp_write_bit.exit.i.cleanup_crit_edge ], [ -22, %if.end.i.i39.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rbsp_write_sev(ptr nocapture noundef %rbsp, ptr noundef readonly %value) #1 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  %mul2 = mul i32 %1, -2
  %mul = shl i32 %1, 1
  %or = or i32 %mul, 1
  %storemerge = select i1 %cmp, i32 %or, i32 %mul2
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %tmp, align 4
  %call = call i32 @rbsp_write_uev(ptr noundef %rbsp, ptr noundef nonnull %tmp)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__rbsp_read_bit(ptr nocapture noundef %rbsp, ptr nocapture noundef writeonly %value) #1 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_consecutive_zeros.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 3
  %0 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_consecutive_zeros.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %1)
  %cmp.i = icmp eq i32 %1, 22
  br i1 %cmp.i, label %if.then.i, label %entry.if.end2.i_crit_edge

entry.if.end2.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %2 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp.i.i, align 4
  %3 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_consecutive_zeros.i, align 4
  %call.i.i = call i32 @rbsp_read_bits(ptr noundef %rbsp, i32 noundef 8, ptr noundef nonnull %tmp.i.i) #6
  %4 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 192
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  br i1 %cmp.not.i.i, label %if.then.i.if.end2.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %entry.if.end2.i_crit_edge
  %pos.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %6 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos.i, align 4
  %div38.i = lshr i32 %7, 3
  %size.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div38.i, i32 %9)
  %cmp4.not.i = icmp ult i32 %div38.i, %9
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end2.i
  %rem.i = and i32 %7, 7
  %sub.i = xor i32 %rem.i, 7
  %10 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rbsp, align 4
  %arrayidx.i = getelementptr i8, ptr %11, i32 %div38.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  %shr.i = lshr i32 %conv.i, %sub.i
  %and.i = and i32 %shr.i, 1
  %inc.i = add i32 %7, 1
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp8.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp8.not.i, label %lor.lhs.false.i, label %if.end6.i.if.end_crit_edge

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_consecutive_zeros.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %cmp11.i = icmp ult i32 %16, 7
  %rem14.i = and i32 %inc.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem14.i)
  %cmp15.i = icmp eq i32 %rem14.i, 0
  %or.cond.i = select i1 %cmp11.i, i1 %cmp15.i, i1 false
  %inc20.i = add i32 %16, 1
  %spec.select.i = select i1 %or.cond.i, i32 0, i32 %inc20.i
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.i, %if.end6.i.if.end_crit_edge
  %storemerge.i = phi i32 [ 0, %if.end6.i.if.end_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %17 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge.i, ptr %num_consecutive_zeros.i, align 4
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end2.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.end2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rbsp_read_bits(ptr nocapture noundef %rbsp, i32 noundef %n, ptr noundef writeonly %value) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %n)
  %cmp = icmp ugt i32 %n, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp123.not = icmp eq i32 %n, 0
  br i1 %cmp123.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_consecutive_zeros.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 3
  %pos.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %0 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pr = load i32, ptr %num_consecutive_zeros.i, align 4
  br label %for.body

for.body:                                         ; preds = %rbsp_read_bit.exit.thread18.for.body_crit_edge, %for.body.lr.ph
  %1 = phi i32 [ %.pr, %for.body.lr.ph ], [ %storemerge.i, %rbsp_read_bit.exit.thread18.for.body_crit_edge ]
  %tmp.025 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %rbsp_read_bit.exit.thread18.for.body_crit_edge ]
  %i.024 = phi i32 [ %n, %for.body.lr.ph ], [ %sub, %rbsp_read_bit.exit.thread18.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %1)
  %cmp.i = icmp eq i32 %1, 22
  br i1 %cmp.i, label %if.then.i, label %for.body.if.end2.i_crit_edge

for.body.if.end2.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.then.i:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %2 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp.i.i, align 4
  %3 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_consecutive_zeros.i, align 4
  %call.i.i = call i32 @rbsp_read_bits(ptr noundef %rbsp, i32 noundef 8, ptr noundef nonnull %tmp.i.i) #6
  %4 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 192
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  br i1 %cmp.not.i.i, label %if.then.i.if.end2.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %for.body.if.end2.i_crit_edge
  %6 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos.i, align 4
  %div38.i = lshr i32 %7, 3
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div38.i, i32 %9)
  %cmp4.not.i = icmp ult i32 %div38.i, %9
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end2.i
  %rem.i = and i32 %7, 7
  %sub.i = xor i32 %rem.i, 7
  %10 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rbsp, align 4
  %arrayidx.i = getelementptr i8, ptr %11, i32 %div38.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  %shr.i = lshr i32 %conv.i, %sub.i
  %and.i = and i32 %shr.i, 1
  %inc.i = add i32 %7, 1
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp8.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp8.not.i, label %lor.lhs.false.i, label %if.end6.i.rbsp_read_bit.exit.thread18_crit_edge

if.end6.i.rbsp_read_bit.exit.thread18_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_read_bit.exit.thread18

lor.lhs.false.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_consecutive_zeros.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %cmp11.i = icmp ult i32 %16, 7
  %rem14.i = and i32 %inc.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem14.i)
  %cmp15.i = icmp eq i32 %rem14.i, 0
  %or.cond.i = select i1 %cmp11.i, i1 %cmp15.i, i1 false
  %inc20.i = add i32 %16, 1
  %spec.select = select i1 %or.cond.i, i32 0, i32 %inc20.i
  br label %rbsp_read_bit.exit.thread18

rbsp_read_bit.exit.thread18:                      ; preds = %lor.lhs.false.i, %if.end6.i.rbsp_read_bit.exit.thread18_crit_edge
  %storemerge.i = phi i32 [ 0, %if.end6.i.rbsp_read_bit.exit.thread18_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %17 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge.i, ptr %num_consecutive_zeros.i, align 4
  %sub = add nsw i32 %i.024, -1
  %shl = shl nuw i32 %and.i, %sub
  %or = or i32 %shl, %tmp.025
  %cmp1 = icmp sgt i32 %i.024, 1
  br i1 %cmp1, label %rbsp_read_bit.exit.thread18.for.body_crit_edge, label %rbsp_read_bit.exit.thread18.for.end_crit_edge

rbsp_read_bit.exit.thread18.for.end_crit_edge:    ; preds = %rbsp_read_bit.exit.thread18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

rbsp_read_bit.exit.thread18.for.body_crit_edge:   ; preds = %rbsp_read_bit.exit.thread18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %rbsp_read_bit.exit.thread18.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tmp.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %or, %rbsp_read_bit.exit.thread18.for.end_crit_edge ]
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.then5

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %tmp.0.lcssa, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %for.end.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %if.end2.i.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rbsp_read_uev(ptr nocapture noundef %rbsp, ptr noundef writeonly %value) #1 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  %num_consecutive_zeros.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 3
  %pos.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %1 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pr = load i32, ptr %num_consecutive_zeros.i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = phi i32 [ %spec.select.i, %while.body ], [ %.pr, %entry ]
  %leading_zero_bits.0 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %2)
  %cmp.i = icmp eq i32 %2, 22
  br i1 %cmp.i, label %if.then.i, label %while.cond.if.end2.i_crit_edge

while.cond.if.end2.i_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.then.i:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %3 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tmp.i.i, align 4
  %4 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_consecutive_zeros.i, align 4
  %call.i.i = call i32 @rbsp_read_bits(ptr noundef %rbsp, i32 noundef 8, ptr noundef nonnull %tmp.i.i) #6
  %5 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %6)
  %cmp.not.i.i = icmp eq i32 %6, 192
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  br i1 %cmp.not.i.i, label %if.then.i.if.end2.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %while.cond.if.end2.i_crit_edge
  %7 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pos.i, align 4
  %div38.i = lshr i32 %8, 3
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div38.i, i32 %10)
  %cmp4.not.i = icmp ult i32 %div38.i, %10
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end2.i
  %rem.i = and i32 %8, 7
  %sub.i = xor i32 %rem.i, 7
  %11 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rbsp, align 4
  %arrayidx.i = getelementptr i8, ptr %12, i32 %div38.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %14 to i32
  %inc.i = add i32 %8, 1
  %15 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.i, ptr %pos.i, align 4
  %16 = shl nuw i32 1, %sub.i
  %17 = and i32 %16, %conv.i
  %cmp8.not.i = icmp eq i32 %17, 0
  br i1 %cmp8.not.i, label %while.body, label %if.end

while.body:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_consecutive_zeros.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp11.i = icmp ult i32 %19, 7
  %rem14.i = and i32 %inc.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem14.i)
  %cmp15.i = icmp eq i32 %rem14.i, 0
  %or.cond.i = select i1 %cmp11.i, i1 %cmp15.i, i1 false
  %inc20.i = add i32 %19, 1
  %spec.select.i = select i1 %or.cond.i, i32 0, i32 %inc20.i
  %20 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select.i, ptr %num_consecutive_zeros.i, align 4
  %inc = add i32 %leading_zero_bits.0, 1
  br label %while.cond

if.end:                                           ; preds = %if.end6.i
  %21 = ptrtoint ptr %num_consecutive_zeros.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %num_consecutive_zeros.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leading_zero_bits.0)
  %cmp2 = icmp sgt i32 %leading_zero_bits.0, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @rbsp_read_bits(ptr noundef %rbsp, i32 noundef %leading_zero_bits.0, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then3.if.end7_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %value, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %notmask = shl nsw i32 -1, %leading_zero_bits.0
  %sub = xor i32 %notmask, -1
  %22 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmp, align 4
  %add = add i32 %23, %sub
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %if.end2.i.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rbsp_read_sev(ptr nocapture noundef %rbsp, ptr noundef writeonly %value) #1 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !14
  %call = call i32 @rbsp_read_uev(ptr noundef %rbsp, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %tobool1.not = icmp eq ptr %value, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %div512 = lshr i32 %2, 1
  %sub = sub nsw i32 0, %div512
  %add = add i32 %2, 1
  %div13 = lshr i32 %add, 1
  %sub.sink = select i1 %tobool3.not, i32 %sub, i32 %div13
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub.sink, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rbsp_bit(ptr noundef %rbsp, ptr noundef %value) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %rbsp, ptr noundef %value) #6
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %error, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rbsp_bits(ptr noundef %rbsp, i32 noundef %n, ptr noundef %value) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %rbsp_bits = getelementptr inbounds %struct.nal_rbsp_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rbsp_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rbsp_bits, align 4
  %call = tail call i32 %5(ptr noundef %rbsp, i32 noundef %n, ptr noundef %value) #6
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %error, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rbsp_uev(ptr noundef %rbsp, ptr noundef %value) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %rbsp_uev = getelementptr inbounds %struct.nal_rbsp_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rbsp_uev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rbsp_uev, align 4
  %call = tail call i32 %5(ptr noundef %rbsp, ptr noundef %value) #6
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %error, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rbsp_sev(ptr noundef %rbsp, ptr noundef %value) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %rbsp_sev = getelementptr inbounds %struct.nal_rbsp_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %rbsp_sev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rbsp_sev, align 4
  %call = tail call i32 %5(ptr noundef %rbsp, ptr noundef %value) #6
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %error, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rbsp_trailing_bits(ptr noundef %rbsp) local_unnamed_addr #3 align 64 {
entry:
  %rbsp_stop_one_bit = alloca i32, align 4
  %rbsp_alignment_zero_bit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbsp_stop_one_bit) #6
  %0 = ptrtoint ptr %rbsp_stop_one_bit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %rbsp_stop_one_bit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbsp_alignment_zero_bit) #6
  %1 = ptrtoint ptr %rbsp_alignment_zero_bit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rbsp_alignment_zero_bit, align 4
  %error.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %2 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %rbsp_bit.exit, label %entry.rbsp_bits.exit_crit_edge

entry.rbsp_bits.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_bits.exit

rbsp_bit.exit:                                    ; preds = %entry
  %ops.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = call i32 %7(ptr noundef %rbsp, ptr noundef nonnull %rbsp_stop_one_bit) #6
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i7 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i7, label %if.end.i10, label %rbsp_bit.exit.rbsp_bits.exit_crit_edge

rbsp_bit.exit.rbsp_bits.exit_crit_edge:           ; preds = %rbsp_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_bits.exit

if.end.i10:                                       ; preds = %rbsp_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pos = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pos, align 4
  %sub = add i32 %10, -1
  %or = or i32 %sub, 7
  %add = sub i32 1, %10
  %sub2 = add i32 %add, %or
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %rbsp_bits.i = getelementptr inbounds %struct.nal_rbsp_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %rbsp_bits.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rbsp_bits.i, align 4
  %call.i9 = call i32 %14(ptr noundef %rbsp, i32 noundef %sub2, ptr noundef nonnull %rbsp_alignment_zero_bit) #6
  %15 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i9, ptr %error.i, align 4
  br label %rbsp_bits.exit

rbsp_bits.exit:                                   ; preds = %if.end.i10, %rbsp_bit.exit.rbsp_bits.exit_crit_edge, %entry.rbsp_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbsp_alignment_zero_bit) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbsp_stop_one_bit) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_emulation_prevention_three_byte(ptr nocapture noundef %rbsp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_consecutive_zeros = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 3
  %0 = ptrtoint ptr %num_consecutive_zeros to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_consecutive_zeros, align 4
  %pos.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %size.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %rbsp_write_bit.exit.i.while.body.i_crit_edge, %entry
  %1 = phi i32 [ 0, %entry ], [ %storemerge.i.i, %rbsp_write_bit.exit.i.while.body.i_crit_edge ]
  %n.addr.0.i3 = phi i32 [ 8, %entry ], [ %dec.i, %rbsp_write_bit.exit.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %n.addr.0.i3, -1
  %2 = shl nuw i32 1, %dec.i
  %3 = and i32 %2, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.i = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 22
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.if.end.i.i_crit_edge

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @add_emulation_prevention_three_byte(ptr noundef %rbsp) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.if.end.i.i_crit_edge
  %4 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos.i.i, align 4
  %div43.i.i = lshr i32 %5, 3
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div43.i.i, i32 %7)
  %cmp2.not.i.i = icmp ult i32 %div43.i.i, %7
  br i1 %cmp2.not.i.i, label %if.end4.i.i, label %if.end.i.i.rbsp_write_bits.exit_crit_edge

if.end.i.i.rbsp_write_bits.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_write_bits.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %rem.i.i = and i32 %5, 7
  %sub.i.i = xor i32 %rem.i.i, 7
  %shl.i.i = shl nuw i32 1, %sub.i.i
  %8 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rbsp, align 4
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %div43.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %12 = trunc i32 %shl.i.i to i8
  %13 = xor i8 %12, -1
  %conv5.i.i = and i8 %11, %13
  store i8 %conv5.i.i, ptr %arrayidx.i.i, align 1
  %conv6.i.i = zext i1 %tobool1.i to i32
  %shl7.i.i = shl nuw i32 %conv6.i.i, %sub.i.i
  %14 = load ptr, ptr %rbsp, align 4
  %arrayidx9.i.i = getelementptr i8, ptr %14, i32 %div43.i.i
  %15 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9.i.i, align 1
  %17 = trunc i32 %shl7.i.i to i8
  %conv11.i.i = or i8 %16, %17
  store i8 %conv11.i.i, ptr %arrayidx9.i.i, align 1
  %18 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pos.i.i, align 4
  %inc.i.i = add i32 %19, 1
  store i32 %inc.i.i, ptr %pos.i.i, align 4
  br i1 %tobool1.i, label %if.end4.i.i.rbsp_write_bit.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end4.i.i.rbsp_write_bit.exit.i_crit_edge:      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_write_bit.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %num_consecutive_zeros to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_consecutive_zeros, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp16.i.i = icmp ult i32 %21, 7
  %rem19.i.i = and i32 %inc.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19.i.i)
  %cmp20.i.i = icmp eq i32 %rem19.i.i, 0
  %or.cond.i.i = select i1 %cmp16.i.i, i1 %cmp20.i.i, i1 false
  %inc25.i.i = add i32 %21, 1
  %spec.select = select i1 %or.cond.i.i, i32 0, i32 %inc25.i.i
  br label %rbsp_write_bit.exit.i

rbsp_write_bit.exit.i:                            ; preds = %lor.lhs.false.i.i, %if.end4.i.i.rbsp_write_bit.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ 0, %if.end4.i.i.rbsp_write_bit.exit.i_crit_edge ], [ %spec.select, %lor.lhs.false.i.i ]
  %22 = ptrtoint ptr %num_consecutive_zeros to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge.i.i, ptr %num_consecutive_zeros, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %rbsp_write_bit.exit.i.rbsp_write_bits.exit_crit_edge, label %rbsp_write_bit.exit.i.while.body.i_crit_edge

rbsp_write_bit.exit.i.while.body.i_crit_edge:     ; preds = %rbsp_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

rbsp_write_bit.exit.i.rbsp_write_bits.exit_crit_edge: ; preds = %rbsp_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rbsp_write_bits.exit

rbsp_write_bits.exit:                             ; preds = %rbsp_write_bit.exit.i.rbsp_write_bits.exit_crit_edge, %if.end.i.i.rbsp_write_bits.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @write, !1, !"write", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/allegro-dvt/nal-rbsp.c", i32 249, i32 21}
!2 = !{ptr @read, !3, !"read", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/allegro-dvt/nal-rbsp.c", i32 267, i32 21}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i32 0, i32 33}
!14 = !{!"auto-init"}
