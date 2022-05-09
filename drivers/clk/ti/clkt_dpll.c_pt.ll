; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clkt_dpll.c_pt.bc'
source_filename = "../drivers/clk/ti/clkt_dpll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.dpll_data = type { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, i32, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.ti_clk_features = type { i32, i32, i32, i32, i32, i8, i8 }

@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@omap2_dpll_round_rate.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clkt_dpll\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap2_dpll_round_rate\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/ti/clkt_dpll.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"clock: %s: starting DPLL round_rate, target rate %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@omap2_dpll_round_rate.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"clock: %s: m = %d: n = %d: new_rate = %lu\0A\00", [53 x i8] zeroinitializer }, align 32
@omap2_dpll_round_rate.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"clock: %s: cannot round to rate %lu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No fint limits available!\0A\00", [37 x i8] zeroinitializer }, align 32
@_dpll_test_fint.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_dpll_test_fint\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"rejecting n=%d due to Fint failure, lowering max_divider\0A\00", [38 x i8] zeroinitializer }, align 32
@_dpll_test_fint.__UNIQUE_ID_ddebug168 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"rejecting n=%d due to Fint failure, boosting min_divider\0A\00", [38 x i8] zeroinitializer }, align 32
@_dpll_test_fint.__UNIQUE_ID_ddebug169 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rejecting n=%d due to Fint failure\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 307, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 353, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 361, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 87, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 92, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 97, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [30 x i8] c"../drivers/clk/ti/clkt_dpll.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 103, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @omap2_init_dpll_parent(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  %call = tail call i32 %4(ptr noundef %control_reg) #3
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask, align 4
  %and = and i32 %6, %call
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false) #3, !range !33
  %shr = lshr i32 %and, %7
  %call.i = tail call ptr @ti_clk_get_features() #3
  %dpll_bypass_vals.i = getelementptr inbounds %struct.ti_clk_features, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %dpll_bypass_vals.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dpll_bypass_vals.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %mask.0.i = phi i8 [ %9, %if.end ], [ %conv5.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mask.0.i)
  %tobool.not.i = icmp eq i8 %mask.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.cleanup_crit_edge, label %while.body.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %10 = tail call i8 @llvm.cttz.i8(i8 %mask.0.i, i1 true) #3, !range !34
  %11 = zext i8 %10 to i32
  %shl.i = shl nuw i8 1, %10
  %conv5.i = xor i8 %shl.i, %mask.0.i
  %cmp.i = icmp eq i32 %shr, %11
  br i1 %cmp.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ -22, %entry.cleanup_crit_edge ], [ 0, %while.cond.i.cleanup_crit_edge ], [ 1, %while.body.i.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_get_dpll_rate(ptr nocapture noundef readonly %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  %call = tail call i32 %4(ptr noundef %control_reg) #3
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask, align 4
  %and = and i32 %6, %call
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false) #3, !range !33
  %shr = lshr i32 %and, %7
  %call.i = tail call ptr @ti_clk_get_features() #3
  %dpll_bypass_vals.i = getelementptr inbounds %struct.ti_clk_features, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %dpll_bypass_vals.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dpll_bypass_vals.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %mask.0.i = phi i8 [ %9, %if.end ], [ %conv5.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mask.0.i)
  %tobool.not.i = icmp eq i8 %mask.0.i, 0
  br i1 %tobool.not.i, label %if.end7, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %10 = tail call i8 @llvm.cttz.i8(i8 %mask.0.i, i1 true) #3, !range !34
  %11 = zext i8 %10 to i32
  %shl.i = shl nuw i8 1, %10
  %conv5.i = xor i8 %shl.i, %mask.0.i
  %cmp.i = icmp eq i32 %shr, %11
  br i1 %cmp.i, label %if.then5, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i

if.then5:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %clk_bypass = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %clk_bypass to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_bypass, align 4
  %call6 = tail call i32 @clk_hw_get_rate(ptr noundef %13) #3
  br label %cleanup

if.end7:                                          ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %14 = load ptr, ptr @ti_clk_ll_ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call9 = tail call i32 %16(ptr noundef nonnull %1) #3
  %mult_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %mult_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mult_mask, align 4
  %and10 = and i32 %18, %call9
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 false) #3, !range !33
  %shr13 = lshr i32 %and10, %19
  %div1_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %div1_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %div1_mask, align 4
  %and14 = and i32 %21, %call9
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #3, !range !33
  %shr17 = lshr i32 %and14, %22
  %clk_ref = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_ref, align 4
  %call18 = tail call i32 @clk_hw_get_rate(ptr noundef %24) #3
  %conv = zext i32 %call18 to i64
  %conv19 = zext i32 %shr13 to i64
  %mul = mul nuw i64 %conv, %conv19
  %add = add i32 %shr17, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp193 = icmp ult i64 %mul, 4294967296
  br i1 %cmp193, label %if.then197, label %if.else203, !prof !35

