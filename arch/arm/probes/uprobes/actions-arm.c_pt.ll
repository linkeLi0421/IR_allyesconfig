; ModuleID = '/llk/IR_all_yes/arch/arm/probes/uprobes/actions-arm.c_pt.bc'
source_filename = "../arch/arm/probes/uprobes/actions-arm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.decode_action = type { ptr }
%struct.arch_uprobe = type { [4 x i8], [2 x i32], i32, i8, i32, ptr, ptr, %struct.arch_probes_insn }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }

@uprobes_probes_actions = dso_local constant { [32 x %union.decode_action], [32 x i8] } { [32 x %union.decode_action] [%union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @simulate_blx1 }, %union.decode_action { ptr @simulate_blx2bx }, %union.decode_action { ptr @simulate_mrs }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @decode_pc_ro }, %union.decode_action { ptr @decode_ldr }, %union.decode_action { ptr @decode_pc_ro }, %union.decode_action { ptr @decode_pc_ro }, %union.decode_action { ptr @decode_pc_ro }, %union.decode_action { ptr @simulate_mov_ipsp }, %union.decode_action { ptr @decode_rd12rn16rm0rs8_rwflags }, %union.decode_action { ptr @decode_rd12rn16rm0rs8_rwflags }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @simulate_bbl }, %union.decode_action { ptr @uprobe_decode_ldmstm }], [32 x i8] zeroinitializer }, align 32
@alu_write_pc_interworks = external dso_local local_unnamed_addr global i8, align 1
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"uprobes_probes_actions\00", align 1
@___asan_gen_.2 = private constant [41 x i8] c"../arch/arm/probes/uprobes/actions-arm.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 194, i32 27 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @uprobes_probes_actions], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobes_probes_actions to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @decode_pc_ro(i32 %insn, ptr nocapture noundef %asi, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d, align 4
  %shr = lshr i32 %1, 4
  %ixol = getelementptr i8, ptr %asi, i32 -28
  %2 = ptrtoint ptr %ixol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ixol, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %tobool.not57.i = icmp ult i32 %1, 16
  br i1 %tobool.not57.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %regs.060.i = phi i32 [ %shr.i, %for.body.i.for.body.i_crit_edge ], [ %shr, %entry.for.body.i_crit_edge ]
  %free.059.i = phi i32 [ %free.1.i, %for.body.i.for.body.i_crit_edge ], [ 65535, %entry.for.body.i_crit_edge ]
  %insn.058.i = phi i32 [ %shr3.i, %for.body.i.for.body.i_crit_edge ], [ %4, %entry.for.body.i_crit_edge ]
  %and.i = and i32 %regs.060.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %insn.058.i, 15
  %shl.i = shl nuw nsw i32 1, %and1.i
  %neg.i = xor i32 %shl.i, -1
  %and2.i = select i1 %cmp.i, i32 -1, i32 %neg.i
  %free.1.i = and i32 %and2.i, %free.059.i
  %shr.i = lshr i32 %regs.060.i, 4
  %shr3.i = lshr i32 %insn.058.i, 4
  %tobool.not.i = icmp ult i32 %regs.060.i, 16
  br i1 %tobool.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %and4.i = and i32 %free.1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free.1.i)
  %tobool8.not.i = icmp eq i32 %free.1.i, 0
  br i1 %tobool8.not.i, label %if.end7.i.cleanup_crit_edge, label %for.body13.i.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body13.i.preheader:                           ; preds = %if.end7.i
  %5 = tail call i32 @llvm.ctlz.i32(i32 %free.1.i, i1 true) #6, !range !11
  %sub.i = xor i32 %5, 31
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.body13.i.preheader
  %regs.166.i = phi i32 [ %shr26.i, %for.body13.i.for.body13.i_crit_edge ], [ %shr, %for.body13.i.preheader ]
  %free.265.i = phi i32 [ %shl28.i, %for.body13.i.for.body13.i_crit_edge ], [ %sub.i, %for.body13.i.preheader ]
  %mask.064.i = phi i32 [ %shl27.i, %for.body13.i.for.body13.i_crit_edge ], [ 15, %for.body13.i.preheader ]
  %temp.063.i = phi i32 [ %shr29.i, %for.body13.i.for.body13.i_crit_edge ], [ %4, %for.body13.i.preheader ]
  %insn.162.i = phi i32 [ %insn.2.i, %for.body13.i.for.body13.i_crit_edge ], [ %4, %for.body13.i.preheader ]
  %and14.i = and i32 %regs.166.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %cmp15.i = icmp ne i32 %and14.i, 0
  %and18.i = and i32 %temp.063.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and18.i)
  %cmp19.not.i = icmp eq i32 %and18.i, 15
  %or.cond.i = select i1 %cmp15.i, i1 %cmp19.not.i, i1 false
  %neg22.i = xor i32 %mask.064.i, -1
  %and23.i = and i32 %insn.162.i, %neg22.i
  %and24.i = and i32 %mask.064.i, %free.265.i
  %or.i = or i32 %and23.i, %and24.i
  %insn.2.i = select i1 %or.cond.i, i32 %or.i, i32 %insn.162.i
  %shr26.i = lshr i32 %regs.166.i, 4
  %shl27.i = shl i32 %mask.064.i, 4
  %shl28.i = shl i32 %free.265.i, 4
  %shr29.i = lshr i32 %temp.063.i, 4
  %tobool12.not.i = icmp ult i32 %regs.166.i, 16
  br i1 %tobool12.not.i, label %uprobes_substitute_pc.exit, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13.i

