; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/kyro/STG4000InitDevice.c_pt.bc'
source_filename = "../drivers/video/fbdev/kyro/STG4000InitDevice.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.STG4000REG = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [37 x i32], i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [412 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [235 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, [454 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [151 x i32], i32, i32, [1598 x i32], i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@__const.InitSDRAMRegisters.adwSDRAMArgCfg0 = private unnamed_addr constant [5 x i32] [i32 160, i32 128, i32 160, i32 160, i32 160], align 4
@__const.InitSDRAMRegisters.adwSDRAMCfg1 = private unnamed_addr constant [5 x i32] [i32 34610, i32 34610, i32 42802, i32 42802, i32 34610], align 4
@__const.InitSDRAMRegisters.adwSDRAMCfg2 = private unnamed_addr constant [5 x i32] [i32 34770, i32 34770, i32 42962, i32 34770, i32 42962], align 4
@__const.InitSDRAMRegisters.adwSDRAMRsh = private unnamed_addr constant [3 x i32] [i32 36, i32 39, i32 40], align 4
@__const.InitSDRAMRegisters.adwChipSpeed = private unnamed_addr constant [3 x i32] [i32 110, i32 120, i32 125], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @ProgramClock(i32 noundef %refClock, i32 noundef %coreClock, ptr nocapture noundef writeonly %FOut, ptr nocapture noundef writeonly %ROut, ptr nocapture noundef writeonly %POut) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %coreClock, 100
  %mul1 = mul i32 %refClock, 1000
  %shr = lshr i32 %mul, 8
  %sub = sub i32 %mul, %shr
  %add = add i32 %shr, %mul
  %shr6 = lshr i32 %mul1, 8
  %div26 = udiv i32 %mul1, 33
  %sub29 = sub i32 %mul1, %div26
  %shr30 = lshr i32 %sub29, 10
  %shl = shl nuw nsw i32 %shr, 1
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %entry
  %ulBestScore.1122 = phi i32 [ 0, %entry ], [ %ulBestScore.2.lcssa, %while.end.while.body_crit_edge ]
  %ulBestClk.1121 = phi i32 [ 0, %entry ], [ %ulBestClk.2.lcssa, %while.end.while.body_crit_edge ]
  %ulBestOD.1120 = phi i32 [ 0, %entry ], [ %ulBestOD.2.lcssa, %while.end.while.body_crit_edge ]
  %ulBestF.1119 = phi i32 [ 0, %entry ], [ %ulBestF.2.lcssa, %while.end.while.body_crit_edge ]
  %ulBestR.1118 = phi i32 [ 0, %entry ], [ %ulBestR.2.lcssa, %while.end.while.body_crit_edge ]
  %R.0116 = phi i32 [ 2, %entry ], [ %inc44, %while.end.while.body_crit_edge ]
  %mul5 = mul nuw nsw i32 %R.0116, %shl
  %div = udiv i32 %mul5, %shr6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp7 = icmp ugt i32 %div, 2
  %dec = sext i1 %cmp7 to i32
  %spec.select = add i32 %div, %dec
  %0 = add i32 %spec.select, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %0)
  %1 = icmp ult i32 %0, 512
  br i1 %1, label %while.body11.lr.ph, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body11.lr.ph:                               ; preds = %while.body
  %div12 = udiv i32 %mul1, %R.0116
  %sub27 = sub i32 %div12, %div26
  br label %while.body11

while.body11:                                     ; preds = %if.end43.while.body11_crit_edge, %while.body11.lr.ph
  %ulBestScore.2111 = phi i32 [ %ulBestScore.1122, %while.body11.lr.ph ], [ %ulBestScore.4, %if.end43.while.body11_crit_edge ]
  %ulBestClk.2110 = phi i32 [ %ulBestClk.1121, %while.body11.lr.ph ], [ %ulBestClk.4, %if.end43.while.body11_crit_edge ]
  %ulBestOD.2109 = phi i32 [ %ulBestOD.1120, %while.body11.lr.ph ], [ %ulBestOD.4, %if.end43.while.body11_crit_edge ]
  %ulBestF.2108 = phi i32 [ %ulBestF.1119, %while.body11.lr.ph ], [ %ulBestF.4, %if.end43.while.body11_crit_edge ]
  %ulBestR.2107 = phi i32 [ %ulBestR.1118, %while.body11.lr.ph ], [ %ulBestR.4, %if.end43.while.body11_crit_edge ]
  %F.1105 = phi i32 [ %spec.select, %while.body11.lr.ph ], [ %inc, %if.end43.while.body11_crit_edge ]
  %mul13 = mul i32 %div12, %F.1105
  %2 = add i32 %mul13, -100000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000001, i32 %2)
  %3 = icmp ult i32 %2, 400000001
  br i1 %3, label %if.then19, label %while.body11.if.end43_crit_edge

while.body11.if.end43_crit_edge:                  ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then19:                                        ; preds = %while.body11
  %shr20 = lshr i32 %mul13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr20, i32 %sub)
  %cmp21.not = icmp ult i32 %shr20, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %shr20, i32 %add)
  %cmp23.not = icmp ugt i32 %shr20, %add
  %or.cond102 = or i1 %cmp21.not, %cmp23.not
  br i1 %or.cond102, label %if.then19.if.end43_crit_edge, label %if.then24

