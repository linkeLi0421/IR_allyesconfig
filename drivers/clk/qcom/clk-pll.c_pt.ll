; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_pll_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_pll_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_pll_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_pll_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_pll_vote_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_pll_vote_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_pll_vote_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_pll_vote_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_pll_vote_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_pll_vote_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_pll_configure_sr\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_pll_configure_sr\09\09\09\09"
module asm "\09.long\09__crc_clk_pll_configure_sr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_pll_configure_sr:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_pll_configure_sr\22\09\09\09\09\09"
module asm "__kstrtabns_clk_pll_configure_sr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_pll_configure_sr_hpm_lp\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_pll_configure_sr_hpm_lp\09\09\09\09"
module asm "\09.long\09__crc_clk_pll_configure_sr_hpm_lp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_pll_configure_sr_hpm_lp:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_pll_configure_sr_hpm_lp\22\09\09\09\09\09"
module asm "__kstrtabns_clk_pll_configure_sr_hpm_lp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_pll_sr2_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_pll_sr2_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_pll_sr2_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_pll_sr2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_pll_sr2_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_pll_sr2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pll_freq_tbl = type { i32, i16, i16, i16, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.clk_pll = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.clk_regmap }
%struct.pll_config = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@clk_pll_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr @clk_pll_determine_rate, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_pll_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_pll_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_pll_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_pll_ops to i32), ptr @__kstrtab_clk_pll_ops, ptr @__kstrtabns_clk_pll_ops }, section "___ksymtab_gpl+clk_pll_ops", align 4
@clk_pll_vote_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_vote_enable, ptr @clk_disable_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_pll_vote_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_pll_vote_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_pll_vote_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_pll_vote_ops to i32), ptr @__kstrtab_clk_pll_vote_ops, ptr @__kstrtabns_clk_pll_vote_ops }, section "___ksymtab_gpl+clk_pll_vote_ops", align 4
@__kstrtab_clk_pll_configure_sr = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_pll_configure_sr = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_pll_configure_sr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_pll_configure_sr to i32), ptr @__kstrtab_clk_pll_configure_sr, ptr @__kstrtabns_clk_pll_configure_sr }, section "___ksymtab_gpl+clk_pll_configure_sr", align 4
@__kstrtab_clk_pll_configure_sr_hpm_lp = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_pll_configure_sr_hpm_lp = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_pll_configure_sr_hpm_lp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_pll_configure_sr_hpm_lp to i32), ptr @__kstrtab_clk_pll_configure_sr_hpm_lp, ptr @__kstrtabns_clk_pll_configure_sr_hpm_lp }, section "___ksymtab_gpl+clk_pll_configure_sr_hpm_lp", align 4
@clk_pll_sr2_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_sr2_enable, ptr @clk_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr @clk_pll_determine_rate, ptr null, ptr null, ptr @clk_pll_sr2_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_pll_sr2_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_pll_sr2_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_pll_sr2_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_pll_sr2_ops to i32), ptr @__kstrtab_clk_pll_sr2_ops, ptr @__kstrtabns_clk_pll_sr2_ops }, section "___ksymtab_gpl+clk_pll_sr2_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/qcom/clk-pll.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s didn't enable after voting for it!\0A\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"clk_pll_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 170, i32 22 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"clk_pll_vote_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 212, i32 22 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"clk_pll_sr2_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 329, i32 22 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [30 x i8] c"../drivers/clk/qcom/clk-pll.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 196, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_clk_pll_configure_sr, ptr @__ksymtab_clk_pll_configure_sr_hpm_lp, ptr @__ksymtab_clk_pll_ops, ptr @__ksymtab_clk_pll_sr2_ops, ptr @__ksymtab_clk_pll_vote_ops, ptr @clk_pll_ops, ptr @clk_pll_vote_ops, ptr @clk_pll_sr2_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_vote_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_sr2_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !28
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mode_reg = getelementptr i8, ptr %hw, i32 -16
  %3 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp = icmp ne i32 %and, 7
  %and2 = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = and i1 %cmp, %tobool3.not
  br i1 %or.cond, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode_reg, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 2147480) #3
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode_reg, align 4
  %call.i40 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %15, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool17.not = icmp eq i32 %call.i40, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 10737400) #3
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode_reg, align 4
  %call.i41 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i41, %if.end19 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ], [ %call.i40, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pll_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !28
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mode_reg = getelementptr i8, ptr %hw, i32 -16
  %3 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode_reg, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #3
  %0 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %l, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #3
  %1 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %m, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #3
  %2 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %n, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #3
  %3 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %config, align 4, !annotation !28
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %l) #3
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %m_reg = getelementptr i8, ptr %hw, i32 -28
  %10 = ptrtoint ptr %m_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_reg, align 4
  %call5 = call i32 @regmap_read(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %m) #3
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %n_reg = getelementptr i8, ptr %hw, i32 -24
  %14 = ptrtoint ptr %n_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_reg, align 4
  %call8 = call i32 @regmap_read(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %n) #3
  %16 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %l, align 4
  %and = and i32 %17, 1023
  store i32 %and, ptr %l, align 4
  %18 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m, align 4
  %and9 = and i32 %19, 524287
  store i32 %and9, ptr %m, align 4
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  %and10 = and i32 %21, 524287
  store i32 %and10, ptr %n, align 4
  %mul = mul i32 %and, %parent_rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %entry.if.end203_crit_edge, label %if.then

