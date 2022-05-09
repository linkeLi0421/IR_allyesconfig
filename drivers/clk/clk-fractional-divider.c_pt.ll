; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-fractional-divider.c_pt.bc'
source_filename = "../drivers/clk/clk-fractional-divider.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_fractional_divider_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_fractional_divider_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_fractional_divider_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_fractional_divider_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_fractional_divider_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_fractional_divider_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_hw_register_fractional_divider\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_hw_register_fractional_divider\09\09\09\09"
module asm "\09.long\09__crc_clk_hw_register_fractional_divider\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_register_fractional_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_register_fractional_divider\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_register_fractional_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_register_fractional_divider\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_register_fractional_divider\09\09\09\09"
module asm "\09.long\09__crc_clk_register_fractional_divider\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_fractional_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_fractional_divider\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_fractional_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_fractional_divider = type { %struct.clk_hw, ptr, i8, i8, i32, i8, i8, i32, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@clk_fractional_divider_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_fd_recalc_rate, ptr @clk_fd_round_rate, ptr null, ptr null, ptr null, ptr @clk_fd_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_fractional_divider_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_fractional_divider_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_fractional_divider_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_fractional_divider_ops to i32), ptr @__kstrtab_clk_fractional_divider_ops, ptr @__kstrtabns_clk_fractional_divider_ops }, section "___ksymtab_gpl+clk_fractional_divider_ops", align 4
@__kstrtab_clk_hw_register_fractional_divider = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_register_fractional_divider = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_register_fractional_divider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_register_fractional_divider to i32), ptr @__kstrtab_clk_hw_register_fractional_divider, ptr @__kstrtabns_clk_hw_register_fractional_divider }, section "___ksymtab_gpl+clk_hw_register_fractional_divider", align 4
@__kstrtab_clk_register_fractional_divider = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_fractional_divider = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_fractional_divider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_fractional_divider to i32), ptr @__kstrtab_clk_register_fractional_divider, ptr @__kstrtabns_clk_register_fractional_divider }, section "___ksymtab_gpl+clk_register_fractional_divider", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [27 x i8] c"clk_fractional_divider_ops\00", align 1
@___asan_gen_.2 = private constant [40 x i8] c"../drivers/clk/clk-fractional-divider.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 186, i32 22 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_clk_fractional_divider_ops, ptr @__ksymtab_clk_hw_register_fractional_divider, ptr @__ksymtab_clk_register_fractional_divider, ptr @clk_fractional_divider_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_fractional_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_fractional_divider_general_approximation(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate, ptr noundef %m, ptr noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %parent_rate, align 4
  %div = udiv i32 %4, %rate
  %sub = add i32 %div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i.i = icmp eq i32 %sub, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #5, !range !17
  %sub.i.i = sub nuw nsw i32 32, %5
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %nwidth = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 6
  %6 = ptrtoint ptr %nwidth to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nwidth, align 1
  %conv1 = zext i8 %7 to i32
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %cond.i.i, i32 %conv1)
  %rate.addr.0 = shl i32 %rate, %8
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %rate.addr.1 = phi i32 [ %rate.addr.0, %if.then ], [ %rate, %entry.if.end7_crit_edge ]
  %9 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parent_rate, align 4
  %mwidth = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 3
  %11 = ptrtoint ptr %mwidth to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mwidth, align 1
  %conv8 = zext i8 %12 to i32
  %sub10 = sub nsw i32 32, %conv8
  %shr = lshr i32 -1, %sub10
  %nwidth12 = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 6
  %13 = ptrtoint ptr %nwidth12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nwidth12, align 1
  %conv13 = zext i8 %14 to i32
  %sub15 = sub nsw i32 32, %conv13
  %shr16 = lshr i32 -1, %sub15
  tail call void @rational_best_approximation(i32 noundef %rate.addr.1, i32 noundef %10, i32 noundef %shr, i32 noundef %shr16, ptr noundef %m, ptr noundef %n) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_fd_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %flags.i = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 8
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags.i, align 4
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %reg2.i = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg2.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !18
  br label %clk_fd_readl.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  br label %clk_fd_readl.exit

clk_fd_readl.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ %8, %if.end.i ]
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %clk_fd_readl.exit.if.end13_crit_edge, label %if.then10

