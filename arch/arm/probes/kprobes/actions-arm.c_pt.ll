; ModuleID = '/llk/IR_all_yes/arch/arm/probes/kprobes/actions-arm.c_pt.bc'
source_filename = "../arch/arm/probes/kprobes/actions-arm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.decode_action = type { ptr }
%struct.decode_checker = type { ptr }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }

@kprobes_arm_actions = dso_local local_unnamed_addr constant [32 x %union.decode_action] [%union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @simulate_blx1 }, %union.decode_action { ptr @simulate_blx2bx }, %union.decode_action { ptr @simulate_mrs }, %union.decode_action { ptr @emulate_rd12rm0_noflags_nopc }, %union.decode_action { ptr @emulate_rd12rn16rm0_rwflags_nopc }, %union.decode_action { ptr @emulate_rdlo12rdhi16rn0rm8_rwflags_nopc }, %union.decode_action { ptr @emulate_rd16rn12rm0rs8_rwflags_nopc }, %union.decode_action { ptr @emulate_rd12rn16rm0_rwflags_nopc }, %union.decode_action { ptr @emulate_ldrdstrd }, %union.decode_action { ptr @emulate_ldr }, %union.decode_action { ptr @emulate_str }, %union.decode_action { ptr @emulate_ldr }, %union.decode_action { ptr @emulate_str }, %union.decode_action { ptr @simulate_mov_ipsp }, %union.decode_action { ptr @emulate_rd12rn16rm0rs8_rwflags }, %union.decode_action { ptr @emulate_rd12rn16rm0rs8_rwflags }, %union.decode_action { ptr @emulate_rd12rm0_noflags_nopc }, %union.decode_action { ptr @probes_emulate_none }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @emulate_rd12rn16rm0_rwflags_nopc }, %union.decode_action { ptr @emulate_rd12rm0_noflags_nopc }, %union.decode_action { ptr @emulate_rd12rn16rm0_rwflags_nopc }, %union.decode_action { ptr @emulate_rd12rn16rm0_rwflags_nopc }, %union.decode_action { ptr @emulate_rd12rm0_noflags_nopc }, %union.decode_action { ptr @emulate_rd12rn16rm0_rwflags_nopc }, %union.decode_action { ptr @emulate_rdlo12rdhi16rn0rm8_rwflags_nopc }, %union.decode_action { ptr @emulate_rd16rn12rm0rs8_rwflags_nopc }, %union.decode_action { ptr @emulate_rd12rm0_noflags_nopc }, %union.decode_action { ptr @simulate_bbl }, %union.decode_action { ptr @kprobe_decode_ldmstm }], align 4
@arm_stack_checker = external dso_local constant [0 x %struct.decode_checker], align 4
@arm_regs_checker = external dso_local constant [0 x %struct.decode_checker], align 4
@kprobes_arm_checkers = dso_local local_unnamed_addr global [3 x ptr] [ptr @arm_stack_checker, ptr @arm_regs_checker, ptr null], align 4
@str_pc_offset = external dso_local local_unnamed_addr global i32, align 4
@alu_write_pc_interworks = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: null_pointer_is_valid
declare dso_local void @probes_simulate_nop(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_blx1(i32 noundef, ptr noundef, ptr noundef) #0 section ".kprobes.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_blx2bx(i32 noundef, ptr noundef, ptr noundef) #0 section ".kprobes.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_mrs(i32 noundef, ptr noundef, ptr noundef) #0 section ".kprobes.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emulate_rd12rm0_noflags_nopc(i32 noundef %insn, ptr nocapture noundef readonly %asi, ptr nocapture noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %insn, 12
  %and = and i32 %shr, 15
  %and1 = and i32 %insn, 15
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %0 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and1
  %1 = load i32, ptr %arrayidx3, align 4
  %insn_fn = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %2 = load ptr, ptr %insn_fn, align 4
  %3 = tail call i32 asm sideeffect "blx\09$3\09\09\0A\09", "={r0},{r0},{r3},r,~{lr},~{memory},~{cc}"(i32 %0, i32 %1, ptr %2) #2, !srcloc !9
  store i32 %3, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emulate_rd12rn16rm0_rwflags_nopc(i32 noundef %insn, ptr nocapture noundef readonly %asi, ptr nocapture noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %insn, 12
  %and = and i32 %shr, 15
  %shr1 = lshr i32 %insn, 16
  %and2 = and i32 %shr1, 15
  %and3 = and i32 %insn, 15
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %0 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and2
  %1 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and3
  %2 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %3 = load i32, ptr %arrayidx9, align 4
  %insn_fn = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %4 = load ptr, ptr %insn_fn, align 4
  %5 = tail call { i32, i32 } asm sideeffect "msr\09cpsr_fs, $1\09\0A\09blx\09$6\09\09\0A\09mrs\09$1, cpsr\09\09\0A\09", "={r0},=r,{r0},{r2},{r3},1,r,~{lr},~{memory},~{cc}"(i32 %0, i32 %1, i32 %2, i32 %3, ptr %4) #2, !srcloc !10
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult10 = extractvalue { i32, i32 } %5, 1
  store i32 %asmresult, ptr %arrayidx, align 4
  %6 = load i32, ptr %arrayidx9, align 4
  %and15 = and i32 %6, 133234687
  %and16 = and i32 %asmresult10, -133234688
  %or = or i32 %and15, %and16
  store i32 %or, ptr %arrayidx9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emulate_rdlo12rdhi16rn0rm8_rwflags_nopc(i32 noundef %insn, ptr nocapture noundef readonly %asi, ptr nocapture noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %insn, 12
  %and = and i32 %shr, 15
  %shr1 = lshr i32 %insn, 16
  %and2 = and i32 %shr1, 15
  %and3 = and i32 %insn, 15
  %shr4 = lshr i32 %insn, 8
  %and5 = and i32 %shr4, 15
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %0 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and2
  %1 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and3
  %2 = load i32, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and5
  %3 = load i32, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %4 = load i32, ptr %arrayidx13, align 4
  %insn_fn = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %5 = load ptr, ptr %insn_fn, align 4
  %6 = tail call { i32, i32, i32 } asm sideeffect "msr\09cpsr_fs, $2\09\0A\09blx\09$8\09\09\0A\09mrs\09$2, cpsr\09\09\0A\09", "={r0},={r2},=r,{r0},{r2},{r3},{r1},2,r,~{lr},~{memory},~{cc}"(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, ptr %5) #2, !srcloc !11
  %asmresult = extractvalue { i32, i32, i32 } %6, 0
  %asmresult14 = extractvalue { i32, i32, i32 } %6, 1
  %asmresult15 = extractvalue { i32, i32, i32 } %6, 2
  store i32 %asmresult, ptr %arrayidx, align 4
  store i32 %asmresult14, ptr %arrayidx7, align 4
  %7 = load i32, ptr %arrayidx13, align 4
  %and22 = and i32 %7, 133234687
  %and23 = and i32 %asmresult15, -133234688
  %or = or i32 %and22, %and23
  store i32 %or, ptr %arrayidx13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emulate_rd16rn12rm0rs8_rwflags_nopc(i32 noundef %insn, ptr nocapture noundef readonly %asi, ptr nocapture noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %insn, 16
  %and = and i32 %shr, 15
  %shr1 = lshr i32 %insn, 12
  %and2 = and i32 %shr1, 15
  %and3 = and i32 %insn, 15
  %shr4 = lshr i32 %insn, 8
  %and5 = and i32 %shr4, 15
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %0 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and2
  %1 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and3
  %2 = load i32, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and5
  %3 = load i32, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %4 = load i32, ptr %arrayidx13, align 4
  %insn_fn = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %5 = load ptr, ptr %insn_fn, align 4
  %6 = tail call { i32, i32 } asm sideeffect "msr\09cpsr_fs, $1\09\0A\09blx\09$7\09\09\0A\09mrs\09$1, cpsr\09\09\0A\09", "={r2},=r,{r2},{r0},{r3},{r1},1,r,~{lr},~{memory},~{cc}"(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, ptr %5) #2, !srcloc !12
  %asmresult = extractvalue { i32, i32 } %6, 0
  %asmresult14 = extractvalue { i32, i32 } %6, 1
  store i32 %asmresult, ptr %arrayidx, align 4
  %7 = load i32, ptr %arrayidx13, align 4
  %and19 = and i32 %7, 133234687
  %and20 = and i32 %asmresult14, -133234688
  %or = or i32 %and19, %and20
  store i32 %or, ptr %arrayidx13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emulate_ldrdstrd(i32 noundef %insn, ptr nocapture noundef readonly %asi, ptr nocapture noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %insn, 12
  %and = and i32 %shr, 15
  %shr1 = lshr i32 %insn, 16
  %and2 = and i32 %shr1, 15
  %and3 = and i32 %insn, 15
  %arrayidx5 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %0 = load i32, ptr %arrayidx5, align 4
  %add7 = add nuw nsw i32 %and, 1
  %arrayidx8 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %add7
  %1 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and2)
  %cmp = icmp eq i32 %and2, 15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx10 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and2
  %3 = load i32, ptr %arrayidx10, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %3, %cond.false ]
  %arrayidx12 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and3
  %4 = load i32, ptr %arrayidx12, align 4
  %insn_fn = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %5 = load ptr, ptr %insn_fn, align 4
  %6 = tail call { i32, i32, i32 } asm sideeffect "blx\09$7\09\09\0A\09", "={r0},={r1},={r2},{r0},{r1},{r2},{r3},r,~{lr},~{memory},~{cc}"(i32 %0, i32 %1, i32 %cond, i32 %4, ptr %5) #2, !srcloc !13
  %asmresult = extractvalue { i32, i32, i32 } %6, 0
  %asmresult13 = extractvalue { i32, i32, i32 } %6, 1
  store i32 %asmresult, ptr %arrayidx5, align 4
  store i32 %asmresult13, ptr %arrayidx8, align 4
  %xor = and i32 %insn, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor)
  %tobool.not = icmp eq i32 %xor, 16777216
  br i1 %tobool.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #3
  %asmresult14 = extractvalue { i32, i32, i32 } %6, 2
  %arrayidx22 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and2
  store i32 %asmresult14, ptr %arrayidx22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emulate_ldr(i32 noundef %insn, ptr nocapture noundef readonly %asi, ptr nocapture noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %insn, 12
  %and = and i32 %shr, 15
  %shr1 = lshr i32 %insn, 16
  %and2 = and i32 %shr1, 15
  %and3 = and i32 %insn, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and2)
  %cmp = icmp eq i32 %and2, 15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = load i32, ptr %arrayidx, align 4
  %add = add i32 %0, 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx5 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and2
  %1 = load i32, ptr %arrayidx5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %1, %cond.false ]
  %arrayidx7 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and3
  %2 = load i32, ptr %arrayidx7, align 4
  %insn_fn = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %3 = load ptr, ptr %insn_fn, align 4
  %4 = tail call { i32, i32 } asm sideeffect "blx\09$4\09\09\0A\09", "={r0},={r2},{r2},{r3},r,~{lr},~{memory},~{cc}"(i32 %cond, i32 %2, ptr %3) #2, !srcloc !14
  %asmresult = extractvalue { i32, i32 } %4, 0
  %asmresult8 = extractvalue { i32, i32 } %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp9 = icmp eq i32 %and, 15
  br i1 %cmp9, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %asmresult, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %5, -33
  %pcv.addr.0.v.i.i = select i1 %tobool.not.i.i, i32 -3, i32 -2
  %pcv.addr.0.i.i = and i32 %pcv.addr.0.v.i.i, %asmresult
  %6 = shl nuw nsw i32 %and.i.i, 5
  %cpsr.0.i.i = or i32 %and2.i.i, %6
  store i32 %cpsr.0.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %and.sink = phi i32 [ 15, %if.then ], [ %and, %cond.end.if.end_crit_edge ]
  %asmresult.sink = phi i32 [ %pcv.addr.0.i.i, %if.then ], [ %asmresult, %cond.end.if.end_crit_edge ]
  %arrayidx11 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and.sink
  store i32 %asmresult.sink, ptr %arrayidx11, align 4
  %xor = and i32 %insn, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor)
  %tobool.not = icmp eq i32 %xor, 16777216
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx15 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and2
  store i32 %asmresult8, ptr %arrayidx15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emulate_str(i32 noundef %insn, ptr nocapture noundef readonly %asi, ptr nocapture noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = load i32, ptr %arrayidx, align 4
  %add3 = add i32 %0, 4
  %shr = lshr i32 %insn, 12
  %and = and i32 %shr, 15
  %shr4 = lshr i32 %insn, 16
  %and5 = and i32 %shr4, 15
  %and6 = and i32 %insn, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp = icmp eq i32 %and, 15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %sub = add i32 %0, -4
  %1 = load i32, ptr @str_pc_offset, align 4
  %add = add i32 %sub, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx8 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %2 = load i32, ptr %arrayidx8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %2, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and5)
  %cmp9 = icmp eq i32 %and5, 15
  br i1 %cmp9, label %cond.end.cond.end14_crit_edge, label %cond.false11

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %cond.end14

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx13 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and5
  %3 = load i32, ptr %arrayidx13, align 4
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false11, %cond.end.cond.end14_crit_edge
  %cond15 = phi i32 [ %3, %cond.false11 ], [ %add3, %cond.end.cond.end14_crit_edge ]
  %arrayidx17 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and6
  %4 = load i32, ptr %arrayidx17, align 4
  %insn_fn = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %5 = load ptr, ptr %insn_fn, align 4
  %6 = tail call i32 asm sideeffect "blx\09$4\09\09\0A\09", "={r2},{r0},{r2},{r3},r,~{lr},~{memory},~{cc}"(i32 %cond, i32 %cond15, i32 %4, ptr %5) #2, !srcloc !15
  %xor = and i32 %insn, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor)
  %tobool.not = icmp eq i32 %xor, 16777216
  br i1 %tobool.not, label %cond.end14.if.end_crit_edge, label %if.then