if.then197:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %conv198 = trunc i64 %mul to i32
  %div201 = udiv i32 %conv198, %add
  br label %cleanup

if.else203:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %mul) #6, !srcloc !36
  %asmresult1.i = extractvalue { i64, i64 } %25, 1
  %extract.t336 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else203, %if.then197, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ 0, %entry.cleanup_crit_edge ], [ %div201, %if.then197 ], [ %extract.t336, %if.else203 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_dpll_round_rate(ptr noundef %hw, i32 noundef %target_rate, ptr nocapture noundef readnone %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hw, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %max_rate = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %target_rate)
  %cmp = icmp ult i32 %3, %target_rate
  %or.cond = and i1 %tobool3.not, %cmp
  %target_rate.addr.0 = select i1 %or.cond, i32 %3, i32 %target_rate
  %clk_ref = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ref, align 4
  %call = tail call i32 @clk_hw_get_rate(ptr noundef %5) #3
  %call8 = tail call ptr @clk_hw_get_name(ptr noundef nonnull %hw) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2_dpll_round_rate.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2_dpll_round_rate, %if.then14)) #3
          to label %do.end [label %if.then14], !srcloc !37

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2_dpll_round_rate.__UNIQUE_ID_ddebug170, ptr noundef nonnull @.str.3, ptr noundef %call8, i32 noundef %target_rate.addr.0) #3
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end
  %div144 = lshr i32 %call, 6
  %div16 = udiv i32 %target_rate.addr.0, %div144
  %max_multiplier = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %max_multiplier to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_multiplier, align 4
  %conv = zext i16 %7 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %last_rounded_rate = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %last_rounded_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %last_rounded_rate, align 4
  %min_divider = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %min_divider to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %min_divider, align 1
  %max_divider = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %max_divider to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_divider, align 4
  %13 = zext i8 %10 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %13)
  %cmp19.not178 = icmp ult i16 %12, %13
  br i1 %cmp19.not178, label %do.end.do.body71_crit_edge, label %for.body.lr.ph

do.end.do.body71_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body71

for.body.lr.ph:                                   ; preds = %do.end
  %conv17 = zext i8 %10 to i32
  %conv.i.i = zext i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.0182 = phi i32 [ %conv17, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %prev_min_delta.0181 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %prev_min_delta.2, %for.inc.for.body_crit_edge ]
  %min_delta_n.0180 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %min_delta_n.2, %for.inc.for.body_crit_edge ]
  %min_delta_m.0179 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %min_delta_m.2, %for.inc.for.body_crit_edge ]
  %call21 = tail call fastcc i32 @_dpll_test_fint(ptr noundef nonnull %hw, i32 noundef %n.0182)
  %14 = zext i32 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call21, label %if.end29 [
    i32 -1, label %for.body.for.end_crit_edge
    i32 -2, label %for.body.for.inc_crit_edge
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end29:                                         ; preds = %for.body
  %mul30 = mul i32 %n.0182, %div16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul30, i32 %mul)
  %cmp31 = icmp sgt i32 %mul30, %mul
  br i1 %cmp31, label %if.end29.for.end_crit_edge, label %if.end34

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end34:                                         ; preds = %if.end29
  %mul30.frozen = freeze i32 %mul30
  %div.i = sdiv i32 %mul30.frozen, 64
  %15 = mul i32 %div.i, 64
  %rem.i.decomposed = sub i32 %mul30.frozen, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %rem.i.decomposed)
  %cmp.i = icmp sgt i32 %rem.i.decomposed, 31
  %spec.store.select.i = zext i1 %cmp.i to i32
  %add.i = add nsw i32 %div.i, %spec.store.select.i
  %conv1.i.i = zext i32 %add.i to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i)
  %cmp168.i.i = icmp ult i64 %mul.i.i, 4294967296
  br i1 %cmp168.i.i, label %if.then172.i.i, label %if.else178.i.i, !prof !35

