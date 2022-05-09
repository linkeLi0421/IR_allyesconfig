; ModuleID = '/llk/IR_all_yes/drivers/clk/sprd/mux.c_pt.bc'
source_filename = "../drivers/clk/sprd/mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sprd_mux_helper_get_parent\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_mux_helper_get_parent\09\09\09\09"
module asm "\09.long\09__crc_sprd_mux_helper_get_parent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_mux_helper_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_mux_helper_get_parent\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_mux_helper_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprd_mux_helper_set_parent\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_mux_helper_set_parent\09\09\09\09"
module asm "\09.long\09__crc_sprd_mux_helper_set_parent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_mux_helper_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_mux_helper_set_parent\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_mux_helper_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprd_mux_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_mux_ops\09\09\09\09"
module asm "\09.long\09__crc_sprd_mux_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_mux_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_mux_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_mux_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sprd_clk_common = type { ptr, i32, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.sprd_mux_ssel = type { i8, i8, ptr }

@__kstrtab_sprd_mux_helper_get_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_mux_helper_get_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_mux_helper_get_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_mux_helper_get_parent to i32), ptr @__kstrtab_sprd_mux_helper_get_parent, ptr @__kstrtabns_sprd_mux_helper_get_parent }, section "___ksymtab_gpl+sprd_mux_helper_get_parent", align 4
@__kstrtab_sprd_mux_helper_set_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_mux_helper_set_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_mux_helper_set_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_mux_helper_set_parent to i32), ptr @__kstrtab_sprd_mux_helper_set_parent, ptr @__kstrtabns_sprd_mux_helper_set_parent }, section "___ksymtab_gpl+sprd_mux_helper_set_parent", align 4
@sprd_mux_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @sprd_mux_set_parent, ptr @sprd_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_sprd_mux_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_mux_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_mux_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_mux_ops to i32), ptr @__kstrtab_sprd_mux_ops, ptr @__kstrtabns_sprd_mux_ops }, section "___ksymtab_gpl+sprd_mux_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"sprd_mux_ops\00", align 1
@___asan_gen_.2 = private constant [26 x i8] c"../drivers/clk/sprd/mux.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 71, i32 22 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_sprd_mux_helper_get_parent, ptr @__ksymtab_sprd_mux_helper_set_parent, ptr @__ksymtab_sprd_mux_ops, ptr @sprd_mux_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @sprd_mux_helper_get_parent(ptr noundef %common, ptr nocapture noundef readonly %mux) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !17
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
  %7 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mux, align 4
  %conv = zext i8 %8 to i32
  %shr = lshr i32 %6, %conv
  %width = getelementptr inbounds %struct.sprd_mux_ssel, ptr %mux, i32 0, i32 1
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width, align 1
  %conv3 = zext i8 %10 to i32
  %notmask = shl nsw i32 -1, %conv3
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %table = getelementptr inbounds %struct.sprd_mux_ssel, ptr %mux, i32 0, i32 2
  %11 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %table, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.sprd_clk_common, ptr %common, i32 0, i32 2
  %call6 = call i32 @clk_hw_get_num_parents(ptr noundef %hw) #3
  %sub7 = add i32 %call6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %cmp42 = icmp sgt i32 %sub7, 0
  br i1 %cmp42, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %conv9 = and i32 %and, 255
  %13 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %table, align 4
  %15 = trunc i32 %and to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %.pre, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %14, i32 %i.043
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9, i32 %conv11)
  %cmp12.not = icmp ult i32 %conv9, %conv11
  %.pre = add nuw nsw i32 %i.043, 1
  br i1 %cmp12.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx16 = getelementptr i8, ptr %14, i32 %.pre
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %15)
  %cmp18 = icmp ugt i8 %19, %15
  br i1 %cmp18, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %.pre, %sub7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.in = phi i32 [ %and, %entry.cleanup_crit_edge ], [ %sub7, %if.end.cleanup_crit_edge ], [ %i.043, %land.lhs.true.cleanup_crit_edge ], [ %sub7, %for.inc.cleanup_crit_edge ]
  %retval.0 = trunc i32 %retval.0.in to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprd_mux_helper_set_parent(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %mux, i8 noundef zeroext %index) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !17
  %table = getelementptr inbounds %struct.sprd_mux_ssel, ptr %mux, i32 0, i32 2
  %1 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %table, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr i8, ptr %2, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %index.addr.0 = phi i8 [ %4, %if.then ], [ %index, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common, align 4
  %reg2 = getelementptr inbounds %struct.sprd_clk_common, ptr %common, i32 0, i32 1
  %7 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg2, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %reg) #3
  %9 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mux, align 4
  %conv = zext i8 %10 to i32
  %shl.neg = shl nsw i32 -1, %conv
  %width = getelementptr inbounds %struct.sprd_mux_ssel, ptr %mux, i32 0, i32 1
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width, align 1
  %conv3 = zext i8 %12 to i32
  %13 = add nuw nsw i32 %conv, %conv3
  %sub8 = sub nsw i32 32, %13
  %shr = lshr i32 -1, %sub8
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %and10 = and i32 %15, %neg
  store i32 %and10, ptr %reg, align 4
  %16 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common, align 4
  %18 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg2, align 4
  %conv13 = zext i8 %index.addr.0 to i32
  %shl16 = shl i32 %conv13, %conv
  %or = or i32 %and10, %shl16
  %call17 = call i32 @regmap_write(ptr noundef %17, i32 noundef %19, i32 noundef %or) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !17
  %table.i = getelementptr i8, ptr %hw, i32 -12
  %1 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %table.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.sprd_mux_helper_set_parent.exit_crit_edge, label %if.then.i