if.then19.if.end43_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then24:                                        ; preds = %if.then19
  %div31 = udiv i32 %sub27, %shr30
  %div33 = udiv i32 %2, 390625
  %add34 = add i32 %div31, %div33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulBestScore.2111)
  %tobool.not = icmp ne i32 %ulBestScore.2111, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %ulBestScore.2111)
  %cmp37.not = icmp ult i32 %add34, %ulBestScore.2111
  %or.cond = select i1 %tobool.not, i1 %cmp37.not, i1 false
  br i1 %or.cond, label %if.then24.if.end43_crit_edge, label %if.then40

if.then24.if.end43_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then40:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then24.if.end43_crit_edge, %if.then19.if.end43_crit_edge, %while.body11.if.end43_crit_edge
  %ulBestR.4 = phi i32 [ %R.0116, %if.then40 ], [ %ulBestR.2107, %if.then19.if.end43_crit_edge ], [ %ulBestR.2107, %while.body11.if.end43_crit_edge ], [ %ulBestR.2107, %if.then24.if.end43_crit_edge ]
  %ulBestF.4 = phi i32 [ %F.1105, %if.then40 ], [ %ulBestF.2108, %if.then19.if.end43_crit_edge ], [ %ulBestF.2108, %while.body11.if.end43_crit_edge ], [ %ulBestF.2108, %if.then24.if.end43_crit_edge ]
  %ulBestOD.4 = phi i32 [ 1, %if.then40 ], [ %ulBestOD.2109, %if.then19.if.end43_crit_edge ], [ %ulBestOD.2109, %while.body11.if.end43_crit_edge ], [ %ulBestOD.2109, %if.then24.if.end43_crit_edge ]
  %ulBestClk.4 = phi i32 [ %shr20, %if.then40 ], [ %ulBestClk.2110, %if.then19.if.end43_crit_edge ], [ %ulBestClk.2110, %while.body11.if.end43_crit_edge ], [ %ulBestClk.2110, %if.then24.if.end43_crit_edge ]
  %ulBestScore.4 = phi i32 [ %add34, %if.then40 ], [ %ulBestScore.2111, %if.then19.if.end43_crit_edge ], [ %ulBestScore.2111, %while.body11.if.end43_crit_edge ], [ %ulBestScore.2111, %if.then24.if.end43_crit_edge ]
  %inc = add nuw nsw i32 %F.1105, 1
  %4 = add i32 %F.1105, -1
  %5 = icmp ult i32 %4, 512
  br i1 %5, label %if.end43.while.body11_crit_edge, label %if.end43.while.end_crit_edge

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end43.while.body11_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body11

while.end:                                        ; preds = %if.end43.while.end_crit_edge, %while.body.while.end_crit_edge
  %ulBestR.2.lcssa = phi i32 [ %ulBestR.1118, %while.body.while.end_crit_edge ], [ %ulBestR.4, %if.end43.while.end_crit_edge ]
  %ulBestF.2.lcssa = phi i32 [ %ulBestF.1119, %while.body.while.end_crit_edge ], [ %ulBestF.4, %if.end43.while.end_crit_edge ]
  %ulBestOD.2.lcssa = phi i32 [ %ulBestOD.1120, %while.body.while.end_crit_edge ], [ %ulBestOD.4, %if.end43.while.end_crit_edge ]
  %ulBestClk.2.lcssa = phi i32 [ %ulBestClk.1121, %while.body.while.end_crit_edge ], [ %ulBestClk.4, %if.end43.while.end_crit_edge ]
  %ulBestScore.2.lcssa = phi i32 [ %ulBestScore.1122, %while.body.while.end_crit_edge ], [ %ulBestScore.4, %if.end43.while.end_crit_edge ]
  %inc44 = add nuw nsw i32 %R.0116, 1
  %exitcond.not = icmp eq i32 %inc44, 34
  br i1 %exitcond.not, label %for.inc, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

for.inc:                                          ; preds = %while.end
  %shl.1 = shl nuw nsw i32 %shr, 2
  br label %while.body.1

while.body.1:                                     ; preds = %while.end.1.while.body.1_crit_edge, %for.inc
  %ulBestScore.1122.1 = phi i32 [ %ulBestScore.2.lcssa, %for.inc ], [ %ulBestScore.2.lcssa.1, %while.end.1.while.body.1_crit_edge ]
  %ulBestClk.1121.1 = phi i32 [ %ulBestClk.2.lcssa, %for.inc ], [ %ulBestClk.2.lcssa.1, %while.end.1.while.body.1_crit_edge ]
  %ulBestOD.1120.1 = phi i32 [ %ulBestOD.2.lcssa, %for.inc ], [ %ulBestOD.2.lcssa.1, %while.end.1.while.body.1_crit_edge ]
  %ulBestF.1119.1 = phi i32 [ %ulBestF.2.lcssa, %for.inc ], [ %ulBestF.2.lcssa.1, %while.end.1.while.body.1_crit_edge ]
  %ulBestR.1118.1 = phi i32 [ %ulBestR.2.lcssa, %for.inc ], [ %ulBestR.2.lcssa.1, %while.end.1.while.body.1_crit_edge ]
  %R.0116.1 = phi i32 [ 2, %for.inc ], [ %inc44.1, %while.end.1.while.body.1_crit_edge ]
  %mul5.1 = mul nuw i32 %R.0116.1, %shl.1
  %div.1 = udiv i32 %mul5.1, %shr6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.1)
  %cmp7.1 = icmp ugt i32 %div.1, 2
  %dec.1 = sext i1 %cmp7.1 to i32
  %spec.select.1 = add i32 %div.1, %dec.1
  %6 = add i32 %spec.select.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %6)
  %7 = icmp ult i32 %6, 512
  br i1 %7, label %while.body11.lr.ph.1, label %while.body.1.while.end.1_crit_edge

