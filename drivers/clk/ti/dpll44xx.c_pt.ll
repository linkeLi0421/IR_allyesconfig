; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/dpll44xx.c_pt.bc'
source_filename = "../drivers/clk/ti/dpll44xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpll_data = type { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, i32, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@clkhwops_omap4_dpllmx = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr null, ptr null, ptr @omap4_dpllmx_allow_gatectrl, ptr @omap4_dpllmx_deny_gatectrl }, [16 x i8] zeroinitializer }, align 32
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"clkhwops_omap4_dpllmx\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../drivers/clk/ti/dpll44xx.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 73, i32 30 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @clkhwops_omap4_dpllmx], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_omap4_dpllmx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_dpllmx_allow_gatectrl(ptr noundef %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %flags = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %clksel_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 7
  %call = tail call i32 %4(ptr noundef %clksel_reg) #2
  %neg = select i1 %tobool1.not, i32 -257, i32 -1025
  %and2 = and i32 %call, %neg
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %5 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_writel, align 4
  tail call void %7(i32 noundef %and2, ptr noundef %clksel_reg) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_dpllmx_deny_gatectrl(ptr noundef %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %flags = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool1.not, i32 256, i32 1024
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %clksel_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 7
  %call = tail call i32 %4(ptr noundef %clksel_reg) #2
  %or = or i32 %call, %cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %5 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_writel, align 4
  tail call void %7(i32 noundef %or, ptr noundef %clksel_reg) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_dpll_regm4xen_recalc(ptr noundef %hw, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hw, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @omap2_get_dpll_rate(ptr noundef nonnull %hw) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  %call3 = tail call i32 %4(ptr noundef %control_reg) #2
  %and = and i32 %call3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %mul = shl i32 %call, 2
  %spec.select = select i1 %tobool4.not, i32 %call, i32 %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_get_dpll_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_dpll_regm4xen_round_rate(ptr noundef %hw, i32 noundef %target_rate, ptr nocapture readnone %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hw, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %last_rounded_m4xen = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %last_rounded_m4xen to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %last_rounded_m4xen, align 2
  %call = tail call i32 @omap2_dpll_round_rate(ptr noundef nonnull %hw, i32 noundef %target_rate, ptr noundef null) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end4:                                          ; preds = %if.end
  %div24 = lshr i32 %target_rate, 2
  %call5 = tail call i32 @omap2_dpll_round_rate(ptr noundef nonnull %hw, i32 noundef %div24, ptr noundef null) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  %last_rounded_rate = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %last_rounded_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_rounded_rate, align 4
  %mul = shl i32 %4, 2
  store i32 %mul, ptr %last_rounded_rate, align 4
  %5 = ptrtoint ptr %last_rounded_m4xen to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %last_rounded_m4xen, align 2
  br label %out

out:                                              ; preds = %if.end8, %if.end.out_crit_edge
  %clk_ref.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ref.i, align 4
  %call.i = tail call i32 @clk_hw_get_rate(ptr noundef %7) #2
  %last_rounded_n.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %last_rounded_n.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %last_rounded_n.i, align 2
  %conv.i = zext i8 %9 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %div.i = udiv i32 %call.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %div.i)
  %cmp.i = icmp slt i32 %div.i, 1000000
  br i1 %cmp.i, label %land.lhs.true.i, label %out.if.else.i_crit_edge

out.if.else.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %out
  %last_rounded_m.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %last_rounded_m.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %last_rounded_m.i, align 4
  %conv1.i = zext i16 %11 to i32
  %mul.i = mul i32 %div.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %mul.i)
  %cmp3.i = icmp slt i32 %mul.i, 100000000
  br i1 %cmp3.i, label %land.lhs.true.i.omap4_dpll_lpmode_recalc.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i

land.lhs.true.i.omap4_dpll_lpmode_recalc.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %omap4_dpll_lpmode_recalc.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %out.if.else.i_crit_edge
  br label %omap4_dpll_lpmode_recalc.exit

omap4_dpll_lpmode_recalc.exit:                    ; preds = %if.else.i, %land.lhs.true.i.omap4_dpll_lpmode_recalc.exit_crit_edge
  %.sink.i = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true.i.omap4_dpll_lpmode_recalc.exit_crit_edge ]
  %last_rounded_lpmode5.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %last_rounded_lpmode5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink.i, ptr %last_rounded_lpmode5.i, align 1
  %last_rounded_rate10 = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %last_rounded_rate10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_rounded_rate10, align 4
  br label %cleanup

cleanup:                                          ; preds = %omap4_dpll_lpmode_recalc.exit, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %omap4_dpll_lpmode_recalc.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dpll_round_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_dpll_regm4xen_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %2 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpll_data, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %clk_bypass = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk_bypass to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_bypass, align 4
  %call = tail call i32 @clk_hw_get_rate(ptr noundef %5) #2
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp = icmp eq i32 %call, %7
  br i1 %cmp, label %land.lhs.true, label %if.end3.if.else_crit_edge

if.end3.if.else_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true:                                    ; preds = %if.end3
  %modes = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %modes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %modes, align 4
  %10 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end3.if.else_crit_edge
  %tobool.not.i = icmp eq ptr %hw, null
  br i1 %tobool.not.i, label %if.else.omap4_dpll_regm4xen_round_rate.exit_crit_edge, label %lor.lhs.false.i

if.else.omap4_dpll_regm4xen_round_rate.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %omap4_dpll_regm4xen_round_rate.exit

lor.lhs.false.i:                                  ; preds = %if.else
  %11 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.omap4_dpll_regm4xen_round_rate.exit_crit_edge, label %if.end.i

