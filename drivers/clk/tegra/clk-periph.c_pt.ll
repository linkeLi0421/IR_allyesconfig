; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-periph.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-periph.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_clk_periph = type { i32, %struct.clk_hw, %struct.clk_mux, %struct.tegra_clk_frac_div, %struct.tegra_clk_periph_gate, ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.tegra_clk_periph_gate = type { i32, %struct.clk_hw, ptr, i8, i32, ptr, ptr }
%struct.tegra_periph_init_data = type { ptr, i32, %union.anon.2, i32, %struct.tegra_clk_periph, i32, ptr, ptr, i32 }
%union.anon.2 = type { ptr }

@tegra_clk_periph_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_periph_enable, ptr @clk_periph_disable, ptr @clk_periph_is_enabled, ptr @clk_periph_disable_unused, ptr null, ptr @clk_periph_restore_context, ptr @clk_periph_recalc_rate, ptr @clk_periph_round_rate, ptr null, ptr @clk_periph_set_parent, ptr @clk_periph_get_parent, ptr @clk_periph_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/tegra/clk-periph.c\00", [33 x i8] zeroinitializer }, align 32
@tegra_clk_periph_nodiv_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_periph_enable, ptr @clk_periph_disable, ptr @clk_periph_is_enabled, ptr @clk_periph_disable_unused, ptr null, ptr @clk_periph_restore_context, ptr null, ptr null, ptr null, ptr @clk_periph_set_parent, ptr @clk_periph_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_clk_periph_no_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_periph_restore_context, ptr @clk_periph_recalc_rate, ptr @clk_periph_round_rate, ptr null, ptr @clk_periph_set_parent, ptr @clk_periph_get_parent, ptr @clk_periph_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"tegra_clk_periph_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 129, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 120, i32 6 }
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"tegra_clk_periph_nodiv_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 142, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [29 x i8] c"tegra_clk_periph_no_gate_ops\00", align 1
@___asan_gen_.11 = private constant [34 x i8] c"../drivers/clk/tegra/clk-periph.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 152, i32 29 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @tegra_clk_periph_ops, ptr @.str, ptr @tegra_clk_periph_nodiv_ops, ptr @tegra_clk_periph_no_gate_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_periph_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_periph_nodiv_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_periph_no_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_periph_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_ops1 = getelementptr i8, ptr %hw, i32 112
  %0 = ptrtoint ptr %gate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gate_ops1, align 4
  %hw2 = getelementptr i8, ptr %hw, i32 72
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr i8, ptr %hw, i32 76
  %4 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %clk1.i, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %7 = ptrtoint ptr %hw2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %hw2, align 4
  %enable = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable, align 4
  %call = tail call i32 %9(ptr noundef %hw2) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_periph_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_ops1 = getelementptr i8, ptr %hw, i32 112
  %0 = ptrtoint ptr %gate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gate_ops1, align 4
  %hw2 = getelementptr i8, ptr %hw, i32 72
  %disable = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 4
  tail call void %3(ptr noundef %hw2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_periph_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_ops1 = getelementptr i8, ptr %hw, i32 112
  %0 = ptrtoint ptr %gate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gate_ops1, align 4
  %hw2 = getelementptr i8, ptr %hw, i32 72
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr i8, ptr %hw, i32 76
  %4 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %clk1.i, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %7 = ptrtoint ptr %hw2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %hw2, align 4
  %is_enabled = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is_enabled, align 4
  %call = tail call i32 %9(ptr noundef %hw2) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_periph_disable_unused(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_ops1 = getelementptr i8, ptr %hw, i32 112
  %0 = ptrtoint ptr %gate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gate_ops1, align 4
  %hw2 = getelementptr i8, ptr %hw, i32 72
  %disable_unused = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %disable_unused to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable_unused, align 4
  tail call void %3(ptr noundef %hw2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_periph_restore_context(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %div_ops1 = getelementptr i8, ptr %hw, i32 108
  %0 = ptrtoint ptr %div_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div_ops1, align 4
  %divider = getelementptr i8, ptr %hw, i32 44
  %call = tail call i32 @clk_hw_get_parent_index(ptr noundef %hw) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end24, !prof !17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  %flags = getelementptr i8, ptr %hw, i32 88
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 4
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool25.not = icmp eq i8 %4, 0
  br i1 %tobool25.not, label %if.then26, label %if.end24.if.end27_crit_edge

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %restore_context = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %restore_context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %restore_context, align 4
  tail call void %6(ptr noundef %divider) #3
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  %conv28 = trunc i32 %call to i8
  %mux_ops1.i = getelementptr i8, ptr %hw, i32 104
  %7 = ptrtoint ptr %mux_ops1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mux_ops1.i, align 4
  %mux.i = getelementptr i8, ptr %hw, i32 12
  %clk.i.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk.i.i, align 4
  %clk1.i.i = getelementptr i8, ptr %hw, i32 16
  %11 = ptrtoint ptr %clk1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %clk1.i.i, align 4
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %14 = ptrtoint ptr %mux.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mux.i, align 4
  %set_parent.i = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 13
  %15 = ptrtoint ptr %set_parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_parent.i, align 4
  %call.i = tail call i32 %16(ptr noundef %mux.i, i8 noundef zeroext %conv28) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_periph_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %div_ops1 = getelementptr i8, ptr %hw, i32 108
  %0 = ptrtoint ptr %div_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div_ops1, align 4
  %divider = getelementptr i8, ptr %hw, i32 44
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr i8, ptr %hw, i32 48
  %4 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %clk1.i, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %7 = ptrtoint ptr %divider to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %divider, align 4
  %recalc_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %recalc_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recalc_rate, align 4
  %call = tail call i32 %9(ptr noundef %divider, i32 noundef %parent_rate) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_periph_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %div_ops1 = getelementptr i8, ptr %hw, i32 108
  %0 = ptrtoint ptr %div_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div_ops1, align 4
  %divider = getelementptr i8, ptr %hw, i32 44
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr i8, ptr %hw, i32 48
  %4 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %clk1.i, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %7 = ptrtoint ptr %divider to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %divider, align 4
  %round_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %round_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %round_rate, align 4
  %call = tail call i32 %9(ptr noundef %divider, i32 noundef %rate, ptr noundef %prate) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_periph_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mux_ops1 = getelementptr i8, ptr %hw, i32 104
  %0 = ptrtoint ptr %mux_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux_ops1, align 4
  %mux = getelementptr i8, ptr %hw, i32 12
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr i8, ptr %hw, i32 16
  %4 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %clk1.i, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %7 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %mux, align 4
  %set_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %set_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_parent, align 4
  %call = tail call i32 %9(ptr noundef %mux, i8 noundef zeroext %index) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_periph_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mux_ops1 = getelementptr i8, ptr %hw, i32 104
  %0 = ptrtoint ptr %mux_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux_ops1, align 4
  %mux = getelementptr i8, ptr %hw, i32 12
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr i8, ptr %hw, i32 16
  %4 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %clk1.i, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %7 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %mux, align 4
  %get_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %get_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_parent, align 4
  %call = tail call zeroext i8 %9(ptr noundef %mux) #3
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_periph_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %div_ops1 = getelementptr i8, ptr %hw, i32 108
  %0 = ptrtoint ptr %div_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div_ops1, align 4
  %divider = getelementptr i8, ptr %hw, i32 44
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr i8, ptr %hw, i32 48
  %4 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %clk1.i, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %7 = ptrtoint ptr %divider to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %divider, align 4
  %set_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_rate, align 4
  %call = tail call i32 %9(ptr noundef %divider, i32 noundef %rate, i32 noundef %parent_rate) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_periph(ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, ptr noundef %periph, ptr noundef %clk_base, i32 noundef %offset, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #3
  %0 = getelementptr inbounds i8, ptr %init.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 20)
  %flags1.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags1.i, align 4
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and10.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %tegra_clk_periph_ops.tegra_clk_periph_no_gate_ops = select i1 %tobool11.not.i, ptr @tegra_clk_periph_ops, ptr @tegra_clk_periph_no_gate_ops
  %tegra_clk_periph_ops.sink = select i1 %tobool.not.i, ptr %tegra_clk_periph_ops.tegra_clk_periph_no_gate_ops, ptr @tegra_clk_periph_nodiv_ops
  %4 = lshr exact i32 %and.i, 2
  %5 = or i32 %4, %flags
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tegra_clk_periph_ops.sink, ptr %0, align 4
  %7 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %init.i, align 4
  %flags18.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %8 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %flags18.i, align 4
  %parent_names19.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names19.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_names, ptr %parent_names19.i, align 4
  %conv20.i = trunc i32 %num_parents to i8
  %num_parents21.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents21.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv20.i, ptr %num_parents21.i, align 4
  %clk_num.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %clk_num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_num.i, align 4
  %call.i = tail call ptr @get_reg_bank(i32 noundef %12) #3
  %tobool23.not.i = icmp eq ptr %call.i, null
  br i1 %tobool23.not.i, label %entry._tegra_clk_register_periph.exit_crit_edge, label %if.end26.i

entry._tegra_clk_register_periph.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %_tegra_clk_register_periph.exit

if.end26.i:                                       ; preds = %entry
  %hw.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 1
  %init27.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %init27.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %init.i, ptr %init27.i, align 4
  %14 = ptrtoint ptr %periph to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 404886051, ptr %periph, align 4
  %add.ptr.i = getelementptr i8, ptr %clk_base, i32 %offset
  %reg.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %reg.i, align 4
  %spec.select.i = select i1 %tobool.not.i, ptr %add.ptr.i, ptr null
  %reg31.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %reg31.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.select.i, ptr %reg31.i, align 4
  %clk_base33.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %clk_base33.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %clk_base, ptr %clk_base33.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %regs.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %19 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %enable_refcnt.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 5
  %20 = ptrtoint ptr %enable_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %enable_refcnt.i, align 4
  %call37.i = call ptr @clk_register(ptr noundef null, ptr noundef %hw.i) #3
  %cmp.i.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end26.i._tegra_clk_register_periph.exit_crit_edge, label %if.end40.i

if.end26.i._tegra_clk_register_periph.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_tegra_clk_register_periph.exit

if.end40.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  %clk43.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %clk43.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37.i, ptr %clk43.i, align 4
  %spec.select84.i = select i1 %tobool.not.i, ptr %call37.i, ptr null
  %clk52.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %clk52.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spec.select84.i, ptr %clk52.i, align 4
  %clk55.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 1, i32 1
  %23 = ptrtoint ptr %clk55.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call37.i, ptr %clk55.i, align 4
  br label %_tegra_clk_register_periph.exit

_tegra_clk_register_periph.exit:                  ; preds = %if.end40.i, %if.end26.i._tegra_clk_register_periph.exit_crit_edge, %entry._tegra_clk_register_periph.exit_crit_edge
  %retval.0.i = phi ptr [ %call37.i, %if.end40.i ], [ %call37.i, %if.end26.i._tegra_clk_register_periph.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry._tegra_clk_register_periph.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #3
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_periph_nodiv(ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, ptr noundef %periph, ptr noundef %clk_base, i32 noundef %offset) local_unnamed_addr #0 align 64 {
if.end16.i:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = or i8 %1, 16
  store i8 %2, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #3
  %3 = getelementptr inbounds i8, ptr %init.i, i32 4
  %4 = getelementptr inbounds i8, ptr %init.i, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 12)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tegra_clk_periph_nodiv_ops, ptr %3, align 4
  %7 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %init.i, align 4
  %flags18.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %8 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %flags18.i, align 4
  %parent_names19.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names19.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_names, ptr %parent_names19.i, align 4
  %conv20.i = trunc i32 %num_parents to i8
  %num_parents21.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents21.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv20.i, ptr %num_parents21.i, align 4
  %clk_num.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %clk_num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_num.i, align 4
  %call.i = tail call ptr @get_reg_bank(i32 noundef %12) #3
  %tobool23.not.i = icmp eq ptr %call.i, null
  br i1 %tobool23.not.i, label %if.end16.i._tegra_clk_register_periph.exit_crit_edge, label %if.end26.i

if.end16.i._tegra_clk_register_periph.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_tegra_clk_register_periph.exit

if.end26.i:                                       ; preds = %if.end16.i
  %hw.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 1
  %init27.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %init27.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %init.i, ptr %init27.i, align 4
  %14 = ptrtoint ptr %periph to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 404886051, ptr %periph, align 4
  %add.ptr.i = getelementptr i8, ptr %clk_base, i32 %offset
  %reg.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %reg.i, align 4
  %reg31.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %reg31.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %reg31.i, align 4
  %clk_base33.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %clk_base33.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %clk_base, ptr %clk_base33.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %regs.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %19 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %enable_refcnt.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 5
  %20 = ptrtoint ptr %enable_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %enable_refcnt.i, align 4
  %call37.i = call ptr @clk_register(ptr noundef null, ptr noundef %hw.i) #3
  %cmp.i.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end26.i._tegra_clk_register_periph.exit_crit_edge, label %if.end40.i

if.end26.i._tegra_clk_register_periph.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_tegra_clk_register_periph.exit

if.end40.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  %clk43.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %clk43.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37.i, ptr %clk43.i, align 4
  %clk52.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %clk52.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %clk52.i, align 4
  %clk55.i = getelementptr inbounds %struct.tegra_clk_periph, ptr %periph, i32 0, i32 4, i32 1, i32 1
  %23 = ptrtoint ptr %clk55.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call37.i, ptr %clk55.i, align 4
  br label %_tegra_clk_register_periph.exit

_tegra_clk_register_periph.exit:                  ; preds = %if.end40.i, %if.end26.i._tegra_clk_register_periph.exit_crit_edge, %if.end16.i._tegra_clk_register_periph.exit_crit_edge
  %retval.0.i = phi ptr [ %call37.i, %if.end40.i ], [ %call37.i, %if.end26.i._tegra_clk_register_periph.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end16.i._tegra_clk_register_periph.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #3
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_periph_data(ptr noundef %clk_base, ptr noundef %init) local_unnamed_addr #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init, align 4
  %p = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 2
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %num_parents = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 3
  %4 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_parents, align 4
  %offset = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 5
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %flags = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 8
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #3
  %10 = getelementptr inbounds i8, ptr %init.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 20)
  %flags1.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 4, i32 3
  %12 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags1.i, align 4
  %conv.i = zext i8 %13 to i32
  %and.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and10.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %tegra_clk_periph_ops.tegra_clk_periph_no_gate_ops = select i1 %tobool11.not.i, ptr @tegra_clk_periph_ops, ptr @tegra_clk_periph_no_gate_ops
  %tegra_clk_periph_ops.sink = select i1 %tobool.not.i, ptr %tegra_clk_periph_ops.tegra_clk_periph_no_gate_ops, ptr @tegra_clk_periph_nodiv_ops
  %14 = lshr exact i32 %and.i, 2
  %15 = or i32 %14, %9
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tegra_clk_periph_ops.sink, ptr %10, align 4
  %17 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %init.i, align 4
  %flags18.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %18 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %flags18.i, align 4
  %parent_names19.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %19 = ptrtoint ptr %parent_names19.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %3, ptr %parent_names19.i, align 4
  %conv20.i = trunc i32 %5 to i8
  %num_parents21.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %20 = ptrtoint ptr %num_parents21.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv20.i, ptr %num_parents21.i, align 4
  %clk_num.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 4, i32 4
  %21 = ptrtoint ptr %clk_num.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clk_num.i, align 4
  %call.i = tail call ptr @get_reg_bank(i32 noundef %22) #3
  %tobool23.not.i = icmp eq ptr %call.i, null
  br i1 %tobool23.not.i, label %entry._tegra_clk_register_periph.exit_crit_edge, label %if.end26.i

entry._tegra_clk_register_periph.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %_tegra_clk_register_periph.exit

if.end26.i:                                       ; preds = %entry
  %periph = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4
  %hw.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 1
  %init27.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 1, i32 2
  %23 = ptrtoint ptr %init27.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %init.i, ptr %init27.i, align 4
  %24 = ptrtoint ptr %periph to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 404886051, ptr %periph, align 4
  %add.ptr.i = getelementptr i8, ptr %clk_base, i32 %7
  %reg.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 2, i32 1
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %reg.i, align 4
  %spec.select.i = select i1 %tobool.not.i, ptr %add.ptr.i, ptr null
  %reg31.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 3, i32 1
  %26 = ptrtoint ptr %reg31.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %spec.select.i, ptr %reg31.i, align 4
  %clk_base33.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 4, i32 2
  %27 = ptrtoint ptr %clk_base33.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %clk_base, ptr %clk_base33.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 4, i32 6
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %regs.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %29 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %enable_refcnt.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 4, i32 5
  %30 = ptrtoint ptr %enable_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %enable_refcnt.i, align 4
  %call37.i = call ptr @clk_register(ptr noundef null, ptr noundef %hw.i) #3
  %cmp.i.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end26.i._tegra_clk_register_periph.exit_crit_edge, label %if.end40.i

if.end26.i._tegra_clk_register_periph.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_tegra_clk_register_periph.exit

if.end40.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  %clk43.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 2, i32 0, i32 1
  %31 = ptrtoint ptr %clk43.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call37.i, ptr %clk43.i, align 4
  %spec.select84.i = select i1 %tobool.not.i, ptr %call37.i, ptr null
  %clk52.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %clk52.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %spec.select84.i, ptr %clk52.i, align 4
  %clk55.i = getelementptr inbounds %struct.tegra_periph_init_data, ptr %init, i32 0, i32 4, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %clk55.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call37.i, ptr %clk55.i, align 4
  br label %_tegra_clk_register_periph.exit

_tegra_clk_register_periph.exit:                  ; preds = %if.end40.i, %if.end26.i._tegra_clk_register_periph.exit_crit_edge, %entry._tegra_clk_register_periph.exit_crit_edge
  %retval.0.i = phi ptr [ %call37.i, %if.end40.i ], [ %call37.i, %if.end26.i._tegra_clk_register_periph.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry._tegra_clk_register_periph.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #3
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_parent_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_reg_bank(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
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

!0 = !{ptr @tegra_clk_periph_ops, !1, !"tegra_clk_periph_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-periph.c", i32 129, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-periph.c", i32 120, i32 6}
!4 = !{ptr @tegra_clk_periph_nodiv_ops, !5, !"tegra_clk_periph_nodiv_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-periph.c", i32 142, i32 29}
!6 = !{ptr @tegra_clk_periph_no_gate_ops, !7, !"tegra_clk_periph_no_gate_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/tegra/clk-periph.c", i32 152, i32 29}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2000}