entry.if.end203_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end203

if.then:                                          ; preds = %entry
  %conv = zext i32 %parent_rate to i64
  %conv11 = zext i32 %and9 to i64
  %mul12 = mul nuw nsw i64 %conv11, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul12)
  %cmp184 = icmp ult i64 %mul12, 4294967296
  br i1 %cmp184, label %if.then188, label %if.else194, !prof !29

if.then188:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %conv189 = trunc i64 %mul12 to i32
  %div192 = udiv i32 %conv189, %and10
  br label %if.end198

if.else194:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %22 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and10, i64 %mul12) #6, !srcloc !30
  %asmresult1.i = extractvalue { i64, i64 } %22, 1
  %extract.t336 = trunc i64 %asmresult1.i to i32
  br label %if.end198

if.end198:                                        ; preds = %if.else194, %if.then188
  %tmp1.0.off0 = phi i32 [ %div192, %if.then188 ], [ %extract.t336, %if.else194 ]
  %conv202 = add i32 %tmp1.0.off0, %mul
  br label %if.end203

if.end203:                                        ; preds = %if.end198, %entry.if.end203_crit_edge
  %rate.0 = phi i32 [ %conv202, %if.end198 ], [ %mul, %entry.if.end203_crit_edge ]
  %post_div_width = getelementptr i8, ptr %hw, i32 -7
  %23 = ptrtoint ptr %post_div_width to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %post_div_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool204.not = icmp eq i8 %24, 0
  br i1 %tobool204.not, label %if.end203.if.end218_crit_edge, label %if.then205

if.end203.if.end218_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end218

if.then205:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %config_reg = getelementptr i8, ptr %hw, i32 -20
  %27 = ptrtoint ptr %config_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %config_reg, align 4
  %call208 = call i32 @regmap_read(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %config) #3
  %post_div_shift = getelementptr i8, ptr %hw, i32 -6
  %29 = ptrtoint ptr %post_div_shift to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %post_div_shift, align 2
  %conv209 = zext i8 %30 to i32
  %31 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %config, align 4
  %shr210 = lshr i32 %32, %conv209
  %33 = ptrtoint ptr %post_div_width to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %post_div_width, align 1
  %conv212 = zext i8 %34 to i32
  %notmask = shl nsw i32 -1, %conv212
  %sub214 = xor i32 %notmask, -1
  %and215 = and i32 %shr210, %sub214
  %add216 = add i32 %and215, 1
  %div217 = udiv i32 %rate.0, %add216
  br label %if.end218

