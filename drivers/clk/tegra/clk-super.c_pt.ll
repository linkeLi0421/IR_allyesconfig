; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-super.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_clk_super_mux = type { %struct.clk_hw, ptr, %struct.tegra_clk_frac_div, ptr, i8, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@tegra_clk_super_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_super_restore_context, ptr @clk_super_recalc_rate, ptr @clk_super_round_rate, ptr null, ptr @clk_super_set_parent, ptr @clk_super_get_parent, ptr @clk_super_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_clk_super_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_super_mux_restore_context, ptr null, ptr null, ptr null, ptr @clk_super_set_parent, ptr @clk_super_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_clk_frac_div_ops = external dso_local constant %struct.clk_ops, align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/tegra/clk-super.c\00", [34 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 268435456, i64 536870912]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 268435456, i64 536870912]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 268435456, i64 536870912]
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"tegra_clk_super_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 191, i32 22 }
@___asan_gen_.6 = private unnamed_addr constant [24 x i8] c"tegra_clk_super_mux_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 138, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [33 x i8] c"../drivers/clk/tegra/clk-super.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 184, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @tegra_clk_super_ops, ptr @tegra_clk_super_mux_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_super_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_super_restore_context(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_hw_get_parent_index(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end23, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %frac_div = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 2
  %div_ops = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %div_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div_ops, align 4
  %restore_context = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %restore_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %restore_context, align 4
  tail call void %3(ptr noundef %frac_div) #5
  %conv = trunc i32 %call to i8
  %call24 = tail call i32 @clk_super_set_parent(ptr noundef %hw, i8 noundef zeroext %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_super_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frac_div = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 2
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %frac_div to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %frac_div, align 4
  %div_ops = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %div_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %div_ops, align 4
  %recalc_rate = getelementptr inbounds %struct.clk_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %recalc_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recalc_rate, align 4
  %call = tail call i32 %9(ptr noundef %frac_div, i32 noundef %parent_rate) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_super_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frac_div = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 2
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %frac_div to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %frac_div, align 4
  %div_ops = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %div_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %div_ops, align 4
  %round_rate = getelementptr inbounds %struct.clk_ops, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %round_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %round_rate, align 4
  %call = tail call i32 %9(ptr noundef %frac_div, i32 noundef %rate, ptr noundef %parent_rate) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_super_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 8
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
  %reg = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !16
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %5, -268435456
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.body17 [
    i32 268435456, label %if.end.cond.end_crit_edge
    i32 536870912, label %cond.false
  ]

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %width29 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 4
  %7 = ptrtoint ptr %width29 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %width29, align 4
  %phi.cast = zext i8 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %phi.cast, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %flags33 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 5
  %9 = ptrtoint ptr %flags33 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags33, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool36.not = icmp eq i8 %11, 0
  br i1 %tobool36.not, label %cond.end.if.end69_crit_edge, label %land.lhs.true

cond.end.if.end69_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

land.lhs.true:                                    ; preds = %cond.end
  %div2_index = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 6
  %12 = ptrtoint ptr %div2_index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %div2_index, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %index)
  %cmp39 = icmp eq i8 %13, %index
  br i1 %cmp39, label %land.lhs.true.if.then45_crit_edge, label %lor.lhs.false

land.lhs.true.if.then45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

lor.lhs.false:                                    ; preds = %land.lhs.true
  %pllx_index = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 7
  %14 = ptrtoint ptr %pllx_index to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pllx_index, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %index)
  %cmp43 = icmp eq i8 %15, %index
  br i1 %cmp43, label %lor.lhs.false.if.then45_crit_edge, label %lor.lhs.false.if.end69_crit_edge

lor.lhs.false.if.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %land.lhs.true.if.then45_crit_edge
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !16
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %and.i = and i32 %19, -268435456
  %20 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and.i, label %do.body4.i [
    i32 268435456, label %if.then45.cond.end.i_crit_edge
    i32 536870912, label %cond.false.i
  ]

if.then45.cond.end.i_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

do.body4.i:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

cond.false.i:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %width11.i = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 4
  %21 = ptrtoint ptr %width11.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %width11.i, align 4
  %phi.cast.i = zext i8 %22 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then45.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.cast.i, %cond.false.i ], [ 0, %if.then45.cond.end.i_crit_edge ]
  %shr.i = lshr i32 %19, %cond.i
  %width16.i = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 4
  %23 = ptrtoint ptr %width16.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %width16.i, align 4
  %conv17.i = zext i8 %24 to i32
  %notmask.i = shl nsw i32 -1, %conv17.i
  %sub.i = xor i32 %notmask.i, -1
  %and18.i = and i32 %shr.i, %sub.i
  %conv19.i = trunc i32 %and18.i to i8
  %25 = ptrtoint ptr %flags33 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags33, align 1
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool22.not.i = icmp ne i8 %27, 0
  %and23.i = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %or.cond.i = select i1 %tobool22.not.i, i1 %tobool24.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true25.i, label %cond.end.i.clk_super_get_parent.exit_crit_edge

cond.end.i.clk_super_get_parent.exit_crit_edge:   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_super_get_parent.exit

land.lhs.true25.i:                                ; preds = %cond.end.i
  %pllx_index.i = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 7
  %28 = ptrtoint ptr %pllx_index.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pllx_index.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %conv19.i)
  %cmp28.i = icmp eq i8 %29, %conv19.i
  br i1 %cmp28.i, label %if.then30.i, label %land.lhs.true25.i.clk_super_get_parent.exit_crit_edge