cond.end14.if.end_crit_edge:                      ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end

if.then:                                          ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx20 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and5
  store i32 %6, ptr %arrayidx20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end14.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_mov_ipsp(i32 noundef, ptr noundef, ptr noundef) #0 section ".kprobes.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emulate_rd12rn16rm0rs8_rwflags(i32 noundef %insn, ptr nocapture noundef readonly %asi, ptr nocapture noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = load i32, ptr %arrayidx, align 4
  %add = add i32 %0, 4
  %shr = lshr i32 %insn, 12
  %and = and i32 %shr, 15
  %shr1 = lshr i32 %insn, 16
  %and2 = and i32 %shr1, 15
  %and3 = and i32 %insn, 15
  %shr4 = lshr i32 %insn, 8
  %and5 = and i32 %shr4, 15
  %arrayidx7 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %1 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and2)
  %cmp = icmp eq i32 %and2, 15
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx9 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and2
  %2 = load i32, ptr %arrayidx9, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.false ], [ %add, %entry.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and3)
  %cmp10 = icmp eq i32 %and3, 15
  br i1 %cmp10, label %cond.end.cond.end15_crit_edge, label %cond.false12

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %cond.end15

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx14 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and3
  %3 = load i32, ptr %arrayidx14, align 4
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false12, %cond.end.cond.end15_crit_edge
  %cond16 = phi i32 [ %3, %cond.false12 ], [ %add, %cond.end.cond.end15_crit_edge ]
  %arrayidx18 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and5
  %4 = load i32, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %5 = load i32, ptr %arrayidx20, align 4
  %insn_fn = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %6 = load ptr, ptr %insn_fn, align 4
  %7 = tail call { i32, i32 } asm sideeffect "msr\09cpsr_fs, $1\09\0A\09blx\09$7\09\09\0A\09mrs\09$1, cpsr\09\09\0A\09", "={r0},=r,{r0},{r2},{r3},{r1},1,r,~{lr},~{memory},~{cc}"(i32 %1, i32 %cond, i32 %cond16, i32 %4, i32 %5, ptr %6) #2, !srcloc !16
  %asmresult = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp22 = icmp eq i32 %and, 15
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end15
  %8 = load i8, ptr @alu_write_pc_interworks, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.alu_write_pc.exit_crit_edge, label %if.then.i

