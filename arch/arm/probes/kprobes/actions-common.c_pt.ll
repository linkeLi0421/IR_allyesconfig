; ModuleID = '/llk/IR_all_yes/arch/arm/probes/kprobes/actions-common.c_pt.bc'
source_filename = "../arch/arm/probes/kprobes/actions-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }

@str_pc_offset = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @kprobe_decode_ldmstm(i32 noundef %insn, ptr nocapture noundef %asi, ptr nocapture noundef readnone %h) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %insn, 65535
  %and1 = and i32 %insn, 1048576
  %shr = lshr i32 %insn, 16
  %and2 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and2)
  %cmp = icmp ult i32 %and2, 13
  %and3 = and i32 %insn, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 0
  %or.cond = and i1 %cmp4, %cmp
  br i1 %or.cond, label %entry.if.then27_crit_edge, label %if.else

entry.if.then27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then27

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp5 = icmp ugt i32 %and2, 1
  %and7 = and i32 %insn, 32771
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 0
  %or.cond62 = and i1 %cmp8, %cmp5
  br i1 %or.cond62, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %sub = add nsw i32 %and2, -2
  %shr10 = lshr i32 %and, 2
  br label %if.then27

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp12 = icmp ult i32 %and2, 3
  %0 = and i32 %insn, 1081351
  call void @__sanitizer_cov_trace_const_cmp4(i32 1081344, i32 %0)
  %1 = icmp ne i32 %0, 1081344
  %2 = or i1 %1, %cmp12
  br i1 %2, label %if.end31, label %if.then20

if.then20:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #5
  %sub21 = add nsw i32 %and2, -3
  %shr22 = lshr i32 %and, 3
  br label %if.then27