if.end218:                                        ; preds = %if.then205, %if.end203.if.end218_crit_edge
  %rate.1 = phi i32 [ %div217, %if.then205 ], [ %rate.0, %if.end203.if.end218_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #3
  ret i32 %rate.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_determine_rate(ptr nocapture noundef readonly %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %freq_tbl = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %freq_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freq_tbl, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %for.cond.preheader.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

for.cond.preheader.i:                             ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not9.i = icmp eq i32 %5, 0
  br i1 %tobool1.not9.i, label %for.cond.preheader.i.if.then_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %6 = phi i32 [ %8, %for.inc.i.for.body.i_crit_edge ], [ %5, %for.cond.preheader.i.for.body.i_crit_edge ]
  %f.addr.010.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp.not.i = icmp ult i32 %6, %3
  br i1 %cmp.not.i, label %for.inc.i, label %find_freq.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.pll_freq_tbl, ptr %f.addr.010.i, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr.i, align 4
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

find_freq.exit:                                   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %f.addr.010.i, null
  br i1 %tobool.not, label %find_freq.exit.if.then_crit_edge, label %if.else

find_freq.exit.if.then_crit_edge:                 ; preds = %find_freq.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %find_freq.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %for.cond.preheader.i.if.then_crit_edge, %entry.if.then_crit_edge
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %best_parent_rate, align 4
  %call2 = tail call i32 @clk_pll_recalc_rate(ptr noundef %hw, i32 noundef %10)
  br label %if.end

if.else:                                          ; preds = %find_freq.exit
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %f.addr.010.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f.addr.010.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %call2, %if.then ], [ %12, %if.else ]
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %req, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %p_rate) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mode, align 4, !annotation !28
  %freq_tbl = getelementptr i8, ptr %hw, i32 -4
  %1 = ptrtoint ptr %freq_tbl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %freq_tbl, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not9.i = icmp eq i32 %4, 0
  br i1 %tobool1.not9.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %5 = phi i32 [ %7, %for.inc.i.for.body.i_crit_edge ], [ %4, %for.cond.preheader.i.for.body.i_crit_edge ]
  %f.addr.010.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %2, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp.not.i = icmp ult i32 %5, %rate
  br i1 %cmp.not.i, label %for.inc.i, label %find_freq.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.pll_freq_tbl, ptr %f.addr.010.i, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i, align 4
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

find_freq.exit:                                   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %f.addr.010.i, null
  br i1 %tobool.not, label %find_freq.exit.cleanup_crit_edge, label %if.end

find_freq.exit.cleanup_crit_edge:                 ; preds = %find_freq.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %find_freq.exit
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %mode_reg = getelementptr i8, ptr %hw, i32 -16
  %10 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode_reg, align 4
  %call2 = call i32 @regmap_read(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %mode) #3
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %and = and i32 %13, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp = icmp eq i32 %and, 7
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #3
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !28
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode_reg, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %val.i) #3
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %and.i = and i32 %20, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i46 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i46, label %if.end.i, label %if.then4.clk_pll_disable.exit_crit_edge

if.then4.clk_pll_disable.exit_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_pll_disable.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %23 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode_reg, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %24, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %clk_pll_disable.exit

clk_pll_disable.exit:                             ; preds = %if.end.i, %if.then4.clk_pll_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #3
  br label %if.end5

