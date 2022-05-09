; ModuleID = '/llk/IR_all_yes/drivers/clk/sprd/pll.c_pt.bc'
source_filename = "../drivers/clk/sprd/pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sprd_pll_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_pll_ops\09\09\09\09"
module asm "\09.long\09__crc_sprd_pll_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_pll_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_bit_field = type { i8, i8 }
%struct.reg_cfg = type { i32, i32 }

@sprd_pll_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @sprd_pll_clk_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_pll_recalc_rate, ptr @sprd_pll_round_rate, ptr null, ptr null, ptr null, ptr @sprd_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_sprd_pll_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_pll_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_pll_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_pll_ops to i32), ptr @__kstrtab_sprd_pll_ops, ptr @__kstrtabns_sprd_pll_ops }, section "___ksymtab_gpl+sprd_pll_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/clk/sprd/pll.c\00", [41 x i8] zeroinitializer }, align 32
@__const.pll_get_refin.refin = private unnamed_addr constant [4 x i32] [i32 2, i32 4, i32 13, i32 26], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [13 x i8] c"sprd_pll_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 263, i32 22 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [26 x i8] c"../drivers/clk/sprd/pll.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 44, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_sprd_pll_ops, ptr @sprd_pll_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pll_clk_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %udelay = getelementptr i8, ptr %hw, i32 -28
  %0 = ptrtoint ptr %udelay to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %udelay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv8 = zext i16 %1 to i32
  tail call void %2(i32 noundef %conv8) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -40
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #6
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry._sprd_pll_recalc_rate.exit_crit_edge, label %if.end7.i.i.i, !prof !15

entry._sprd_pll_recalc_rate.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_sprd_pll_recalc_rate.exit

if.end7.i.i.i:                                    ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i._sprd_pll_recalc_rate.exit_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i._sprd_pll_recalc_rate.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_sprd_pll_recalc_rate.exit

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp809.not.i = icmp eq i32 %1, 0
  br i1 %cmp809.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %common1.i.i = getelementptr i8, ptr %hw, i32 -8
  %reg.i.i = getelementptr i8, ptr %hw, i32 -4
  br label %for.body.i

for.body.i:                                       ; preds = %sprd_pll_read.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0810.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %sprd_pll_read.exit.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %val.i.i, align 4
  %conv.i.i = and i32 %i.0810.i, 255
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i.i)
  %cmp.not.i.i = icmp ugt i32 %7, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end23.i.i, label %do.end.i.i, !prof !16

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #6
  br label %sprd_pll_read.exit.i

if.end23.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %common1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common1.i.i, align 4
  %10 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %add.i.i = add i32 %11, %mul.i.i
  %call.i.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #6
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i.i, align 4
  br label %sprd_pll_read.exit.i

sprd_pll_read.exit.i:                             ; preds = %if.end23.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %13, %if.end23.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  %arrayidx.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.0810.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.0810.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %sprd_pll_read.exit.i.for.end.i_crit_edge, label %sprd_pll_read.exit.i.for.body.i_crit_edge

sprd_pll_read.exit.i.for.body.i_crit_edge:        ; preds = %sprd_pll_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sprd_pll_read.exit.i.for.end.i_crit_edge:         ; preds = %sprd_pll_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %sprd_pll_read.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %factors.i.i = getelementptr i8, ptr %hw, i32 -32
  %15 = ptrtoint ptr %factors.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %factors.i.i, align 8
  %width.i.i = getelementptr %struct.clk_bit_field, ptr %16, i32 4, i32 1
  %17 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %width.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %for.end.i.pll_get_refin.exit.i_crit_edge, label %if.then.i.i

for.end.i.pll_get_refin.exit.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_get_refin.exit.i

if.then.i.i:                                      ; preds = %for.end.i
  %arrayidx.i.i = getelementptr %struct.clk_bit_field, ptr %16, i32 4
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %div46.i.i = lshr i8 %20, 5
  %21 = and i8 %20, 31
  %rem.i.i = zext i8 %21 to i32
  %shl.neg.i.i = shl nsw i32 -1, %rem.i.i
  %conv11.i.i = zext i8 %18 to i32
  %22 = add nuw nsw i32 %conv11.i.i, %rem.i.i
  %sub29.i.i = sub nsw i32 32, %22
  %shr.i.i = lshr i32 -1, %sub29.i.i
  %and.i.i = and i32 %shr.i.i, %shl.neg.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %23 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val.i.i.i, align 4
  %conv.i.i.i = zext i8 %div46.i.i to i32
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %25, %conv.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end23.i.i.i, label %do.end.i.i.i, !prof !16

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #6
  br label %sprd_pll_read.exit.i.i

if.end23.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %common1.i.i.i = getelementptr i8, ptr %hw, i32 -8
  %26 = ptrtoint ptr %common1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %common1.i.i.i, align 4
  %reg.i.i.i = getelementptr i8, ptr %hw, i32 -4
  %28 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg.i.i.i, align 4
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 2
  %add.i.i.i = add i32 %29, %mul.i.i.i
  %call.i.i.i = call i32 @regmap_read(ptr noundef %27, i32 noundef %add.i.i.i, ptr noundef nonnull %val.i.i.i) #6
  %30 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i.i.i, align 4
  br label %sprd_pll_read.exit.i.i

sprd_pll_read.exit.i.i:                           ; preds = %if.end23.i.i.i, %do.end.i.i.i
  %retval.0.i.i776.i = phi i32 [ 0, %do.end.i.i.i ], [ %31, %if.end23.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %and32.i.i = and i32 %and.i.i, %retval.0.i.i776.i
  %shr33.i.i = lshr i32 %and32.i.i, %rem.i.i
  %32 = call i32 @llvm.umin.i32(i32 %shr33.i.i, i32 3) #6
  br label %pll_get_refin.exit.i

pll_get_refin.exit.i:                             ; preds = %sprd_pll_read.exit.i.i, %for.end.i.pll_get_refin.exit.i_crit_edge
  %refin_id.0.i.i = phi i32 [ %32, %sprd_pll_read.exit.i.i ], [ 3, %for.end.i.pll_get_refin.exit.i_crit_edge ]
  %arrayidx37.i.i = getelementptr [4 x i32], ptr @__const.pll_get_refin.refin, i32 0, i32 %refin_id.0.i.i
  %33 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx37.i.i, align 4
  %conv4.i = zext i32 %34 to i64
  %35 = ptrtoint ptr %factors.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %factors.i.i, align 8
  %arrayidx5.i = getelementptr %struct.clk_bit_field, ptr %36, i32 9
  %37 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %38 to i32
  %div765.i = lshr i32 %conv6.i, 5
  %arrayidx7.i = getelementptr i32, ptr %call8.i.i.i, i32 %div765.i
  %39 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx7.i, align 4
  %width.i = getelementptr %struct.clk_bit_field, ptr %36, i32 9, i32 1
  %41 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %width.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool11.not.i = icmp eq i8 %42, 0
  br i1 %tobool11.not.i, label %pll_get_refin.exit.i.cond.end.i_crit_edge, label %cond.true.i

pll_get_refin.exit.i.cond.end.i_crit_edge:        ; preds = %pll_get_refin.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %pll_get_refin.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv10.i = zext i8 %42 to i32
  %rem.i = and i32 %conv6.i, 31
  %shl.neg.i = shl nsw i32 -1, %rem.i
  %43 = add nuw nsw i32 %rem.i, %conv10.i
  %sub27.i = sub nsw i32 32, %43
  %shr.i = lshr i32 -1, %sub27.i
  %and.i = and i32 %shr.i, %shl.neg.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %pll_get_refin.exit.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %and.i, %cond.true.i ], [ 0, %pll_get_refin.exit.i.cond.end.i_crit_edge ]
  %and29.i = and i32 %cond.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp ne i32 %and29.i, 0
  %mul.i = zext i1 %tobool30.not.i to i64
  %spec.select.i = shl nuw nsw i64 %conv4.i, %mul.i
  %arrayidx34.i = getelementptr %struct.clk_bit_field, ptr %36, i32 10
  %width35.i = getelementptr %struct.clk_bit_field, ptr %36, i32 10, i32 1
  %44 = ptrtoint ptr %width35.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %width35.i, align 1
  %conv36.i = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool37.not.i = icmp eq i8 %45, 0
  br i1 %tobool37.not.i, label %cond.end.i.if.end127.i_crit_edge, label %land.lhs.true.i