uprobes_substitute_pc.exit:                       ; preds = %for.body13.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %insn.2.i) #6
  %7 = ptrtoint ptr %ixol to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ixol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i)
  %cond = icmp eq i32 %sub.i, 15
  br i1 %cond, label %uprobes_substitute_pc.exit.cleanup_crit_edge, label %if.end3

uprobes_substitute_pc.exit.cleanup_crit_edge:     ; preds = %uprobes_substitute_pc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %uprobes_substitute_pc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pcreg = getelementptr i8, ptr %asi, i32 -12
  %8 = ptrtoint ptr %pcreg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %pcreg, align 4
  %prehandler = getelementptr i8, ptr %asi, i32 -8
  %9 = ptrtoint ptr %prehandler to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @uprobe_set_pc, ptr %prehandler, align 4
  %posthandler = getelementptr i8, ptr %asi, i32 -4
  %10 = ptrtoint ptr %posthandler to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @uprobe_unset_pc, ptr %posthandler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %uprobes_substitute_pc.exit.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 1, %uprobes_substitute_pc.exit.cleanup_crit_edge ], [ 1, %for.end.i.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @uprobe_set_pc(ptr nocapture noundef readonly %auprobe, ptr nocapture noundef writeonly %autask, ptr nocapture noundef %regs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcreg1 = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 4
  %0 = ptrtoint ptr %pcreg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcreg1, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %autask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %autask, align 4
  %arrayidx3 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %6, 8
  store i32 %add, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @uprobe_unset_pc(ptr nocapture noundef readonly %auprobe, ptr nocapture noundef readonly %autask, ptr nocapture noundef writeonly %regs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %autask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autask, align 4
  %pcreg = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 4
  %2 = ptrtoint ptr %pcreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcreg, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @decode_wb_pc(i32 noundef %insn, ptr nocapture noundef %asi, ptr nocapture noundef readonly %d, i1 noundef zeroext %alu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d, align 4
  %shr.i = lshr i32 %1, 4
  %ixol.i = getelementptr i8, ptr %asi, i32 -28
  %2 = ptrtoint ptr %ixol.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ixol.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %tobool.not57.i.i = icmp ult i32 %1, 16
  br i1 %tobool.not57.i.i, label %entry.decode_pc_ro.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.decode_pc_ro.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %regs.060.i.i = phi i32 [ %shr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %shr.i, %entry.for.body.i.i_crit_edge ]
  %free.059.i.i = phi i32 [ %free.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 65535, %entry.for.body.i.i_crit_edge ]
  %insn.058.i.i = phi i32 [ %shr3.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %4, %entry.for.body.i.i_crit_edge ]
  %and.i.i = and i32 %regs.060.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  %and1.i.i = and i32 %insn.058.i.i, 15
  %shl.i.i = shl nuw nsw i32 1, %and1.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and2.i.i = select i1 %cmp.i.i, i32 -1, i32 %neg.i.i
  %free.1.i.i = and i32 %and2.i.i, %free.059.i.i
  %shr.i.i = lshr i32 %regs.060.i.i, 4
  %shr3.i.i = lshr i32 %insn.058.i.i, 4
  %tobool.not.i.i = icmp ult i32 %regs.060.i.i, 16
  br i1 %tobool.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %and4.i.i = and i32 %free.1.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %for.end.i.i.decode_pc_ro.exit_crit_edge

for.end.i.i.decode_pc_ro.exit_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit

if.end7.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free.1.i.i)
  %tobool8.not.i.i = icmp eq i32 %free.1.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end7.i.i.decode_pc_ro.exit_crit_edge, label %for.body13.i.preheader.i

if.end7.i.i.decode_pc_ro.exit_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit

for.body13.i.preheader.i:                         ; preds = %if.end7.i.i
  %5 = tail call i32 @llvm.ctlz.i32(i32 %free.1.i.i, i1 true) #6, !range !11
  %sub.i.i = xor i32 %5, 31
  br label %for.body13.i.i

for.body13.i.i:                                   ; preds = %for.body13.i.i.for.body13.i.i_crit_edge, %for.body13.i.preheader.i
  %regs.166.i.i = phi i32 [ %shr26.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ], [ %shr.i, %for.body13.i.preheader.i ]
  %free.265.i.i = phi i32 [ %shl28.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ], [ %sub.i.i, %for.body13.i.preheader.i ]
  %mask.064.i.i = phi i32 [ %shl27.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ], [ 15, %for.body13.i.preheader.i ]
  %temp.063.i.i = phi i32 [ %shr29.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ], [ %4, %for.body13.i.preheader.i ]
  %insn.162.i.i = phi i32 [ %insn.2.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ], [ %4, %for.body13.i.preheader.i ]
  %and14.i.i = and i32 %regs.166.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %cmp15.i.i = icmp ne i32 %and14.i.i, 0
  %and18.i.i = and i32 %temp.063.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and18.i.i)
  %cmp19.not.i.i = icmp eq i32 %and18.i.i, 15
  %or.cond.i.i = select i1 %cmp15.i.i, i1 %cmp19.not.i.i, i1 false
  %neg22.i.i = xor i32 %mask.064.i.i, -1
  %and23.i.i = and i32 %insn.162.i.i, %neg22.i.i
  %and24.i.i = and i32 %mask.064.i.i, %free.265.i.i
  %or.i.i = or i32 %and23.i.i, %and24.i.i
  %insn.2.i.i = select i1 %or.cond.i.i, i32 %or.i.i, i32 %insn.162.i.i
  %shr26.i.i = lshr i32 %regs.166.i.i, 4
  %shl27.i.i = shl i32 %mask.064.i.i, 4
  %shl28.i.i = shl i32 %free.265.i.i, 4
  %shr29.i.i = lshr i32 %temp.063.i.i, 4
  %tobool12.not.i.i = icmp ult i32 %regs.166.i.i, 16
  br i1 %tobool12.not.i.i, label %uprobes_substitute_pc.exit.i, label %for.body13.i.i.for.body13.i.i_crit_edge

for.body13.i.i.for.body13.i.i_crit_edge:          ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13.i.i

uprobes_substitute_pc.exit.i:                     ; preds = %for.body13.i.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %insn.2.i.i) #6
  %7 = ptrtoint ptr %ixol.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ixol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i.i)
  %cond.i = icmp eq i32 %sub.i.i, 15
  br i1 %cond.i, label %uprobes_substitute_pc.exit.i.decode_pc_ro.exit_crit_edge, label %if.end3.i