land.lhs.true25.i.clk_super_get_parent.exit_crit_edge: ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_super_get_parent.exit

if.then30.i:                                      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %div2_index to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %div2_index, align 2
  br label %clk_super_get_parent.exit

clk_super_get_parent.exit:                        ; preds = %if.then30.i, %land.lhs.true25.i.clk_super_get_parent.exit_crit_edge, %cond.end.i.clk_super_get_parent.exit_crit_edge
  %source.0.i = phi i8 [ %31, %if.then30.i ], [ %conv19.i, %land.lhs.true25.i.clk_super_get_parent.exit_crit_edge ], [ %conv19.i, %cond.end.i.clk_super_get_parent.exit_crit_edge ]
  %32 = ptrtoint ptr %div2_index to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %div2_index, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %source.0.i, i8 %33)
  %cmp50 = icmp eq i8 %source.0.i, %33
  br i1 %cmp50, label %clk_super_get_parent.exit.out_crit_edge, label %lor.lhs.false52

clk_super_get_parent.exit.out_crit_edge:          ; preds = %clk_super_get_parent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false52:                                  ; preds = %clk_super_get_parent.exit
  %pllx_index54 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 7
  %34 = ptrtoint ptr %pllx_index54 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pllx_index54, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %source.0.i, i8 %35)
  %cmp56 = icmp eq i8 %source.0.i, %35
  br i1 %cmp56, label %lor.lhs.false52.out_crit_edge, label %if.end59

lor.lhs.false52.out_crit_edge:                    ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end59:                                         ; preds = %lor.lhs.false52
  %xor = xor i32 %5, 65536
  %36 = tail call i32 @llvm.bswap.i32(i32 %xor)
  %37 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #5, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 429496) #5
  %40 = ptrtoint ptr %div2_index to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %div2_index, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %index)
  %cmp64 = icmp eq i8 %41, %index
  br i1 %cmp64, label %if.then66, label %if.end59.if.end69_crit_edge

if.end59.if.end69_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then66:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %pllx_index54 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pllx_index54, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end59.if.end69_crit_edge, %lor.lhs.false.if.end69_crit_edge, %cond.end.if.end69_crit_edge
  %val.0 = phi i32 [ %xor, %if.then66 ], [ %xor, %if.end59.if.end69_crit_edge ], [ %5, %lor.lhs.false.if.end69_crit_edge ], [ %5, %cond.end.if.end69_crit_edge ]
  %index.addr.0 = phi i8 [ %43, %if.then66 ], [ %index, %if.end59.if.end69_crit_edge ], [ %index, %lor.lhs.false.if.end69_crit_edge ], [ %index, %cond.end.if.end69_crit_edge ]
  %44 = ptrtoint ptr %flags33 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flags33, align 1
  %46 = and i8 %45, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool73.not = icmp ne i8 %46, 0
  %47 = and i8 %index.addr.0, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %47)
  %switch = icmp eq i8 %47, 4
  %or.cond154 = select i1 %tobool73.not, i1 %switch, i1 false
  br i1 %or.cond154, label %if.then82, label %if.end69.if.end83_crit_edge