clk_fd_readl.exit.if.end13_crit_edge:             ; preds = %clk_fd_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %clk_fd_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %flags.0) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %clk_fd_readl.exit.if.end13_crit_edge
  %mmask = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 4
  %11 = ptrtoint ptr %mmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mmask, align 4
  %and = and i32 %12, %retval.0.i
  %mshift = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 2
  %13 = ptrtoint ptr %mshift to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mshift, align 4
  %conv14 = zext i8 %14 to i32
  %shr = lshr i32 %and, %conv14
  %nmask = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 7
  %15 = ptrtoint ptr %nmask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nmask, align 4
  %and15 = and i32 %16, %retval.0.i
  %nshift = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 5
  %17 = ptrtoint ptr %nshift to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nshift, align 4
  %conv16 = zext i8 %18 to i32
  %shr17 = lshr i32 %and15, %conv16
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i, align 4
  %21 = and i8 %20, 1
  %22 = zext i8 %21 to i32
  %m.0 = add i32 %shr, %22
  %n.0 = add i32 %shr17, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0)
  %tobool25.not = icmp eq i32 %n.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %m.0)
  %tobool26.not = icmp eq i32 %m.0, 0
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %if.end13.cleanup_crit_edge, label %if.end28

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.end13
  %conv29 = zext i32 %parent_rate to i64
  %conv30 = zext i32 %m.0 to i64
  %mul = mul nuw i64 %conv30, %conv29
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp206 = icmp ult i64 %mul, 4294967296
  br i1 %cmp206, label %if.then210, label %if.else216, !prof !20

if.then210:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %conv211 = trunc i64 %mul to i32
  %div214 = udiv i32 %conv211, %n.0
  br label %cleanup

if.else216:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %n.0, i64 %mul) #8, !srcloc !21
  %asmresult1.i = extractvalue { i64, i64 } %23, 1
  %extract.t351 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else216, %if.then210, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %if.end13.cleanup_crit_edge ], [ %div214, %if.then210 ], [ %extract.t351, %if.else216 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_fd_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %parent_rate) #0 align 64 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  %0 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %m, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %1 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %n, align 4, !annotation !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #5
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp.not = icmp ugt i32 %3, %rate
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent_rate, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %approximation = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 9
  %6 = ptrtoint ptr %approximation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %approximation, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void %7(ptr noundef %hw, i32 noundef %rate, ptr noundef %parent_rate, ptr noundef nonnull %m, ptr noundef nonnull %n) #5
  br label %if.end5

if.else:                                          ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 8
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags.i, align 4
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else.clk_fractional_divider_general_approximation.exit_crit_edge, label %if.then.i

if.else.clk_fractional_divider_general_approximation.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_fractional_divider_general_approximation.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %parent_rate, align 4
  %div.i = udiv i32 %12, %rate
  %sub.i = add i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i.i.i = icmp eq i32 %sub.i, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #5, !range !17
  %sub.i.i.i = sub nuw nsw i32 32, %13
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %nwidth.i = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 6
  %14 = ptrtoint ptr %nwidth.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nwidth.i, align 1
  %conv1.i = zext i8 %15 to i32
  %16 = tail call i32 @llvm.usub.sat.i32(i32 %cond.i.i.i, i32 %conv1.i) #5
  %rate.addr.0.i = shl i32 %rate, %16
  br label %clk_fractional_divider_general_approximation.exit

clk_fractional_divider_general_approximation.exit: ; preds = %if.then.i, %if.else.clk_fractional_divider_general_approximation.exit_crit_edge
  %rate.addr.1.i = phi i32 [ %rate.addr.0.i, %if.then.i ], [ %rate, %if.else.clk_fractional_divider_general_approximation.exit_crit_edge ]
  %17 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %parent_rate, align 4
  %mwidth.i = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 3
  %19 = ptrtoint ptr %mwidth.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mwidth.i, align 1
  %conv8.i = zext i8 %20 to i32
  %sub10.i = sub nsw i32 32, %conv8.i
  %shr.i = lshr i32 -1, %sub10.i
  %nwidth12.i = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 6
  %21 = ptrtoint ptr %nwidth12.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nwidth12.i, align 1
  %conv13.i = zext i8 %22 to i32
  %sub15.i = sub nsw i32 32, %conv13.i
  %shr16.i = lshr i32 -1, %sub15.i
  call void @rational_best_approximation(i32 noundef %rate.addr.1.i, i32 noundef %18, i32 noundef %shr.i, i32 noundef %shr16.i, ptr noundef nonnull %m, ptr noundef nonnull %n) #5
  br label %if.end5

