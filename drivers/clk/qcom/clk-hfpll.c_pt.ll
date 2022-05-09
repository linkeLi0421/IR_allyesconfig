; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-hfpll.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-hfpll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_ops_hfpll\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_ops_hfpll\09\09\09\09"
module asm "\09.long\09__crc_clk_ops_hfpll\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_ops_hfpll:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_ops_hfpll\22\09\09\09\09\09"
module asm "__kstrtabns_clk_ops_hfpll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.hfpll_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32 }

@clk_ops_hfpll = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_hfpll_enable, ptr @clk_hfpll_disable, ptr @hfpll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_hfpll_recalc_rate, ptr @clk_hfpll_round_rate, ptr null, ptr null, ptr null, ptr @clk_hfpll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_hfpll_init, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_ops_hfpll = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_ops_hfpll = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_ops_hfpll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_ops_hfpll to i32), ptr @__kstrtab_clk_ops_hfpll, ptr @__kstrtabns_clk_ops_hfpll }, section "___ksymtab_gpl+clk_ops_hfpll", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/qcom/clk-hfpll.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HFPLL %s is ON, but not locked!\0A\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"clk_ops_hfpll\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 237, i32 22 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [32 x i8] c"../drivers/clk/qcom/clk-hfpll.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 215, i32 4 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_clk_ops_hfpll, ptr @clk_ops_hfpll, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_ops_hfpll to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_hfpll_enable(ptr noundef %hw) #0 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regmap1 = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #5
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mode, align 4, !annotation !16
  %lock = getelementptr i8, ptr %hw, i32 28
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call8 = call i32 @regmap_read(ptr noundef %3, i32 noundef %6, ptr noundef nonnull %mode) #5
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  %and = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @__clk_hfpll_enable(ptr noundef %hw)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_hfpll_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %lock = getelementptr i8, ptr %hw, i32 28
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regmap1.i = getelementptr i8, ptr %hw, i32 12
  %2 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfpll_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regmap1 = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #5
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mode, align 4, !annotation !16
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %3, i32 noundef %6, ptr noundef nonnull %mode) #5
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  %and = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp = icmp eq i32 %and, 7
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #5
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_hfpll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %l_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regmap1 = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l_val) #5
  %4 = ptrtoint ptr %l_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %l_val, align 4, !annotation !16
  %l_reg = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %l_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_reg, align 4
  %call2 = call i32 @regmap_read(ptr noundef %3, i32 noundef %6, ptr noundef nonnull %l_val) #5
  %7 = ptrtoint ptr %l_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l_val, align 4
  %mul = mul i32 %8, %parent_rate
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_val) #5
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_hfpll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %min_rate = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_rate, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %rate)
  %max_rate = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_rate, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %8 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_rate, align 4
  %add = add i32 %9, -1
  %sub = add i32 %add, %7
  %10 = urem i32 %sub, %9
  %mul = sub i32 %sub, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %6)
  %cmp9 = icmp ugt i32 %mul, %6
  %sub10 = select i1 %cmp9, i32 %9, i32 0
  %rrate.0 = sub i32 %mul, %sub10
  ret i32 %rrate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_hfpll_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regmap1 = getelementptr %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !16
  %div = udiv i32 %rate, %parent_rate
  %lock = getelementptr i8, ptr %hw, i32 28
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call8 = tail call zeroext i1 @__clk_is_enabled(ptr noundef %6) #5
  br i1 %call8, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap1, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %12, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %user_reg = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %user_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %user_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %if.end.if.end22_crit_edge, label %land.lhs.true

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %user_vco_mask = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %user_vco_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %user_vco_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end22_crit_edge, label %if.then11

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then11:                                        ; preds = %land.lhs.true
  %call13 = call i32 @regmap_read(ptr noundef %3, i32 noundef %14, ptr noundef nonnull %val) #5
  %low_vco_max_rate = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %low_vco_max_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %low_vco_max_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %rate)
  %cmp14.not = icmp ult i32 %18, %rate
  %19 = ptrtoint ptr %user_vco_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %user_vco_mask, align 4
  br i1 %cmp14.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %20, -1
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and = and i32 %22, %neg
  br label %if.end19

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %or = or i32 %24, %20
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16
  %storemerge = phi i32 [ %or, %if.else ], [ %and, %if.then16 ]
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge, ptr %val, align 4
  %26 = ptrtoint ptr %user_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %user_reg, align 4
  %call21 = call i32 @regmap_write(ptr noundef %3, i32 noundef %27, i32 noundef %storemerge) #5
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %land.lhs.true.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %l_reg = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %l_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %l_reg, align 4
  %call23 = call i32 @regmap_write(ptr noundef %3, i32 noundef %29, i32 noundef %div) #5
  br i1 %call8, label %if.then25, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @__clk_hfpll_enable(ptr noundef %hw)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_hfpll_init(ptr noundef %hw) #0 align 64 {