if.then172.i.i:                                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  %conv173.i.i = trunc i64 %mul.i.i to i32
  %div176.i.i = udiv i32 %conv173.i.i, %n.0182
  br label %_dpll_compute_new_rate.exit.i

if.else178.i.i:                                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %n.0182, i64 %mul.i.i) #6, !srcloc !36
  %asmresult1.i.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t289.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %_dpll_compute_new_rate.exit.i

_dpll_compute_new_rate.exit.i:                    ; preds = %if.else178.i.i, %if.then172.i.i
  %num.0.off0.i.i = phi i32 [ %div176.i.i, %if.then172.i.i ], [ %extract.t289.i.i, %if.else178.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0.off0.i.i, i32 %target_rate.addr.0)
  %cmp1.i = icmp ugt i32 %num.0.off0.i.i, %target_rate.addr.0
  br i1 %cmp1.i, label %if.end3.i.thread, label %if.end3.i

if.end3.i:                                        ; preds = %_dpll_compute_new_rate.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp4.i = icmp slt i32 %add.i, 2
  br i1 %cmp4.i, label %if.end3.i.if.then8.i_crit_edge, label %if.end6.i

if.end3.i.if.then8.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8.i

if.end3.i.thread:                                 ; preds = %_dpll_compute_new_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %dec.i = add nsw i32 %add.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.i)
  %cmp4.i161 = icmp slt i32 %add.i, 3
  %spec.select = select i1 %cmp4.i161, i32 2, i32 %dec.i
  %spec.select176 = sext i1 %cmp4.i161 to i32
  br label %if.then8.i

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.off0.i.i)
  %cmp7.i = icmp eq i32 %num.0.off0.i.i, 0
  br i1 %cmp7.i, label %if.end6.i.if.then8.i_crit_edge, label %if.end6.i.if.end39_crit_edge

if.end6.i.if.end39_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.end6.i.if.then8.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i.if.then8.i_crit_edge, %if.end3.i.thread, %if.end3.i.if.then8.i_crit_edge
  %m.1 = phi i32 [ %add.i, %if.end6.i.if.then8.i_crit_edge ], [ 2, %if.end3.i.if.then8.i_crit_edge ], [ %spec.select, %if.end3.i.thread ]
  %r.0147.i = phi i32 [ 0, %if.end6.i.if.then8.i_crit_edge ], [ -1, %if.end3.i.if.then8.i_crit_edge ], [ %spec.select176, %if.end3.i.thread ]
  %conv1.i26.i = zext i32 %m.1 to i64
  %mul.i27.i = mul nuw nsw i64 %conv1.i26.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i27.i)
  %cmp168.i134.i = icmp ult i64 %mul.i27.i, 4294967296
  br i1 %cmp168.i134.i, label %if.then172.i138.i, label %if.else178.i141.i, !prof !35

if.then172.i138.i:                                ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv173.i136.i = trunc i64 %mul.i27.i to i32
  %div176.i137.i = udiv i32 %conv173.i136.i, %n.0182
  br label %_dpll_test_mult.exit

if.else178.i141.i:                                ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #5
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %n.0182, i64 %mul.i27.i) #6, !srcloc !36
  %asmresult1.i.i139.i = extractvalue { i64, i64 } %17, 1
  %extract.t289.i140.i = trunc i64 %asmresult1.i.i139.i to i32
  br label %_dpll_test_mult.exit