if.then.alu_write_pc.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #3
  br label %alu_write_pc.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #3
  %9 = load i32, ptr %arrayidx20, align 4
  %and.i.i = and i32 %asmresult, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %9, -33
  %pcv.addr.0.v.i.i = select i1 %tobool.not.i.i, i32 -3, i32 -2
  %pcv.addr.0.i.i = and i32 %pcv.addr.0.v.i.i, %asmresult
  %10 = shl nuw nsw i32 %and.i.i, 5
  %cpsr.0.i.i = or i32 %and2.i.i, %10
  store i32 %cpsr.0.i.i, ptr %arrayidx20, align 4
  br label %alu_write_pc.exit

alu_write_pc.exit:                                ; preds = %if.then.i, %if.then.alu_write_pc.exit_crit_edge
  %pcv.addr.0.i.sink.i = phi i32 [ %pcv.addr.0.i.i, %if.then.i ], [ %asmresult, %if.then.alu_write_pc.exit_crit_edge ]
  store i32 %pcv.addr.0.i.sink.i, ptr %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #3
  store i32 %asmresult, ptr %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %alu_write_pc.exit
  %asmresult21 = extractvalue { i32, i32 } %7, 1
  %11 = load i32, ptr %arrayidx20, align 4
  %and27 = and i32 %11, 133234687
  %and28 = and i32 %asmresult21, -133234688
  %or = or i32 %and27, %and28
  store i32 %or, ptr %arrayidx20, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @probes_emulate_none(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_bbl(i32 noundef, ptr noundef, ptr noundef) #0 section ".kprobes.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kprobe_decode_ldmstm(i32 noundef, ptr noundef, ptr noundef) #0 section ".kprobes.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nomerge }

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
!9 = !{i64 2154046111, i64 2154046125}
!10 = !{i64 5823, i64 5847, i64 2154045817, i64 5890}
!11 = !{i64 8009, i64 8033, i64 2154046242, i64 8076}
!12 = !{i64 6674, i64 6698, i64 2154045976, i64 6741}
!13 = !{i64 2154045153, i64 2154045167}
!14 = !{i64 2154045310, i64 2154045324}
!15 = !{i64 2154045477, i64 2154045491}
!16 = !{i64 5002, i64 5026, i64 2154045658, i64 5069}
!17 = !{i8 0, i8 2}