cond.end.i.if.end127.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.i

land.lhs.true.i:                                  ; preds = %cond.end.i
  %fflag.i = getelementptr i8, ptr %hw, i32 -22
  %46 = ptrtoint ptr %fflag.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %fflag.i, align 2
  %48 = zext i16 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i16 %47, label %land.lhs.true.i.if.end127.i_crit_edge [
    i16 1, label %land.lhs.true41.i
    i16 0, label %cond.end121.i
  ]

land.lhs.true.i.if.end127.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.i

land.lhs.true41.i:                                ; preds = %land.lhs.true.i
  %49 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx34.i, align 1
  %conv45.i = zext i8 %50 to i32
  %div46775.i = lshr i32 %conv45.i, 5
  %arrayidx47.i = getelementptr i32, ptr %call8.i.i.i, i32 %div46775.i
  %51 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx47.i, align 4
  %rem58.i = and i32 %conv45.i, 31
  %shl59.neg.i = shl nsw i32 -1, %rem58.i
  %53 = add nuw nsw i32 %rem58.i, %conv36.i
  %sub73.i = sub nsw i32 32, %53
  %shr74.i = lshr i32 -1, %sub73.i
  %and75.i = and i32 %shl59.neg.i, %52
  %and80.i = and i32 %and75.i, %shr74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %land.lhs.true41.i.if.end127.i_crit_edge, label %land.lhs.true41.i.if.then125.i_crit_edge

land.lhs.true41.i.if.then125.i_crit_edge:         ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then125.i

land.lhs.true41.i.if.end127.i_crit_edge:          ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.i

cond.end121.i:                                    ; preds = %land.lhs.true.i
  %54 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx34.i, align 1
  %conv88.i = zext i8 %55 to i32
  %div89773.i = lshr i32 %conv88.i, 5
  %arrayidx90.i = getelementptr i32, ptr %call8.i.i.i, i32 %div89773.i
  %56 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx90.i, align 4
  %rem101.i = and i32 %conv88.i, 31
  %shl102.neg.i = shl nsw i32 -1, %rem101.i
  %58 = add nuw nsw i32 %rem101.i, %conv36.i
  %sub116.i = sub nsw i32 32, %58
  %shr117.i = lshr i32 -1, %sub116.i
  %and118.i = and i32 %shl102.neg.i, %57
  %and123.i = and i32 %and118.i, %shr117.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i)
  %tobool124.not.i = icmp eq i32 %and123.i, 0
  br i1 %tobool124.not.i, label %cond.end121.i.if.then125.i_crit_edge, label %cond.end121.i.if.end127.i_crit_edge

cond.end121.i.if.end127.i_crit_edge:              ; preds = %cond.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.i

cond.end121.i.if.then125.i_crit_edge:             ; preds = %cond.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then125.i

if.then125.i:                                     ; preds = %cond.end121.i.if.then125.i_crit_edge, %land.lhs.true41.i.if.then125.i_crit_edge
  %div126774.i = lshr i64 %spec.select.i, 1
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then125.i, %cond.end121.i.if.end127.i_crit_edge, %land.lhs.true41.i.if.end127.i_crit_edge, %land.lhs.true.i.if.end127.i_crit_edge, %cond.end.i.if.end127.i_crit_edge
  %refin.1.i = phi i64 [ %div126774.i, %if.then125.i ], [ %spec.select.i, %cond.end121.i.if.end127.i_crit_edge ], [ %spec.select.i, %cond.end.i.if.end127.i_crit_edge ], [ %spec.select.i, %land.lhs.true41.i.if.end127.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i.if.end127.i_crit_edge ]
  %arrayidx129.i = getelementptr %struct.clk_bit_field, ptr %36, i32 1
  %59 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx129.i, align 1
  %conv131.i = zext i8 %60 to i32
  %div132766.i = lshr i32 %conv131.i, 5
  %arrayidx133.i = getelementptr i32, ptr %call8.i.i.i, i32 %div132766.i
  %61 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx133.i, align 4
  %width136.i = getelementptr %struct.clk_bit_field, ptr %36, i32 1, i32 1
  %63 = ptrtoint ptr %width136.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %width136.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool138.not.i = icmp eq i8 %64, 0
  br i1 %tobool138.not.i, label %if.end127.i.cond.end164.i_crit_edge, label %cond.true139.i

if.end127.i.cond.end164.i_crit_edge:              ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end164.i

cond.true139.i:                                   ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv137.i = zext i8 %64 to i32
  %rem144.i = and i32 %conv131.i, 31
  %shl145.neg.i = shl nsw i32 -1, %rem144.i
  %65 = add nuw nsw i32 %rem144.i, %conv137.i
  %sub159.i = sub nsw i32 32, %65
  %shr160.i = lshr i32 -1, %sub159.i
  %and161.i = and i32 %shr160.i, %shl145.neg.i
  br label %cond.end164.i

cond.end164.i:                                    ; preds = %cond.true139.i, %if.end127.i.cond.end164.i_crit_edge
  %cond165.i = phi i32 [ %and161.i, %cond.true139.i ], [ 0, %if.end127.i.cond.end164.i_crit_edge ]
  %and166.i = and i32 %cond165.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166.i)
  %tobool167.not.i = icmp eq i32 %and166.i, 0
  br i1 %tobool167.not.i, label %if.then168.i, label %if.else.i

if.then168.i:                                     ; preds = %cond.end164.i
  %arrayidx170.i = getelementptr %struct.clk_bit_field, ptr %36, i32 6
  %66 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx170.i, align 1
  %conv172.i = zext i8 %67 to i32
  %div173767.i = lshr i32 %conv172.i, 5
  %arrayidx174.i = getelementptr i32, ptr %call8.i.i.i, i32 %div173767.i
  %68 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx174.i, align 4
  %width177.i = getelementptr %struct.clk_bit_field, ptr %36, i32 6, i32 1
  %70 = ptrtoint ptr %width177.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %width177.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool179.not.i = icmp eq i8 %71, 0
  br i1 %tobool179.not.i, label %if.then168.i.cond.end205.i_crit_edge, label %cond.true180.i

if.then168.i.cond.end205.i_crit_edge:             ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end205.i

cond.true180.i:                                   ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv178.i = zext i8 %71 to i32
  %rem185.i = and i32 %conv172.i, 31
  %shl186.neg.i = shl nsw i32 -1, %rem185.i
  %72 = add nuw nsw i32 %rem185.i, %conv178.i
  %sub200.i = sub nsw i32 32, %72
  %shr201.i = lshr i32 -1, %sub200.i
  %and202.i = and i32 %shr201.i, %shl186.neg.i
  br label %cond.end205.i

cond.end205.i:                                    ; preds = %cond.true180.i, %if.then168.i.cond.end205.i_crit_edge
  %cond206.i = phi i32 [ %and202.i, %cond.true180.i ], [ 0, %if.then168.i.cond.end205.i_crit_edge ]
  %and207.i = and i32 %cond206.i, %69
  %73 = and i8 %67, 31
  %rem212.i = zext i8 %73 to i32
  %shr213.i = lshr i32 %and207.i, %rem212.i
  %74 = trunc i64 %refin.1.i to i32
  %75 = mul i32 %74, 10000000
  %conv217.i = mul i32 %75, %shr213.i
  br label %if.end602.i