if.end5:                                          ; preds = %clk_pll_disable.exit, %if.end.if.end5_crit_edge
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  %l = getelementptr inbounds %struct.pll_freq_tbl, ptr %f.addr.010.i, i32 0, i32 1
  %29 = ptrtoint ptr %l to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %l, align 4
  %conv = zext i16 %30 to i32
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %28, i32 noundef 1023, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %m_reg = getelementptr i8, ptr %hw, i32 -28
  %33 = ptrtoint ptr %m_reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %m_reg, align 4
  %m = getelementptr inbounds %struct.pll_freq_tbl, ptr %f.addr.010.i, i32 0, i32 2
  %35 = ptrtoint ptr %m to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %m, align 2
  %conv11 = zext i16 %36 to i32
  %call.i47 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %34, i32 noundef 524287, i32 noundef %conv11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %n_reg = getelementptr i8, ptr %hw, i32 -24
  %39 = ptrtoint ptr %n_reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_reg, align 4
  %n = getelementptr inbounds %struct.pll_freq_tbl, ptr %f.addr.010.i, i32 0, i32 3
  %41 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %n, align 4
  %conv15 = zext i16 %42 to i32
  %call.i48 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %40, i32 noundef 524287, i32 noundef %conv15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %config_reg = getelementptr i8, ptr %hw, i32 -20
  %45 = ptrtoint ptr %config_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %config_reg, align 4
  %ibits = getelementptr inbounds %struct.pll_freq_tbl, ptr %f.addr.010.i, i32 0, i32 4
  %47 = ptrtoint ptr %ibits to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ibits, align 4
  %call19 = call i32 @regmap_write(ptr noundef %44, i32 noundef %46, i32 noundef %48) #3
  br i1 %cmp, label %if.then21, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then21:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %call22 = call i32 @clk_pll_enable(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end5.cleanup_crit_edge, %find_freq.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %find_freq.exit.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_vote_enable(ptr noundef %hw) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #3
  %call2 = tail call i32 @clk_enable_regmap(ptr noundef %hw) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #3
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !28
  %call.i = tail call ptr @clk_hw_get_name(ptr noundef %call) #3
  %regmap.i = getelementptr i8, ptr %call, i32 12
  %status_reg.i = getelementptr i8, ptr %call, i32 -12
  %status_bit.i = getelementptr i8, ptr %call, i32 -8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end
  %count.032.i = phi i32 [ 200, %if.end ], [ %dec.i, %if.end5.i.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %3 = ptrtoint ptr %status_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status_reg.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.wait_for_pll.exit_crit_edge

for.body.i.wait_for_pll.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %wait_for_pll.exit

if.end.i:                                         ; preds = %for.body.i
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = ptrtoint ptr %status_bit.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status_bit.i, align 4
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.wait_for_pll.exit_crit_edge

if.end.i.wait_for_pll.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %wait_for_pll.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748) #3
  %dec.i = add nsw i32 %count.032.i, -1
  %cmp.i = icmp ugt i32 %count.032.i, 1
  br i1 %cmp.i, label %if.end5.i.for.body.i_crit_edge, label %do.end.i

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call.i) #3
  br label %wait_for_pll.exit