while.body.1.while.end.1_crit_edge:               ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.1

while.body11.lr.ph.1:                             ; preds = %while.body.1
  %div12.1 = udiv i32 %mul1, %R.0116.1
  %sub27.1 = sub i32 %div12.1, %div26
  br label %while.body11.1

while.body11.1:                                   ; preds = %if.end43.1.while.body11.1_crit_edge, %while.body11.lr.ph.1
  %ulBestScore.2111.1 = phi i32 [ %ulBestScore.1122.1, %while.body11.lr.ph.1 ], [ %ulBestScore.4.1, %if.end43.1.while.body11.1_crit_edge ]
  %ulBestClk.2110.1 = phi i32 [ %ulBestClk.1121.1, %while.body11.lr.ph.1 ], [ %ulBestClk.4.1, %if.end43.1.while.body11.1_crit_edge ]
  %ulBestOD.2109.1 = phi i32 [ %ulBestOD.1120.1, %while.body11.lr.ph.1 ], [ %ulBestOD.4.1, %if.end43.1.while.body11.1_crit_edge ]
  %ulBestF.2108.1 = phi i32 [ %ulBestF.1119.1, %while.body11.lr.ph.1 ], [ %ulBestF.4.1, %if.end43.1.while.body11.1_crit_edge ]
  %ulBestR.2107.1 = phi i32 [ %ulBestR.1118.1, %while.body11.lr.ph.1 ], [ %ulBestR.4.1, %if.end43.1.while.body11.1_crit_edge ]
  %F.1105.1 = phi i32 [ %spec.select.1, %while.body11.lr.ph.1 ], [ %inc.1, %if.end43.1.while.body11.1_crit_edge ]
  %mul13.1 = mul i32 %div12.1, %F.1105.1
  %8 = add i32 %mul13.1, -100000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000001, i32 %8)
  %9 = icmp ult i32 %8, 400000001
  br i1 %9, label %if.then19.1, label %while.body11.1.if.end43.1_crit_edge

while.body11.1.if.end43.1_crit_edge:              ; preds = %while.body11.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.1

if.then19.1:                                      ; preds = %while.body11.1
  %shr20.1 = lshr i32 %mul13.1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr20.1, i32 %sub)
  %cmp21.not.1 = icmp ult i32 %shr20.1, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %shr20.1, i32 %add)
  %cmp23.not.1 = icmp ugt i32 %shr20.1, %add
  %or.cond102.1 = or i1 %cmp21.not.1, %cmp23.not.1
  br i1 %or.cond102.1, label %if.then19.1.if.end43.1_crit_edge, label %if.then24.1

if.then19.1.if.end43.1_crit_edge:                 ; preds = %if.then19.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.1

if.then24.1:                                      ; preds = %if.then19.1
  %div31.1 = udiv i32 %sub27.1, %shr30
  %div33.1 = udiv i32 %8, 390625
  %add34.1 = add i32 %div31.1, %div33.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulBestScore.2111.1)
  %tobool.not.1 = icmp ne i32 %ulBestScore.2111.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add34.1, i32 %ulBestScore.2111.1)
  %cmp37.not.1 = icmp ult i32 %add34.1, %ulBestScore.2111.1
  %or.cond142 = select i1 %tobool.not.1, i1 %cmp37.not.1, i1 false
  br i1 %or.cond142, label %if.then24.1.if.end43.1_crit_edge, label %if.then40.1

if.then24.1.if.end43.1_crit_edge:                 ; preds = %if.then24.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.1

if.then40.1:                                      ; preds = %if.then24.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.1

if.end43.1:                                       ; preds = %if.then40.1, %if.then24.1.if.end43.1_crit_edge, %if.then19.1.if.end43.1_crit_edge, %while.body11.1.if.end43.1_crit_edge
  %ulBestR.4.1 = phi i32 [ %R.0116.1, %if.then40.1 ], [ %ulBestR.2107.1, %if.then19.1.if.end43.1_crit_edge ], [ %ulBestR.2107.1, %while.body11.1.if.end43.1_crit_edge ], [ %ulBestR.2107.1, %if.then24.1.if.end43.1_crit_edge ]
  %ulBestF.4.1 = phi i32 [ %F.1105.1, %if.then40.1 ], [ %ulBestF.2108.1, %if.then19.1.if.end43.1_crit_edge ], [ %ulBestF.2108.1, %while.body11.1.if.end43.1_crit_edge ], [ %ulBestF.2108.1, %if.then24.1.if.end43.1_crit_edge ]
  %ulBestOD.4.1 = phi i32 [ 2, %if.then40.1 ], [ %ulBestOD.2109.1, %if.then19.1.if.end43.1_crit_edge ], [ %ulBestOD.2109.1, %while.body11.1.if.end43.1_crit_edge ], [ %ulBestOD.2109.1, %if.then24.1.if.end43.1_crit_edge ]
  %ulBestClk.4.1 = phi i32 [ %shr20.1, %if.then40.1 ], [ %ulBestClk.2110.1, %if.then19.1.if.end43.1_crit_edge ], [ %ulBestClk.2110.1, %while.body11.1.if.end43.1_crit_edge ], [ %ulBestClk.2110.1, %if.then24.1.if.end43.1_crit_edge ]
  %ulBestScore.4.1 = phi i32 [ %add34.1, %if.then40.1 ], [ %ulBestScore.2111.1, %if.then19.1.if.end43.1_crit_edge ], [ %ulBestScore.2111.1, %while.body11.1.if.end43.1_crit_edge ], [ %ulBestScore.2111.1, %if.then24.1.if.end43.1_crit_edge ]
  %inc.1 = add nuw nsw i32 %F.1105.1, 1
  %10 = add i32 %F.1105.1, -1
  %11 = icmp ult i32 %10, 512
  br i1 %11, label %if.end43.1.while.body11.1_crit_edge, label %if.end43.1.while.end.1_crit_edge