if.end69.if.end83_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then82:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tegra_clk_set_pllp_out_cpu(i1 noundef zeroext true) #5
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end69.if.end83_crit_edge
  %width84 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 4
  %48 = ptrtoint ptr %width84 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %width84, align 4
  %conv85 = zext i8 %49 to i32
  %notmask = shl nsw i32 -1, %conv85
  %sub = xor i32 %notmask, -1
  %shl87 = shl i32 %sub, %cond
  %neg = xor i32 %shl87, -1
  %and88 = and i32 %val.0, %neg
  %conv89 = zext i8 %index.addr.0 to i32
  %and94 = and i32 %sub, %conv89
  %shl96 = shl i32 %and94, %cond
  %or = or i32 %and88, %shl96
  %50 = tail call i32 @llvm.bswap.i32(i32 %or)
  %51 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #5, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 429496) #5
  %54 = ptrtoint ptr %flags33 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flags33, align 1
  %56 = and i8 %55, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool101.not = icmp eq i8 %56, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %index.addr.0)
  %cmp104.not = icmp eq i8 %index.addr.0, 4
  %or.cond = select i1 %tobool101.not, i1 true, i1 %cmp104.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %index.addr.0)
  %cmp108.not = icmp eq i8 %index.addr.0, 5
  %or.cond153 = select i1 %or.cond, i1 true, i1 %cmp108.not
  br i1 %or.cond153, label %if.end83.out_crit_edge, label %if.then110

if.end83.out_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then110:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tegra_clk_set_pllp_out_cpu(i1 noundef zeroext false) #5
  br label %out

out:                                              ; preds = %if.then110, %if.end83.out_crit_edge, %lor.lhs.false52.out_crit_edge, %clk_super_get_parent.exit.out_crit_edge
  %err.0 = phi i32 [ 0, %if.then110 ], [ 0, %if.end83.out_crit_edge ], [ -22, %lor.lhs.false52.out_crit_edge ], [ -22, %clk_super_get_parent.exit.out_crit_edge ]
  %57 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lock, align 4
  %tobool113.not = icmp eq ptr %58, null
  br i1 %tobool113.not, label %out.if.end116_crit_edge, label %if.then114

out.if.end116_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then114:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %58, i32 noundef %flags.0) #5
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %out.if.end116_crit_edge
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_super_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !16
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, -268435456
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and, label %do.body4 [
    i32 268435456, label %entry.cond.end_crit_edge
    i32 536870912, label %cond.false
  ]

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %width11 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %width11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %width11, align 4
  %phi.cast = zext i8 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.cast, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %shr = lshr i32 %3, %cond
  %width16 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 4
  %7 = ptrtoint ptr %width16 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %width16, align 4
  %conv17 = zext i8 %8 to i32
  %notmask = shl nsw i32 -1, %conv17
  %sub = xor i32 %notmask, -1
  %and18 = and i32 %shr, %sub
  %conv19 = trunc i32 %and18 to i8
  %flags = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 5
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool22.not = icmp ne i8 %11, 0
  %and23 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond = select i1 %tobool22.not, i1 %tobool24.not, i1 false
  br i1 %or.cond, label %land.lhs.true25, label %cond.end.if.end31_crit_edge

cond.end.if.end31_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

land.lhs.true25:                                  ; preds = %cond.end
  %pllx_index = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 7
  %12 = ptrtoint ptr %pllx_index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pllx_index, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %conv19)
  %cmp28 = icmp eq i8 %13, %conv19
  br i1 %cmp28, label %if.then30, label %land.lhs.true25.if.end31_crit_edge