entry:
  %mode = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regmap1 = getelementptr %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #5
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mode, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %status, align 4, !annotation !16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %3, i32 noundef %7, ptr noundef nonnull %mode) #5
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp.not = icmp eq i32 %9, 7
  br i1 %cmp.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %status_reg = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call5 = call i32 @regmap_read(ptr noundef %3, i32 noundef %11, ptr noundef nonnull %status) #5
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %lock_bit = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %lock_bit to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lock_bit, align 4
  %conv = zext i8 %15 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call13 = call ptr @__clk_get_name(ptr noundef %17) #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call13) #5
  %lock.i = getelementptr i8, ptr %hw, i32 28
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap1, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %entry.cleanup.sink.split_crit_edge
  call fastcc void @__clk_hfpll_init_once(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__clk_hfpll_enable(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regmap1 = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !16
  tail call fastcc void @__clk_hfpll_init_once(ptr noundef %hw)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %6, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %9, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %status_reg = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %lock_bit = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %12 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status_reg, align 4
  %call6 = call i32 @regmap_read(ptr noundef %3, i32 noundef %13, ptr noundef nonnull %val) #5
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %16 = ptrtoint ptr %lock_bit to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lock_bit, align 4
  %conv = zext i8 %17 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %15
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.body_crit_edge, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 12884880) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body.if.end_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %call.i21 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__clk_hfpll_init_once(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regmap1 = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %init_done = getelementptr i8, ptr %hw, i32 -4
  %4 = ptrtoint ptr %init_done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %config_val = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %config_val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %config_reg = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %config_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_reg, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %9, i32 noundef %7) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %m_reg = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %m_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_reg, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %11, i32 noundef 0) #5
  %n_reg = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %n_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_reg, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %13, i32 noundef 1) #5
  %user_reg = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %user_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %user_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %if.end8.if.end20_crit_edge, label %if.then12

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then12:                                        ; preds = %if.end8
  %user_val = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %user_val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %user_val, align 4
  %call13 = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #5
  %user_vco_mask = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %user_vco_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %user_vco_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %land.lhs.true

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %low_vco_max_rate = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %low_vco_max_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %low_vco_max_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %21)
  %cmp = icmp ugt i32 %call13, %21
  %or = select i1 %cmp, i32 %19, i32 0
  %spec.select = or i32 %or, %17
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.then12.if.end17_crit_edge
  %regval.0 = phi i32 [ %17, %if.then12.if.end17_crit_edge ], [ %spec.select, %land.lhs.true ]
  %22 = ptrtoint ptr %user_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %user_reg, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %23, i32 noundef %regval.0) #5
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %if.end8.if.end20_crit_edge
  %droop_reg = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %droop_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %droop_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool21.not = icmp eq i32 %25, 0
  br i1 %tobool21.not, label %if.end20.if.end25_crit_edge, label %if.then22

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %droop_val = getelementptr inbounds %struct.hfpll_data, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %droop_val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %droop_val, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %25, i32 noundef %27) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  %28 = ptrtoint ptr %init_done to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %init_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__clk_is_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @clk_ops_hfpll, !1, !"clk_ops_hfpll", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-hfpll.c", i32 237, i32 22}
!2 = !{ptr @__ksymtab_clk_ops_hfpll, !3, !"__ksymtab_clk_ops_hfpll", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/clk-hfpll.c", i32 246, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/clk-hfpll.c", i32 215, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"auto-init"}
!17 = !{!"branch_weights", i32 1, i32 2000}