uprobes_substitute_pc.exit.i.decode_pc_ro.exit_crit_edge: ; preds = %uprobes_substitute_pc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit

if.end3.i:                                        ; preds = %uprobes_substitute_pc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcreg.i = getelementptr i8, ptr %asi, i32 -12
  %8 = ptrtoint ptr %pcreg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i.i, ptr %pcreg.i, align 4
  %prehandler.i = getelementptr i8, ptr %asi, i32 -8
  %9 = ptrtoint ptr %prehandler.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @uprobe_set_pc, ptr %prehandler.i, align 4
  %posthandler.i = getelementptr i8, ptr %asi, i32 -4
  %10 = ptrtoint ptr %posthandler.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @uprobe_unset_pc, ptr %posthandler.i, align 4
  br label %decode_pc_ro.exit

decode_pc_ro.exit:                                ; preds = %if.end3.i, %uprobes_substitute_pc.exit.i.decode_pc_ro.exit_crit_edge, %if.end7.i.i.decode_pc_ro.exit_crit_edge, %for.end.i.i.decode_pc_ro.exit_crit_edge, %entry.decode_pc_ro.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end3.i ], [ 1, %uprobes_substitute_pc.exit.i.decode_pc_ro.exit_crit_edge ], [ 1, %for.end.i.i.decode_pc_ro.exit_crit_edge ], [ 1, %entry.decode_pc_ro.exit_crit_edge ], [ 0, %if.end7.i.i.decode_pc_ro.exit_crit_edge ]
  %11 = and i32 %insn, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %11)
  %cmp = icmp eq i32 %11, 61440
  br i1 %cmp, label %if.then, label %decode_pc_ro.exit.if.end_crit_edge

