; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clkt_dflt.c_pt.bc'
source_filename = "../drivers/clk/ti/clkt_dflt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_features = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/ti/clkt_dflt.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: could not enable %s's clockdomain %s: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.omap2_dflt_clk_enable = private unnamed_addr constant [22 x i8] c"omap2_dflt_clk_enable\00", align 1
@clkhwops_wait = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr @omap2_clk_dflt_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_wait_idlest_generic.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clkt_dflt\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_wait_idlest_generic\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"omap clock: module associated with clock %s ready after %d loops\0A\00", [62 x i8] zeroinitializer }, align 32
@_wait_idlest_generic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013omap clock: module associated with clock %s didn't enable in %d tries\0A\00", [55 x i8] zeroinitializer }, align 32
@_wait_idlest_generic._entry_ptr = internal global ptr @_wait_idlest_generic._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 219, i32 4 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"clkhwops_wait\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 294, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 74, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [30 x i8] c"../drivers/clk/ti/clkt_dflt.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 77, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @_wait_idlest_generic._entry, ptr @_wait_idlest_generic._entry_ptr, ptr @.str, ptr @.str.1, ptr @clkhwops_wait, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_wait to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_wait_idlest_generic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap2_clk_dflt_find_companion(ptr nocapture noundef readonly %clk, ptr nocapture noundef %other_reg, ptr nocapture noundef writeonly %other_bit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 4
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %enable_reg, align 4
  %2 = ptrtoint ptr %other_reg to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %other_reg, align 4
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %other_reg, i32 0, i32 1
  %3 = lshr i64 %1, 16
  %4 = trunc i64 %3 to i16
  %5 = xor i16 %4, 16
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %offset, align 4
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 5
  %7 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable_bit, align 4
  %9 = ptrtoint ptr %other_bit to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %other_bit, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_clk_dflt_find_idlest(ptr nocapture noundef readonly %clk, ptr nocapture noundef %idlest_reg, ptr nocapture noundef writeonly %idlest_bit, ptr nocapture noundef writeonly %idlest_val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 4
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %enable_reg, align 4
  %2 = ptrtoint ptr %idlest_reg to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %idlest_reg, align 4
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %idlest_reg, i32 0, i32 1
  %3 = lshr i64 %1, 16
  %4 = trunc i64 %3 to i16
  %5 = and i16 %4, -241
  %6 = or i16 %5, 32
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %offset, align 4
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 5
  %8 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enable_bit, align 4
  %10 = ptrtoint ptr %idlest_bit to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %idlest_bit, align 1
  %call = tail call ptr @ti_clk_get_features() #5
  %cm_idlest_val = getelementptr inbounds %struct.ti_clk_features, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %cm_idlest_val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cm_idlest_val, align 1
  %13 = ptrtoint ptr %idlest_val to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %idlest_val, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_dflt_clk_enable(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ti_clk_get_features() #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.lhs.true:                                    ; preds = %entry
  %clkdm = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkdm, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end29_crit_edge, label %if.then3

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then3:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clkdm_clk_enable = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %clkdm_clk_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm_clk_enable, align 4
  %clk5 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %clk5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk5, align 4
  %call6 = tail call i32 %6(ptr noundef nonnull %3, ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then3.if.end29_crit_edge, label %do.end

if.then3.if.end29_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #5
  %clkdm_name = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 9
  %9 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clkdm_name, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap2_dflt_clk_enable, ptr noundef %call14, ptr noundef %10, i32 noundef %call6) #5
  br label %cleanup

if.end29:                                         ; preds = %if.then3.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %11 = load ptr, ptr @ti_clk_ll_ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 4
  %call30 = tail call i32 %13(ptr noundef %enable_reg) #5
  %flags31 = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 6
  %14 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags31, align 4
  %and32 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %enable_bit37 = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 5
  %16 = ptrtoint ptr %enable_bit37 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enable_bit37, align 4
  %conv38 = zext i8 %17 to i32
  %shl39 = shl nuw i32 1, %conv38
  %neg = xor i32 %shl39, -1
  %and35 = and i32 %call30, %neg
  %or = or i32 %shl39, %call30
  %v.0 = select i1 %tobool33.not, i32 %or, i32 %and35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %18 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_writel, align 4
  tail call void %20(i32 noundef %v.0, ptr noundef %enable_reg) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %21 = load ptr, ptr @ti_clk_ll_ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call44 = tail call i32 %23(ptr noundef %enable_reg) #5
  %ops = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 11
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %tobool45.not = icmp eq ptr %25, null
  br i1 %tobool45.not, label %if.end29.cleanup_crit_edge, label %land.lhs.true46

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true46:                                  ; preds = %if.end29
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool48.not = icmp eq ptr %27, null
  br i1 %tobool48.not, label %land.lhs.true46.cleanup_crit_edge, label %if.then49

land.lhs.true46.cleanup_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @_omap2_module_wait_ready(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %land.lhs.true46.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %if.then49 ], [ 0, %land.lhs.true46.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_omap2_module_wait_ready(ptr noundef %clk) unnamed_addr #1 align 64 {
entry:
  %companion_reg = alloca %struct.clk_omap_reg, align 8
  %idlest_reg = alloca %struct.clk_omap_reg, align 8
  %other_bit = alloca i8, align 1
  %idlest_bit = alloca i8, align 1
  %idlest_val = alloca i8, align 1
  %idlest_reg_id = alloca i8, align 1
  %prcm_mod = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %companion_reg) #5
  %0 = ptrtoint ptr %companion_reg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %companion_reg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %idlest_reg) #5
  %1 = ptrtoint ptr %idlest_reg to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %idlest_reg, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %other_bit) #5
  %2 = ptrtoint ptr %other_bit to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %other_bit, align 1, !annotation !24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %idlest_bit) #5
  %3 = ptrtoint ptr %idlest_bit to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %idlest_bit, align 1, !annotation !24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %idlest_val) #5
  %4 = ptrtoint ptr %idlest_val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %idlest_val, align 1, !annotation !24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %idlest_reg_id) #5
  %5 = ptrtoint ptr %idlest_reg_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %idlest_reg_id, align 1, !annotation !24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %prcm_mod) #5
  %6 = ptrtoint ptr %prcm_mod to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %prcm_mod, align 2, !annotation !24
  %ops = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 11
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %find_companion = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %find_companion to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %find_companion, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  call void %10(ptr noundef %clk, ptr noundef nonnull %companion_reg, ptr noundef nonnull %other_bit) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %11 = load ptr, ptr @ti_clk_ll_ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call = call i32 %13(ptr noundef nonnull %companion_reg) #5
  %14 = ptrtoint ptr %other_bit to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %other_bit, align 1
  %conv = zext i8 %15 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  call void %19(ptr noundef %clk, ptr noundef nonnull %idlest_reg, ptr noundef nonnull %idlest_bit, ptr noundef nonnull %idlest_val) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %20 = load ptr, ptr @ti_clk_ll_ops, align 4
  %cm_split_idlest_reg = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %cm_split_idlest_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cm_split_idlest_reg, align 4
  %call7 = call i32 %22(ptr noundef nonnull %idlest_reg, ptr noundef nonnull %prcm_mod, ptr noundef nonnull %idlest_reg_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end5
  %23 = ptrtoint ptr %idlest_bit to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %idlest_bit, align 1
  %conv10 = zext i8 %24 to i32
  %shl11 = shl nuw i32 1, %conv10
  %25 = ptrtoint ptr %idlest_val to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %idlest_val, align 1
  %call12 = call ptr @clk_hw_get_name(ptr noundef %clk) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %shl11, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then9
  %i.03.i = phi i32 [ 0, %if.then9 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %27 = load ptr, ptr @ti_clk_ll_ops, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i = call i32 %29(ptr noundef nonnull %idlest_reg) #5
  %and.i = and i32 %call.i, %shl11
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %spec.select.i)
  %cmp2.i = icmp eq i32 %and.i, %spec.select.i
  br i1 %cmp2.i, label %do.body.critedge.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748) #5
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %do.end15.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.body.critedge.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_wait_idlest_generic.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_omap2_module_wait_ready, %if.then11.i)) #5
          to label %cleanup [label %if.then11.i], !srcloc !25

