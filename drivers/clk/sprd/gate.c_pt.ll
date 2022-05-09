; ModuleID = '/llk/IR_all_yes/drivers/clk/sprd/gate.c_pt.bc'
source_filename = "../drivers/clk/sprd/gate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sprd_gate_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_gate_ops\09\09\09\09"
module asm "\09.long\09__crc_sprd_gate_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_gate_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprd_sc_gate_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_sc_gate_ops\09\09\09\09"
module asm "\09.long\09__crc_sprd_sc_gate_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_sc_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_sc_gate_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_sc_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprd_pll_sc_gate_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_pll_sc_gate_ops\09\09\09\09"
module asm "\09.long\09__crc_sprd_pll_sc_gate_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_pll_sc_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_pll_sc_gate_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_pll_sc_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@sprd_gate_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @sprd_gate_enable, ptr @sprd_gate_disable, ptr @sprd_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_sprd_gate_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_gate_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_gate_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_gate_ops to i32), ptr @__kstrtab_sprd_gate_ops, ptr @__kstrtabns_sprd_gate_ops }, section "___ksymtab_gpl+sprd_gate_ops", align 4
@sprd_sc_gate_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @sprd_sc_gate_enable, ptr @sprd_sc_gate_disable, ptr @sprd_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_sprd_sc_gate_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_sc_gate_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_sc_gate_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_sc_gate_ops to i32), ptr @__kstrtab_sprd_sc_gate_ops, ptr @__kstrtabns_sprd_sc_gate_ops }, section "___ksymtab_gpl+sprd_sc_gate_ops", align 4
@sprd_pll_sc_gate_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @sprd_pll_sc_gate_prepare, ptr @sprd_sc_gate_disable, ptr null, ptr null, ptr null, ptr null, ptr @sprd_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_sprd_pll_sc_gate_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_pll_sc_gate_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_pll_sc_gate_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_pll_sc_gate_ops to i32), ptr @__kstrtab_sprd_pll_sc_gate_ops, ptr @__kstrtabns_sprd_pll_sc_gate_ops }, section "___ksymtab_gpl+sprd_pll_sc_gate_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"sprd_gate_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 116, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"sprd_sc_gate_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 123, i32 22 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"sprd_pll_sc_gate_ops\00", align 1
@___asan_gen_.8 = private constant [27 x i8] c"../drivers/clk/sprd/gate.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 130, i32 22 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_sprd_gate_ops, ptr @__ksymtab_sprd_pll_sc_gate_ops, ptr @__ksymtab_sprd_sc_gate_ops, ptr @sprd_gate_ops, ptr @sprd_sc_gate_ops, ptr @sprd_pll_sc_gate_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_sc_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pll_sc_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_gate_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -20
  %common1.i = getelementptr i8, ptr %hw, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !21
  %flags.i = getelementptr i8, ptr %hw, i32 -16
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i, align 4
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %.not = icmp eq i16 %3, 0
  %4 = ptrtoint ptr %common1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common1.i, align 4
  %reg10.i = getelementptr i8, ptr %hw, i32 -4
  %6 = ptrtoint ptr %reg10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg10.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %reg.i) #3
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  br i1 %.not, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %11, %9
  br label %clk_gate_toggle.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %neg.i = xor i32 %9, -1
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i, align 4
  %and13.i = and i32 %13, %neg.i
  br label %clk_gate_toggle.exit

clk_gate_toggle.exit:                             ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %and13.i, %if.else.i ], [ %or.i, %if.then.i ]
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge.i, ptr %reg.i, align 4
  %15 = ptrtoint ptr %common1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common1.i, align 4
  %17 = ptrtoint ptr %reg10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg10.i, align 4
  %call16.i = call i32 @regmap_write(ptr noundef %16, i32 noundef %18, i32 noundef %storemerge.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_gate_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -20
  %common1.i = getelementptr i8, ptr %hw, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !21
  %flags.i = getelementptr i8, ptr %hw, i32 -16
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i, align 4
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %4 = icmp eq i16 %3, 0
  %5 = ptrtoint ptr %common1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common1.i, align 4
  %reg10.i = getelementptr i8, ptr %hw, i32 -4
  %7 = ptrtoint ptr %reg10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg10.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %reg.i) #3
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  br i1 %4, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %12, %10
  br label %clk_gate_toggle.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %neg.i = xor i32 %10, -1
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg.i, align 4
  %and13.i = and i32 %14, %neg.i
  br label %clk_gate_toggle.exit