if.else.i:                                        ; preds = %cond.end164.i
  %arrayidx219.i = getelementptr %struct.clk_bit_field, ptr %36, i32 7
  %76 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx219.i, align 1
  %conv221.i = zext i8 %77 to i32
  %div222768.i = lshr i32 %conv221.i, 5
  %arrayidx223.i = getelementptr i32, ptr %call8.i.i.i, i32 %div222768.i
  %78 = ptrtoint ptr %arrayidx223.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx223.i, align 4
  %width226.i = getelementptr %struct.clk_bit_field, ptr %36, i32 7, i32 1
  %80 = ptrtoint ptr %width226.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %width226.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool228.not.i = icmp eq i8 %81, 0
  br i1 %tobool228.not.i, label %if.else.i.cond.end254.i_crit_edge, label %cond.true229.i

if.else.i.cond.end254.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end254.i

cond.true229.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv227.i = zext i8 %81 to i32
  %rem234.i = and i32 %conv221.i, 31
  %shl235.neg.i = shl nsw i32 -1, %rem234.i
  %82 = add nuw nsw i32 %rem234.i, %conv227.i
  %sub249.i = sub nsw i32 32, %82
  %shr250.i = lshr i32 -1, %sub249.i
  %and251.i = and i32 %shr250.i, %shl235.neg.i
  br label %cond.end254.i

cond.end254.i:                                    ; preds = %cond.true229.i, %if.else.i.cond.end254.i_crit_edge
  %cond255.i = phi i32 [ %and251.i, %cond.true229.i ], [ 0, %if.else.i.cond.end254.i_crit_edge ]
  %and256.i = and i32 %cond255.i, %79
  %83 = and i8 %77, 31
  %rem261.i = zext i8 %83 to i32
  %shr262.i = lshr i32 %and256.i, %rem261.i
  %arrayidx264.i = getelementptr %struct.clk_bit_field, ptr %36, i32 3
  %84 = ptrtoint ptr %arrayidx264.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx264.i, align 1
  %conv266.i = zext i8 %85 to i32
  %div267769.i = lshr i32 %conv266.i, 5
  %arrayidx268.i = getelementptr i32, ptr %call8.i.i.i, i32 %div267769.i
  %86 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx268.i, align 4
  %width271.i = getelementptr %struct.clk_bit_field, ptr %36, i32 3, i32 1
  %88 = ptrtoint ptr %width271.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %width271.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool273.not.i = icmp eq i8 %89, 0
  br i1 %tobool273.not.i, label %cond.end254.i.cond.end299.i_crit_edge, label %cond.true274.i

cond.end254.i.cond.end299.i_crit_edge:            ; preds = %cond.end254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end299.i

cond.true274.i:                                   ; preds = %cond.end254.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv272.i = zext i8 %89 to i32
  %rem279.i = and i32 %conv266.i, 31
  %shl280.neg.i = shl nsw i32 -1, %rem279.i
  %90 = add nuw nsw i32 %rem279.i, %conv272.i
  %sub294.i = sub nsw i32 32, %90
  %shr295.i = lshr i32 -1, %sub294.i
  %and296.i = and i32 %shr295.i, %shl280.neg.i
  br label %cond.end299.i

cond.end299.i:                                    ; preds = %cond.true274.i, %cond.end254.i.cond.end299.i_crit_edge
  %cond300.i = phi i32 [ %and296.i, %cond.true274.i ], [ 0, %cond.end254.i.cond.end299.i_crit_edge ]
  %and301.i = and i32 %cond300.i, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301.i)
  %tobool302.not.i = icmp eq i32 %and301.i, 0
  br i1 %tobool302.not.i, label %cond.end299.i.if.end349.i_crit_edge, label %if.then303.i

cond.end299.i.if.end349.i_crit_edge:              ; preds = %cond.end299.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end349.i

if.then303.i:                                     ; preds = %cond.end299.i
  %arrayidx305.i = getelementptr %struct.clk_bit_field, ptr %36, i32 8
  %91 = ptrtoint ptr %arrayidx305.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx305.i, align 1
  %conv307.i = zext i8 %92 to i32
  %div308772.i = lshr i32 %conv307.i, 5
  %arrayidx309.i = getelementptr i32, ptr %call8.i.i.i, i32 %div308772.i
  %93 = ptrtoint ptr %arrayidx309.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx309.i, align 4
  %width312.i = getelementptr %struct.clk_bit_field, ptr %36, i32 8, i32 1
  %95 = ptrtoint ptr %width312.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %width312.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool314.not.i = icmp eq i8 %96, 0
  br i1 %tobool314.not.i, label %if.then303.i.cond.end340.i_crit_edge, label %cond.true315.i

if.then303.i.cond.end340.i_crit_edge:             ; preds = %if.then303.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end340.i

cond.true315.i:                                   ; preds = %if.then303.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv313.i = zext i8 %96 to i32
  %rem320.i = and i32 %conv307.i, 31
  %shl321.neg.i = shl nsw i32 -1, %rem320.i
  %97 = add nuw nsw i32 %rem320.i, %conv313.i
  %sub335.i = sub nsw i32 32, %97
  %shr336.i = lshr i32 -1, %sub335.i
  %and337.i = and i32 %shr336.i, %shl321.neg.i
  br label %cond.end340.i

cond.end340.i:                                    ; preds = %cond.true315.i, %if.then303.i.cond.end340.i_crit_edge
  %cond341.i = phi i32 [ %and337.i, %cond.true315.i ], [ 0, %if.then303.i.cond.end340.i_crit_edge ]
  %and342.i = and i32 %cond341.i, %94
  %98 = and i8 %92, 31
  %rem347.i = zext i8 %98 to i32
  %shr348.i = lshr i32 %and342.i, %rem347.i
  br label %if.end349.i

if.end349.i:                                      ; preds = %cond.end340.i, %cond.end299.i.if.end349.i_crit_edge
  %kint.0.i = phi i32 [ %shr348.i, %cond.end340.i ], [ 0, %cond.end299.i.if.end349.i_crit_edge ]
  %width352.i = getelementptr %struct.clk_bit_field, ptr %36, i32 8, i32 1
  %99 = ptrtoint ptr %width352.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %width352.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool354.not.i = icmp eq i8 %100, 0
  br i1 %tobool354.not.i, label %if.end349.i.cond.end380.i_crit_edge, label %cond.true355.i

if.end349.i.cond.end380.i_crit_edge:              ; preds = %if.end349.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end380.i

cond.true355.i:                                   ; preds = %if.end349.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv353.i = zext i8 %100 to i32
  %arrayidx351.i = getelementptr %struct.clk_bit_field, ptr %36, i32 8
  %101 = ptrtoint ptr %arrayidx351.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx351.i, align 1
  %103 = and i8 %102, 31
  %rem360.i = zext i8 %103 to i32
  %shl361.neg.i = shl nsw i32 -1, %rem360.i
  %104 = add nuw nsw i32 %conv353.i, %rem360.i
  %sub375.i = sub nsw i32 32, %104
  %shr376.i = lshr i32 -1, %sub375.i
  %and377.i = and i32 %shr376.i, %shl361.neg.i
  br label %cond.end380.i