if.then11.i:                                      ; preds = %do.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_wait_idlest_generic.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.4, ptr noundef %call12, i32 noundef %i.03.i) #5
  br label %cleanup

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %call12, i32 noundef 100000) #8
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %31 = load ptr, ptr @ti_clk_ll_ops, align 4
  %cm_wait_module_ready = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %cm_wait_module_ready to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cm_wait_module_ready, align 4
  %34 = ptrtoint ptr %prcm_mod to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %prcm_mod, align 2
  %36 = ptrtoint ptr %idlest_reg_id to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %idlest_reg_id, align 1
  %conv14 = zext i8 %37 to i16
  %38 = ptrtoint ptr %idlest_bit to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %idlest_bit, align 1
  %call15 = call i32 %33(i8 noundef zeroext 0, i16 noundef signext %35, i16 noundef zeroext %conv14, i8 noundef zeroext %39) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end15.i, %if.then11.i, %do.body.critedge.i, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %prcm_mod) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %idlest_reg_id) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %idlest_val) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %idlest_bit) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %other_bit) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %idlest_reg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %companion_reg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_dflt_clk_disable(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 4
  %call = tail call i32 %2(ptr noundef %enable_reg) #5
  %flags = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %enable_bit1 = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 5
  %5 = ptrtoint ptr %enable_bit1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_bit1, align 4
  %conv2 = zext i8 %6 to i32
  %shl3 = shl nuw i32 1, %conv2
  %or = or i32 %shl3, %call
  %neg = xor i32 %shl3, -1
  %and4 = and i32 %call, %neg
  %v.0 = select i1 %tobool.not, i32 %and4, i32 %or
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %7 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_writel, align 4
  tail call void %9(i32 noundef %v.0, ptr noundef %enable_reg) #5
  %call6 = tail call ptr @ti_clk_get_features() #5
  %10 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call6, align 4
  %and8 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %clkdm = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 10
  %12 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clkdm, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %land.lhs.true.if.end15_crit_edge, label %if.then11

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %14 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clkdm_clk_disable = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %clkdm_clk_disable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clkdm_clk_disable, align 4
  %clk13 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %17 = ptrtoint ptr %clk13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk13, align 4
  %call14 = tail call i32 %16(ptr noundef nonnull %13, ptr noundef %18) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_dflt_clk_is_enabled(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 4
  %call = tail call i32 %2(ptr noundef %enable_reg) #5
  %flags = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 5
  %5 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_bit, align 4
  %conv = zext i8 %6 to i32
  %shl = shl nuw i32 1, %conv
  %xor = xor i32 %shl, %call
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %v.0 = phi i32 [ %xor, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %enable_bit1 = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 5
  %7 = ptrtoint ptr %enable_bit1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable_bit1, align 4
  %conv2 = zext i8 %8 to i32
  %9 = lshr i32 %v.0, %conv2
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !11, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clkt_dflt.c", i32 219, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.omap2_dflt_clk_enable, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @clkhwops_wait, !5, !"clkhwops_wait", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/clkt_dflt.c", i32 294, i32 30}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/clkt_dflt.c", i32 74, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @_wait_idlest_generic.__UNIQUE_ID_ddebug167, !7, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/ti/clkt_dflt.c", i32 77, i32 3}
!13 = !{ptr @_wait_idlest_generic._entry, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @_wait_idlest_generic._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{i64 2148699139, i64 2148699144, i64 2148699157, i64 2148699201, i64 2148699235, i64 2148699256}