if.end43.1.while.end.1_crit_edge:                 ; preds = %if.end43.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.1

if.end43.1.while.body11.1_crit_edge:              ; preds = %if.end43.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body11.1

while.end.1:                                      ; preds = %if.end43.1.while.end.1_crit_edge, %while.body.1.while.end.1_crit_edge
  %ulBestR.2.lcssa.1 = phi i32 [ %ulBestR.1118.1, %while.body.1.while.end.1_crit_edge ], [ %ulBestR.4.1, %if.end43.1.while.end.1_crit_edge ]
  %ulBestF.2.lcssa.1 = phi i32 [ %ulBestF.1119.1, %while.body.1.while.end.1_crit_edge ], [ %ulBestF.4.1, %if.end43.1.while.end.1_crit_edge ]
  %ulBestOD.2.lcssa.1 = phi i32 [ %ulBestOD.1120.1, %while.body.1.while.end.1_crit_edge ], [ %ulBestOD.4.1, %if.end43.1.while.end.1_crit_edge ]
  %ulBestClk.2.lcssa.1 = phi i32 [ %ulBestClk.1121.1, %while.body.1.while.end.1_crit_edge ], [ %ulBestClk.4.1, %if.end43.1.while.end.1_crit_edge ]
  %ulBestScore.2.lcssa.1 = phi i32 [ %ulBestScore.1122.1, %while.body.1.while.end.1_crit_edge ], [ %ulBestScore.4.1, %if.end43.1.while.end.1_crit_edge ]
  %inc44.1 = add nuw nsw i32 %R.0116.1, 1
  %exitcond.1.not = icmp eq i32 %inc44.1, 34
  br i1 %exitcond.1.not, label %while.end.1.while.body.2_crit_edge, label %while.end.1.while.body.1_crit_edge

while.end.1.while.body.1_crit_edge:               ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.1

while.end.1.while.body.2_crit_edge:               ; preds = %while.end.1
  br label %while.body.2

while.body.2:                                     ; preds = %while.end.2.while.body.2_crit_edge, %while.end.1.while.body.2_crit_edge
  %ulBestScore.1122.2 = phi i32 [ %ulBestScore.2.lcssa.2, %while.end.2.while.body.2_crit_edge ], [ %ulBestScore.2.lcssa.1, %while.end.1.while.body.2_crit_edge ]
  %ulBestClk.1121.2 = phi i32 [ %ulBestClk.2.lcssa.2, %while.end.2.while.body.2_crit_edge ], [ %ulBestClk.2.lcssa.1, %while.end.1.while.body.2_crit_edge ]
  %ulBestOD.1120.2 = phi i32 [ %ulBestOD.2.lcssa.2, %while.end.2.while.body.2_crit_edge ], [ %ulBestOD.2.lcssa.1, %while.end.1.while.body.2_crit_edge ]
  %ulBestF.1119.2 = phi i32 [ %ulBestF.2.lcssa.2, %while.end.2.while.body.2_crit_edge ], [ %ulBestF.2.lcssa.1, %while.end.1.while.body.2_crit_edge ]
  %ulBestR.1118.2 = phi i32 [ %ulBestR.2.lcssa.2, %while.end.2.while.body.2_crit_edge ], [ %ulBestR.2.lcssa.1, %while.end.1.while.body.2_crit_edge ]
  %R.0116.2 = phi i32 [ %inc44.2, %while.end.2.while.body.2_crit_edge ], [ 2, %while.end.1.while.body.2_crit_edge ]
  %mul5.2 = mul nuw nsw i32 %R.0116.2, %shr
  %div.2 = udiv i32 %mul5.2, %shr6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.2)
  %cmp7.2 = icmp ugt i32 %div.2, 2
  %dec.2 = sext i1 %cmp7.2 to i32
  %spec.select.2 = add i32 %div.2, %dec.2
  %12 = add i32 %spec.select.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %12)
  %13 = icmp ult i32 %12, 512
  br i1 %13, label %while.body11.lr.ph.2, label %while.body.2.while.end.2_crit_edge

while.body.2.while.end.2_crit_edge:               ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.2

while.body11.lr.ph.2:                             ; preds = %while.body.2
  %div12.2 = udiv i32 %mul1, %R.0116.2
  %sub27.2 = sub i32 %div12.2, %div26
  br label %while.body11.2