if.then27:                                        ; preds = %if.then20, %if.then9, %entry.if.then27_crit_edge
  %handler.0.ph = phi ptr [ @emulate_generic_r0_12_noflags, %entry.if.then27_crit_edge ], [ @emulate_ldm_r3_15, %if.then20 ], [ @emulate_generic_r2_14_noflags, %if.then9 ]
  %reglist.0.ph = phi i32 [ %and, %entry.if.then27_crit_edge ], [ %shr22, %if.then20 ], [ %shr10, %if.then9 ]
  %rn.0.ph = phi i32 [ %and2, %entry.if.then27_crit_edge ], [ %sub21, %if.then20 ], [ %sub, %if.then9 ]
  %and28 = and i32 %insn, -1048576
  %shl = shl nuw nsw i32 %rn.0.ph, 16
  %or = or i32 %reglist.0.ph, %and28
  %or29 = or i32 %or, %shl
  %3 = tail call i32 @llvm.bswap.i32(i32 %or29)
  %4 = load ptr, ptr %asi, align 4
  store i32 %3, ptr %4, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #5
  %and32 = and i32 %insn, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool35.not = icmp eq i32 %and1, 0
  %cond = select i1 %tobool35.not, ptr @simulate_stm1_pc, ptr @simulate_ldm1_pc
  %handler.1 = select i1 %tobool33.not, ptr @simulate_ldm1stm1, ptr %cond
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then27
  %handler.1.sink = phi ptr [ %handler.1, %if.end31 ], [ %handler.0.ph, %if.then27 ]
  %retval.0 = phi i32 [ 2, %if.end31 ], [ 1, %if.then27 ]
  %insn_handler38 = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 1
  store ptr %handler.1.sink, ptr %insn_handler38, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emulate_generic_r0_12_noflags(i32 noundef %insn, ptr nocapture noundef readonly %asi, ptr noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %insn_fn = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %0 = load ptr, ptr %insn_fn, align 4
  %1 = tail call { ptr, ptr } asm sideeffect "stmdb\09sp!, {$0, r11}\09\0A\09ldmia\09$0, {r0-r12}\09\0A\09blx\09$1\09\09\09\0A\09ldr\09lr, [sp], #4\09\09\0A\09stmia\09lr, {r0-r12}\09\09\0A\09ldr\09r11, [sp], #4\09\09\0A\09", "={r1},={lr},{r1},{lr},~{r0},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r12},~{memory},~{cc}"(ptr %regs, ptr %0) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emulate_generic_r2_14_noflags(i32 noundef %insn, ptr nocapture noundef readonly %asi, ptr noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %regs, i32 2
  %insn_fn.i = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %0 = load ptr, ptr %insn_fn.i, align 4
  %1 = tail call { ptr, ptr } asm sideeffect "stmdb\09sp!, {$0, r11}\09\0A\09ldmia\09$0, {r0-r12}\09\0A\09blx\09$1\09\09\09\0A\09ldr\09lr, [sp], #4\09\09\0A\09stmia\09lr, {r0-r12}\09\09\0A\09ldr\09r11, [sp], #4\09\09\0A\09", "={r1},={lr},{r1},{lr},~{r0},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r12},~{memory},~{cc}"(ptr %add.ptr, ptr %0) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emulate_ldm_r3_15(i32 noundef %insn, ptr nocapture noundef readonly %asi, ptr noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %regs, i32 3
  %insn_fn.i = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %0 = load ptr, ptr %insn_fn.i, align 4
  %1 = tail call { ptr, ptr } asm sideeffect "stmdb\09sp!, {$0, r11}\09\0A\09ldmia\09$0, {r0-r12}\09\0A\09blx\09$1\09\09\09\0A\09ldr\09lr, [sp], #4\09\09\0A\09stmia\09lr, {r0-r12}\09\09\0A\09ldr\09r11, [sp], #4\09\09\0A\09", "={r1},={lr},{r1},{lr},~{r0},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r12},~{memory},~{cc}"(ptr %add.ptr, ptr %0) #4, !srcloc !9
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %2 = load i32, ptr %arrayidx, align 4
  %arrayidx.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %3, -33
  %pcv.addr.0.v.i.i = select i1 %tobool.not.i.i, i32 -3, i32 -2
  %pcv.addr.0.i.i = and i32 %pcv.addr.0.v.i.i, %2
  %4 = shl nuw nsw i32 %and.i.i, 5
  %cpsr.0.i.i = or i32 %and2.i.i, %4
  store i32 %cpsr.0.i.i, ptr %arrayidx.i.i, align 4
  store i32 %pcv.addr.0.i.i, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @simulate_ldm1_pc(i32 noundef %insn, ptr nocapture noundef readnone %asi, ptr nocapture noundef %regs) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %insn, 16
  %and.i = and i32 %shr.i, 15
  %and1.i = and i32 %insn, 1048576
  %and2.i = and i32 %insn, 2097152
  %and3.i = and i32 %insn, 8388608
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and.i
  %0 = load i32, ptr %arrayidx.i, align 4
  %1 = inttoptr i32 %0 to ptr
  %and5.i = and i32 %insn, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not77.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not77.i, label %while.end.thread.i, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.end.thread.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and488.i = lshr i32 %insn, 24
  %and4.lobit89.i = and i32 %and488.i, 1
  %and3.lobit90.i = lshr exact i32 %and3.i, 23
  %2 = xor i32 %and4.lobit89.i, %and3.lobit90.i
  %cmp91.i = xor i32 %2, 1
  %add.ptr1292.i = getelementptr i32, ptr %1, i32 %cmp91.i
  br label %while.end27.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %reg_count.079.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %reg_bit_vector.078.i = phi i32 [ %and6.i, %while.body.i.while.body.i_crit_edge ], [ %and5.i, %entry.while.body.i_crit_edge ]
  %sub.i = add i32 %reg_bit_vector.078.i, -1
  %and6.i = and i32 %sub.i, %reg_bit_vector.078.i
  %inc.i = add i32 %reg_count.079.i, 1
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %while.body16.lr.ph.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body16.lr.ph.i:                             ; preds = %while.body.i
  %inc.neg.i = xor i32 %reg_count.079.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool7.not.i = icmp eq i32 %and3.i, 0
  %addr.0.idx.i = select i1 %tobool7.not.i, i32 %inc.neg.i, i32 0
  %and4.i = lshr i32 %insn, 24
  %and4.lobit.i = and i32 %and4.i, 1
  %and3.lobit.i = lshr exact i32 %and3.i, 23
  %3 = xor i32 %and4.lobit.i, %and3.lobit.i
  %cmp.i = xor i32 %3, 1
  %addr.0.i = getelementptr i32, ptr %1, i32 %addr.0.idx.i
  %add.ptr12.i = getelementptr i32, ptr %addr.0.i, i32 %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool19.not.i = icmp eq i32 %and1.i, 0
  br label %while.body16.i

while.body16.i:                                   ; preds = %if.end26.i.while.body16.i_crit_edge, %while.body16.lr.ph.i
  %reg_bit_vector.182.i = phi i32 [ %and5.i, %while.body16.lr.ph.i ], [ %and18.i, %if.end26.i.while.body16.i_crit_edge ]
  %addr.181.i = phi ptr [ %add.ptr12.i, %while.body16.lr.ph.i ], [ %addr.2.i, %if.end26.i.while.body16.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %reg_bit_vector.182.i, i1 true) #4, !range !10
  %sub17.i = add i32 %reg_bit_vector.182.i, -1
  %and18.i = and i32 %sub17.i, %reg_bit_vector.182.i
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #5
  %5 = load i32, ptr %addr.181.i, align 4
  %arrayidx22.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 %4
  store i32 %5, ptr %arrayidx22.i, align 4
  br label %if.end26.i

if.else.i:                                        ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx24.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 %4
  %6 = load i32, ptr %arrayidx24.i, align 4
  store i32 %6, ptr %addr.181.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i, %if.then20.i
  %addr.2.i = getelementptr i32, ptr %addr.181.i, i32 1
  %tobool15.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool15.not.i, label %if.end26.i.while.end27.i_crit_edge, label %if.end26.i.while.body16.i_crit_edge

if.end26.i.while.body16.i_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body16.i

if.end26.i.while.end27.i_crit_edge:               ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end27.i

while.end27.i:                                    ; preds = %if.end26.i.while.end27.i_crit_edge, %while.end.thread.i
  %cmp94.i = phi i32 [ %cmp91.i, %while.end.thread.i ], [ %cmp.i, %if.end26.i.while.end27.i_crit_edge ]
  %addr.0.idx93.i = phi i32 [ 0, %while.end.thread.i ], [ %addr.0.idx.i, %if.end26.i.while.end27.i_crit_edge ]
  %addr.1.lcssa.i = phi ptr [ %add.ptr1292.i, %while.end.thread.i ], [ %addr.2.i, %if.end26.i.while.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool28.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool28.not.i, label %while.end27.i.simulate_ldm1stm1.exit_crit_edge, label %if.then29.i

while.end27.i.simulate_ldm1stm1.exit_crit_edge:   ; preds = %while.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %simulate_ldm1stm1.exit

if.then29.i:                                      ; preds = %while.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  %addr.3.i = getelementptr i32, ptr %addr.1.lcssa.i, i32 %addr.0.idx93.i
  %idx.neg43.i = sub nsw i32 0, %cmp94.i
  %add.ptr44.i = getelementptr i32, ptr %addr.3.i, i32 %idx.neg43.i
  %7 = ptrtoint ptr %add.ptr44.i to i32
  store i32 %7, ptr %arrayidx.i, align 4
  br label %simulate_ldm1stm1.exit

simulate_ldm1stm1.exit:                           ; preds = %if.then29.i, %while.end27.i.simulate_ldm1stm1.exit_crit_edge
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %9, -33
  %pcv.addr.0.v.i.i = select i1 %tobool.not.i.i, i32 -3, i32 -2
  %pcv.addr.0.i.i = and i32 %pcv.addr.0.v.i.i, %8
  %10 = shl nuw nsw i32 %and.i.i, 5
  %cpsr.0.i.i = or i32 %and2.i.i, %10
  store i32 %cpsr.0.i.i, ptr %arrayidx.i.i, align 4
  store i32 %pcv.addr.0.i.i, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @simulate_stm1_pc(i32 noundef %insn, ptr nocapture noundef readnone %asi, ptr nocapture noundef %regs) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %0, -4
  %1 = load i32, ptr @str_pc_offset, align 4
  %add = add i32 %sub, %1
  store i32 %add, ptr %arrayidx, align 4
  %shr.i = lshr i32 %insn, 16
  %and.i = and i32 %shr.i, 15
  %and1.i = and i32 %insn, 1048576
  %and2.i = and i32 %insn, 2097152
  %and3.i = and i32 %insn, 8388608
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and.i
  %2 = load i32, ptr %arrayidx.i, align 4
  %3 = inttoptr i32 %2 to ptr
  %and5.i = and i32 %insn, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not77.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not77.i, label %while.end.thread.i, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.end.thread.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and488.i = lshr i32 %insn, 24
  %and4.lobit89.i = and i32 %and488.i, 1
  %and3.lobit90.i = lshr exact i32 %and3.i, 23
  %4 = xor i32 %and4.lobit89.i, %and3.lobit90.i
  %cmp91.i = xor i32 %4, 1
  %add.ptr1292.i = getelementptr i32, ptr %3, i32 %cmp91.i
  br label %while.end27.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %reg_count.079.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %reg_bit_vector.078.i = phi i32 [ %and6.i, %while.body.i.while.body.i_crit_edge ], [ %and5.i, %entry.while.body.i_crit_edge ]
  %sub.i = add i32 %reg_bit_vector.078.i, -1
  %and6.i = and i32 %sub.i, %reg_bit_vector.078.i
  %inc.i = add i32 %reg_count.079.i, 1
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %while.body16.lr.ph.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body16.lr.ph.i:                             ; preds = %while.body.i
  %inc.neg.i = xor i32 %reg_count.079.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool7.not.i = icmp eq i32 %and3.i, 0
  %addr.0.idx.i = select i1 %tobool7.not.i, i32 %inc.neg.i, i32 0
  %and4.i = lshr i32 %insn, 24
  %and4.lobit.i = and i32 %and4.i, 1
  %and3.lobit.i = lshr exact i32 %and3.i, 23
  %5 = xor i32 %and4.lobit.i, %and3.lobit.i
  %cmp.i = xor i32 %5, 1
  %addr.0.i = getelementptr i32, ptr %3, i32 %addr.0.idx.i
  %add.ptr12.i = getelementptr i32, ptr %addr.0.i, i32 %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool19.not.i = icmp eq i32 %and1.i, 0
  br label %while.body16.i

while.body16.i:                                   ; preds = %if.end26.i.while.body16.i_crit_edge, %while.body16.lr.ph.i
  %reg_bit_vector.182.i = phi i32 [ %and5.i, %while.body16.lr.ph.i ], [ %and18.i, %if.end26.i.while.body16.i_crit_edge ]
  %addr.181.i = phi ptr [ %add.ptr12.i, %while.body16.lr.ph.i ], [ %addr.2.i, %if.end26.i.while.body16.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %reg_bit_vector.182.i, i1 true) #4, !range !10
  %sub17.i = add i32 %reg_bit_vector.182.i, -1
  %and18.i = and i32 %sub17.i, %reg_bit_vector.182.i
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = load i32, ptr %addr.181.i, align 4
  %arrayidx22.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 %6
  store i32 %7, ptr %arrayidx22.i, align 4
  br label %if.end26.i

if.else.i:                                        ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx24.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 %6
  %8 = load i32, ptr %arrayidx24.i, align 4
  store i32 %8, ptr %addr.181.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i, %if.then20.i
  %addr.2.i = getelementptr i32, ptr %addr.181.i, i32 1
  %tobool15.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool15.not.i, label %if.end26.i.while.end27.i_crit_edge, label %if.end26.i.while.body16.i_crit_edge

if.end26.i.while.body16.i_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body16.i

if.end26.i.while.end27.i_crit_edge:               ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end27.i

while.end27.i:                                    ; preds = %if.end26.i.while.end27.i_crit_edge, %while.end.thread.i
  %cmp94.i = phi i32 [ %cmp91.i, %while.end.thread.i ], [ %cmp.i, %if.end26.i.while.end27.i_crit_edge ]
  %addr.0.idx93.i = phi i32 [ 0, %while.end.thread.i ], [ %addr.0.idx.i, %if.end26.i.while.end27.i_crit_edge ]
  %addr.1.lcssa.i = phi ptr [ %add.ptr1292.i, %while.end.thread.i ], [ %addr.2.i, %if.end26.i.while.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool28.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool28.not.i, label %while.end27.i.simulate_ldm1stm1.exit_crit_edge, label %if.then29.i

while.end27.i.simulate_ldm1stm1.exit_crit_edge:   ; preds = %while.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %simulate_ldm1stm1.exit

if.then29.i:                                      ; preds = %while.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  %addr.3.i = getelementptr i32, ptr %addr.1.lcssa.i, i32 %addr.0.idx93.i
  %idx.neg43.i = sub nsw i32 0, %cmp94.i
  %add.ptr44.i = getelementptr i32, ptr %addr.3.i, i32 %idx.neg43.i
  %9 = ptrtoint ptr %add.ptr44.i to i32
  store i32 %9, ptr %arrayidx.i, align 4
  br label %simulate_ldm1stm1.exit

simulate_ldm1stm1.exit:                           ; preds = %if.then29.i, %while.end27.i.simulate_ldm1stm1.exit_crit_edge
  store i32 %0, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @simulate_ldm1stm1(i32 noundef %insn, ptr nocapture noundef readnone %asi, ptr nocapture noundef %regs) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %insn, 16
  %and = and i32 %shr, 15
  %and1 = and i32 %insn, 1048576
  %and2 = and i32 %insn, 2097152
  %and3 = and i32 %insn, 8388608
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %0 = load i32, ptr %arrayidx, align 4
  %1 = inttoptr i32 %0 to ptr
  %and5 = and i32 %insn, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not77 = icmp eq i32 %and5, 0
  br i1 %tobool.not77, label %while.end.thread, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and488 = lshr i32 %insn, 24
  %and4.lobit89 = and i32 %and488, 1
  %and3.lobit90 = lshr exact i32 %and3, 23
  %2 = xor i32 %and3.lobit90, %and4.lobit89
  %cmp91 = xor i32 %2, 1
  %add.ptr1292 = getelementptr i32, ptr %1, i32 %cmp91
  br label %while.end27

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %reg_count.079 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %reg_bit_vector.078 = phi i32 [ %and6, %while.body.while.body_crit_edge ], [ %and5, %entry.while.body_crit_edge ]
  %sub = add i32 %reg_bit_vector.078, -1
  %and6 = and i32 %sub, %reg_bit_vector.078
  %inc = add i32 %reg_count.079, 1
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %while.body
  %inc.neg = xor i32 %reg_count.079, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool7.not = icmp eq i32 %and3, 0
  %addr.0.idx = select i1 %tobool7.not, i32 %inc.neg, i32 0
  %addr.0 = getelementptr i32, ptr %1, i32 %addr.0.idx
  %and4 = lshr i32 %insn, 24
  %and4.lobit = and i32 %and4, 1
  %and3.lobit = lshr exact i32 %and3, 23
  %3 = xor i32 %and3.lobit, %and4.lobit
  %cmp = xor i32 %3, 1
  %add.ptr12 = getelementptr i32, ptr %addr.0, i32 %cmp
  br i1 %tobool.not77, label %while.end.while.end27_crit_edge, label %while.body16.lr.ph

while.end.while.end27_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end27

while.body16.lr.ph:                               ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool19.not = icmp eq i32 %and1, 0
  br label %while.body16

while.body16:                                     ; preds = %if.end26.while.body16_crit_edge, %while.body16.lr.ph
  %reg_bit_vector.182 = phi i32 [ %and5, %while.body16.lr.ph ], [ %and18, %if.end26.while.body16_crit_edge ]
  %addr.181 = phi ptr [ %add.ptr12, %while.body16.lr.ph ], [ %addr.2, %if.end26.while.body16_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %reg_bit_vector.182, i1 true) #4, !range !10
  %sub17 = add i32 %reg_bit_vector.182, -1
  %and18 = and i32 %sub17, %reg_bit_vector.182
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #5
  %5 = load i32, ptr %addr.181, align 4
  %arrayidx22 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %4
  store i32 %5, ptr %arrayidx22, align 4
  br label %if.end26

if.else:                                          ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx24 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %4
  %6 = load i32, ptr %arrayidx24, align 4
  store i32 %6, ptr %addr.181, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then20
  %addr.2 = getelementptr i32, ptr %addr.181, i32 1
  %tobool15.not = icmp eq i32 %and18, 0
  br i1 %tobool15.not, label %if.end26.while.end27_crit_edge, label %if.end26.while.body16_crit_edge

if.end26.while.body16_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body16

if.end26.while.end27_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end27

while.end27:                                      ; preds = %if.end26.while.end27_crit_edge, %while.end.while.end27_crit_edge, %while.end.thread
  %cmp94 = phi i32 [ %cmp, %while.end.while.end27_crit_edge ], [ %cmp91, %while.end.thread ], [ %cmp, %if.end26.while.end27_crit_edge ]
  %addr.0.idx93 = phi i32 [ %addr.0.idx, %while.end.while.end27_crit_edge ], [ 0, %while.end.thread ], [ %addr.0.idx, %if.end26.while.end27_crit_edge ]
  %addr.1.lcssa = phi ptr [ %add.ptr12, %while.end.while.end27_crit_edge ], [ %add.ptr1292, %while.end.thread ], [ %addr.2, %if.end26.while.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool28.not = icmp eq i32 %and2, 0
  br i1 %tobool28.not, label %while.end27.if.end47_crit_edge, label %if.then29

while.end27.if.end47_crit_edge:                   ; preds = %while.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then29:                                        ; preds = %while.end27
  call void @__sanitizer_cov_trace_pc() #5
  %addr.3 = getelementptr i32, ptr %addr.1.lcssa, i32 %addr.0.idx93
  %idx.neg43 = sub nsw i32 0, %cmp94
  %add.ptr44 = getelementptr i32, ptr %addr.3, i32 %idx.neg43
  %7 = ptrtoint ptr %add.ptr44 to i32
  store i32 %7, ptr %arrayidx, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then29, %while.end27.if.end47_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nomerge }

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
!9 = !{i64 1961, i64 1990, i64 2023, i64 2072, i64 2207, i64 2252, i64 2280}
!10 = !{i32 0, i32 33}