if.end5:                                          ; preds = %clk_fractional_divider_general_approximation.exit, %if.then3
  %23 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %parent_rate, align 4
  %conv = zext i32 %24 to i64
  %25 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m, align 4
  %conv6 = zext i32 %26 to i64
  %mul = mul nuw i64 %conv6, %conv
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp182 = icmp ult i64 %mul, 4294967296
  br i1 %cmp182, label %if.then186, label %if.else192, !prof !20

if.then186:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %conv187 = trunc i64 %mul to i32
  %div190 = udiv i32 %conv187, %28
  br label %cleanup

if.else192:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %mul) #8, !srcloc !21
  %asmresult1.i = extractvalue { i64, i64 } %29, 1
  %extract.t321 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else192, %if.then186, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %div190, %if.then186 ], [ %extract.t321, %if.else192 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_fd_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  %0 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %m, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %1 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %n, align 4, !annotation !22
  %mwidth = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %mwidth to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mwidth, align 1
  %conv = zext i8 %3 to i32
  %sub1 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub1
  %nwidth = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 6
  %4 = ptrtoint ptr %nwidth to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nwidth, align 1
  %conv2 = zext i8 %5 to i32
  %sub4 = sub nsw i32 32, %conv2
  %shr5 = lshr i32 -1, %sub4
  call void @rational_best_approximation(i32 noundef %rate, i32 noundef %parent_rate, i32 noundef %shr, i32 noundef %shr5, ptr noundef nonnull %m, ptr noundef nonnull %n) #5
  %flags8 = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 8
  %6 = ptrtoint ptr %flags8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags8, align 4
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %m, align 4
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n, align 4
  %dec11 = add i32 %12, -1
  store i32 %dec11, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 10
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.end.if.end21_crit_edge, label %do.body14

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %14) #5
  br label %if.end21

if.end21:                                         ; preds = %do.body14, %if.end.if.end21_crit_edge
  %flags.0 = phi i32 [ %call18, %do.body14 ], [ 0, %if.end.if.end21_crit_edge ]
  %15 = ptrtoint ptr %flags8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags8, align 4
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %reg2.i = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg2.i, align 4
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !18
  br label %clk_fd_readl.exit

if.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %21 = call i32 @llvm.bswap.i32(i32 %20) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  br label %clk_fd_readl.exit

clk_fd_readl.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %20, %if.then.i ], [ %21, %if.end.i ]
  %mmask = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 4
  %22 = ptrtoint ptr %mmask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mmask, align 4
  %nmask = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 7
  %24 = ptrtoint ptr %nmask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nmask, align 4
  %or = or i32 %25, %23
  %neg = xor i32 %or, -1
  %and23 = and i32 %retval.0.i, %neg
  %26 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %m, align 4
  %mshift = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 2
  %28 = ptrtoint ptr %mshift to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mshift, align 4
  %conv24 = zext i8 %29 to i32
  %shl = shl i32 %27, %conv24
  %30 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n, align 4
  %nshift = getelementptr inbounds %struct.clk_fractional_divider, ptr %hw, i32 0, i32 5
  %32 = ptrtoint ptr %nshift to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nshift, align 4
  %conv25 = zext i8 %33 to i32
  %shl26 = shl i32 %31, %conv25
  %or27 = or i32 %shl, %and23
  %or28 = or i32 %or27, %shl26
  %34 = ptrtoint ptr %flags8 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags8, align 4
  %36 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i50 = icmp eq i8 %36, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @arm_heavy_mb() #5
  br i1 %tobool.not.i50, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %clk_fd_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg2.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %or28) #5, !srcloc !23
  br label %clk_fd_writel.exit

do.body1.i:                                       ; preds = %clk_fd_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %39 = call i32 @llvm.bswap.i32(i32 %or28) #5
  %40 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg2.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #5, !srcloc !23
  br label %clk_fd_writel.exit