decode_pc_ro.exit.if.end_crit_edge:               ; preds = %decode_pc_ro.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %decode_pc_ro.exit
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %alu, ptr @uprobe_aluwrite_pc, ptr @uprobe_write_pc
  %posthandler = getelementptr i8, ptr %asi, i32 -4
  %12 = ptrtoint ptr %posthandler to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cond, ptr %posthandler, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %decode_pc_ro.exit.if.end_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @uprobe_aluwrite_pc(ptr nocapture noundef readonly %auprobe, ptr nocapture noundef readonly %autask, ptr nocapture noundef %regs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcreg1 = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 4
  %0 = ptrtoint ptr %pcreg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcreg1, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @alu_write_pc_interworks to i32))
  %4 = load i8, ptr @alu_write_pc_interworks, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.alu_write_pc.exit_crit_edge, label %if.then.i

entry.alu_write_pc.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %alu_write_pc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %6, -33
  %pcv.addr.0.v.i.i = select i1 %tobool.not.i.i, i32 -3, i32 -2
  %pcv.addr.0.i.i = and i32 %pcv.addr.0.v.i.i, %3
  %7 = shl nuw nsw i32 %and.i.i, 5
  %cpsr.0.i.i = or i32 %and2.i.i, %7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cpsr.0.i.i, ptr %arrayidx.i.i, align 4
  br label %alu_write_pc.exit