while.body11.2:                                   ; preds = %if.end43.2.while.body11.2_crit_edge, %while.body11.lr.ph.2
  %ulBestScore.2111.2 = phi i32 [ %ulBestScore.1122.2, %while.body11.lr.ph.2 ], [ %ulBestScore.4.2, %if.end43.2.while.body11.2_crit_edge ]
  %ulBestClk.2110.2 = phi i32 [ %ulBestClk.1121.2, %while.body11.lr.ph.2 ], [ %ulBestClk.4.2, %if.end43.2.while.body11.2_crit_edge ]
  %ulBestOD.2109.2 = phi i32 [ %ulBestOD.1120.2, %while.body11.lr.ph.2 ], [ %ulBestOD.4.2, %if.end43.2.while.body11.2_crit_edge ]
  %ulBestF.2108.2 = phi i32 [ %ulBestF.1119.2, %while.body11.lr.ph.2 ], [ %ulBestF.4.2, %if.end43.2.while.body11.2_crit_edge ]
  %ulBestR.2107.2 = phi i32 [ %ulBestR.1118.2, %while.body11.lr.ph.2 ], [ %ulBestR.4.2, %if.end43.2.while.body11.2_crit_edge ]
  %F.1105.2 = phi i32 [ %spec.select.2, %while.body11.lr.ph.2 ], [ %inc.2, %if.end43.2.while.body11.2_crit_edge ]
  %mul13.2 = mul i32 %div12.2, %F.1105.2
  %14 = add i32 %mul13.2, -100000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000001, i32 %14)
  %15 = icmp ult i32 %14, 400000001
  br i1 %15, label %if.then19.2, label %while.body11.2.if.end43.2_crit_edge

while.body11.2.if.end43.2_crit_edge:              ; preds = %while.body11.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.2

if.then19.2:                                      ; preds = %while.body11.2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul13.2, i32 %sub)
  %cmp21.not.2 = icmp uge i32 %mul13.2, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %mul13.2, i32 %add)
  %cmp23.not.2 = icmp ule i32 %mul13.2, %add
  %or.cond102.2.not = and i1 %cmp21.not.2, %cmp23.not.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulBestScore.2111.2)
  %tobool.not.2 = icmp eq i32 %ulBestScore.2111.2, 0
  %or.cond143 = select i1 %or.cond102.2.not, i1 %tobool.not.2, i1 false
  br i1 %or.cond143, label %if.then35.2, label %if.then19.2.if.end43.2_crit_edge

if.then19.2.if.end43.2_crit_edge:                 ; preds = %if.then19.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.2

if.then35.2:                                      ; preds = %if.then19.2
  call void @__sanitizer_cov_trace_pc() #7
  %div31.2 = udiv i32 %sub27.2, %shr30
  %div33.2 = udiv i32 %14, 390625
  %add34.2 = add i32 %div31.2, %div33.2
  br label %if.end43.2

if.end43.2:                                       ; preds = %if.then35.2, %if.then19.2.if.end43.2_crit_edge, %while.body11.2.if.end43.2_crit_edge
  %ulBestR.4.2 = phi i32 [ %ulBestR.2107.2, %if.then19.2.if.end43.2_crit_edge ], [ %ulBestR.2107.2, %while.body11.2.if.end43.2_crit_edge ], [ %R.0116.2, %if.then35.2 ]
  %ulBestF.4.2 = phi i32 [ %ulBestF.2108.2, %if.then19.2.if.end43.2_crit_edge ], [ %ulBestF.2108.2, %while.body11.2.if.end43.2_crit_edge ], [ %F.1105.2, %if.then35.2 ]
  %ulBestOD.4.2 = phi i32 [ %ulBestOD.2109.2, %if.then19.2.if.end43.2_crit_edge ], [ %ulBestOD.2109.2, %while.body11.2.if.end43.2_crit_edge ], [ 0, %if.then35.2 ]
  %ulBestClk.4.2 = phi i32 [ %ulBestClk.2110.2, %if.then19.2.if.end43.2_crit_edge ], [ %ulBestClk.2110.2, %while.body11.2.if.end43.2_crit_edge ], [ %mul13.2, %if.then35.2 ]
  %ulBestScore.4.2 = phi i32 [ %ulBestScore.2111.2, %if.then19.2.if.end43.2_crit_edge ], [ %ulBestScore.2111.2, %while.body11.2.if.end43.2_crit_edge ], [ %add34.2, %if.then35.2 ]
  %inc.2 = add nuw nsw i32 %F.1105.2, 1
  %16 = add i32 %F.1105.2, -1
  %17 = icmp ult i32 %16, 512
  br i1 %17, label %if.end43.2.while.body11.2_crit_edge, label %if.end43.2.while.end.2_crit_edge

if.end43.2.while.end.2_crit_edge:                 ; preds = %if.end43.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.2

if.end43.2.while.body11.2_crit_edge:              ; preds = %if.end43.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body11.2