cond.end380.i:                                    ; preds = %cond.true355.i, %if.end349.i.cond.end380.i_crit_edge
  %cond381.i = phi i32 [ %and377.i, %cond.true355.i ], [ 0, %if.end349.i.cond.end380.i_crit_edge ]
  %k1382.i = getelementptr i8, ptr %hw, i32 -26
  %105 = ptrtoint ptr %k1382.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %k1382.i, align 2
  %k2383.i = getelementptr i8, ptr %hw, i32 -24
  %107 = ptrtoint ptr %k2383.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %k2383.i, align 8
  %109 = call i32 @llvm.cttz.i32(i32 %cond381.i, i1 false) #6, !range !17
  %shr385.i = lshr i32 %cond381.i, %109
  %add386.i = add i32 %shr385.i, 1
  %conv387.i = zext i32 %kint.0.i to i64
  %mul388.i = mul i64 %refin.1.i, %conv387.i
  %conv389.i = zext i16 %106 to i64
  %mul390.i = mul i64 %mul388.i, %conv389.i
  %div391770.i = lshr i32 %add386.i, 1
  %conv392.i = zext i32 %div391770.i to i64
  %add393.i = add i64 %mul390.i, %conv392.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add393.i)
  %cmp578.i = icmp ult i64 %add393.i, 4294967296
  br i1 %cmp578.i, label %if.then582.i, label %if.else588.i, !prof !16

if.then582.i:                                     ; preds = %cond.end380.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv583.i = trunc i64 %add393.i to i32
  %div586.i = udiv i32 %conv583.i, %add386.i
  %conv587.i = zext i32 %div586.i to i64
  br label %if.end592.i

if.else588.i:                                     ; preds = %cond.end380.i
  call void @__sanitizer_cov_trace_pc() #8
  %110 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add386.i, i64 %add393.i) #10, !srcloc !18
  %asmresult1.i.i = extractvalue { i64, i64 } %110, 1
  br label %if.end592.i

if.end592.i:                                      ; preds = %if.else588.i, %if.then582.i
  %_tmp.0.i = phi i64 [ %conv587.i, %if.then582.i ], [ %asmresult1.i.i, %if.else588.i ]
  %conv595.i = zext i16 %108 to i64
  %mul596.i = mul i64 %_tmp.0.i, %conv595.i
  %conv597.i = zext i32 %shr262.i to i64
  %mul598.i = mul nuw nsw i64 %refin.1.i, 1000000
  %mul599.i = mul i64 %mul598.i, %conv597.i
  %add600.i = add i64 %mul596.i, %mul599.i
  %conv601.i = trunc i64 %add600.i to i32
  br label %if.end602.i

if.end602.i:                                      ; preds = %if.end592.i, %cond.end205.i
  %rate.0.i = phi i32 [ %conv601.i, %if.end592.i ], [ %conv217.i, %cond.end205.i ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #6
  br label %_sprd_pll_recalc_rate.exit

_sprd_pll_recalc_rate.exit:                       ; preds = %if.end602.i, %if.end7.i.i.i._sprd_pll_recalc_rate.exit_crit_edge, %entry._sprd_pll_recalc_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %rate.0.i, %if.end602.i ], [ %parent_rate, %if.end7.i.i.i._sprd_pll_recalc_rate.exit_crit_edge ], [ %parent_rate, %entry._sprd_pll_recalc_rate.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_pll_round_rate(ptr nocapture noundef readnone %hw, i32 noundef returned %rate, ptr nocapture noundef readnone %prate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val.i63.i = alloca i32, align 4
  %reg.i53.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -40
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  %conv.i = zext i32 %rate to i64
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 8) #6
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry._sprd_pll_set_rate.exit_crit_edge, label %if.end7.i.i.i, !prof !15

entry._sprd_pll_set_rate.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_sprd_pll_set_rate.exit

if.end7.i.i.i:                                    ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i._sprd_pll_set_rate.exit_crit_edge, label %if.end.i

if.end7.i.i.i._sprd_pll_set_rate.exit_crit_edge:  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_sprd_pll_set_rate.exit

if.end.i:                                         ; preds = %if.end7.i.i.i
  %factors.i.i = getelementptr i8, ptr %hw, i32 -32
  %5 = ptrtoint ptr %factors.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %factors.i.i, align 8
  %width.i.i = getelementptr %struct.clk_bit_field, ptr %6, i32 4, i32 1
  %7 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %width.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i.pll_get_refin.exit.i_crit_edge, label %if.then.i.i

if.end.i.pll_get_refin.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_get_refin.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %arrayidx.i.i = getelementptr %struct.clk_bit_field, ptr %6, i32 4
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  %div46.i.i = lshr i8 %10, 5
  %11 = and i8 %10, 31
  %rem.i.i = zext i8 %11 to i32
  %shl.neg.i.i = shl nsw i32 -1, %rem.i.i
  %conv11.i.i = zext i8 %8 to i32
  %12 = add nuw nsw i32 %conv11.i.i, %rem.i.i
  %sub29.i.i = sub nsw i32 32, %12
  %shr.i.i = lshr i32 -1, %sub29.i.i
  %and.i.i = and i32 %shr.i.i, %shl.neg.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %13 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val.i.i.i, align 4
  %conv.i.i.i = zext i8 %div46.i.i to i32
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %15, %conv.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end23.i.i.i, label %do.end.i.i.i, !prof !16

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #6
  br label %sprd_pll_read.exit.i.i

if.end23.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %common1.i.i.i = getelementptr i8, ptr %hw, i32 -8
  %16 = ptrtoint ptr %common1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common1.i.i.i, align 4
  %reg.i.i.i = getelementptr i8, ptr %hw, i32 -4
  %18 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg.i.i.i, align 4
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 2
  %add.i.i.i = add i32 %19, %mul.i.i.i
  %call.i.i.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %add.i.i.i, ptr noundef nonnull %val.i.i.i) #6
  %20 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i.i.i, align 4
  br label %sprd_pll_read.exit.i.i

sprd_pll_read.exit.i.i:                           ; preds = %if.end23.i.i.i, %do.end.i.i.i
  %retval.0.i.i10.i = phi i32 [ 0, %do.end.i.i.i ], [ %21, %if.end23.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %and32.i.i = and i32 %and.i.i, %retval.0.i.i10.i
  %shr33.i.i = lshr i32 %and32.i.i, %rem.i.i
  %22 = call i32 @llvm.umin.i32(i32 %shr33.i.i, i32 3) #6
  br label %pll_get_refin.exit.i

pll_get_refin.exit.i:                             ; preds = %sprd_pll_read.exit.i.i, %if.end.i.pll_get_refin.exit.i_crit_edge
  %refin_id.0.i.i = phi i32 [ %22, %sprd_pll_read.exit.i.i ], [ 3, %if.end.i.pll_get_refin.exit.i_crit_edge ]
  %arrayidx37.i.i = getelementptr [4 x i32], ptr @__const.pll_get_refin.refin, i32 0, i32 %refin_id.0.i.i
  %23 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx37.i.i, align 4
  %conv3.i = zext i32 %24 to i64
  %25 = ptrtoint ptr %factors.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %factors.i.i, align 8
  %width4.i = getelementptr %struct.clk_bit_field, ptr %26, i32 9, i32 1
  %27 = ptrtoint ptr %width4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %width4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool6.not.i = icmp eq i8 %28, 0
  br i1 %tobool6.not.i, label %pll_get_refin.exit.i.if.end38.i_crit_edge, label %land.lhs.true.i

pll_get_refin.exit.i.if.end38.i_crit_edge:        ; preds = %pll_get_refin.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %pll_get_refin.exit.i
  %conv5.i = zext i8 %28 to i32
  %arrayidx.i = getelementptr %struct.clk_bit_field, ptr %26, i32 9
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %31 = and i8 %30, 31
  %rem.i = zext i8 %31 to i32
  %shl.neg.i = shl nsw i32 -1, %rem.i
  %32 = add nuw nsw i32 %conv5.i, %rem.i
  %sub22.i = sub nsw i32 32, %32
  %shr.i = lshr i32 -1, %sub22.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %33 = lshr i8 %30, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %34 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %val.i.i, align 4
  %conv.i.i = zext i8 %33 to i32
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv.i.i)
  %cmp.not.i.i = icmp ugt i32 %36, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end23.i.i, label %do.end.i.i, !prof !16