_dpll_test_mult.exit:                             ; preds = %if.else178.i141.i, %if.then172.i138.i
  %new_rate.1 = phi i32 [ %div176.i137.i, %if.then172.i138.i ], [ %extract.t289.i140.i, %if.else178.i141.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %r.0147.i)
  %cmp36 = icmp eq i32 %r.0147.i, -1
  br i1 %cmp36, label %_dpll_test_mult.exit.for.inc_crit_edge, label %_dpll_test_mult.exit.if.end39_crit_edge

_dpll_test_mult.exit.if.end39_crit_edge:          ; preds = %_dpll_test_mult.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

_dpll_test_mult.exit.for.inc_crit_edge:           ; preds = %_dpll_test_mult.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end39:                                         ; preds = %_dpll_test_mult.exit.if.end39_crit_edge, %if.end6.i.if.end39_crit_edge
  %new_rate.1173 = phi i32 [ %new_rate.1, %_dpll_test_mult.exit.if.end39_crit_edge ], [ %num.0.off0.i.i, %if.end6.i.if.end39_crit_edge ]
  %m.2171 = phi i32 [ %m.1, %_dpll_test_mult.exit.if.end39_crit_edge ], [ %add.i, %if.end6.i.if.end39_crit_edge ]
  %sub = sub i32 %target_rate.addr.0, %new_rate.1173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp40 = icmp slt i32 %sub, 0
  br i1 %cmp40, label %if.end39.for.inc_crit_edge, label %if.end43

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %prev_min_delta.0181)
  %cmp44 = icmp slt i32 %sub, %prev_min_delta.0181
  %min_delta_m.1 = select i1 %cmp44, i32 %m.2171, i32 %min_delta_m.0179
  %min_delta_n.1 = select i1 %cmp44, i32 %n.0182, i32 %min_delta_n.0180
  %18 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %prev_min_delta.0181)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2_dpll_round_rate.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2_dpll_round_rate, %if.then60)) #3
          to label %do.end63 [label %if.then60], !srcloc !37

if.then60:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2_dpll_round_rate.__UNIQUE_ID_ddebug171, ptr noundef nonnull @.str.4, ptr noundef %call8, i32 noundef %m.2171, i32 noundef %n.0182, i32 noundef %new_rate.1173) #3
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %if.end43
  call void @__sanitizer_cov_trace_cmp4(i32 %target_rate.addr.0, i32 %new_rate.1173)
  %cmp64 = icmp eq i32 %target_rate.addr.0, %new_rate.1173
  br i1 %cmp64, label %do.end63.for.end_crit_edge, label %do.end63.for.inc_crit_edge