alu_write_pc.exit:                                ; preds = %if.then.i, %entry.alu_write_pc.exit_crit_edge
  %pcv.addr.0.i.sink.i = phi i32 [ %pcv.addr.0.i.i, %if.then.i ], [ %3, %entry.alu_write_pc.exit_crit_edge ]
  %9 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %pcv.addr.0.i.sink.i, ptr %9, align 4
  %11 = ptrtoint ptr %autask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %autask, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @uprobe_write_pc(ptr nocapture noundef readonly %auprobe, ptr nocapture noundef readonly %autask, ptr nocapture noundef %regs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcreg1 = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 4
  %0 = ptrtoint ptr %pcreg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcreg1, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %5, -33
  %pcv.addr.0.v.i.i = select i1 %tobool.not.i.i, i32 -3, i32 -2
  %pcv.addr.0.i.i = and i32 %pcv.addr.0.v.i.i, %3
  %6 = shl nuw nsw i32 %and.i.i, 5
  %cpsr.0.i.i = or i32 %and2.i.i, %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cpsr.0.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx7.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %8 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %pcv.addr.0.i.i, ptr %arrayidx7.i.i, align 4
  %9 = ptrtoint ptr %autask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %autask, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @decode_rd12rn16rm0rs8_rwflags(i32 noundef %insn, ptr nocapture noundef %asi, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d, align 4
  %shr.i.i = lshr i32 %1, 4
  %ixol.i.i = getelementptr i8, ptr %asi, i32 -28
  %2 = ptrtoint ptr %ixol.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ixol.i.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %tobool.not57.i.i.i = icmp ult i32 %1, 16
  br i1 %tobool.not57.i.i.i, label %entry.decode_pc_ro.exit.i_crit_edge, label %entry.for.body.i.i.i_crit_edge

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

entry.decode_pc_ro.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %regs.060.i.i.i = phi i32 [ %shr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %shr.i.i, %entry.for.body.i.i.i_crit_edge ]
  %free.059.i.i.i = phi i32 [ %free.1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 65535, %entry.for.body.i.i.i_crit_edge ]
  %insn.058.i.i.i = phi i32 [ %shr3.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %4, %entry.for.body.i.i.i_crit_edge ]
  %and.i.i.i = and i32 %regs.060.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and1.i.i.i = and i32 %insn.058.i.i.i, 15
  %shl.i.i.i = shl nuw nsw i32 1, %and1.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %and2.i.i.i = select i1 %cmp.i.i.i, i32 -1, i32 %neg.i.i.i
  %free.1.i.i.i = and i32 %and2.i.i.i, %free.059.i.i.i
  %shr.i.i.i = lshr i32 %regs.060.i.i.i, 4
  %shr3.i.i.i = lshr i32 %insn.058.i.i.i, 4
  %tobool.not.i.i.i = icmp ult i32 %regs.060.i.i.i, 16
  br i1 %tobool.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %and4.i.i.i = and i32 %free.1.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end7.i.i.i, label %for.end.i.i.i.decode_pc_ro.exit.i_crit_edge

for.end.i.i.i.decode_pc_ro.exit.i_crit_edge:      ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit.i

if.end7.i.i.i:                                    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free.1.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %free.1.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end7.i.i.i.decode_pc_ro.exit.i_crit_edge, label %for.body13.i.preheader.i.i

if.end7.i.i.i.decode_pc_ro.exit.i_crit_edge:      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit.i

for.body13.i.preheader.i.i:                       ; preds = %if.end7.i.i.i
  %5 = tail call i32 @llvm.ctlz.i32(i32 %free.1.i.i.i, i1 true) #6, !range !11
  %sub.i.i.i = xor i32 %5, 31
  br label %for.body13.i.i.i

for.body13.i.i.i:                                 ; preds = %for.body13.i.i.i.for.body13.i.i.i_crit_edge, %for.body13.i.preheader.i.i
  %regs.166.i.i.i = phi i32 [ %shr26.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ], [ %shr.i.i, %for.body13.i.preheader.i.i ]
  %free.265.i.i.i = phi i32 [ %shl28.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ], [ %sub.i.i.i, %for.body13.i.preheader.i.i ]
  %mask.064.i.i.i = phi i32 [ %shl27.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ], [ 15, %for.body13.i.preheader.i.i ]
  %temp.063.i.i.i = phi i32 [ %shr29.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ], [ %4, %for.body13.i.preheader.i.i ]
  %insn.162.i.i.i = phi i32 [ %insn.2.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ], [ %4, %for.body13.i.preheader.i.i ]
  %and14.i.i.i = and i32 %regs.166.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i.i)
  %cmp15.i.i.i = icmp ne i32 %and14.i.i.i, 0
  %and18.i.i.i = and i32 %temp.063.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and18.i.i.i)
  %cmp19.not.i.i.i = icmp eq i32 %and18.i.i.i, 15
  %or.cond.i.i.i = select i1 %cmp15.i.i.i, i1 %cmp19.not.i.i.i, i1 false
  %neg22.i.i.i = xor i32 %mask.064.i.i.i, -1
  %and23.i.i.i = and i32 %insn.162.i.i.i, %neg22.i.i.i
  %and24.i.i.i = and i32 %mask.064.i.i.i, %free.265.i.i.i
  %or.i.i.i = or i32 %and23.i.i.i, %and24.i.i.i
  %insn.2.i.i.i = select i1 %or.cond.i.i.i, i32 %or.i.i.i, i32 %insn.162.i.i.i
  %shr26.i.i.i = lshr i32 %regs.166.i.i.i, 4
  %shl27.i.i.i = shl i32 %mask.064.i.i.i, 4
  %shl28.i.i.i = shl i32 %free.265.i.i.i, 4
  %shr29.i.i.i = lshr i32 %temp.063.i.i.i, 4
  %tobool12.not.i.i.i = icmp ult i32 %regs.166.i.i.i, 16
  br i1 %tobool12.not.i.i.i, label %uprobes_substitute_pc.exit.i.i, label %for.body13.i.i.i.for.body13.i.i.i_crit_edge

for.body13.i.i.i.for.body13.i.i.i_crit_edge:      ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13.i.i.i