do.end.i.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #6
  br label %sprd_pll_read.exit.i

if.end23.i.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %common1.i.i = getelementptr i8, ptr %hw, i32 -8
  %37 = ptrtoint ptr %common1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %common1.i.i, align 4
  %reg.i.i = getelementptr i8, ptr %hw, i32 -4
  %39 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %add.i.i = add i32 %40, %mul.i.i
  %call.i.i = call i32 @regmap_read(ptr noundef %38, i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #6
  %41 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i.i, align 4
  br label %sprd_pll_read.exit.i

sprd_pll_read.exit.i:                             ; preds = %if.end23.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %42, %if.end23.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  %and35.i = and i32 %and.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp ne i32 %and35.i, 0
  %mul.i = zext i1 %tobool36.not.i to i64
  %spec.select.i = shl nuw nsw i64 %conv3.i, %mul.i
  br label %if.end38.i

if.end38.i:                                       ; preds = %sprd_pll_read.exit.i, %pll_get_refin.exit.i.if.end38.i_crit_edge
  %refin.0.i = phi i64 [ %spec.select.i, %sprd_pll_read.exit.i ], [ %conv3.i, %pll_get_refin.exit.i.if.end38.i_crit_edge ]
  %43 = ptrtoint ptr %factors.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %factors.i.i, align 8
  %width41.i = getelementptr %struct.clk_bit_field, ptr %44, i32 10, i32 1
  %45 = ptrtoint ptr %width41.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %width41.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool43.not.i = icmp eq i8 %46, 0
  br i1 %tobool43.not.i, label %if.end38.i.cond.end69.i_crit_edge, label %cond.true44.i

if.end38.i.cond.end69.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end69.i

cond.true44.i:                                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv42.i = zext i8 %46 to i32
  %arrayidx40.i = getelementptr %struct.clk_bit_field, ptr %44, i32 10
  %47 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx40.i, align 1
  %49 = and i8 %48, 31
  %rem49.i = zext i8 %49 to i32
  %shl50.neg.i = shl nsw i32 -1, %rem49.i
  %50 = add nuw nsw i32 %conv42.i, %rem49.i
  %sub64.i = sub nsw i32 32, %50
  %shr65.i = lshr i32 -1, %sub64.i
  %and66.i = and i32 %shr65.i, %shl50.neg.i
  br label %cond.end69.i

cond.end69.i:                                     ; preds = %cond.true44.i, %if.end38.i.cond.end69.i_crit_edge
  %cond70.i = phi i32 [ %and66.i, %cond.true44.i ], [ 0, %if.end38.i.cond.end69.i_crit_edge ]
  %arrayidx72.i = getelementptr %struct.clk_bit_field, ptr %44, i32 10
  %51 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx72.i, align 1
  %53 = lshr i8 %52, 5
  %div75.i = zext i8 %53 to i32
  %arrayidx80.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div75.i
  %msk.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div75.i, i32 1
  %54 = ptrtoint ptr %msk.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond70.i, ptr %msk.i, align 4
  br i1 %tobool43.not.i, label %cond.end69.i.if.end107.i_crit_edge, label %land.lhs.true82.i

cond.end69.i.if.end107.i_crit_edge:               ; preds = %cond.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107.i

land.lhs.true82.i:                                ; preds = %cond.end69.i
  %fflag.i = getelementptr i8, ptr %hw, i32 -22
  %55 = ptrtoint ptr %fflag.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %fflag.i, align 2
  %57 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %56, label %land.lhs.true82.i.land.lhs.true101.i_crit_edge [
    i16 1, label %land.lhs.true85.i
    i16 0, label %land.lhs.true93.i
  ]

land.lhs.true82.i.land.lhs.true101.i_crit_edge:   ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true101.i

land.lhs.true85.i:                                ; preds = %land.lhs.true82.i
  %fvco86.i = getelementptr i8, ptr %hw, i32 -16
  %58 = ptrtoint ptr %fvco86.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %fvco86.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %conv.i)
  %cmp87.not.i = icmp ult i64 %59, %conv.i
  br i1 %cmp87.not.i, label %land.lhs.true85.i.land.lhs.true101.i_crit_edge, label %land.lhs.true85.i.if.then97.i_crit_edge

land.lhs.true85.i.if.then97.i_crit_edge:          ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then97.i

land.lhs.true85.i.land.lhs.true101.i_crit_edge:   ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true101.i

land.lhs.true93.i:                                ; preds = %land.lhs.true82.i
  %fvco94.i = getelementptr i8, ptr %hw, i32 -16
  %60 = ptrtoint ptr %fvco94.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %fvco94.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %conv.i)
  %cmp95.i = icmp ult i64 %61, %conv.i
  br i1 %cmp95.i, label %land.lhs.true93.i.if.then97.i_crit_edge, label %land.lhs.true93.i.land.lhs.true101.i_crit_edge

land.lhs.true93.i.land.lhs.true101.i_crit_edge:   ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true101.i

land.lhs.true93.i.if.then97.i_crit_edge:          ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then97.i

if.then97.i:                                      ; preds = %land.lhs.true93.i.if.then97.i_crit_edge, %land.lhs.true85.i.if.then97.i_crit_edge
  %62 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx80.i, align 8
  %or.i = or i32 %63, %cond70.i
  store i32 %or.i, ptr %arrayidx80.i, align 8
  br label %land.lhs.true101.i

land.lhs.true101.i:                               ; preds = %if.then97.i, %land.lhs.true93.i.land.lhs.true101.i_crit_edge, %land.lhs.true85.i.land.lhs.true101.i_crit_edge, %land.lhs.true82.i.land.lhs.true101.i_crit_edge
  %fvco102.i = getelementptr i8, ptr %hw, i32 -16
  %64 = ptrtoint ptr %fvco102.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %fvco102.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %65, i64 %conv.i)
  %cmp103.not.i = icmp uge i64 %65, %conv.i
  %mul106.i = zext i1 %cmp103.not.i to i64
  %spec.select132.i = shl nuw nsw i64 %conv.i, %mul106.i
  br label %if.end107.i

if.end107.i:                                      ; preds = %land.lhs.true101.i, %cond.end69.i.if.end107.i_crit_edge
  %fvco.0.i = phi i64 [ %conv.i, %cond.end69.i.if.end107.i_crit_edge ], [ %spec.select132.i, %land.lhs.true101.i ]
  %66 = ptrtoint ptr %factors.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %factors.i.i, align 8
  %width110.i = getelementptr %struct.clk_bit_field, ptr %67, i32 1, i32 1
  %68 = ptrtoint ptr %width110.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %width110.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool112.not.i = icmp eq i8 %69, 0
  br i1 %tobool112.not.i, label %if.end107.i.cond.end138.i_crit_edge, label %cond.true113.i

if.end107.i.cond.end138.i_crit_edge:              ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end138.i

cond.true113.i:                                   ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv111.i = zext i8 %69 to i32
  %arrayidx109.i = getelementptr %struct.clk_bit_field, ptr %67, i32 1
  %70 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx109.i, align 1
  %72 = and i8 %71, 31
  %rem118.i = zext i8 %72 to i32
  %shl119.neg.i = shl nsw i32 -1, %rem118.i
  %73 = add nuw nsw i32 %conv111.i, %rem118.i
  %sub133.i = sub nsw i32 32, %73
  %shr134.i = lshr i32 -1, %sub133.i
  %and135.i = and i32 %shr134.i, %shl119.neg.i
  br label %cond.end138.i