do.end63.for.inc_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.end63.for.end_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc:                                          ; preds = %do.end63.for.inc_crit_edge, %if.end39.for.inc_crit_edge, %_dpll_test_mult.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %min_delta_m.2 = phi i32 [ %min_delta_m.0179, %_dpll_test_mult.exit.for.inc_crit_edge ], [ %min_delta_m.0179, %if.end39.for.inc_crit_edge ], [ %min_delta_m.1, %do.end63.for.inc_crit_edge ], [ %min_delta_m.0179, %for.body.for.inc_crit_edge ]
  %min_delta_n.2 = phi i32 [ %min_delta_n.0180, %_dpll_test_mult.exit.for.inc_crit_edge ], [ %min_delta_n.0180, %if.end39.for.inc_crit_edge ], [ %min_delta_n.1, %do.end63.for.inc_crit_edge ], [ %min_delta_n.0180, %for.body.for.inc_crit_edge ]
  %prev_min_delta.2 = phi i32 [ %prev_min_delta.0181, %_dpll_test_mult.exit.for.inc_crit_edge ], [ %prev_min_delta.0181, %if.end39.for.inc_crit_edge ], [ %18, %do.end63.for.inc_crit_edge ], [ %prev_min_delta.0181, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %n.0182, 1
  %19 = ptrtoint ptr %max_divider to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_divider, align 4
  %conv18 = zext i16 %20 to i32
  %cmp19.not.not = icmp ult i32 %n.0182, %conv18
  br i1 %cmp19.not.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end63.for.end_crit_edge, %if.end29.for.end_crit_edge, %for.body.for.end_crit_edge
  %min_delta_m.3 = phi i32 [ %min_delta_m.2, %for.inc.for.end_crit_edge ], [ %min_delta_m.0179, %if.end29.for.end_crit_edge ], [ %min_delta_m.1, %do.end63.for.end_crit_edge ], [ %min_delta_m.0179, %for.body.for.end_crit_edge ]
  %min_delta_n.3 = phi i32 [ %min_delta_n.2, %for.inc.for.end_crit_edge ], [ %min_delta_n.0180, %if.end29.for.end_crit_edge ], [ %min_delta_n.1, %do.end63.for.end_crit_edge ], [ %min_delta_n.0180, %for.body.for.end_crit_edge ]
  %prev_min_delta.3 = phi i32 [ %prev_min_delta.2, %for.inc.for.end_crit_edge ], [ %prev_min_delta.0181, %if.end29.for.end_crit_edge ], [ %18, %do.end63.for.end_crit_edge ], [ %prev_min_delta.0181, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %prev_min_delta.3)
  %cmp68 = icmp eq i32 %prev_min_delta.3, 2147483647
  br i1 %cmp68, label %for.end.do.body71_crit_edge, label %if.end87

for.end.do.body71_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body71

do.body71:                                        ; preds = %for.end.do.body71_crit_edge, %do.end.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2_dpll_round_rate.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2_dpll_round_rate, %if.then83)) #3
          to label %cleanup [label %if.then83], !srcloc !37

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2_dpll_round_rate.__UNIQUE_ID_ddebug172, ptr noundef nonnull @.str.5, ptr noundef %call8, i32 noundef %target_rate.addr.0) #3
  br label %cleanup

if.end87:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv88 = trunc i32 %min_delta_m.3 to i16
  %last_rounded_m = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %last_rounded_m to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv88, ptr %last_rounded_m, align 4
  %conv89 = trunc i32 %min_delta_n.3 to i8
  %last_rounded_n = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %last_rounded_n to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv89, ptr %last_rounded_n, align 2
  %sub90 = sub i32 %target_rate.addr.0, %prev_min_delta.3
  %23 = ptrtoint ptr %last_rounded_rate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub90, ptr %last_rounded_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.then83, %do.body71, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub90, %if.end87 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then83 ], [ -1, %do.body71 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_dpll_test_fint(ptr noundef %clk, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %clk) #3
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #3
  %div = udiv i32 %call1, %n
  %flags = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.else:                                          ; preds = %entry
  %call2 = tail call ptr @ti_clk_get_features() #3
  %fint_min3 = getelementptr inbounds %struct.ti_clk_features, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %fint_min3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fint_min3, align 4
  %call4 = tail call ptr @ti_clk_get_features() #3
  %fint_max5 = getelementptr inbounds %struct.ti_clk_features, ptr %call4, i32 0, i32 2
  %7 = ptrtoint ptr %fint_max5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fint_max5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %phi.cmp = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %phi.cmp121 = icmp eq i32 %8, 0
  %phi.sel = select i1 %phi.cmp, i1 true, i1 %phi.cmp121
  br i1 %phi.sel, label %do.end, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 87, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %cleanup

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %entry.if.end26_crit_edge
  %call27 = tail call ptr @ti_clk_get_features() #3
  %fint_min28 = getelementptr inbounds %struct.ti_clk_features, ptr %call27, i32 0, i32 1
  %9 = ptrtoint ptr %fint_min28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fint_min28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %10)
  %cmp = icmp slt i32 %div, %10
  br i1 %cmp, label %do.body31, label %if.else46

do.body31:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpll_test_fint.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpll_test_fint, %if.then41)) #3
          to label %do.end44 [label %if.then41], !srcloc !37