land.lhs.true25.if.end31_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  %div2_index = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 6
  %14 = ptrtoint ptr %div2_index to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %div2_index, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true25.if.end31_crit_edge, %cond.end.if.end31_crit_edge
  %source.0 = phi i8 [ %15, %if.then30 ], [ %conv19, %land.lhs.true25.if.end31_crit_edge ], [ %conv19, %cond.end.if.end31_crit_edge ]
  ret i8 %source.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_super_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frac_div = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 2
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %frac_div to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %frac_div, align 4
  %div_ops = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %div_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %div_ops, align 4
  %set_rate = getelementptr inbounds %struct.clk_ops, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_rate, align 4
  %call = tail call i32 %9(ptr noundef %frac_div, i32 noundef %rate, i32 noundef %parent_rate) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_super_mux(ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, i32 noundef %flags, ptr noundef %reg, i8 noundef zeroext %clk_super_flags, i8 noundef zeroext %width, i8 noundef zeroext %pllx_index, i8 noundef zeroext %div2_index, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 52) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tegra_clk_super_mux_ops, ptr %ops, align 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags3, align 4
  %parent_names4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_names, ptr %parent_names4, align 4
  %num_parents5 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %num_parents, ptr %num_parents5, align 4
  %reg6 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg, ptr %reg6, align 4
  %pllx_index7 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %pllx_index7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %pllx_index, ptr %pllx_index7, align 1
  %div2_index8 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %div2_index8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %div2_index, ptr %div2_index8, align 2
  %lock9 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lock, ptr %lock9, align 8
  %width10 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %width10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %width, ptr %width10, align 4
  %flags11 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %flags11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %clk_super_flags, ptr %flags11, align 1
  %init12 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init, ptr %init12, align 8
  %call14 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %call7.i.i) #5
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call14, %if.then16 ], [ %call14, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_dev_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_super_clk(ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, i32 noundef %flags, ptr noundef %reg, i8 noundef zeroext %clk_super_flags, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 52) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tegra_clk_super_ops, ptr %ops, align 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags3, align 4
  %parent_names4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_names, ptr %parent_names4, align 4
  %num_parents5 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %num_parents, ptr %num_parents5, align 4
  %reg6 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg, ptr %reg6, align 4
  %lock7 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %lock7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %lock7, align 8
  %width = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %width, align 4
  %flags8 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %flags8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %clk_super_flags, ptr %flags8, align 1
  %add.ptr = getelementptr i8, ptr %reg, i32 4
  %reg9 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %reg9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %reg9, align 4
  %shift = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %shift, align 1
  %width12 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %width12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %width12, align 2
  %frac_width = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %frac_width to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %frac_width, align 1
  %lock15 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %lock15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lock, ptr %lock15, align 4
  %div_ops = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %div_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tegra_clk_frac_div_ops, ptr %div_ops, align 8
  %init16 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %init16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %init, ptr %init16, align 8
  %call18 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call18, %if.then20 ], [ %call18, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_parent_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_clk_set_pllp_out_cpu(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_super_mux_restore_context(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_hw_get_parent_index(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end21, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %call to i8
  %call22 = tail call i32 @clk_super_set_parent(ptr noundef %hw, i8 noundef zeroext %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
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
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @tegra_clk_super_ops, !1, !"tegra_clk_super_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-super.c", i32 191, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-super.c", i32 184, i32 6}
!4 = !{ptr @tegra_clk_super_mux_ops, !5, !"tegra_clk_super_mux_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-super.c", i32 138, i32 29}
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
!16 = !{i64 1251604}
!17 = !{i64 2152549842, i64 2152550335, i64 2152549879, i64 2152549935, i64 2152549969, i64 2152549993, i64 2152550034, i64 2152550055, i64 2152550083, i64 2152550117}
!18 = !{i64 2152545194, i64 2152545687, i64 2152545231, i64 2152545287, i64 2152545321, i64 2152545345, i64 2152545386, i64 2152545407, i64 2152545435, i64 2152545469}
!19 = !{i64 1251186}