cond.end138.i:                                    ; preds = %cond.true113.i, %if.end107.i.cond.end138.i_crit_edge
  %cond139.i = phi i32 [ %and135.i, %cond.true113.i ], [ 0, %if.end107.i.cond.end138.i_crit_edge ]
  %arrayidx141.i = getelementptr %struct.clk_bit_field, ptr %67, i32 1
  %74 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx141.i, align 1
  %76 = lshr i8 %75, 5
  %div144.i = zext i8 %76 to i32
  %arrayidx145.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div144.i
  %77 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx145.i, align 8
  %or147.i = or i32 %78, %cond139.i
  store i32 %or147.i, ptr %arrayidx145.i, align 8
  %msk149.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div144.i, i32 1
  %79 = ptrtoint ptr %msk149.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msk149.i, align 4
  %or150.i = or i32 %80, %cond139.i
  store i32 %or150.i, ptr %msk149.i, align 4
  %81 = ptrtoint ptr %factors.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %factors.i.i, align 8
  %width153.i = getelementptr %struct.clk_bit_field, ptr %82, i32 3, i32 1
  %83 = ptrtoint ptr %width153.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %width153.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool155.not.i = icmp eq i8 %84, 0
  br i1 %tobool155.not.i, label %cond.end138.i.cond.end181.i_crit_edge, label %cond.true156.i

cond.end138.i.cond.end181.i_crit_edge:            ; preds = %cond.end138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end181.i

cond.true156.i:                                   ; preds = %cond.end138.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv154.i = zext i8 %84 to i32
  %arrayidx152.i = getelementptr %struct.clk_bit_field, ptr %82, i32 3
  %85 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx152.i, align 1
  %87 = and i8 %86, 31
  %rem161.i = zext i8 %87 to i32
  %shl162.neg.i = shl nsw i32 -1, %rem161.i
  %88 = add nuw nsw i32 %conv154.i, %rem161.i
  %sub176.i = sub nsw i32 32, %88
  %shr177.i = lshr i32 -1, %sub176.i
  %and178.i = and i32 %shr177.i, %shl162.neg.i
  br label %cond.end181.i

cond.end181.i:                                    ; preds = %cond.true156.i, %cond.end138.i.cond.end181.i_crit_edge
  %cond182.i = phi i32 [ %and178.i, %cond.true156.i ], [ 0, %cond.end138.i.cond.end181.i_crit_edge ]
  %arrayidx184.i = getelementptr %struct.clk_bit_field, ptr %82, i32 3
  %89 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx184.i, align 1
  %91 = lshr i8 %90, 5
  %div187.i = zext i8 %91 to i32
  %arrayidx188.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div187.i
  %92 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx188.i, align 8
  %or190.i = or i32 %93, %cond182.i
  store i32 %or190.i, ptr %arrayidx188.i, align 8
  %msk192.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div187.i, i32 1
  %94 = ptrtoint ptr %msk192.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msk192.i, align 4
  %or193.i = or i32 %95, %cond182.i
  store i32 %or193.i, ptr %msk192.i, align 4
  %96 = trunc i64 %refin.0.i to i32
  %conv195.i = mul i32 %96, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %fvco.0.i)
  %cmp381.i = icmp ult i64 %fvco.0.i, 4294967296
  br i1 %cmp381.i, label %if.then385.i, label %if.else391.i, !prof !16

if.then385.i:                                     ; preds = %cond.end181.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv386.i = trunc i64 %fvco.0.i to i32
  %conv386.i.frozen = freeze i32 %conv386.i
  %conv195.i.frozen = freeze i32 %conv195.i
  %div389.i = udiv i32 %conv386.i.frozen, %conv195.i.frozen
  %97 = mul i32 %div389.i, %conv195.i.frozen
  %rem387.i.decomposed = sub i32 %conv386.i.frozen, %97
  %conv390.i = zext i32 %div389.i to i64
  br label %if.end395.i

if.else391.i:                                     ; preds = %cond.end181.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv195.i, i64 %fvco.0.i) #10, !srcloc !18
  %asmresult.i14.i = extractvalue { i64, i64 } %98, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %98, 1
  %shr.i15.i = lshr i64 %asmresult.i14.i, 32
  %conv.i16.i = trunc i64 %shr.i15.i to i32
  br label %if.end395.i

if.end395.i:                                      ; preds = %if.else391.i, %if.then385.i
  %fvco.1.i = phi i64 [ %conv390.i, %if.then385.i ], [ %asmresult1.i.i, %if.else391.i ]
  %__rem.0.i = phi i32 [ %rem387.i.decomposed, %if.then385.i ], [ %conv.i16.i, %if.else391.i ]
  %99 = ptrtoint ptr %factors.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %factors.i.i, align 8
  %width399.i = getelementptr %struct.clk_bit_field, ptr %100, i32 7, i32 1
  %101 = ptrtoint ptr %width399.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %width399.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool401.not.i = icmp eq i8 %102, 0
  br i1 %tobool401.not.i, label %if.end395.i.cond.end427.i_crit_edge, label %cond.true402.i

if.end395.i.cond.end427.i_crit_edge:              ; preds = %if.end395.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end427.i

cond.true402.i:                                   ; preds = %if.end395.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv400.i = zext i8 %102 to i32
  %arrayidx398.i = getelementptr %struct.clk_bit_field, ptr %100, i32 7
  %103 = ptrtoint ptr %arrayidx398.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx398.i, align 1
  %105 = and i8 %104, 31
  %rem407.i = zext i8 %105 to i32
  %shl408.neg.i = shl nsw i32 -1, %rem407.i
  %106 = add nuw nsw i32 %conv400.i, %rem407.i
  %sub422.i = sub nsw i32 32, %106
  %shr423.i = lshr i32 -1, %sub422.i
  %and424.i = and i32 %shr423.i, %shl408.neg.i
  br label %cond.end427.i

cond.end427.i:                                    ; preds = %cond.true402.i, %if.end395.i.cond.end427.i_crit_edge
  %cond428.i = phi i32 [ %and424.i, %cond.true402.i ], [ 0, %if.end395.i.cond.end427.i_crit_edge ]
  %arrayidx430.i = getelementptr %struct.clk_bit_field, ptr %100, i32 7
  %107 = ptrtoint ptr %arrayidx430.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx430.i, align 1
  %conv432.i = zext i8 %108 to i32
  %div4331.i = lshr i32 %conv432.i, 5
  %rem438.i = and i32 %conv432.i, 31
  %shl439.i = shl i32 %__rem.0.i, %rem438.i
  %and440.i = and i32 %shl439.i, %cond428.i
  %arrayidx441.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div4331.i
  %109 = ptrtoint ptr %arrayidx441.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx441.i, align 8
  %or443.i = or i32 %and440.i, %110
  store i32 %or443.i, ptr %arrayidx441.i, align 8
  %msk445.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div4331.i, i32 1
  %111 = ptrtoint ptr %msk445.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %msk445.i, align 4
  %or446.i = or i32 %112, %cond428.i
  store i32 %or446.i, ptr %msk445.i, align 4
  %113 = ptrtoint ptr %factors.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %factors.i.i, align 8
  %width449.i = getelementptr %struct.clk_bit_field, ptr %114, i32 8, i32 1
  %115 = ptrtoint ptr %width449.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %width449.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool451.not.i = icmp eq i8 %116, 0
  br i1 %tobool451.not.i, label %cond.end427.i.if.end716.i_crit_edge, label %cond.true452.i

cond.end427.i.if.end716.i_crit_edge:              ; preds = %cond.end427.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end716.i