uprobes_substitute_pc.exit.i.i:                   ; preds = %for.body13.i.i.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %insn.2.i.i.i) #6
  %7 = ptrtoint ptr %ixol.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ixol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i.i.i)
  %cond.i.i = icmp eq i32 %sub.i.i.i, 15
  br i1 %cond.i.i, label %uprobes_substitute_pc.exit.i.i.decode_pc_ro.exit.i_crit_edge, label %if.end3.i.i

uprobes_substitute_pc.exit.i.i.decode_pc_ro.exit.i_crit_edge: ; preds = %uprobes_substitute_pc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit.i

if.end3.i.i:                                      ; preds = %uprobes_substitute_pc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcreg.i.i = getelementptr i8, ptr %asi, i32 -12
  %8 = ptrtoint ptr %pcreg.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i.i.i, ptr %pcreg.i.i, align 4
  %prehandler.i.i = getelementptr i8, ptr %asi, i32 -8
  %9 = ptrtoint ptr %prehandler.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @uprobe_set_pc, ptr %prehandler.i.i, align 4
  %posthandler.i.i = getelementptr i8, ptr %asi, i32 -4
  %10 = ptrtoint ptr %posthandler.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @uprobe_unset_pc, ptr %posthandler.i.i, align 4
  br label %decode_pc_ro.exit.i

decode_pc_ro.exit.i:                              ; preds = %if.end3.i.i, %uprobes_substitute_pc.exit.i.i.decode_pc_ro.exit.i_crit_edge, %if.end7.i.i.i.decode_pc_ro.exit.i_crit_edge, %for.end.i.i.i.decode_pc_ro.exit.i_crit_edge, %entry.decode_pc_ro.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end3.i.i ], [ 1, %uprobes_substitute_pc.exit.i.i.decode_pc_ro.exit.i_crit_edge ], [ 1, %for.end.i.i.i.decode_pc_ro.exit.i_crit_edge ], [ 1, %entry.decode_pc_ro.exit.i_crit_edge ], [ 0, %if.end7.i.i.i.decode_pc_ro.exit.i_crit_edge ]
  %11 = and i32 %insn, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %11)
  %cmp.i = icmp eq i32 %11, 61440
  br i1 %cmp.i, label %if.then.i, label %decode_pc_ro.exit.i.decode_wb_pc.exit_crit_edge

decode_pc_ro.exit.i.decode_wb_pc.exit_crit_edge:  ; preds = %decode_pc_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_wb_pc.exit

if.then.i:                                        ; preds = %decode_pc_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %posthandler.i = getelementptr i8, ptr %asi, i32 -4
  %12 = ptrtoint ptr %posthandler.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @uprobe_aluwrite_pc, ptr %posthandler.i, align 4
  br label %decode_wb_pc.exit