wait_for_pll.exit:                                ; preds = %do.end.i, %if.end.i.wait_for_pll.exit_crit_edge, %for.body.i.wait_for_pll.exit_crit_edge
  %retval.0.i = phi i32 [ -110, %do.end.i ], [ %call2.i, %for.body.i.wait_for_pll.exit_crit_edge ], [ 0, %if.end.i.wait_for_pll.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #3
  br label %cleanup

cleanup:                                          ; preds = %wait_for_pll.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %wait_for_pll.exit ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_pll_configure_sr(ptr nocapture noundef readonly %pll, ptr noundef %regmap, ptr nocapture noundef readonly %config, i1 noundef zeroext %fsm_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pll, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %config, align 4
  %conv.i = zext i16 %3 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %1, i32 noundef %conv.i) #3
  %m_reg.i = getelementptr inbounds %struct.clk_pll, ptr %pll, i32 0, i32 1
  %4 = ptrtoint ptr %m_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_reg.i, align 4
  %m.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 1
  %6 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %5, i32 noundef %7) #3
  %n_reg.i = getelementptr inbounds %struct.clk_pll, ptr %pll, i32 0, i32 2
  %8 = ptrtoint ptr %n_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_reg.i, align 4
  %n.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 2
  %10 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %9, i32 noundef %11) #3
  %vco_val.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 3
  %12 = ptrtoint ptr %vco_val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vco_val.i, align 4
  %pre_div_val.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 5
  %14 = ptrtoint ptr %pre_div_val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pre_div_val.i, align 4
  %post_div_val.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 7
  %16 = ptrtoint ptr %post_div_val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %post_div_val.i, align 4
  %mn_ena_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 9
  %18 = ptrtoint ptr %mn_ena_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mn_ena_mask.i, align 4
  %main_output_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 10
  %20 = ptrtoint ptr %main_output_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %main_output_mask.i, align 4
  %aux_output_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 11
  %22 = ptrtoint ptr %aux_output_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aux_output_mask.i, align 4
  %or.i = or i32 %21, %19
  %or3.i = or i32 %23, %or.i
  %or4.i = or i32 %or3.i, %13
  %or5.i = or i32 %or4.i, %15
  %or6.i = or i32 %or5.i, %17
  %vco_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 4
  %24 = ptrtoint ptr %vco_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vco_mask.i, align 4
  %pre_div_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 6
  %26 = ptrtoint ptr %pre_div_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pre_div_mask.i, align 4
  %post_div_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 8
  %28 = ptrtoint ptr %post_div_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %post_div_mask.i, align 4
  %or10.i = or i32 %or3.i, %25
  %or12.i = or i32 %or10.i, %27
  %or14.i = or i32 %or12.i, %29
  %config_reg.i = getelementptr inbounds %struct.clk_pll, ptr %pll, i32 0, i32 3
  %30 = ptrtoint ptr %config_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %config_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %31, i32 noundef %or14.i, i32 noundef %or6.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br i1 %fsm_mode, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mode_reg = getelementptr inbounds %struct.clk_pll, ptr %pll, i32 0, i32 4
  %32 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode_reg, align 4
  tail call void @qcom_pll_set_fsm_mode(ptr noundef %regmap, i32 noundef %33, i8 noundef zeroext 1, i8 noundef zeroext 8) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_pll_set_fsm_mode(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_pll_configure_sr_hpm_lp(ptr nocapture noundef readonly %pll, ptr noundef %regmap, ptr nocapture noundef readonly %config, i1 noundef zeroext %fsm_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pll, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %config, align 4
  %conv.i = zext i16 %3 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %1, i32 noundef %conv.i) #3
  %m_reg.i = getelementptr inbounds %struct.clk_pll, ptr %pll, i32 0, i32 1
  %4 = ptrtoint ptr %m_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_reg.i, align 4
  %m.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 1
  %6 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %5, i32 noundef %7) #3
  %n_reg.i = getelementptr inbounds %struct.clk_pll, ptr %pll, i32 0, i32 2
  %8 = ptrtoint ptr %n_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_reg.i, align 4
  %n.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 2
  %10 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %9, i32 noundef %11) #3
  %vco_val.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 3
  %12 = ptrtoint ptr %vco_val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vco_val.i, align 4
  %pre_div_val.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 5
  %14 = ptrtoint ptr %pre_div_val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pre_div_val.i, align 4
  %post_div_val.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 7
  %16 = ptrtoint ptr %post_div_val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %post_div_val.i, align 4
  %mn_ena_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 9
  %18 = ptrtoint ptr %mn_ena_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mn_ena_mask.i, align 4
  %main_output_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 10
  %20 = ptrtoint ptr %main_output_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %main_output_mask.i, align 4
  %aux_output_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 11
  %22 = ptrtoint ptr %aux_output_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aux_output_mask.i, align 4
  %or.i = or i32 %21, %19
  %or3.i = or i32 %23, %or.i
  %or4.i = or i32 %or3.i, %13
  %or5.i = or i32 %or4.i, %15
  %or6.i = or i32 %or5.i, %17
  %vco_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 4
  %24 = ptrtoint ptr %vco_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vco_mask.i, align 4
  %pre_div_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 6
  %26 = ptrtoint ptr %pre_div_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pre_div_mask.i, align 4
  %post_div_mask.i = getelementptr inbounds %struct.pll_config, ptr %config, i32 0, i32 8
  %28 = ptrtoint ptr %post_div_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %post_div_mask.i, align 4
  %or10.i = or i32 %or3.i, %25
  %or12.i = or i32 %or10.i, %27
  %or14.i = or i32 %or12.i, %29
  %config_reg.i = getelementptr inbounds %struct.clk_pll, ptr %pll, i32 0, i32 3
  %30 = ptrtoint ptr %config_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %config_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %31, i32 noundef %or14.i, i32 noundef %or6.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br i1 %fsm_mode, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mode_reg = getelementptr inbounds %struct.clk_pll, ptr %pll, i32 0, i32 4
  %32 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode_reg, align 4
  tail call void @qcom_pll_set_fsm_mode(ptr noundef %regmap, i32 noundef %33, i8 noundef zeroext 1, i8 noundef zeroext 0) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_sr2_enable(ptr noundef %hw) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mode, align 4, !annotation !28
  %regmap = getelementptr %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mode_reg = getelementptr i8, ptr %hw, i32 -16
  %3 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %mode) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode_reg, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %8, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 2147480) #3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_reg, align 4
  %call.i41 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool13.not = icmp eq i32 %call.i41, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #3
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !28
  %call.i42 = call ptr @clk_hw_get_name(ptr noundef %hw) #3
  %status_reg.i = getelementptr i8, ptr %hw, i32 -12
  %status_bit.i = getelementptr i8, ptr %hw, i32 -8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end15
  %count.032.i = phi i32 [ 200, %if.end15 ], [ %dec.i, %if.end5.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %status_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status_reg.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %val.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.wait_for_pll.exit.thread_crit_edge

for.body.i.wait_for_pll.exit.thread_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %wait_for_pll.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %21 = ptrtoint ptr %status_bit.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %status_bit.i, align 4
  %conv.i = zext i8 %22 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end19

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748) #3
  %dec.i = add nsw i32 %count.032.i, -1
  %cmp.i = icmp ugt i32 %count.032.i, 1
  br i1 %cmp.i, label %if.end5.i.for.body.i_crit_edge, label %do.end.i

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call.i42) #3
  br label %wait_for_pll.exit.thread