clk_gate_toggle.exit:                             ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %and13.i, %if.else.i ], [ %or.i, %if.then.i ]
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge.i, ptr %reg.i, align 4
  %16 = ptrtoint ptr %common1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common1.i, align 4
  %18 = ptrtoint ptr %reg10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg10.i, align 4
  %call16.i = call i32 @regmap_write(ptr noundef %17, i32 noundef %19, i32 noundef %storemerge.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_gate_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -20
  %common1 = getelementptr i8, ptr %hw, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !21
  %flags = getelementptr i8, ptr %hw, i32 -16
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 4
  %3 = and i16 %2, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #3
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %call4 = tail call zeroext i1 @clk_hw_is_enabled(ptr noundef nonnull %call2) #3
  br i1 %call4, label %lor.lhs.false.if.end6_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.end6:                                          ; preds = %lor.lhs.false.if.end6_crit_edge, %entry.if.end6_crit_edge
  %4 = ptrtoint ptr %common1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common1, align 4
  %reg7 = getelementptr i8, ptr %hw, i32 -4
  %6 = ptrtoint ptr %reg7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg7, align 4
  %call8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %reg) #3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 4
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool12.not = icmp eq i16 %10, 0
  br i1 %tobool12.not, label %if.end6.if.end14_crit_edge, label %if.then13

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %xor = xor i32 %14, %12
  store i32 %xor, ptr %reg, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end6.if.end14_crit_edge
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %and16 = and i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp ne i32 %and16, 0
  %cond = zext i1 %tobool17.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end14 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_sc_gate_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -20
  %flags.i = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 4
  %2 = and i16 %1, 1
  %sc_offset13.i = getelementptr i8, ptr %hw, i32 -14
  %3 = ptrtoint ptr %sc_offset13.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sc_offset13.i, align 2
  %conv14.i = zext i16 %4 to i32
  %5 = zext i16 %2 to i32
  %cond15.i = shl nuw nsw i32 %conv14.i, %5
  %common1.i = getelementptr i8, ptr %hw, i32 -8
  %6 = ptrtoint ptr %common1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common1.i, align 4
  %reg.i = getelementptr i8, ptr %hw, i32 -4
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg.i, align 4
  %add.i = add i32 %9, %cond15.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add.i, i32 noundef %11) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_sc_gate_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -20
  %flags.i = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 4
  %2 = and i16 %1, 1
  %sc_offset13.i = getelementptr i8, ptr %hw, i32 -14
  %3 = ptrtoint ptr %sc_offset13.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sc_offset13.i, align 2
  %conv14.i = zext i16 %4 to i32
  %5 = xor i16 %2, 1
  %6 = zext i16 %5 to i32
  %cond15.i = shl nuw nsw i32 %conv14.i, %6
  %common1.i = getelementptr i8, ptr %hw, i32 -8
  %7 = ptrtoint ptr %common1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common1.i, align 4
  %reg.i = getelementptr i8, ptr %hw, i32 -4
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %add.i = add i32 %cond15.i, %10
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %add.i, i32 noundef %12) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pll_sc_gate_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -20
  %flags.i = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 4
  %2 = and i16 %1, 1
  %sc_offset13.i = getelementptr i8, ptr %hw, i32 -14
  %3 = ptrtoint ptr %sc_offset13.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sc_offset13.i, align 2
  %conv14.i = zext i16 %4 to i32
  %5 = zext i16 %2 to i32
  %cond15.i = shl nuw nsw i32 %conv14.i, %5
  %common1.i = getelementptr i8, ptr %hw, i32 -8
  %6 = ptrtoint ptr %common1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common1.i, align 4
  %reg.i = getelementptr i8, ptr %hw, i32 -4
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg.i, align 4
  %add.i = add i32 %9, %cond15.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add.i, i32 noundef %11) #3
  %udelay = getelementptr i8, ptr %hw, i32 -12
  %12 = ptrtoint ptr %udelay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %udelay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv8 = zext i16 %13 to i32
  tail call void %14(i32 noundef %conv8) #3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_hw_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @sprd_gate_ops, !1, !"sprd_gate_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/sprd/gate.c", i32 116, i32 22}
!2 = !{ptr @__ksymtab_sprd_gate_ops, !3, !"__ksymtab_sprd_gate_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sprd/gate.c", i32 121, i32 1}
!4 = !{ptr @sprd_sc_gate_ops, !5, !"sprd_sc_gate_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/sprd/gate.c", i32 123, i32 22}
!6 = !{ptr @__ksymtab_sprd_sc_gate_ops, !7, !"__ksymtab_sprd_sc_gate_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/sprd/gate.c", i32 128, i32 1}
!8 = !{ptr @sprd_pll_sc_gate_ops, !9, !"sprd_pll_sc_gate_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/sprd/gate.c", i32 130, i32 22}
!10 = !{ptr @__ksymtab_sprd_pll_sc_gate_ops, !11, !"__ksymtab_sprd_pll_sc_gate_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/sprd/gate.c", i32 135, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