while.end.2:                                      ; preds = %if.end43.2.while.end.2_crit_edge, %while.body.2.while.end.2_crit_edge
  %ulBestR.2.lcssa.2 = phi i32 [ %ulBestR.1118.2, %while.body.2.while.end.2_crit_edge ], [ %ulBestR.4.2, %if.end43.2.while.end.2_crit_edge ]
  %ulBestF.2.lcssa.2 = phi i32 [ %ulBestF.1119.2, %while.body.2.while.end.2_crit_edge ], [ %ulBestF.4.2, %if.end43.2.while.end.2_crit_edge ]
  %ulBestOD.2.lcssa.2 = phi i32 [ %ulBestOD.1120.2, %while.body.2.while.end.2_crit_edge ], [ %ulBestOD.4.2, %if.end43.2.while.end.2_crit_edge ]
  %ulBestClk.2.lcssa.2 = phi i32 [ %ulBestClk.1121.2, %while.body.2.while.end.2_crit_edge ], [ %ulBestClk.4.2, %if.end43.2.while.end.2_crit_edge ]
  %ulBestScore.2.lcssa.2 = phi i32 [ %ulBestScore.1122.2, %while.body.2.while.end.2_crit_edge ], [ %ulBestScore.4.2, %if.end43.2.while.end.2_crit_edge ]
  %inc44.2 = add nuw nsw i32 %R.0116.2, 1
  %exitcond.2.not = icmp eq i32 %inc44.2, 34
  br i1 %exitcond.2.not, label %for.inc.2, label %while.end.2.while.body.2_crit_edge

while.end.2.while.body.2_crit_edge:               ; preds = %while.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.2

for.inc.2:                                        ; preds = %while.end.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulBestScore.2.lcssa.2)
  %tobool47.not = icmp eq i32 %ulBestScore.2.lcssa.2, 0
  br i1 %tobool47.not, label %for.inc.2.if.end54_crit_edge, label %if.then48

for.inc.2.if.end54_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then48:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %ROut to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ulBestR.2.lcssa.2, ptr %ROut, align 4
  %19 = ptrtoint ptr %FOut to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %ulBestF.2.lcssa.2, ptr %FOut, align 4
  %20 = and i32 %ulBestOD.2.lcssa.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %switch = icmp eq i32 %20, 2
  %.ulBestOD.2.lcssa.2.lcssa = select i1 %switch, i32 3, i32 %ulBestOD.2.lcssa.2
  %21 = ptrtoint ptr %POut to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.ulBestOD.2.lcssa.2.lcssa, ptr %POut, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %for.inc.2.if.end54_crit_edge
  ret i32 %ulBestClk.2.lcssa.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @SetCoreClockPLL(ptr noundef %pSTGReg, ptr noundef %pDev) local_unnamed_addr #2 align 64 {
entry:
  %F = alloca i32, align 4
  %R = alloca i32, align 4
  %P = alloca i32, align 4
  %sub = alloca i16, align 2
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %i60 = alloca i32, align 4
  %count61 = alloca i32, align 4
  %i76 = alloca i32, align 4
  %count77 = alloca i32, align 4
  %i90 = alloca i32, align 4
  %count91 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %F) #5
  %0 = ptrtoint ptr %F to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %F, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %R) #5
  %1 = ptrtoint ptr %R to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %R, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P) #5
  %2 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %P, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sub) #5
  %3 = ptrtoint ptr %sub to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %sub, align 2, !annotation !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %IntMask = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IntMask, i32 -65536) #5, !srcloc !13
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pSTGReg) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pSTGReg, i32 %5) #5, !srcloc !13
  %Thread1Enable = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Thread1Enable) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Thread1Enable, i32 %7) #5, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %SoftwareReset = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SoftwareReset, i32 4325376) #5, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SoftwareReset, i32 4587520) #5, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %TAConfiguration = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TAConfiguration, i32 0) #5, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SoftwareReset, i32 4325376) #5, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SoftwareReset, i32 4587520) #5, !srcloc !13
  %call35 = call i32 @pci_read_config_word(ptr noundef %pDev, i32 noundef 46, ptr noundef nonnull %sub) #5
  %8 = ptrtoint ptr %sub to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sub, align 2
  %conv = zext i16 %9 to i32
  %and.i = lshr i32 %conv, 4
  %shr.i = and i32 %and.i, 7
  %and1.i = lshr i32 %conv, 7
  %shr2.i = and i32 %and1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i)
  %cmp.i = icmp ugt i32 %shr.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr2.i)
  %cmp3.i = icmp eq i32 %shr2.i, 3
  %or.cond.i = or i1 %cmp.i, %cmp3.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %do.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pDev, i32 0, i32 12
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %arrayidx.i = getelementptr [5 x i32], ptr @__const.InitSDRAMRegisters.adwSDRAMArgCfg0, i32 0, i32 %shr.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #5
  %SDRAMArbiterConf.i = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SDRAMArbiterConf.i, i32 %14) #5, !srcloc !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp4.i = icmp ult i8 %11, 5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @arm_heavy_mb() #5
  %SDRAMConf0.i = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 101
  br i1 %cmp4.i, label %do.body6.i, label %do.body13.i

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SDRAMConf0.i, i32 -1589051392) #5, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  call void @arm_heavy_mb() #5
  %arrayidx12.i = getelementptr [5 x i32], ptr @__const.InitSDRAMRegisters.adwSDRAMCfg1, i32 0, i32 %shr.i
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #5
  %SDRAMConf1.i = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 102
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SDRAMConf1.i, i32 %17) #5, !srcloc !13
  br label %InitSDRAMRegisters.exit

do.body13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SDRAMConf0.i, i32 -246611968) #5, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  call void @arm_heavy_mb() #5
  %arrayidx20.i = getelementptr [5 x i32], ptr @__const.InitSDRAMRegisters.adwSDRAMCfg2, i32 0, i32 %shr.i
  %18 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx20.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #5
  %SDRAMConf121.i = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 102
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SDRAMConf121.i, i32 %20) #5, !srcloc !13
  br label %InitSDRAMRegisters.exit