wait_for_pll.exit.thread:                         ; preds = %do.end.i, %for.body.i.wait_for_pll.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -110, %do.end.i ], [ %call2.i, %for.body.i.wait_for_pll.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #3
  br label %cleanup

if.end19:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #3
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %26 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode_reg, align 4
  %call.i43 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %27, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %wait_for_pll.exit.thread, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i43, %if.end19 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i41, %if.end8.cleanup_crit_edge ], [ %retval.0.i.ph, %wait_for_pll.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_sr2_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %prate) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mode, align 4, !annotation !28
  %freq_tbl = getelementptr i8, ptr %hw, i32 -4
  %1 = ptrtoint ptr %freq_tbl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %freq_tbl, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not9.i = icmp eq i32 %4, 0
  br i1 %tobool1.not9.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %5 = phi i32 [ %7, %for.inc.i.for.body.i_crit_edge ], [ %4, %for.cond.preheader.i.for.body.i_crit_edge ]
  %f.addr.010.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %2, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp.not.i = icmp ult i32 %5, %rate
  br i1 %cmp.not.i, label %for.inc.i, label %find_freq.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.pll_freq_tbl, ptr %f.addr.010.i, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i, align 4
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

find_freq.exit:                                   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %f.addr.010.i, null
  br i1 %tobool.not, label %find_freq.exit.cleanup_crit_edge, label %if.end

