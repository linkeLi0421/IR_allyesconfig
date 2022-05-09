; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-multiplier.c_pt.bc'
source_filename = "../drivers/clk/clk-multiplier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_multiplier_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_multiplier_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_multiplier_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_multiplier_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_multiplier_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_multiplier_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_multiplier = type { %struct.clk_hw, ptr, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_multiplier_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_multiplier_recalc_rate, ptr @clk_multiplier_round_rate, ptr null, ptr null, ptr null, ptr @clk_multiplier_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_multiplier_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_multiplier_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_multiplier_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_multiplier_ops to i32), ptr @__kstrtab_clk_multiplier_ops, ptr @__kstrtabns_clk_multiplier_ops }, section "___ksymtab_gpl+clk_multiplier_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"clk_multiplier_ops\00", align 1
@___asan_gen_.2 = private constant [32 x i8] c"../drivers/clk/clk-multiplier.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 151, i32 22 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_clk_multiplier_ops, ptr @clk_multiplier_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_multiplier_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_multiplier_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.clk_multiplier, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags.i, align 2
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %reg2.i = getelementptr inbounds %struct.clk_multiplier, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg2.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  br label %clk_mult_readl.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %clk_mult_readl.exit

clk_mult_readl.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %5, %if.then.i ], [ %6, %if.end.i ]
  %shift = getelementptr inbounds %struct.clk_multiplier, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 4
  %conv = zext i8 %8 to i32
  %shr = lshr i32 %retval.0.i, %conv
  %width = getelementptr inbounds %struct.clk_multiplier, ptr %hw, i32 0, i32 3
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width, align 1
  %conv1 = zext i8 %10 to i32
  %sub2 = sub nsw i32 32, %conv1
  %shr3 = lshr i32 -1, %sub2
  %and4 = and i32 %shr3, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %land.lhs.true, label %clk_mult_readl.exit.if.end_crit_edge

clk_mult_readl.exit.if.end_crit_edge:             ; preds = %clk_mult_readl.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %clk_mult_readl.exit
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags.i, align 2
  %13 = and i8 %12, 1
  %14 = zext i8 %13 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %clk_mult_readl.exit.if.end_crit_edge
  %val.0 = phi i32 [ %and4, %clk_mult_readl.exit.if.end_crit_edge ], [ %14, %land.lhs.true ]
  %mul = mul i32 %val.0, %parent_rate
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_multiplier_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.clk_multiplier, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %width, align 1
  %flags = getelementptr inbounds %struct.clk_multiplier, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 2
  %4 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent_rate, align 4
  %conv.i = zext i8 %1 to i32
  %notmask.i = shl nsw i32 -1, %conv.i
  %sub.i = xor i32 %notmask.i, -1
  %call.i = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #3
  %and.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %notmask.i)
  %cmp1257.i = icmp ult i32 %notmask.i, -2
  br i1 %cmp1257.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.__bestmult.exit_crit_edge

for.cond.preheader.i.__bestmult.exit_crit_edge:   ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__bestmult.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %6 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br label %for.body.i

if.then.i:                                        ; preds = %entry
  %div.i = udiv i32 %rate, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp.i = icmp ugt i32 %5, %rate
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 2
  %9 = and i8 %8, 1
  %10 = xor i8 %9, 1
  %11 = zext i8 %10 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then.i.if.end.i_crit_edge
  %bestmult.0.i = phi i32 [ %div.i, %if.then.i.if.end.i_crit_edge ], [ %11, %land.lhs.true.i ]
  %12 = tail call i32 @llvm.umin.i32(i32 %bestmult.0.i, i32 %sub.i) #3
  br label %__bestmult.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bestmult.261.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bestmult.3.i, %for.inc.i.for.body.i_crit_edge ]
  %i.059.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %best_rate.058.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %best_rate.1.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %i.059.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %rate)
  %cmp14.i = icmp eq i32 %mul.i, %rate
  br i1 %cmp14.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %parent_rate, align 4
  br label %__bestmult.exit

if.end17.i:                                       ; preds = %for.body.i
  %call18.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #3
  %div19.i = udiv i32 %rate, %i.059.i
  %call20.i = tail call i32 @clk_hw_round_rate(ptr noundef %call18.i, i32 noundef %div19.i) #3
  %mul21.i = mul i32 %call20.i, %i.059.i
  br i1 %tobool.not.i.i, label %__is_best_rate.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  %sub.i.i = sub i32 %rate, %mul21.i
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #3
  %sub3.i.i = sub i32 %rate, %best_rate.058.i
  %15 = tail call i32 @llvm.abs.i32(i32 %sub3.i.i, i1 false) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp11.i.i = icmp slt i32 %14, %15
  br i1 %cmp11.i.i, label %if.then.i.i.if.then23.i_crit_edge, label %if.then.i.i.for.inc.i_crit_edge

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then.i.i.if.then23.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then23.i