entry.sprd_mux_helper_set_parent.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sprd_mux_helper_set_parent.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %idxprom.i = zext i8 %index to i32
  %arrayidx.i = getelementptr i8, ptr %2, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  br label %sprd_mux_helper_set_parent.exit

sprd_mux_helper_set_parent.exit:                  ; preds = %if.then.i, %entry.sprd_mux_helper_set_parent.exit_crit_edge
  %index.addr.0.i = phi i8 [ %4, %if.then.i ], [ %index, %entry.sprd_mux_helper_set_parent.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -16
  %common = getelementptr i8, ptr %hw, i32 -8
  %5 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common, align 4
  %reg2.i = getelementptr i8, ptr %hw, i32 -4
  %7 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg2.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %reg.i) #3
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i, align 4
  %conv.i = zext i8 %10 to i32
  %shl.neg.i = shl nsw i32 -1, %conv.i
  %width.i = getelementptr i8, ptr %hw, i32 -15
  %11 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width.i, align 1
  %conv3.i = zext i8 %12 to i32
  %13 = add nuw nsw i32 %conv.i, %conv3.i
  %sub8.i = sub nsw i32 32, %13
  %shr.i = lshr i32 -1, %sub8.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %neg.i = xor i32 %and.i, -1
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg.i, align 4
  %and10.i = and i32 %15, %neg.i
  store i32 %and10.i, ptr %reg.i, align 4
  %16 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common, align 4
  %18 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg2.i, align 4
  %conv13.i = zext i8 %index.addr.0.i to i32
  %shl16.i = shl i32 %conv13.i, %conv.i
  %or.i = or i32 %and10.i, %shl16.i
  %call17.i = call i32 @regmap_write(ptr noundef %17, i32 noundef %19, i32 noundef %or.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sprd_mux_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -16
  %common = getelementptr i8, ptr %hw, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !17
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
  %8 = load i8, ptr %add.ptr.i, align 4
  %conv.i = zext i8 %8 to i32
  %shr.i = lshr i32 %6, %conv.i
  %width.i = getelementptr i8, ptr %hw, i32 -15
  %9 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width.i, align 1
  %conv3.i = zext i8 %10 to i32
  %notmask.i = shl nsw i32 -1, %conv3.i
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %shr.i, %sub.i
  %table.i = getelementptr i8, ptr %hw, i32 -12
  %11 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %table.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.sprd_mux_helper_get_parent.exit_crit_edge, label %if.end.i

entry.sprd_mux_helper_get_parent.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sprd_mux_helper_get_parent.exit

if.end.i:                                         ; preds = %entry
  %call6.i = call i32 @clk_hw_get_num_parents(ptr noundef %hw) #3
  %sub7.i = add i32 %call6.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i)
  %cmp42.i = icmp sgt i32 %sub7.i, 0
  br i1 %cmp42.i, label %for.body.lr.ph.i, label %if.end.i.sprd_mux_helper_get_parent.exit_crit_edge

if.end.i.sprd_mux_helper_get_parent.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sprd_mux_helper_get_parent.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv9.i = and i32 %and.i, 255
  %13 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %table.i, align 4
  %15 = trunc i32 %and.i to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.043.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %.pre.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %14, i32 %i.043.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %conv11.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9.i, i32 %conv11.i)
  %cmp12.not.i = icmp ult i32 %conv9.i, %conv11.i
  %.pre.i = add nuw nsw i32 %i.043.i, 1
  br i1 %cmp12.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx16.i = getelementptr i8, ptr %14, i32 %.pre.i
  %18 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %15)
  %cmp18.i = icmp ugt i8 %19, %15
  br i1 %cmp18.i, label %land.lhs.true.i.sprd_mux_helper_get_parent.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i.sprd_mux_helper_get_parent.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sprd_mux_helper_get_parent.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %exitcond.not.i = icmp eq i32 %.pre.i, %sub7.i
  br i1 %exitcond.not.i, label %for.inc.i.sprd_mux_helper_get_parent.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.sprd_mux_helper_get_parent.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sprd_mux_helper_get_parent.exit

sprd_mux_helper_get_parent.exit:                  ; preds = %for.inc.i.sprd_mux_helper_get_parent.exit_crit_edge, %land.lhs.true.i.sprd_mux_helper_get_parent.exit_crit_edge, %if.end.i.sprd_mux_helper_get_parent.exit_crit_edge, %entry.sprd_mux_helper_get_parent.exit_crit_edge
  %retval.0.in.i = phi i32 [ %and.i, %entry.sprd_mux_helper_get_parent.exit_crit_edge ], [ %sub7.i, %if.end.i.sprd_mux_helper_get_parent.exit_crit_edge ], [ %sub7.i, %for.inc.i.sprd_mux_helper_get_parent.exit_crit_edge ], [ %i.043.i, %land.lhs.true.i.sprd_mux_helper_get_parent.exit_crit_edge ]
  %retval.0.i = trunc i32 %retval.0.in.i to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret i8 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_sprd_mux_helper_get_parent, !1, !"__ksymtab_sprd_mux_helper_get_parent", i1 false, i1 false}
!1 = !{!"../drivers/clk/sprd/mux.c", i32 37, i32 1}
!2 = !{ptr @__ksymtab_sprd_mux_helper_set_parent, !3, !"__ksymtab_sprd_mux_helper_set_parent", i1 false, i1 false}
!3 = !{!"../drivers/clk/sprd/mux.c", i32 62, i32 1}
!4 = !{ptr @sprd_mux_ops, !5, !"sprd_mux_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/sprd/mux.c", i32 71, i32 22}
!6 = !{ptr @__ksymtab_sprd_mux_ops, !7, !"__ksymtab_sprd_mux_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/sprd/mux.c", i32 76, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
