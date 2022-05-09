; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-krait.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-krait.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+krait_mux_clk_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_krait_mux_clk_ops\09\09\09\09"
module asm "\09.long\09__crc_krait_mux_clk_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_krait_mux_clk_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22krait_mux_clk_ops\22\09\09\09\09\09"
module asm "__kstrtabns_krait_mux_clk_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+krait_div2_clk_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_krait_div2_clk_ops\09\09\09\09"
module asm "\09.long\09__crc_krait_div2_clk_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_krait_div2_clk_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22krait_div2_clk_ops\22\09\09\09\09\09"
module asm "__kstrtabns_krait_div2_clk_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@krait_mux_clk_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate_closest, ptr @krait_mux_set_parent, ptr @krait_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_krait_mux_clk_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_krait_mux_clk_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_krait_mux_clk_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @krait_mux_clk_ops to i32), ptr @__kstrtab_krait_mux_clk_ops, ptr @__kstrtabns_krait_mux_clk_ops }, section "___ksymtab_gpl+krait_mux_clk_ops", align 4
@krait_div2_clk_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @krait_div2_recalc_rate, ptr @krait_div2_round_rate, ptr null, ptr null, ptr null, ptr @krait_div2_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_krait_div2_clk_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_krait_div2_clk_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_krait_div2_clk_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @krait_div2_clk_ops to i32), ptr @__kstrtab_krait_div2_clk_ops, ptr @__kstrtabns_krait_div2_clk_ops }, section "___ksymtab_gpl+krait_div2_clk_ops", align 4
@krait_clock_reg_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"krait_clock_reg_lock\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"krait_mux_clk_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 71, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"krait_div2_clk_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 121, i32 22 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"krait_clock_reg_lock\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [32 x i8] c"../drivers/clk/qcom/clk-krait.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 18, i32 8 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_krait_div2_clk_ops, ptr @__ksymtab_krait_mux_clk_ops, ptr @krait_mux_clk_ops, ptr @krait_div2_clk_ops, ptr @krait_clock_reg_lock, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_mux_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_div2_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_clock_reg_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate_closest(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @krait_mux_set_parent(ptr nocapture noundef %hw, i8 noundef zeroext %index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @clk_mux_index_to_val(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %index) #2
  %en_mask = getelementptr i8, ptr %hw, i32 -8
  %2 = ptrtoint ptr %en_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %en_mask, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call1 = tail call zeroext i1 @__clk_is_enabled(ptr noundef %4) #2
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @krait_clock_reg_lock) #2
  %offset.i = getelementptr i8, ptr %hw, i32 -20
  %5 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset.i, align 4
  %call5.i = tail call i32 @krait_get_l2_indirect_reg(i32 noundef %6) #2
  %mask.i = getelementptr i8, ptr %hw, i32 -16
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr i8, ptr %hw, i32 -12
  %9 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %8, %10
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call5.i, %neg.i
  %and7.i = and i32 %8, %call
  %shl9.i = shl i32 %and7.i, %10
  %or.i = or i32 %and.i, %shl9.i
  %lpl.i = getelementptr i8, ptr %hw, i32 -4
  %11 = ptrtoint ptr %lpl.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lpl.i, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.__krait_mux_set_sel.exit_crit_edge, label %if.then.i

if.then.__krait_mux_set_sel.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %__krait_mux_set_sel.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %add.i = add i32 %10, 8
  %shl12.i = shl i32 %8, %add.i
  %neg13.i = xor i32 %shl12.i, -1
  %and14.i = and i32 %or.i, %neg13.i
  %shl19.i = shl i32 %and7.i, %add.i
  %or20.i = or i32 %and14.i, %shl19.i
  br label %__krait_mux_set_sel.exit

__krait_mux_set_sel.exit:                         ; preds = %if.then.i, %if.then.__krait_mux_set_sel.exit_crit_edge
  %regval.0.i = phi i32 [ %or20.i, %if.then.i ], [ %or.i, %if.then.__krait_mux_set_sel.exit_crit_edge ]
  %13 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i, align 4
  tail call void @krait_set_l2_indirect_reg(i32 noundef %14, i32 noundef %regval.0.i) #2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @krait_clock_reg_lock, i32 noundef %call2.i) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #2
  br label %if.end