__is_best_rate.exit.i:                            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul21.i, i32 %rate)
  %cmp12.not.i.i = icmp uge i32 %mul21.i, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul21.i, i32 %best_rate.058.i)
  %cmp13.i.i = icmp ult i32 %mul21.i, %best_rate.058.i
  %spec.select.i.i = and i1 %cmp12.not.i.i, %cmp13.i.i
  br i1 %spec.select.i.i, label %__is_best_rate.exit.i.if.then23.i_crit_edge, label %__is_best_rate.exit.i.for.inc.i_crit_edge

__is_best_rate.exit.i.for.inc.i_crit_edge:        ; preds = %__is_best_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

__is_best_rate.exit.i.if.then23.i_crit_edge:      ; preds = %__is_best_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then23.i

if.then23.i:                                      ; preds = %__is_best_rate.exit.i.if.then23.i_crit_edge, %if.then.i.i.if.then23.i_crit_edge
  %16 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call20.i, ptr %parent_rate, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %__is_best_rate.exit.i.for.inc.i_crit_edge, %if.then.i.i.for.inc.i_crit_edge
  %best_rate.1.i = phi i32 [ %mul21.i, %if.then23.i ], [ %best_rate.058.i, %__is_best_rate.exit.i.for.inc.i_crit_edge ], [ %best_rate.058.i, %if.then.i.i.for.inc.i_crit_edge ]
  %bestmult.3.i = phi i32 [ %i.059.i, %if.then23.i ], [ %bestmult.261.i, %__is_best_rate.exit.i.for.inc.i_crit_edge ], [ %bestmult.261.i, %if.then.i.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.inc.i.__bestmult.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.__bestmult.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__bestmult.exit

__bestmult.exit:                                  ; preds = %for.inc.i.__bestmult.exit_crit_edge, %if.then16.i, %if.end.i, %for.cond.preheader.i.__bestmult.exit_crit_edge
  %retval.0.i = phi i32 [ %i.059.i, %if.then16.i ], [ %12, %if.end.i ], [ 0, %for.cond.preheader.i.__bestmult.exit_crit_edge ], [ %bestmult.3.i, %for.inc.i.__bestmult.exit_crit_edge ]
  %17 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %parent_rate, align 4
  %mul = mul i32 %18, %retval.0.i
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_multiplier_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.clk_multiplier, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags.i, align 2
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %div6.i = lshr i32 %parent_rate, 1
  %add.i = select i1 %tobool.not.i, i32 0, i32 %div6.i
  %add.pn.i = add i32 %add.i, %rate
  %retval.0.i = udiv i32 %add.pn.i, %parent_rate
  %lock = getelementptr inbounds %struct.clk_multiplier, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %4) #3
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call5, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags.i, align 2
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i40 = icmp eq i8 %7, 0
  %reg2.i = getelementptr inbounds %struct.clk_multiplier, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg2.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3
  br i1 %tobool.not.i40, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  br label %clk_mult_readl.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %clk_mult_readl.exit

clk_mult_readl.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i41 = phi i32 [ %10, %if.then.i ], [ %11, %if.end.i ]
  %shift = getelementptr inbounds %struct.clk_multiplier, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift, align 4
  %conv9 = zext i8 %13 to i32
  %shl.neg = shl nsw i32 -1, %conv9
  %width = getelementptr inbounds %struct.clk_multiplier, ptr %hw, i32 0, i32 3
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width, align 1
  %conv10 = zext i8 %15 to i32
  %16 = add nuw nsw i32 %conv9, %conv10
  %sub15 = sub nsw i32 32, %16
  %shr = lshr i32 -1, %sub15
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %and17 = and i32 %retval.0.i41, %neg
  %shl20 = shl i32 %retval.0.i, %conv9
  %or = or i32 %and17, %shl20
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags.i, align 2
  %19 = and i8 %18, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i43 = icmp eq i8 %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  br i1 %tobool.not.i43, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %clk_mult_readl.exit
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg2.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %or) #3, !srcloc !15
  br label %clk_mult_writel.exit

do.body1.i:                                       ; preds = %clk_mult_readl.exit
  call void @__sanitizer_cov_trace_pc() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %23 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg2.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #3, !srcloc !15
  br label %clk_mult_writel.exit

clk_mult_writel.exit:                             ; preds = %do.body1.i, %do.body.i
  %25 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock, align 4
  %tobool22.not = icmp eq ptr %26, null
  br i1 %tobool22.not, label %clk_mult_writel.exit.if.end26_crit_edge, label %if.then23

clk_mult_writel.exit.if.end26_crit_edge:          ; preds = %clk_mult_writel.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then23:                                        ; preds = %clk_mult_writel.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %26, i32 noundef %flags.0) #3
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %clk_mult_writel.exit.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @clk_multiplier_ops, !1, !"clk_multiplier_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-multiplier.c", i32 151, i32 22}
!2 = !{ptr @__ksymtab_clk_multiplier_ops, !3, !"__ksymtab_clk_multiplier_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-multiplier.c", i32 156, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2152499941}
!14 = !{i64 2152500395}
!15 = !{i64 4028601}
