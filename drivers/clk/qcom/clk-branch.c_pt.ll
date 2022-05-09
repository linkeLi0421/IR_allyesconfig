; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-branch.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-branch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_branch_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_branch_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_branch_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_branch_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_branch_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_branch_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_branch2_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_branch2_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_branch2_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_branch2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_branch2_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_branch2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_branch2_aon_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_branch2_aon_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_branch2_aon_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_branch2_aon_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_branch2_aon_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_branch2_aon_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_branch_simple_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_branch_simple_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_branch_simple_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_branch_simple_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_branch_simple_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_branch_simple_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_branch_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_branch_enable, ptr @clk_branch_disable, ptr @clk_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_branch_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_branch_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_branch_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_branch_ops to i32), ptr @__kstrtab_clk_branch_ops, ptr @__kstrtabns_clk_branch_ops }, section "___ksymtab_gpl+clk_branch_ops", align 4
@clk_branch2_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_branch2_enable, ptr @clk_branch2_disable, ptr @clk_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_branch2_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_branch2_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_branch2_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_branch2_ops to i32), ptr @__kstrtab_clk_branch2_ops, ptr @__kstrtabns_clk_branch2_ops }, section "___ksymtab_gpl+clk_branch2_ops", align 4
@clk_branch2_aon_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_branch2_enable, ptr null, ptr @clk_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_branch2_aon_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_branch2_aon_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_branch2_aon_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_branch2_aon_ops to i32), ptr @__kstrtab_clk_branch2_aon_ops, ptr @__kstrtabns_clk_branch2_aon_ops }, section "___ksymtab_gpl+clk_branch2_aon_ops", align 4
@clk_branch_simple_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_enable_regmap, ptr @clk_disable_regmap, ptr @clk_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_branch_simple_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_branch_simple_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_branch_simple_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_branch_simple_ops to i32), ptr @__kstrtab_clk_branch_simple_ops, ptr @__kstrtabns_clk_branch_simple_ops }, section "___ksymtab_gpl+clk_branch_simple_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/qcom/clk-branch.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s status stuck at 'o%s'\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ff\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"clk_branch_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 125, i32 22 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"clk_branch2_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 142, i32 22 }
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"clk_branch2_aon_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 149, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"clk_branch_simple_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 155, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [33 x i8] c"../drivers/clk/qcom/clk-branch.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 91, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_clk_branch2_aon_ops, ptr @__ksymtab_clk_branch2_ops, ptr @__ksymtab_clk_branch_ops, ptr @__ksymtab_clk_branch_simple_ops, ptr @clk_branch_ops, ptr @clk_branch2_ops, ptr @clk_branch2_aon_ops, ptr @clk_branch_simple_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_branch_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_branch2_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_branch2_aon_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_branch_simple_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_branch_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @clk_branch_toggle(ptr noundef %hw, i1 noundef zeroext true, ptr noundef nonnull @clk_branch_check_halt)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_branch_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @clk_branch_toggle(ptr noundef %hw, i1 noundef zeroext false, ptr noundef nonnull @clk_branch_check_halt)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_branch2_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @clk_branch_toggle(ptr noundef %hw, i1 noundef zeroext true, ptr noundef nonnull @clk_branch2_check_halt)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_branch2_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @clk_branch_toggle(ptr noundef %hw, i1 noundef zeroext false, ptr noundef nonnull @clk_branch2_check_halt)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_branch_toggle(ptr noundef %hw, i1 noundef zeroext %en, ptr nocapture noundef readonly %check_halt) unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  br i1 %en, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @clk_enable_regmap(ptr noundef %hw) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_disable_regmap(ptr noundef %hw) #3
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then.if.end4_crit_edge
  %halt_check.i = getelementptr i8, ptr %hw, i32 -2
  %0 = ptrtoint ptr %halt_check.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %halt_check.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not.i = icmp sgt i8 %1, -1
  %call.i = tail call ptr @clk_hw_get_name(ptr noundef %hw) #3
  %2 = ptrtoint ptr %halt_check.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %halt_check.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i = icmp eq i8 %3, 3
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %lor.lhs.false.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #3
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i, align 4, !annotation !30
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %clk_branch_in_hwcg_mode.exit.thread.i, label %clk_branch_in_hwcg_mode.exit.i

clk_branch_in_hwcg_mode.exit.thread.i:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #3
  br label %if.end.i

clk_branch_in_hwcg_mode.exit.i:                   ; preds = %lor.lhs.false.i
  %regmap.i.i = getelementptr i8, ptr %hw, i32 12
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %6, ptr noundef nonnull %val.i.i) #3
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i.i, align 4
  %hwcg_bit.i.i = getelementptr i8, ptr %hw, i32 -4
  %11 = ptrtoint ptr %hwcg_bit.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hwcg_bit.i.i, align 4
  %conv.i.i = zext i8 %12 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.i.not.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #3
  br i1 %tobool2.i.not.i, label %clk_branch_in_hwcg_mode.exit.i.if.end.i_crit_edge, label %clk_branch_in_hwcg_mode.exit.i.cleanup_crit_edge

clk_branch_in_hwcg_mode.exit.i.cleanup_crit_edge: ; preds = %clk_branch_in_hwcg_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