decode_wb_pc.exit:                                ; preds = %if.then.i, %decode_pc_ro.exit.i.decode_wb_pc.exit_crit_edge
  ret i32 %retval.0.i.i
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @decode_ldr(i32 noundef %insn, ptr nocapture noundef %asi, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d, align 4
  %shr.i.i = lshr i32 %1, 4
  %ixol.i.i = getelementptr i8, ptr %asi, i32 -28
  %2 = ptrtoint ptr %ixol.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ixol.i.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %tobool.not57.i.i.i = icmp ult i32 %1, 16
  br i1 %tobool.not57.i.i.i, label %entry.decode_pc_ro.exit.i_crit_edge, label %entry.for.body.i.i.i_crit_edge

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

entry.decode_pc_ro.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %regs.060.i.i.i = phi i32 [ %shr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %shr.i.i, %entry.for.body.i.i.i_crit_edge ]
  %free.059.i.i.i = phi i32 [ %free.1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 65535, %entry.for.body.i.i.i_crit_edge ]
  %insn.058.i.i.i = phi i32 [ %shr3.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %4, %entry.for.body.i.i.i_crit_edge ]
  %and.i.i.i = and i32 %regs.060.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and1.i.i.i = and i32 %insn.058.i.i.i, 15
  %shl.i.i.i = shl nuw nsw i32 1, %and1.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %and2.i.i.i = select i1 %cmp.i.i.i, i32 -1, i32 %neg.i.i.i
  %free.1.i.i.i = and i32 %and2.i.i.i, %free.059.i.i.i
  %shr.i.i.i = lshr i32 %regs.060.i.i.i, 4
  %shr3.i.i.i = lshr i32 %insn.058.i.i.i, 4
  %tobool.not.i.i.i = icmp ult i32 %regs.060.i.i.i, 16
  br i1 %tobool.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %and4.i.i.i = and i32 %free.1.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end7.i.i.i, label %for.end.i.i.i.decode_pc_ro.exit.i_crit_edge

for.end.i.i.i.decode_pc_ro.exit.i_crit_edge:      ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit.i

if.end7.i.i.i:                                    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free.1.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %free.1.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end7.i.i.i.decode_pc_ro.exit.i_crit_edge, label %for.body13.i.preheader.i.i

if.end7.i.i.i.decode_pc_ro.exit.i_crit_edge:      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit.i

for.body13.i.preheader.i.i:                       ; preds = %if.end7.i.i.i
  %5 = tail call i32 @llvm.ctlz.i32(i32 %free.1.i.i.i, i1 true) #6, !range !11
  %sub.i.i.i = xor i32 %5, 31
  br label %for.body13.i.i.i

for.body13.i.i.i:                                 ; preds = %for.body13.i.i.i.for.body13.i.i.i_crit_edge, %for.body13.i.preheader.i.i
  %regs.166.i.i.i = phi i32 [ %shr26.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ], [ %shr.i.i, %for.body13.i.preheader.i.i ]
  %free.265.i.i.i = phi i32 [ %shl28.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ], [ %sub.i.i.i, %for.body13.i.preheader.i.i ]
  %mask.064.i.i.i = phi i32 [ %shl27.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ], [ 15, %for.body13.i.preheader.i.i ]
  %temp.063.i.i.i = phi i32 [ %shr29.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ], [ %4, %for.body13.i.preheader.i.i ]
  %insn.162.i.i.i = phi i32 [ %insn.2.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ], [ %4, %for.body13.i.preheader.i.i ]
  %and14.i.i.i = and i32 %regs.166.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i.i)
  %cmp15.i.i.i = icmp ne i32 %and14.i.i.i, 0
  %and18.i.i.i = and i32 %temp.063.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and18.i.i.i)
  %cmp19.not.i.i.i = icmp eq i32 %and18.i.i.i, 15
  %or.cond.i.i.i = select i1 %cmp15.i.i.i, i1 %cmp19.not.i.i.i, i1 false
  %neg22.i.i.i = xor i32 %mask.064.i.i.i, -1
  %and23.i.i.i = and i32 %insn.162.i.i.i, %neg22.i.i.i
  %and24.i.i.i = and i32 %mask.064.i.i.i, %free.265.i.i.i
  %or.i.i.i = or i32 %and23.i.i.i, %and24.i.i.i
  %insn.2.i.i.i = select i1 %or.cond.i.i.i, i32 %or.i.i.i, i32 %insn.162.i.i.i
  %shr26.i.i.i = lshr i32 %regs.166.i.i.i, 4
  %shl27.i.i.i = shl i32 %mask.064.i.i.i, 4
  %shl28.i.i.i = shl i32 %free.265.i.i.i, 4
  %shr29.i.i.i = lshr i32 %temp.063.i.i.i, 4
  %tobool12.not.i.i.i = icmp ult i32 %regs.166.i.i.i, 16
  br i1 %tobool12.not.i.i.i, label %uprobes_substitute_pc.exit.i.i, label %for.body13.i.i.i.for.body13.i.i.i_crit_edge

for.body13.i.i.i.for.body13.i.i.i_crit_edge:      ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13.i.i.i

uprobes_substitute_pc.exit.i.i:                   ; preds = %for.body13.i.i.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %insn.2.i.i.i) #6
  %7 = ptrtoint ptr %ixol.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ixol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i.i.i)
  %cond.i.i = icmp eq i32 %sub.i.i.i, 15
  br i1 %cond.i.i, label %uprobes_substitute_pc.exit.i.i.decode_pc_ro.exit.i_crit_edge, label %if.end3.i.i

uprobes_substitute_pc.exit.i.i.decode_pc_ro.exit.i_crit_edge: ; preds = %uprobes_substitute_pc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_pc_ro.exit.i