InitSDRAMRegisters.exit:                          ; preds = %do.body13.i, %do.body6.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  call void @arm_heavy_mb() #5
  %SDRAMConf2.i = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 103
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SDRAMConf2.i, i32 822083584) #5, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  call void @arm_heavy_mb() #5
  %arrayidx29.i = getelementptr [3 x i32], ptr @__const.InitSDRAMRegisters.adwSDRAMRsh, i32 0, i32 %shr2.i
  %21 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx29.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #5
  %SDRAMRefresh.i = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SDRAMRefresh.i, i32 %23) #5, !srcloc !13
  %arrayidx30.i = getelementptr [3 x i32], ptr @__const.InitSDRAMRegisters.adwChipSpeed, i32 0, i32 %shr2.i
  %24 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx30.i, align 4
  %mul.i = mul i32 %25, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp = icmp eq i32 %mul.i, 0
  br i1 %cmp, label %InitSDRAMRegisters.exit.cleanup_crit_edge, label %if.end

InitSDRAMRegisters.exit.cleanup_crit_edge:        ; preds = %InitSDRAMRegisters.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %InitSDRAMRegisters.exit
  %call39 = call i32 @ProgramClock(i32 noundef 14318, i32 noundef 1000000, ptr noundef nonnull %F, ptr noundef nonnull %R, ptr noundef nonnull %P)
  %26 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %P, align 4
  %28 = ptrtoint ptr %F to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %F, align 4
  %sub40 = shl i32 %29, 2
  %shl = add i32 %sub40, 65528
  %or = or i32 %shl, %27
  %30 = ptrtoint ptr %R to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %R, align 4
  %sub41 = shl i32 %31, 11
  %shl42 = add i32 %sub41, 61440
  %or43 = or i32 %or, %shl42
  %32 = trunc i32 %or to i16
  %33 = and i16 %32, 255
  %conv51 = or i16 %33, 768
  %call52 = call i32 @pci_write_config_word(ptr noundef %pDev, i32 noundef 112, i16 noundef zeroext %conv51) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i)
  %34 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 -1, ptr %i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count)
  %35 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 -1, ptr %count, align 4
  store volatile i32 0, ptr %count, align 4
  %36 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 0, ptr %i, align 4
  %i.0.i.0.i.0.143 = load volatile i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %i.0.i.0.i.0.143)
  %cmp53144 = icmp ult i32 %i.0.i.0.i.0.143, 1000000
  br i1 %cmp53144, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %37 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %37)
  %count.0.count.0.count.0. = load volatile i32, ptr %count, align 4
  %inc = add i32 %count.0.count.0.count.0., 1
  store volatile i32 %inc, ptr %count, align 4
  %38 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %38)
  %i.0.i.0.i.0.113 = load volatile i32, ptr %i, align 4
  %inc55 = add i32 %i.0.i.0.i.0.113, 1
  store volatile i32 %inc55, ptr %i, align 4
  %i.0.i.0.i.0. = load volatile i32, ptr %i, align 4
  %cmp53 = icmp ult i32 %i.0.i.0.i.0., 1000000
  br i1 %cmp53, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i)
  %conv58 = or i16 %33, 17152
  %call59 = call i32 @pci_write_config_word(ptr noundef %pDev, i32 noundef 112, i16 noundef zeroext %conv58) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i60)
  %39 = ptrtoint ptr %i60 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 -1, ptr %i60, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count61)
  %40 = ptrtoint ptr %count61 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 -1, ptr %count61, align 4
  store volatile i32 0, ptr %count61, align 4
  %41 = ptrtoint ptr %i60 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %i60, align 4
  %i60.0.i60.0.i60.0.145 = load volatile i32, ptr %i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %i60.0.i60.0.i60.0.145)
  %cmp63146 = icmp ult i32 %i60.0.i60.0.i60.0.145, 1000000
  br i1 %cmp63146, label %for.end.for.body65_crit_edge, label %for.end.for.end69_crit_edge

for.end.for.end69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end69

for.end.for.body65_crit_edge:                     ; preds = %for.end
  br label %for.body65

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %for.end.for.body65_crit_edge
  %42 = ptrtoint ptr %count61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %count61.0.count61.0.count61.0. = load volatile i32, ptr %count61, align 4
  %inc66 = add i32 %count61.0.count61.0.count61.0., 1
  store volatile i32 %inc66, ptr %count61, align 4
  %43 = ptrtoint ptr %i60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %i60.0.i60.0.i60.0.112 = load volatile i32, ptr %i60, align 4
  %inc68 = add i32 %i60.0.i60.0.i60.0.112, 1
  store volatile i32 %inc68, ptr %i60, align 4
  %i60.0.i60.0.i60.0. = load volatile i32, ptr %i60, align 4
  %cmp63 = icmp ult i32 %i60.0.i60.0.i60.0., 1000000
  br i1 %cmp63, label %for.body65.for.body65_crit_edge, label %for.body65.for.end69_crit_edge

for.body65.for.end69_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end69

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body65