lor.lhs.false.i.omap4_dpll_regm4xen_round_rate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %omap4_dpll_regm4xen_round_rate.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %last_rounded_m4xen.i = getelementptr inbounds %struct.dpll_data, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %last_rounded_m4xen.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %last_rounded_m4xen.i, align 2
  %call.i = tail call i32 @omap2_dpll_round_rate(ptr noundef nonnull %hw, i32 noundef %7, ptr noundef null) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp.not.i, label %if.end4.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %out.i

if.end4.i:                                        ; preds = %if.end.i
  %div24.i = lshr i32 %7, 2
  %call5.i = tail call i32 @omap2_dpll_round_rate(ptr noundef nonnull %hw, i32 noundef %div24.i, ptr noundef null) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, -1
  br i1 %cmp6.i, label %if.end4.i.omap4_dpll_regm4xen_round_rate.exit_crit_edge, label %if.end8.i

if.end4.i.omap4_dpll_regm4xen_round_rate.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %omap4_dpll_regm4xen_round_rate.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  %last_rounded_rate.i = getelementptr inbounds %struct.dpll_data, ptr %12, i32 0, i32 7
  %14 = ptrtoint ptr %last_rounded_rate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_rounded_rate.i, align 4
  %mul.i = shl i32 %15, 2
  store i32 %mul.i, ptr %last_rounded_rate.i, align 4
  %16 = ptrtoint ptr %last_rounded_m4xen.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %last_rounded_m4xen.i, align 2
  br label %out.i

out.i:                                            ; preds = %if.end8.i, %if.end.i.out.i_crit_edge
  %clk_ref.i.i = getelementptr inbounds %struct.dpll_data, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %clk_ref.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_ref.i.i, align 4
  %call.i.i = tail call i32 @clk_hw_get_rate(ptr noundef %18) #2
  %last_rounded_n.i.i = getelementptr inbounds %struct.dpll_data, ptr %12, i32 0, i32 12
  %19 = ptrtoint ptr %last_rounded_n.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %last_rounded_n.i.i, align 2
  %conv.i.i = zext i8 %20 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %div.i.i = udiv i32 %call.i.i, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %div.i.i)
  %cmp.i.i = icmp slt i32 %div.i.i, 1000000
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %out.i.if.else.i.i_crit_edge

out.i.if.else.i.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %out.i
  %last_rounded_m.i.i = getelementptr inbounds %struct.dpll_data, ptr %12, i32 0, i32 8
  %21 = ptrtoint ptr %last_rounded_m.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %last_rounded_m.i.i, align 4
  %conv1.i.i = zext i16 %22 to i32
  %mul.i.i = mul i32 %div.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %mul.i.i)
  %cmp3.i.i = icmp slt i32 %mul.i.i, 100000000
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.omap4_dpll_lpmode_recalc.exit.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i.i

land.lhs.true.i.i.omap4_dpll_lpmode_recalc.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %omap4_dpll_lpmode_recalc.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %out.i.if.else.i.i_crit_edge
  br label %omap4_dpll_lpmode_recalc.exit.i

omap4_dpll_lpmode_recalc.exit.i:                  ; preds = %if.else.i.i, %land.lhs.true.i.i.omap4_dpll_lpmode_recalc.exit.i_crit_edge
  %.sink.i.i = phi i8 [ 0, %if.else.i.i ], [ 1, %land.lhs.true.i.i.omap4_dpll_lpmode_recalc.exit.i_crit_edge ]
  %last_rounded_lpmode5.i.i = getelementptr inbounds %struct.dpll_data, ptr %12, i32 0, i32 10
  %23 = ptrtoint ptr %last_rounded_lpmode5.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink.i.i, ptr %last_rounded_lpmode5.i.i, align 1
  %last_rounded_rate10.i = getelementptr inbounds %struct.dpll_data, ptr %12, i32 0, i32 7
  %24 = ptrtoint ptr %last_rounded_rate10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_rounded_rate10.i, align 4
  br label %omap4_dpll_regm4xen_round_rate.exit

omap4_dpll_regm4xen_round_rate.exit:              ; preds = %omap4_dpll_lpmode_recalc.exit.i, %if.end4.i.omap4_dpll_regm4xen_round_rate.exit_crit_edge, %lor.lhs.false.i.omap4_dpll_regm4xen_round_rate.exit_crit_edge, %if.else.omap4_dpll_regm4xen_round_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %25, %omap4_dpll_lpmode_recalc.exit.i ], [ -22, %lor.lhs.false.i.omap4_dpll_regm4xen_round_rate.exit_crit_edge ], [ -22, %if.else.omap4_dpll_regm4xen_round_rate.exit_crit_edge ], [ -1, %if.end4.i.omap4_dpll_regm4xen_round_rate.exit_crit_edge ]
  %26 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %req, align 4
  %clk_ref = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 4
  br label %if.end12

if.end12:                                         ; preds = %omap4_dpll_regm4xen_round_rate.exit, %land.lhs.true.if.end12_crit_edge
  %clk_ref.sink = phi ptr [ %clk_ref, %omap4_dpll_regm4xen_round_rate.exit ], [ %clk_bypass, %land.lhs.true.if.end12_crit_edge ]
  %27 = ptrtoint ptr %clk_ref.sink to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_ref.sink, align 4
  %best_parent_hw11 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %29 = ptrtoint ptr %best_parent_hw11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %best_parent_hw11, align 4
  %30 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %req, align 4
  %best_parent_rate14 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %32 = ptrtoint ptr %best_parent_rate14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %best_parent_rate14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @clkhwops_omap4_dpllmx, !1, !"clkhwops_omap4_dpllmx", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/dpll44xx.c", i32 73, i32 30}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