if.end:                                           ; preds = %__krait_mux_set_sel.exit, %entry.if.end_crit_edge
  %reparent = getelementptr i8, ptr %hw, i32 -1
  %16 = ptrtoint ptr %reparent to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %reparent, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @krait_mux_get_parent(ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  %offset = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %call = tail call i32 @krait_get_l2_indirect_reg(i32 noundef %1) #2
  %shift = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shift, align 4
  %shr = lshr i32 %call, %3
  %mask = getelementptr i8, ptr %hw, i32 -16
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %and = and i32 %shr, %5
  %en_mask = getelementptr i8, ptr %hw, i32 -8
  %6 = ptrtoint ptr %en_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %en_mask, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %call1 = tail call i32 @clk_mux_val_to_index(ptr noundef %hw, ptr noundef %8, i32 noundef 0, i32 noundef %and) #2
  %conv = trunc i32 %call1 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @krait_div2_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %width = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %width, align 4
  %conv = zext i8 %1 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %call = tail call i32 @krait_get_l2_indirect_reg(i32 noundef %3) #2
  %shift = getelementptr i8, ptr %hw, i32 -8
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift, align 4
  %shr = lshr i32 %call, %5
  %and = and i32 %shr, %sub
  %add = shl i32 %and, 1
  %mul = add i32 %add, 2
  %add1 = add i32 %parent_rate, -1
  %sub2 = add i32 %add1, %mul
  %div3 = udiv i32 %sub2, %mul
  ret i32 %div3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @krait_div2_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef writeonly %parent_rate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #2
  %mul = shl i32 %rate, 1
  %call1 = tail call i32 @clk_hw_round_rate(ptr noundef %call, i32 noundef %mul) #2
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %parent_rate, align 4
  %sub = add i32 %call1, 1
  %div3 = lshr i32 %sub, 1
  ret i32 %div3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @krait_div2_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %width, align 4
  %conv = zext i8 %1 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %lpl = getelementptr i8, ptr %hw, i32 -4
  %2 = ptrtoint ptr %lpl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lpl, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %if.then

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %shift = getelementptr i8, ptr %hw, i32 -8
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift, align 4
  %add = add i32 %5, 8
  %shl1 = shl i32 %sub, %add
  %shl3 = shl i32 %sub, %5
  %or = or i32 %shl1, %shl3
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  %mask.0 = phi i32 [ %or, %if.then ], [ %sub, %entry.do.body4_crit_edge ]
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @krait_clock_reg_lock) #2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %call10 = tail call i32 @krait_get_l2_indirect_reg(i32 noundef %7) #2
  %neg = xor i32 %mask.0, -1
  %and = and i32 %call10, %neg
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  tail call void @krait_set_l2_indirect_reg(i32 noundef %9, i32 noundef %and) #2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @krait_clock_reg_lock, i32 noundef %call7) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__clk_is_enabled(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @krait_get_l2_indirect_reg(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @krait_set_l2_indirect_reg(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @krait_mux_clk_ops, !1, !"krait_mux_clk_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-krait.c", i32 71, i32 22}
!2 = !{ptr @__ksymtab_krait_mux_clk_ops, !3, !"__ksymtab_krait_mux_clk_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/clk-krait.c", i32 76, i32 1}
!4 = !{ptr @krait_div2_clk_ops, !5, !"krait_div2_clk_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/clk-krait.c", i32 121, i32 22}
!6 = !{ptr @__ksymtab_krait_div2_clk_ops, !7, !"__ksymtab_krait_div2_clk_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/clk-krait.c", i32 126, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/clk-krait.c", i32 18, i32 8}
!10 = !{ptr @krait_clock_reg_lock, !9, !"krait_clock_reg_lock", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i8 0, i8 2}
!21 = !{i64 2152272792}