clk_fd_writel.exit:                               ; preds = %do.body1.i, %do.body.i
  %42 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lock, align 4
  %tobool30.not = icmp eq ptr %43, null
  br i1 %tobool30.not, label %clk_fd_writel.exit.if.end34_crit_edge, label %if.then31

clk_fd_writel.exit.if.end34_crit_edge:            ; preds = %clk_fd_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then31:                                        ; preds = %clk_fd_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %43, i32 noundef %flags.0) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %clk_fd_writel.exit.if.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_hw_register_fractional_divider(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %reg, i8 noundef zeroext %mshift, i8 noundef zeroext %mwidth, i8 noundef zeroext %nshift, i8 noundef zeroext %nwidth, i8 noundef zeroext %clk_divider_flags, ptr noundef %lock) #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 44) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @clk_fractional_divider_ops, ptr %ops, align 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %flags, ptr %flags3, align 4
  %7 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent_name.addr, align 4
  %tobool4.not = icmp eq ptr %8, null
  %parent_name.addr. = select i1 %tobool4.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool5.not = icmp ne ptr %8, null
  %conv = zext i1 %tobool5.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %num_parents, align 4
  %reg7 = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg, ptr %reg7, align 4
  %mshift8 = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %mshift8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %mshift, ptr %mshift8, align 8
  %mwidth9 = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %mwidth9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %mwidth, ptr %mwidth9, align 1
  %conv10 = zext i8 %mwidth to i32
  %sub11 = sub nsw i32 32, %conv10
  %shr = lshr i32 -1, %sub11
  %conv12 = zext i8 %mshift to i32
  %shl = shl i32 %shr, %conv12
  %mmask = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %mmask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl, ptr %mmask, align 4
  %nshift13 = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %nshift13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %nshift, ptr %nshift13, align 8
  %nwidth14 = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %nwidth14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %nwidth, ptr %nwidth14, align 1
  %conv15 = zext i8 %nwidth to i32
  %sub17 = sub nsw i32 32, %conv15
  %shr18 = lshr i32 -1, %sub17
  %conv21 = zext i8 %nshift to i32
  %shl22 = shl i32 %shr18, %conv21
  %nmask = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %nmask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl22, ptr %nmask, align 4
  %flags23 = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %flags23 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %clk_divider_flags, ptr %flags23, align 8
  %lock24 = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %lock24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %lock, ptr %lock24, align 8
  %init26 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %init26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %init, ptr %init26, align 8
  %call28 = call i32 @clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end.cleanup_crit_edge, label %if.then30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %21 = inttoptr i32 %call28 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %21, %if.then30 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_register_fractional_divider(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %reg, i8 noundef zeroext %mshift, i8 noundef zeroext %mwidth, i8 noundef zeroext %nshift, i8 noundef zeroext %nwidth, i8 noundef zeroext %clk_divider_flags, ptr noundef %lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_register_fractional_divider(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %reg, i8 noundef zeroext %mshift, i8 noundef zeroext %mwidth, i8 noundef zeroext %nshift, i8 noundef zeroext %nwidth, i8 noundef zeroext %clk_divider_flags, ptr noundef %lock)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_hw_unregister_fractional_divider(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_hw_unregister(ptr noundef %hw) #5
  tail call void @kfree(ptr noundef %hw) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @clk_fractional_divider_ops, !1, !"clk_fractional_divider_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-fractional-divider.c", i32 186, i32 22}
!2 = !{ptr @__ksymtab_clk_fractional_divider_ops, !3, !"__ksymtab_clk_fractional_divider_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-fractional-divider.c", i32 191, i32 1}
!4 = !{ptr @__ksymtab_clk_hw_register_fractional_divider, !5, !"__ksymtab_clk_hw_register_fractional_divider", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-fractional-divider.c", i32 233, i32 1}
!6 = !{ptr @__ksymtab_clk_register_fractional_divider, !7, !"__ksymtab_clk_register_fractional_divider", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-fractional-divider.c", i32 249, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i32 0, i32 33}
!18 = !{i64 2152893982}
!19 = !{i64 2152894428}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148946515, i64 2148946795, i64 2148947129, i64 2148947463}
!22 = !{!"auto-init"}
!23 = !{i64 4031131}