clk_branch_in_hwcg_mode.exit.i.if.end.i_crit_edge: ; preds = %clk_branch_in_hwcg_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i:                                         ; preds = %clk_branch_in_hwcg_mode.exit.i.if.end.i_crit_edge, %clk_branch_in_hwcg_mode.exit.thread.i
  %13 = ptrtoint ptr %halt_check.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %halt_check.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp9.i = icmp ne i8 %14, 2
  %brmerge.i = select i1 %en, i1 true, i1 %tobool.not.i
  %or.cond.i = select i1 %cmp9.i, i1 %brmerge.i, i1 false
  br i1 %or.cond.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 2147480) #3
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %switch.i = icmp ugt i8 %14, 1
  %enabling.not.i = xor i1 %en, true
  %brmerge73.i = select i1 %enabling.not.i, i1 true, i1 %tobool.not.i
  %or.cond74.i = select i1 %switch.i, i1 %brmerge73.i, i1 false
  br i1 %or.cond74.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.while.body.i_crit_edge

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  br label %while.body.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.i:                                     ; preds = %if.end37.i.while.body.i_crit_edge, %if.else.i.while.body.i_crit_edge
  %dec76.i = phi i32 [ %dec.i, %if.end37.i.while.body.i_crit_edge ], [ 199, %if.else.i.while.body.i_crit_edge ]
  %call35.i = call zeroext i1 %check_halt(ptr noundef %add.ptr, i1 noundef zeroext %en) #3, !callees !31
  br i1 %call35.i, label %while.body.i.cleanup_crit_edge, label %if.end37.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end37.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748) #3
  %dec.i = add nsw i32 %dec76.i, -1
  %cmp32.not.i = icmp eq i32 %dec76.i, 0
  br i1 %cmp32.not.i, label %do.end.i, label %if.end37.i.while.body.i_crit_edge

if.end37.i.while.body.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

do.end.i:                                         ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #5
  %cond.i = select i1 %en, ptr @.str.2, ptr @.str.3
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call.i, ptr noundef nonnull %cond.i) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %while.body.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then15.i, %clk_branch_in_hwcg_mode.exit.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then.cleanup_crit_edge ], [ 0, %clk_branch_in_hwcg_mode.exit.i.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -16, %do.end.i ], [ 0, %if.then15.i ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @clk_branch_check_halt(ptr nocapture noundef readonly %br, i1 noundef zeroext %enabling) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %halt_check = getelementptr inbounds %struct.clk_branch, ptr %br, i32 0, i32 4
  %0 = ptrtoint ptr %halt_check to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %halt_check, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !30
  %regmap = getelementptr inbounds %struct.clk_branch, ptr %br, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %halt_reg = getelementptr inbounds %struct.clk_branch, ptr %br, i32 0, i32 1
  %5 = ptrtoint ptr %halt_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %halt_reg, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #3
  %halt_bit = getelementptr inbounds %struct.clk_branch, ptr %br, i32 0, i32 3
  %7 = ptrtoint ptr %halt_bit to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %halt_bit, align 1
  %conv3 = zext i8 %8 to i32
  %shl = shl nuw i32 1, %conv3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %shl, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool518 = icmp ne i32 %and, 0
  %tobool5 = select i1 %cmp, i1 %tobool4.not, i1 %tobool518
  %cmp13 = xor i1 %tobool5, %enabling
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i1 %cmp13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @clk_branch2_check_halt(ptr nocapture noundef readonly %br, i1 noundef zeroext %enabling) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !30
  %regmap = getelementptr inbounds %struct.clk_branch, ptr %br, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %halt_reg = getelementptr inbounds %struct.clk_branch, ptr %br, i32 0, i32 1
  %3 = ptrtoint ptr %halt_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %halt_reg, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  br i1 %enabling, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %6, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp sgt i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %and)
  %cmp2 = icmp eq i32 %and, 536870912
  %spec.select = or i1 %cmp, %cmp2
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4 = icmp slt i32 %6, 0
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i1 [ %spec.select, %if.then ], [ %tobool4, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @clk_branch_ops, !1, !"clk_branch_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-branch.c", i32 125, i32 22}
!2 = !{ptr @__ksymtab_clk_branch_ops, !3, !"__ksymtab_clk_branch_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/clk-branch.c", i32 130, i32 1}
!4 = !{ptr @clk_branch2_ops, !5, !"clk_branch2_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/clk-branch.c", i32 142, i32 22}
!6 = !{ptr @__ksymtab_clk_branch2_ops, !7, !"__ksymtab_clk_branch2_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/clk-branch.c", i32 147, i32 1}
!8 = !{ptr @clk_branch2_aon_ops, !9, !"clk_branch2_aon_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/clk-branch.c", i32 149, i32 22}
!10 = !{ptr @__ksymtab_clk_branch2_aon_ops, !11, !"__ksymtab_clk_branch2_aon_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/clk-branch.c", i32 153, i32 1}
!12 = !{ptr @clk_branch_simple_ops, !13, !"clk_branch_simple_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/clk-branch.c", i32 155, i32 22}
!14 = !{ptr @__ksymtab_clk_branch_simple_ops, !15, !"__ksymtab_clk_branch_simple_ops", i1 false, i1 false}
!15 = !{!"../drivers/clk/qcom/clk-branch.c", i32 160, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/qcom/clk-branch.c", i32 91, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{ptr @clk_branch2_check_halt, ptr @clk_branch_check_halt}
