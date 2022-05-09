; ModuleID = '/llk/IR_all_yes/drivers/clk/sprd/div.c_pt.bc'
source_filename = "../drivers/clk/sprd/div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sprd_div_helper_round_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_div_helper_round_rate\09\09\09\09"
module asm "\09.long\09__crc_sprd_div_helper_round_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_div_helper_round_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_div_helper_round_rate\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_div_helper_round_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprd_div_helper_recalc_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_div_helper_recalc_rate\09\09\09\09"
module asm "\09.long\09__crc_sprd_div_helper_recalc_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_div_helper_recalc_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_div_helper_recalc_rate\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_div_helper_recalc_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprd_div_helper_set_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_div_helper_set_rate\09\09\09\09"
module asm "\09.long\09__crc_sprd_div_helper_set_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_div_helper_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_div_helper_set_rate\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_div_helper_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprd_div_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_div_ops\09\09\09\09"
module asm "\09.long\09__crc_sprd_div_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_div_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sprd_clk_common = type { ptr, i32, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.sprd_div_internal = type { i8, i8 }

@__kstrtab_sprd_div_helper_round_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_div_helper_round_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_div_helper_round_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_div_helper_round_rate to i32), ptr @__kstrtab_sprd_div_helper_round_rate, ptr @__kstrtabns_sprd_div_helper_round_rate }, section "___ksymtab_gpl+sprd_div_helper_round_rate", align 4
@__kstrtab_sprd_div_helper_recalc_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_div_helper_recalc_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_div_helper_recalc_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_div_helper_recalc_rate to i32), ptr @__kstrtab_sprd_div_helper_recalc_rate, ptr @__kstrtabns_sprd_div_helper_recalc_rate }, section "___ksymtab_gpl+sprd_div_helper_recalc_rate", align 4
@__kstrtab_sprd_div_helper_set_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_div_helper_set_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_div_helper_set_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_div_helper_set_rate to i32), ptr @__kstrtab_sprd_div_helper_set_rate, ptr @__kstrtabns_sprd_div_helper_set_rate }, section "___ksymtab_gpl+sprd_div_helper_set_rate", align 4
@sprd_div_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_div_recalc_rate, ptr @sprd_div_round_rate, ptr null, ptr null, ptr null, ptr @sprd_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_sprd_div_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_div_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_div_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_div_ops to i32), ptr @__kstrtab_sprd_div_ops, ptr @__kstrtabns_sprd_div_ops }, section "___ksymtab_gpl+sprd_div_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"sprd_div_ops\00", align 1
@___asan_gen_.2 = private constant [26 x i8] c"../drivers/clk/sprd/div.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 86, i32 22 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_sprd_div_helper_recalc_rate, ptr @__ksymtab_sprd_div_helper_round_rate, ptr @__ksymtab_sprd_div_helper_set_rate, ptr @__ksymtab_sprd_div_ops, ptr @sprd_div_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprd_div_helper_round_rate(ptr noundef %common, ptr nocapture noundef readonly %div, i32 noundef %rate, ptr noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.sprd_clk_common, ptr %common, i32 0, i32 2
  %width = getelementptr inbounds %struct.sprd_div_internal, ptr %div, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %width, align 1
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #3
  %call1.i = tail call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i, i32 noundef %rate, ptr noundef %parent_rate, ptr noundef null, i8 noundef zeroext %1, i32 noundef 0) #3
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprd_div_helper_recalc_rate(ptr noundef %common, ptr nocapture noundef readonly %div, i32 noundef %parent_rate) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !19
  %1 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common, align 4
  %reg1 = getelementptr inbounds %struct.sprd_clk_common, ptr %common, i32 0, i32 1
  %3 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg1, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %reg) #3
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %7 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %div, align 1
  %conv = zext i8 %8 to i32
  %shr = lshr i32 %6, %conv
  %width = getelementptr inbounds %struct.sprd_div_internal, ptr %div, i32 0, i32 1
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width, align 1
  %conv2 = zext i8 %10 to i32
  %notmask = shl nsw i32 -1, %conv2
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %hw = getelementptr inbounds %struct.sprd_clk_common, ptr %common, i32 0, i32 2
  %call5 = call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %and, ptr noundef null, i32 noundef 0, i32 noundef %conv2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %call5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprd_div_helper_set_rate(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %div, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !19
  %width = getelementptr inbounds %struct.sprd_div_internal, ptr %div, i32 0, i32 1
  %1 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %width, align 1
  %call = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef null, i8 noundef zeroext %2, i32 noundef 0) #3
  %3 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common, align 4
  %reg1 = getelementptr inbounds %struct.sprd_clk_common, ptr %common, i32 0, i32 1
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg) #3
  %7 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %div, align 1
  %conv = zext i8 %8 to i32
  %shl.neg = shl nsw i32 -1, %conv
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width, align 1
  %conv4 = zext i8 %10 to i32
  %11 = add nuw nsw i32 %conv, %conv4
  %sub9 = sub nsw i32 32, %11
  %shr = lshr i32 -1, %sub9
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %and11 = and i32 %13, %neg
  store i32 %and11, ptr %reg, align 4
  %14 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %common, align 4
  %16 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg1, align 4
  %shl16 = shl i32 %call, %conv
  %or = or i32 %and11, %shl16
  %call17 = call i32 @regmap_write(ptr noundef %15, i32 noundef %17, i32 noundef %or) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_div_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -12
  %common = getelementptr i8, ptr %hw, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !19
  %1 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common, align 4
  %reg1.i = getelementptr i8, ptr %hw, i32 -4
  %3 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg1.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %reg.i) #3
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg.i, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %8 to i32
  %shr.i = lshr i32 %6, %conv.i
  %width.i = getelementptr i8, ptr %hw, i32 -11
  %9 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width.i, align 1
  %conv2.i = zext i8 %10 to i32
  %notmask.i = shl nsw i32 -1, %conv2.i
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %shr.i, %sub.i
  %call5.i = call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %and.i, ptr noundef null, i32 noundef 0, i32 noundef %conv2.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret i32 %call5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_div_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %width.i = getelementptr i8, ptr %hw, i32 -11
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %width.i, align 1
  %call.i.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #3
  %call1.i.i = tail call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i.i, i32 noundef %rate, ptr noundef %parent_rate, ptr noundef null, i8 noundef zeroext %1, i32 noundef 0) #3
  ret i32 %call1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_div_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -12
  %common = getelementptr i8, ptr %hw, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !19
  %width.i = getelementptr i8, ptr %hw, i32 -11
  %1 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %width.i, align 1
  %call.i = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef null, i8 noundef zeroext %2, i32 noundef 0) #3
  %3 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common, align 4
  %reg1.i = getelementptr i8, ptr %hw, i32 -4
  %5 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg1.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg.i) #3
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.neg.i = shl nsw i32 -1, %conv.i
  %9 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width.i, align 1
  %conv4.i = zext i8 %10 to i32
  %11 = add nuw nsw i32 %conv.i, %conv4.i
  %sub9.i = sub nsw i32 32, %11
  %shr.i = lshr i32 -1, %sub9.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %neg.i = xor i32 %and.i, -1
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i, align 4
  %and11.i = and i32 %13, %neg.i
  store i32 %and11.i, ptr %reg.i, align 4
  %14 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %common, align 4
  %16 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg1.i, align 4
  %shl16.i = shl i32 %call.i, %conv.i
  %or.i = or i32 %and11.i, %shl16.i
  %call17.i = call i32 @regmap_write(ptr noundef %15, i32 noundef %17, i32 noundef %or.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_sprd_div_helper_round_rate, !1, !"__ksymtab_sprd_div_helper_round_rate", i1 false, i1 false}
!1 = !{!"../drivers/clk/sprd/div.c", i32 20, i32 1}
!2 = !{ptr @__ksymtab_sprd_div_helper_recalc_rate, !3, !"__ksymtab_sprd_div_helper_recalc_rate", i1 false, i1 false}
!3 = !{!"../drivers/clk/sprd/div.c", i32 45, i32 1}
!4 = !{ptr @__ksymtab_sprd_div_helper_set_rate, !5, !"__ksymtab_sprd_div_helper_set_rate", i1 false, i1 false}
!5 = !{!"../drivers/clk/sprd/div.c", i32 75, i32 1}
!6 = !{ptr @sprd_div_ops, !7, !"sprd_div_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/sprd/div.c", i32 86, i32 22}
!8 = !{ptr @__ksymtab_sprd_div_ops, !9, !"__ksymtab_sprd_div_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/sprd/div.c", i32 91, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