find_freq.exit.cleanup_crit_edge:                 ; preds = %find_freq.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %find_freq.exit
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %mode_reg = getelementptr i8, ptr %hw, i32 -16
  %10 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode_reg, align 4
  %call2 = call i32 @regmap_read(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %mode) #3
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %and = and i32 %13, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp = icmp eq i32 %and, 7
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #3
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !28
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode_reg, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %val.i) #3
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %and.i = and i32 %20, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i40 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i40, label %if.end.i, label %if.then4.clk_pll_disable.exit_crit_edge

if.then4.clk_pll_disable.exit_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_pll_disable.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %23 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode_reg, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %24, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %clk_pll_disable.exit

clk_pll_disable.exit:                             ; preds = %if.end.i, %if.then4.clk_pll_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #3
  br label %if.end5

if.end5:                                          ; preds = %clk_pll_disable.exit, %if.end.if.end5_crit_edge
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  %l = getelementptr inbounds %struct.pll_freq_tbl, ptr %f.addr.010.i, i32 0, i32 1
  %29 = ptrtoint ptr %l to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %l, align 4
  %conv = zext i16 %30 to i32
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %28, i32 noundef 1023, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %m_reg = getelementptr i8, ptr %hw, i32 -28
  %33 = ptrtoint ptr %m_reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %m_reg, align 4
  %m = getelementptr inbounds %struct.pll_freq_tbl, ptr %f.addr.010.i, i32 0, i32 2
  %35 = ptrtoint ptr %m to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %m, align 2
  %conv11 = zext i16 %36 to i32
  %call.i41 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %34, i32 noundef 524287, i32 noundef %conv11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %n_reg = getelementptr i8, ptr %hw, i32 -24
  %39 = ptrtoint ptr %n_reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_reg, align 4
  %n = getelementptr inbounds %struct.pll_freq_tbl, ptr %f.addr.010.i, i32 0, i32 3
  %41 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %n, align 4
  %conv15 = zext i16 %42 to i32
  %call.i42 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %40, i32 noundef 524287, i32 noundef %conv15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br i1 %cmp, label %if.then18, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then18:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %call19 = call i32 @clk_pll_sr2_enable(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end5.cleanup_crit_edge, %find_freq.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %find_freq.exit.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.end5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @clk_pll_ops, !1, !"clk_pll_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-pll.c", i32 170, i32 22}
!2 = !{ptr @__ksymtab_clk_pll_ops, !3, !"__ksymtab_clk_pll_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/clk-pll.c", i32 177, i32 1}
!4 = !{ptr @clk_pll_vote_ops, !5, !"clk_pll_vote_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/clk-pll.c", i32 212, i32 22}
!6 = !{ptr @__ksymtab_clk_pll_vote_ops, !7, !"__ksymtab_clk_pll_vote_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/clk-pll.c", i32 216, i32 1}
!8 = !{ptr @__ksymtab_clk_pll_configure_sr, !9, !"__ksymtab_clk_pll_configure_sr", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/clk-pll.c", i32 252, i32 1}
!10 = !{ptr @__ksymtab_clk_pll_configure_sr_hpm_lp, !11, !"__ksymtab_clk_pll_configure_sr_hpm_lp", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/clk-pll.c", i32 261, i32 1}
!12 = !{ptr @clk_pll_sr2_ops, !13, !"clk_pll_sr2_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/clk-pll.c", i32 329, i32 22}
!14 = !{ptr @__ksymtab_clk_pll_sr2_ops, !15, !"__ksymtab_clk_pll_sr2_ops", i1 false, i1 false}
!15 = !{!"../drivers/clk/qcom/clk-pll.c", i32 336, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/qcom/clk-pll.c", i32 196, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2148606131, i64 2148606411, i64 2148606745, i64 2148607079}