for.end69:                                        ; preds = %for.body65.for.end69_crit_edge, %for.end.for.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count61)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i60)
  %44 = trunc i32 %or43 to i16
  %45 = lshr i16 %44, 8
  %conv74 = or i16 %45, 512
  %call75 = call i32 @pci_write_config_word(ptr noundef %pDev, i32 noundef 112, i16 noundef zeroext %conv74) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i76)
  %46 = ptrtoint ptr %i76 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 -1, ptr %i76, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count77)
  %47 = ptrtoint ptr %count77 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 -1, ptr %count77, align 4
  store volatile i32 0, ptr %count77, align 4
  %48 = ptrtoint ptr %i76 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %i76, align 4
  %i76.0.i76.0.i76.0.147 = load volatile i32, ptr %i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %i76.0.i76.0.i76.0.147)
  %cmp79148 = icmp ult i32 %i76.0.i76.0.i76.0.147, 1000000
  br i1 %cmp79148, label %for.end69.for.body81_crit_edge, label %for.end69.for.end85_crit_edge

for.end69.for.end85_crit_edge:                    ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end85

for.end69.for.body81_crit_edge:                   ; preds = %for.end69
  br label %for.body81

for.body81:                                       ; preds = %for.body81.for.body81_crit_edge, %for.end69.for.body81_crit_edge
  %49 = ptrtoint ptr %count77 to i32
  call void @__asan_load4_noabort(i32 %49)
  %count77.0.count77.0.count77.0. = load volatile i32, ptr %count77, align 4
  %inc82 = add i32 %count77.0.count77.0.count77.0., 1
  store volatile i32 %inc82, ptr %count77, align 4
  %50 = ptrtoint ptr %i76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %i76.0.i76.0.i76.0.111 = load volatile i32, ptr %i76, align 4
  %inc84 = add i32 %i76.0.i76.0.i76.0.111, 1
  store volatile i32 %inc84, ptr %i76, align 4
  %i76.0.i76.0.i76.0. = load volatile i32, ptr %i76, align 4
  %cmp79 = icmp ult i32 %i76.0.i76.0.i76.0., 1000000
  br i1 %cmp79, label %for.body81.for.body81_crit_edge, label %for.body81.for.end85_crit_edge

for.body81.for.end85_crit_edge:                   ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end85

for.body81.for.body81_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body81

for.end85:                                        ; preds = %for.body81.for.end85_crit_edge, %for.end69.for.end85_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count77)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i76)
  %conv88 = or i16 %45, 16896
  %call89 = call i32 @pci_write_config_word(ptr noundef %pDev, i32 noundef 112, i16 noundef zeroext %conv88) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i90)
  %51 = ptrtoint ptr %i90 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 -1, ptr %i90, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count91)
  %52 = ptrtoint ptr %count91 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 -1, ptr %count91, align 4
  store volatile i32 0, ptr %count91, align 4
  %53 = ptrtoint ptr %i90 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %i90, align 4
  %i90.0.i90.0.i90.0.149 = load volatile i32, ptr %i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %i90.0.i90.0.i90.0.149)
  %cmp93150 = icmp ult i32 %i90.0.i90.0.i90.0.149, 1000000
  br i1 %cmp93150, label %for.end85.for.body95_crit_edge, label %for.end85.for.end99_crit_edge

for.end85.for.end99_crit_edge:                    ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

for.end85.for.body95_crit_edge:                   ; preds = %for.end85
  br label %for.body95

for.body95:                                       ; preds = %for.body95.for.body95_crit_edge, %for.end85.for.body95_crit_edge
  %54 = ptrtoint ptr %count91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %count91.0.count91.0.count91.0. = load volatile i32, ptr %count91, align 4
  %inc96 = add i32 %count91.0.count91.0.count91.0., 1
  store volatile i32 %inc96, ptr %count91, align 4
  %55 = ptrtoint ptr %i90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %i90.0.i90.0.i90.0.110 = load volatile i32, ptr %i90, align 4
  %inc98 = add i32 %i90.0.i90.0.i90.0.110, 1
  store volatile i32 %inc98, ptr %i90, align 4
  %i90.0.i90.0.i90.0. = load volatile i32, ptr %i90, align 4
  %cmp93 = icmp ult i32 %i90.0.i90.0.i90.0., 1000000
  br i1 %cmp93, label %for.body95.for.body95_crit_edge, label %for.body95.for.end99_crit_edge

for.body95.for.end99_crit_edge:                   ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

for.body95.for.body95_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body95

for.end99:                                        ; preds = %for.body95.for.end99_crit_edge, %for.end85.for.end99_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count91)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i90)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SoftwareReset, i32 -8454144) #5, !srcloc !13
  br label %cleanup

cleanup:                                          ; preds = %for.end99, %InitSDRAMRegisters.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end99 ], [ -22, %InitSDRAMRegisters.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sub) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %R) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %F) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, !1, !"CorePllControl", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/kyro/STG4000InitDevice.c", i32 48, i32 12}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{i64 2154440037}
!13 = !{i64 4987594}
!14 = !{i64 4988012}
!15 = !{i64 2154440773}
!16 = !{i64 2154441060}
!17 = !{i64 2154441793}
!18 = !{i64 2154442080}
!19 = !{i64 2154442568}
!20 = !{i64 2154443117}
!21 = !{i64 2154443630}
!22 = !{i64 2154444114}
!23 = !{i64 2154444663}
!24 = !{i64 2154436382}
!25 = !{i64 2154437409}
!26 = !{i64 2154438421}
!27 = !{i64 2154438933}
!28 = !{i64 2154439429}
!29 = !{i64 2154445535}