if.then41:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpll_test_fint.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.8, i32 noundef %n) #3
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body31
  %conv45 = trunc i32 %n to i16
  %max_divider = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %max_divider to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv45, ptr %max_divider, align 4
  br label %cleanup

if.else46:                                        ; preds = %if.end26
  %call47 = tail call ptr @ti_clk_get_features() #3
  %fint_max48 = getelementptr inbounds %struct.ti_clk_features, ptr %call47, i32 0, i32 2
  %12 = ptrtoint ptr %fint_max48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fint_max48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %13)
  %cmp49 = icmp sgt i32 %div, %13
  br i1 %cmp49, label %do.body52, label %if.else69

do.body52:                                        ; preds = %if.else46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpll_test_fint.__UNIQUE_ID_ddebug168, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpll_test_fint, %if.then64)) #3
          to label %do.end67 [label %if.then64], !srcloc !37

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpll_test_fint.__UNIQUE_ID_ddebug168, ptr noundef nonnull @.str.9, i32 noundef %n) #3
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %do.body52
  %conv68 = trunc i32 %n to i8
  %min_divider = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %min_divider to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv68, ptr %min_divider, align 1
  br label %cleanup

if.else69:                                        ; preds = %if.else46
  %call70 = tail call ptr @ti_clk_get_features() #3
  %fint_band1_max = getelementptr inbounds %struct.ti_clk_features, ptr %call70, i32 0, i32 3
  %15 = ptrtoint ptr %fint_band1_max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fint_band1_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %16)
  %cmp71 = icmp sgt i32 %div, %16
  br i1 %cmp71, label %land.lhs.true, label %if.else69.cleanup_crit_edge

if.else69.cleanup_crit_edge:                      ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else69
  %call73 = tail call ptr @ti_clk_get_features() #3
  %fint_band2_min = getelementptr inbounds %struct.ti_clk_features, ptr %call73, i32 0, i32 4
  %17 = ptrtoint ptr %fint_band2_min to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fint_band2_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %18)
  %cmp74 = icmp slt i32 %div, %18
  br i1 %cmp74, label %do.body77, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpll_test_fint.__UNIQUE_ID_ddebug169, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpll_test_fint, %if.then89)) #3
          to label %cleanup [label %if.then89], !srcloc !37

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpll_test_fint.__UNIQUE_ID_ddebug169, ptr noundef nonnull @.str.10, i32 noundef %n) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %do.body77, %land.lhs.true.cleanup_crit_edge, %if.else69.cleanup_crit_edge, %do.end67, %do.end44, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ -1, %do.end44 ], [ -2, %do.end67 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else69.cleanup_crit_edge ], [ -2, %if.then89 ], [ -2, %do.body77 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !17, !18, !20, !21, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clkt_dpll.c", i32 307, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @omap2_dpll_round_rate.__UNIQUE_ID_ddebug170, !1, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/clkt_dpll.c", i32 353, i32 3}
!8 = !{ptr @omap2_dpll_round_rate.__UNIQUE_ID_ddebug171, !7, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/ti/clkt_dpll.c", i32 361, i32 3}
!11 = !{ptr @omap2_dpll_round_rate.__UNIQUE_ID_ddebug172, !10, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/clkt_dpll.c", i32 87, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ti/clkt_dpll.c", i32 92, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @_dpll_test_fint.__UNIQUE_ID_ddebug167, !15, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ti/clkt_dpll.c", i32 97, i32 3}
!20 = !{ptr @_dpll_test_fint.__UNIQUE_ID_ddebug168, !19, !"__UNIQUE_ID_ddebug168", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/ti/clkt_dpll.c", i32 103, i32 3}
!23 = !{ptr @_dpll_test_fint.__UNIQUE_ID_ddebug169, !22, !"__UNIQUE_ID_ddebug169", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i32 0, i32 33}
!34 = !{i8 0, i8 9}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2148608886, i64 2148609166, i64 2148609500, i64 2148609834}
!37 = !{i64 2148700167, i64 2148700172, i64 2148700185, i64 2148700229, i64 2148700263, i64 2148700284}