if.end3.i.i:                                      ; preds = %uprobes_substitute_pc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcreg.i.i = getelementptr i8, ptr %asi, i32 -12
  %8 = ptrtoint ptr %pcreg.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i.i.i, ptr %pcreg.i.i, align 4
  %prehandler.i.i = getelementptr i8, ptr %asi, i32 -8
  %9 = ptrtoint ptr %prehandler.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @uprobe_set_pc, ptr %prehandler.i.i, align 4
  %posthandler.i.i = getelementptr i8, ptr %asi, i32 -4
  %10 = ptrtoint ptr %posthandler.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @uprobe_unset_pc, ptr %posthandler.i.i, align 4
  br label %decode_pc_ro.exit.i

decode_pc_ro.exit.i:                              ; preds = %if.end3.i.i, %uprobes_substitute_pc.exit.i.i.decode_pc_ro.exit.i_crit_edge, %if.end7.i.i.i.decode_pc_ro.exit.i_crit_edge, %for.end.i.i.i.decode_pc_ro.exit.i_crit_edge, %entry.decode_pc_ro.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end3.i.i ], [ 1, %uprobes_substitute_pc.exit.i.i.decode_pc_ro.exit.i_crit_edge ], [ 1, %for.end.i.i.i.decode_pc_ro.exit.i_crit_edge ], [ 1, %entry.decode_pc_ro.exit.i_crit_edge ], [ 0, %if.end7.i.i.i.decode_pc_ro.exit.i_crit_edge ]
  %11 = and i32 %insn, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %11)
  %cmp.i = icmp eq i32 %11, 61440
  br i1 %cmp.i, label %if.then.i, label %decode_pc_ro.exit.i.decode_wb_pc.exit_crit_edge

decode_pc_ro.exit.i.decode_wb_pc.exit_crit_edge:  ; preds = %decode_pc_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_wb_pc.exit

if.then.i:                                        ; preds = %decode_pc_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %posthandler.i = getelementptr i8, ptr %asi, i32 -4
  %12 = ptrtoint ptr %posthandler.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @uprobe_write_pc, ptr %posthandler.i, align 4
  br label %decode_wb_pc.exit

decode_wb_pc.exit:                                ; preds = %if.then.i, %decode_pc_ro.exit.i.decode_wb_pc.exit_crit_edge
  ret i32 %retval.0.i.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @uprobe_decode_ldmstm(i32 noundef %insn, ptr nocapture noundef writeonly %asi, ptr nocapture readnone %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %insn, 65535
  %shr = lshr i32 %insn, 16
  %and1 = and i32 %shr, 15
  %and2 = and i32 %insn, 1048576
  %shl = shl nuw nsw i32 1, %and1
  %or = or i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and1)
  %cmp = icmp eq i32 %and1, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %or, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and6 = and i32 %or, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %xor = xor i32 %insn, 49152
  %pcreg = getelementptr i8, ptr %asi, i32 -12
  %0 = ptrtoint ptr %pcreg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 14, ptr %pcreg, align 4
  %1 = tail call i32 @llvm.bswap.i32(i32 %xor)
  %ixol = getelementptr i8, ptr %asi, i32 -28
  %2 = ptrtoint ptr %ixol to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ixol, align 4
  %prehandler = getelementptr i8, ptr %asi, i32 -8
  %3 = ptrtoint ptr %prehandler to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @uprobe_set_pc, ptr %prehandler, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool10.not = icmp eq i32 %and2, 0
  %posthandler12 = getelementptr i8, ptr %asi, i32 -4
  %uprobe_unset_pc.uprobe_write_pc = select i1 %tobool10.not, ptr @uprobe_unset_pc, ptr @uprobe_write_pc
  %4 = ptrtoint ptr %posthandler12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %uprobe_unset_pc.uprobe_write_pc, ptr %posthandler12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 1, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @probes_simulate_nop(i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_blx1(i32 noundef, ptr noundef, ptr noundef) #5 section ".kprobes.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_blx2bx(i32 noundef, ptr noundef, ptr noundef) #5 section ".kprobes.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_mrs(i32 noundef, ptr noundef, ptr noundef) #5 section ".kprobes.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_mov_ipsp(i32 noundef, ptr noundef, ptr noundef) #5 section ".kprobes.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_bbl(i32 noundef, ptr noundef, ptr noundef) #5 section ".kprobes.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @uprobes_probes_actions, !1, !"uprobes_probes_actions", i1 false, i1 false}
!1 = !{!"../arch/arm/probes/uprobes/actions-arm.c", i32 194, i32 27}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i32 0, i32 33}
!12 = !{i8 0, i8 2}