cond.true452.i:                                   ; preds = %cond.end427.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv450.i = zext i8 %116 to i32
  %arrayidx448.i = getelementptr %struct.clk_bit_field, ptr %114, i32 8
  %117 = ptrtoint ptr %arrayidx448.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx448.i, align 1
  %119 = and i8 %118, 31
  %rem457.i = zext i8 %119 to i32
  %shl458.neg.i = shl nsw i32 -1, %rem457.i
  %120 = add nuw nsw i32 %conv450.i, %rem457.i
  %sub472.i = sub nsw i32 32, %120
  %shr473.i = lshr i32 -1, %sub472.i
  %and474.i = and i32 %shr473.i, %shl458.neg.i
  br label %if.end716.i

if.end716.i:                                      ; preds = %cond.true452.i, %cond.end427.i.if.end716.i_crit_edge
  %cond478.i = phi i32 [ %and474.i, %cond.true452.i ], [ 0, %cond.end427.i.if.end716.i_crit_edge ]
  %arrayidx480.i = getelementptr %struct.clk_bit_field, ptr %114, i32 8
  %121 = ptrtoint ptr %arrayidx480.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx480.i, align 1
  %conv482.i = zext i8 %122 to i32
  %div4832.i = lshr i32 %conv482.i, 5
  %rem492.i = and i32 %conv482.i, 31
  %conv493.i = zext i32 %__rem.0.i to i64
  %mul494.i = mul nsw i64 %refin.0.i, -1000000
  %mul495.neg.i = mul i64 %mul494.i, %conv493.i
  %sub496.i = add i64 %mul495.neg.i, %fvco.1.i
  %conv530.i = trunc i64 %sub496.i to i32
  %123 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %sub496.i) #10, !srcloc !19
  %124 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %sub496.i, i64 %123) #10, !srcloc !20
  %div6923.i = lshr i64 %124, 11
  %conv693.i = trunc i64 %div6923.i to i32
  %mul694.neg.i = mul i32 %conv693.i, -10000
  %sub695.i = add i32 %mul694.neg.i, %conv530.i
  %shr718.i = lshr i32 %cond478.i, %rem492.i
  %add719.i = add i32 %shr718.i, 1
  %mul720.i = mul i32 %sub695.i, %add719.i
  %conv721.i = zext i32 %mul720.i to i64
  %mul722.i = mul nuw nsw i64 %refin.0.i, 100
  %div7234.i = lshr exact i64 %mul722.i, 1
  %add724.i = add nuw nsw i64 %div7234.i, %conv721.i
  %conv726.i = trunc i64 %mul722.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add724.i)
  %cmp927.i = icmp ult i64 %add724.i, 4294967296
  br i1 %cmp927.i, label %if.then935.i, label %if.else941.i, !prof !16

if.then935.i:                                     ; preds = %if.end716.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv936.i = trunc i64 %add724.i to i32
  %div939.i = udiv i32 %conv936.i, %conv726.i
  br label %if.end945.i

if.else941.i:                                     ; preds = %if.end716.i
  call void @__sanitizer_cov_trace_pc() #8
  %125 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv726.i, i64 %add724.i) #10, !srcloc !18
  %asmresult1.i47.i = extractvalue { i64, i64 } %125, 1
  %extract.t136.i = trunc i64 %asmresult1.i47.i to i32
  br label %if.end945.i

if.end945.i:                                      ; preds = %if.else941.i, %if.then935.i
  %_tmp.0.off0.i = phi i32 [ %div939.i, %if.then935.i ], [ %extract.t136.i, %if.else941.i ]
  %shl949.i = shl i32 %_tmp.0.off0.i, %rem492.i
  %and950.i = and i32 %shl949.i, %cond478.i
  %arrayidx951.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div4832.i
  %126 = ptrtoint ptr %arrayidx951.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx951.i, align 8
  %or953.i = or i32 %and950.i, %127
  store i32 %or953.i, ptr %arrayidx951.i, align 8
  %msk955.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div4832.i, i32 1
  %128 = ptrtoint ptr %msk955.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %msk955.i, align 4
  %or956.i = or i32 %129, %cond478.i
  store i32 %or956.i, ptr %msk955.i, align 4
  %itable.i = getelementptr i8, ptr %hw, i32 -36
  %130 = ptrtoint ptr %itable.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %itable.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %131, align 8
  %conv.i50.i = trunc i64 %133 to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end945.i
  %i.0.i.i = phi i32 [ 0, %if.end945.i ], [ %add.i51.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i, i32 %conv.i50.i)
  %exitcond.not.i.i = icmp eq i32 %i.0.i.i, %conv.i50.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.pll_get_ibias.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.pll_get_ibias.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_get_ibias.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %add.i51.i = add i32 %i.0.i.i, 1
  %arrayidx2.i.i = getelementptr i64, ptr %131, i32 %add.i51.i
  %134 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx2.i.i, align 8
  %cmp3.not.i.i = icmp ult i64 %135, %fvco.1.i
  br i1 %cmp3.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.pll_get_ibias.exit.i_crit_edge

for.body.i.i.pll_get_ibias.exit.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_get_ibias.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

pll_get_ibias.exit.i:                             ; preds = %for.body.i.i.pll_get_ibias.exit.i_crit_edge, %for.cond.i.i.pll_get_ibias.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %i.0.i.i, %for.body.i.i.pll_get_ibias.exit.i_crit_edge ], [ %conv.i50.i, %for.cond.i.i.pll_get_ibias.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %conv.i50.i)
  %cmp5.i.i = icmp eq i32 %i.0.lcssa.i.i, %conv.i50.i
  %sub.i52.i = add i32 %conv.i50.i, -1
  %cond.i.i = select i1 %cmp5.i.i, i32 %sub.i52.i, i32 %i.0.lcssa.i.i
  %136 = ptrtoint ptr %factors.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %factors.i.i, align 8
  %width960.i = getelementptr %struct.clk_bit_field, ptr %137, i32 5, i32 1
  %138 = ptrtoint ptr %width960.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %width960.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool962.not.i = icmp eq i8 %139, 0
  br i1 %tobool962.not.i, label %pll_get_ibias.exit.i.cond.end988.i_crit_edge, label %cond.true963.i

pll_get_ibias.exit.i.cond.end988.i_crit_edge:     ; preds = %pll_get_ibias.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end988.i

cond.true963.i:                                   ; preds = %pll_get_ibias.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv961.i = zext i8 %139 to i32
  %arrayidx959.i = getelementptr %struct.clk_bit_field, ptr %137, i32 5
  %140 = ptrtoint ptr %arrayidx959.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx959.i, align 1
  %142 = and i8 %141, 31
  %rem968.i = zext i8 %142 to i32
  %shl969.neg.i = shl nsw i32 -1, %rem968.i
  %143 = add nuw nsw i32 %conv961.i, %rem968.i
  %sub983.i = sub nsw i32 32, %143
  %shr984.i = lshr i32 -1, %sub983.i
  %and985.i = and i32 %shr984.i, %shl969.neg.i
  br label %cond.end988.i

cond.end988.i:                                    ; preds = %cond.true963.i, %pll_get_ibias.exit.i.cond.end988.i_crit_edge
  %cond989.i = phi i32 [ %and985.i, %cond.true963.i ], [ 0, %pll_get_ibias.exit.i.cond.end988.i_crit_edge ]
  %arrayidx991.i = getelementptr %struct.clk_bit_field, ptr %137, i32 5
  %144 = ptrtoint ptr %arrayidx991.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx991.i, align 1
  %conv993.i = zext i8 %145 to i32
  %div9945.i = lshr i32 %conv993.i, 5
  %rem999.i = and i32 %conv993.i, 31
  %shl1000.i = shl i32 %cond.i.i, %rem999.i
  %and1001.i = and i32 %shl1000.i, %cond989.i
  %arrayidx1002.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div9945.i
  %146 = ptrtoint ptr %arrayidx1002.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx1002.i, align 8
  %or1004.i = or i32 %and1001.i, %147
  store i32 %or1004.i, ptr %arrayidx1002.i, align 8
  %msk1006.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %div9945.i, i32 1
  %148 = ptrtoint ptr %msk1006.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %msk1006.i, align 4
  %or1007.i = or i32 %149, %cond989.i
  store i32 %or1007.i, ptr %msk1006.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1008138.not.i = icmp eq i32 %1, 0
  br i1 %cmp1008138.not.i, label %cond.end988.i.cond.false1044.i_crit_edge, label %for.body.lr.ph.i

cond.end988.i.cond.false1044.i_crit_edge:         ; preds = %cond.end988.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false1044.i

for.body.lr.ph.i:                                 ; preds = %cond.end988.i
  %common1.i54.i = getelementptr i8, ptr %hw, i32 -8
  %reg24.i.i = getelementptr i8, ptr %hw, i32 -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.0141.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0139.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %msk1011.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %i.0139.i, i32 1
  %150 = ptrtoint ptr %msk1011.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %msk1011.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool1012.not.i = icmp eq i32 %151, 0
  br i1 %tobool1012.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then1013.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then1013.i:                                    ; preds = %for.body.i
  %arrayidx1010.i = getelementptr %struct.reg_cfg, ptr %call8.i.i.i, i32 %i.0139.i
  %152 = ptrtoint ptr %arrayidx1010.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx1010.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i53.i) #6
  %154 = ptrtoint ptr %reg.i53.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %reg.i53.i, align 4, !annotation !21
  %conv.i55.i = and i32 %i.0139.i, 255
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %conv.i55.i)
  %cmp.not.i56.i = icmp ugt i32 %156, %conv.i55.i
  br i1 %cmp.not.i56.i, label %if.end23.i61.i, label %do.end.i57.i, !prof !16

do.end.i57.i:                                     ; preds = %if.then1013.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef null) #6
  br label %sprd_pll_write.exit.i

if.end23.i61.i:                                   ; preds = %if.then1013.i
  %157 = ptrtoint ptr %reg24.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %reg24.i.i, align 4
  %mul.i58.i = shl nuw nsw i32 %conv.i55.i, 2
  %add.i59.i = add i32 %158, %mul.i58.i
  %159 = ptrtoint ptr %common1.i54.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %common1.i54.i, align 4
  %call.i60.i = call i32 @regmap_read(ptr noundef %160, i32 noundef %add.i59.i, ptr noundef nonnull %reg.i53.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool26.not.i.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool26.not.i.i, label %if.then27.i.i, label %if.end23.i61.i.sprd_pll_write.exit.i_crit_edge

if.end23.i61.i.sprd_pll_write.exit.i_crit_edge:   ; preds = %if.end23.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_pll_write.exit.i

if.then27.i.i:                                    ; preds = %if.end23.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  %161 = ptrtoint ptr %common1.i54.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %common1.i54.i, align 4
  %163 = ptrtoint ptr %reg.i53.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %reg.i53.i, align 4
  %neg.i.i = xor i32 %151, -1
  %and.i62.i = and i32 %164, %neg.i.i
  %or.i.i = or i32 %and.i62.i, %153
  %call29.i.i = call i32 @regmap_write(ptr noundef %162, i32 noundef %add.i59.i, i32 noundef %or.i.i) #6
  br label %sprd_pll_write.exit.i

sprd_pll_write.exit.i:                            ; preds = %if.then27.i.i, %if.end23.i61.i.sprd_pll_write.exit.i_crit_edge, %do.end.i57.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i53.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i63.i) #6
  %165 = ptrtoint ptr %val.i63.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %val.i63.i, align 4
  %166 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %conv.i55.i)
  %cmp.not.i65.i = icmp ugt i32 %167, %conv.i55.i
  br i1 %cmp.not.i65.i, label %if.end23.i72.i, label %do.end.i66.i, !prof !16

do.end.i66.i:                                     ; preds = %sprd_pll_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #6
  br label %sprd_pll_read.exit74.i

if.end23.i72.i:                                   ; preds = %sprd_pll_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %168 = ptrtoint ptr %common1.i54.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %common1.i54.i, align 4
  %170 = ptrtoint ptr %reg24.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %reg24.i.i, align 4
  %mul.i69.i = shl nuw nsw i32 %conv.i55.i, 2
  %add.i70.i = add i32 %171, %mul.i69.i
  %call.i71.i = call i32 @regmap_read(ptr noundef %169, i32 noundef %add.i70.i, ptr noundef nonnull %val.i63.i) #6
  %172 = ptrtoint ptr %val.i63.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %val.i63.i, align 4
  br label %sprd_pll_read.exit74.i

sprd_pll_read.exit74.i:                           ; preds = %if.end23.i72.i, %do.end.i66.i
  %retval.0.i73.i = phi i32 [ 0, %do.end.i66.i ], [ %173, %if.end23.i72.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i63.i) #6
  %174 = ptrtoint ptr %msk1011.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %msk1011.i, align 4
  %and1023.i = and i32 %175, %retval.0.i73.i
  %176 = ptrtoint ptr %arrayidx1010.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx1010.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and1023.i, i32 %177)
  %cmp1026.i = icmp eq i32 %and1023.i, %177
  %cond1028.i = select i1 %cmp1026.i, i32 0, i32 -14
  %or1029.i = or i32 %cond1028.i, %ret.0141.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %sprd_pll_read.exit74.i, %for.body.i.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ %or1029.i, %sprd_pll_read.exit74.i ], [ %ret.0141.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.0139.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool1031.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool1031.not.i, label %for.end.i.cond.false1044.i_crit_edge, label %for.end.i.if.end1048.i_crit_edge

for.end.i.if.end1048.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1048.i

for.end.i.cond.false1044.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false1044.i

cond.false1044.i:                                 ; preds = %for.end.i.cond.false1044.i_crit_edge, %cond.end988.i.cond.false1044.i_crit_edge
  %udelay.i = getelementptr i8, ptr %hw, i32 -28
  %178 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %udelay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv1046.i = zext i16 %179 to i32
  call void %180(i32 noundef %conv1046.i) #6
  br label %if.end1048.i

if.end1048.i:                                     ; preds = %cond.false1044.i, %for.end.i.if.end1048.i_crit_edge
  %ret.0.lcssa144.i = phi i32 [ 0, %cond.false1044.i ], [ %ret.1.i, %for.end.i.if.end1048.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #6
  br label %_sprd_pll_set_rate.exit

_sprd_pll_set_rate.exit:                          ; preds = %if.end1048.i, %if.end7.i.i.i._sprd_pll_set_rate.exit_crit_edge, %entry._sprd_pll_set_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.lcssa144.i, %if.end1048.i ], [ -12, %if.end7.i.i.i._sprd_pll_set_rate.exit_crit_edge ], [ -12, %entry._sprd_pll_set_rate.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @sprd_pll_ops, !1, !"sprd_pll_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/sprd/pll.c", i32 263, i32 22}
!2 = !{ptr @__ksymtab_sprd_pll_ops, !3, !"__ksymtab_sprd_pll_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sprd/pll.c", i32 269, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/sprd/pll.c", i32 44, i32 6}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i32 0, i32 33}
!18 = !{i64 2147986900, i64 2147987180, i64 2147987514, i64 2147987848}
!19 = !{i64 478885, i64 478912}
!20 = !{i64 479395, i64 479422, i64 479456, i64 479477}
!21 = !{!"auto-init"}
