; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_pll_layout = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pll = type { %struct.clk_hw, ptr, i8, i8, i8, i16, ptr, ptr, %struct.at91_clk_pms }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_pll_characteristics = type { %struct.clk_range, i32, ptr, ptr, ptr, i8 }
%struct.clk_range = type { i32, i32 }

@pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pll_prepare, ptr @clk_pll_unprepare, ptr @clk_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_save_context, ptr @clk_pll_restore_context, ptr @clk_pll_recalc_rate, ptr @clk_pll_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@at91rm9200_pll_layout = dso_local constant { %struct.clk_pll_layout, [40 x i8] } { %struct.clk_pll_layout { i32 134217727, i32 2047, i32 0, i32 0, i32 0, i8 16, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@at91sam9g45_pll_layout = dso_local constant { %struct.clk_pll_layout, [40 x i8] } { %struct.clk_pll_layout { i32 16777215, i32 255, i32 0, i32 0, i32 0, i8 16, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@at91sam9g20_pllb_layout = dso_local constant { %struct.clk_pll_layout, [40 x i8] } { %struct.clk_pll_layout { i32 4194303, i32 63, i32 0, i32 0, i32 0, i8 16, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@sama5d3_pll_layout = dso_local constant { %struct.clk_pll_layout, [40 x i8] } { %struct.clk_pll_layout { i32 33554431, i32 127, i32 0, i32 0, i32 0, i8 18, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_pll_restore_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014PLLAR was not configured properly by firmware\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk_pll_restore_context\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/at91/clk-pll.c\00", [37 x i8] zeroinitializer }, align 32
@clk_pll_restore_context._entry_ptr = internal global ptr @clk_pll_restore_context._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [8 x i8] c"pll_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 300, i32 29 }
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"at91rm9200_pll_layout\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 357, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [23 x i8] c"at91sam9g45_pll_layout\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 363, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant [24 x i8] c"at91sam9g20_pllb_layout\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 369, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"sama5d3_pll_layout\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 375, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [30 x i8] c"../drivers/clk/at91/clk-pll.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 297, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @clk_pll_restore_context._entry, ptr @clk_pll_restore_context._entry_ptr, ptr @pll_ops, ptr @at91rm9200_pll_layout, ptr @at91sam9g45_pll_layout, ptr @at91sam9g20_pllb_layout, ptr @sama5d3_pll_layout, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91rm9200_pll_layout to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g45_pll_layout to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g20_pllb_layout to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d3_pll_layout to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_restore_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_pll(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %id, ptr noundef %layout, ptr noundef %characteristics) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  %pllr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %conv = zext i8 %id to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pllr) #9
  %3 = ptrtoint ptr %pllr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pllr, align 4, !annotation !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %id)
  %cmp = icmp ugt i8 %id, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 48) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pll_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %7 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %8 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %flags, align 4
  %id8 = getelementptr inbounds %struct.clk_pll, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %id8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %id, ptr %id8, align 8
  %init10 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %init10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %init, ptr %init10, align 8
  %layout11 = getelementptr inbounds %struct.clk_pll, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %layout11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %layout, ptr %layout11, align 8
  %characteristics12 = getelementptr inbounds %struct.clk_pll, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %characteristics12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %characteristics, ptr %characteristics12, align 4
  %regmap13 = getelementptr inbounds %struct.clk_pll, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %regmap13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %regmap, ptr %regmap13, align 4
  %call14 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef %add, ptr noundef nonnull %pllr) #9
  %15 = ptrtoint ptr %pllr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pllr, align 4
  %conv15 = trunc i32 %16 to i8
  %div = getelementptr inbounds %struct.clk_pll, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %div to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv15, ptr %div, align 1
  %mul_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %layout, i32 0, i32 5
  %18 = ptrtoint ptr %mul_shift to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mul_shift, align 4
  %conv16 = zext i8 %19 to i32
  %shr = lshr i32 %16, %conv16
  %mul_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %layout, i32 0, i32 1
  %20 = ptrtoint ptr %mul_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mul_mask, align 4
  %and17 = and i32 %shr, %21
  %conv18 = trunc i32 %and17 to i16
  %mul19 = getelementptr inbounds %struct.clk_pll, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %mul19 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv18, ptr %mul19, align 4
  %call22 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end6.cleanup_crit_edge, label %if.then24

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %23 = inttoptr i32 %call22 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %23, %if.then24 ], [ %call7.i.i, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pllr) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_prepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  %pllr = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %layout2 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %layout2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layout2, align 4
  %characteristics3 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 7
  %4 = ptrtoint ptr %characteristics3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %characteristics3, align 4
  %id4 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %id4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id4, align 4
  %conv = zext i8 %7 to i32
  %shl = shl i32 2, %conv
  %mul = shl nuw nsw i32 %conv, 2
  %add6 = add nuw nsw i32 %mul, 40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pllr) #9
  %8 = ptrtoint ptr %pllr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pllr, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %status, align 4, !annotation !25
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef %add6, ptr noundef nonnull %pllr) #9
  %10 = ptrtoint ptr %pllr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pllr, align 4
  %mul_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %mul_shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mul_shift, align 4
  %conv9 = zext i8 %13 to i32
  %shr = lshr i32 %11, %conv9
  %mul_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %mul_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mul_mask, align 4
  %and10 = and i32 %shr, %15
  %call12 = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status) #9
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  %and13 = and i32 %17, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %div15 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 3
  %18 = ptrtoint ptr %div15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %div15, align 1
  %20 = trunc i32 %11 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %20)
  %cmp = icmp eq i8 %19, %20
  br i1 %cmp, label %land.lhs.true18, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true18:                                  ; preds = %land.lhs.true
  %mul20 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 5
  %21 = ptrtoint ptr %mul20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mul20, align 4
  %23 = trunc i32 %and10 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %23)
  %cmp22 = icmp eq i16 %22, %23
  br i1 %cmp22, label %land.lhs.true18.cleanup_crit_edge, label %land.lhs.true18.if.end_crit_edge

land.lhs.true18.if.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true18.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %out24 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %out24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out24, align 4
  %tobool25.not = icmp eq ptr %25, null
  br i1 %tobool25.not, label %if.end.if.end28_crit_edge, label %if.then26

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %range = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 4
  %26 = ptrtoint ptr %range to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %range, align 2
  %idxprom = zext i8 %27 to i32
  %arrayidx = getelementptr i8, ptr %25, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %phi.cast = zext i8 %29 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 14
  %phi.bo111 = or i32 %phi.bo, 16128
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end.if.end28_crit_edge
  %out.0 = phi i32 [ %phi.bo111, %if.then26 ], [ 16128, %if.end.if.end28_crit_edge ]
  %icpll = getelementptr inbounds %struct.clk_pll_characteristics, ptr %5, i32 0, i32 3
  %30 = ptrtoint ptr %icpll to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %icpll, align 4
  %tobool29.not = icmp eq ptr %31, null
  br i1 %tobool29.not, label %if.end28.if.end43_crit_edge, label %if.then30

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %mul32 = shl nuw nsw i32 %conv, 4
  %shl33 = shl i32 65535, %mul32
  %range35 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 4
  %32 = ptrtoint ptr %range35 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %range35, align 2
  %idxprom36 = zext i8 %33 to i32
  %arrayidx37 = getelementptr i16, ptr %31, i32 %idxprom36
  %34 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx37, align 2
  %conv38 = zext i16 %35 to i32
  %shl41 = shl i32 %conv38, %mul32
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 128, i32 noundef %shl33, i32 noundef %shl41, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then30, %if.end28.if.end43_crit_edge
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %3, align 4
  %div44 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 3
  %38 = ptrtoint ptr %div44 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %div44, align 1
  %conv45 = zext i8 %39 to i32
  %mul49 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 5
  %40 = ptrtoint ptr %mul49 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mul49, align 4
  %conv50 = zext i16 %41 to i32
  %42 = ptrtoint ptr %mul_mask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mul_mask, align 4
  %and52 = and i32 %43, %conv50
  %44 = ptrtoint ptr %mul_shift to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mul_shift, align 4
  %conv54 = zext i8 %45 to i32
  %shl55 = shl i32 %and52, %conv54
  %or48 = or i32 %out.0, %conv45
  %or56 = or i32 %or48, %shl55
  %call.i104 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add6, i32 noundef %37, i32 noundef %or56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %46 = ptrtoint ptr %id4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %id4, align 4
  %conv59106 = zext i8 %47 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %48 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %status.i, align 4, !annotation !25
  %call.i105107 = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #9
  %49 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status.i, align 4
  %shl.i108 = shl i32 2, %conv59106
  %and.i109 = and i32 %50, %shl.i108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %tobool.i.not110 = icmp eq i32 %and.i109, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %tobool.i.not110, label %if.end43.do.end_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43.do.end_crit_edge:                        ; preds = %if.end43
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %if.end43.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !26
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %51 = ptrtoint ptr %id4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %id4, align 4
  %conv59 = zext i8 %52 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %53 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %status.i, align 4, !annotation !25
  %call.i105 = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #9
  %54 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status.i, align 4
  %shl.i = shl i32 2, %conv59
  %and.i = and i32 %55, %shl.i
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %tobool.i.not, label %do.end.do.end_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pllr) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pll_unprepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %layout = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %regmap = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 40
  %neg = xor i32 %3, -1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef %3, i32 noundef %neg, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_is_prepared(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status.i, align 4, !annotation !25
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #9
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status.i, align 4
  %shl.i = shl i32 2, %conv
  %and.i = and i32 %6, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  %conv1 = zext i1 %tobool.i to i32
  ret i32 %conv1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_save_context(ptr noundef %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #9
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #9
  %parent_rate = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %parent_rate, align 4
  %div.i = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %div.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %div.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.clk_pll_recalc_rate.exit_crit_edge, label %lor.lhs.false.i

entry.clk_pll_recalc_rate.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_pll_recalc_rate.exit

lor.lhs.false.i:                                  ; preds = %entry
  %mul.i = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %mul.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mul.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool1.not.i = icmp eq i16 %4, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.clk_pll_recalc_rate.exit_crit_edge, label %if.end.i

lor.lhs.false.i.clk_pll_recalc_rate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_pll_recalc_rate.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %2 to i32
  %div3.i = udiv i32 %call1, %conv.i
  %conv5.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv5.i, 1
  %mul6.i = mul i32 %div3.i, %add.i
  br label %clk_pll_recalc_rate.exit

clk_pll_recalc_rate.exit:                         ; preds = %if.end.i, %lor.lhs.false.i.clk_pll_recalc_rate.exit_crit_edge, %entry.clk_pll_recalc_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %mul6.i, %if.end.i ], [ 0, %lor.lhs.false.i.clk_pll_recalc_rate.exit_crit_edge ], [ 0, %entry.clk_pll_recalc_rate.exit_crit_edge ]
  %pms = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 8
  %5 = ptrtoint ptr %pms to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i, ptr %pms, align 4
  %regmap = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %status.i, align 4, !annotation !25
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 104, ptr noundef nonnull %status.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pll_restore_context(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  %pllr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pllr) #9
  %0 = ptrtoint ptr %pllr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pllr, align 4, !annotation !25
  %regmap = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %id, align 4
  %conv = zext i8 %4 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 40
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %pllr) #9
  %pms = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 8
  %parent_rate = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %parent_rate, align 4
  %7 = ptrtoint ptr %pllr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pllr, align 4
  %and = and i32 %8, 255
  %div = udiv i32 %6, %and
  %layout = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 6
  %9 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %layout, align 4
  %mul_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %mul_shift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mul_shift, align 4
  %conv4 = zext i8 %12 to i32
  %shr = lshr i32 %8, %conv4
  %mul_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %mul_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mul_mask, align 4
  %and6 = and i32 %shr, %14
  %add7 = add i32 %and6, 1
  %mul8 = mul i32 %add7, %div
  %15 = ptrtoint ptr %pms to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %mul8)
  %cmp.not = icmp eq i32 %16, %mul8
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %status.i, align 4, !annotation !25
  %call.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 104, ptr noundef nonnull %status.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br label %if.end38

if.end38:                                         ; preds = %lor.lhs.false, %entry.if.end38_crit_edge
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pllr) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %div, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mul = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %mul to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mul, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %1 to i32
  %div3 = udiv i32 %parent_rate, %conv
  %conv5 = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv5, 1
  %mul6 = mul i32 %div3, %add
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul6, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %call = tail call fastcc i32 @clk_pll_get_best_div_mul(ptr noundef %hw, i32 noundef %rate, i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #6 align 64 {
entry:
  %div = alloca i32, align 4
  %mul = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #9
  %0 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %div, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mul) #9
  %1 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mul, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #9
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %index, align 4, !annotation !25
  %call = call fastcc i32 @clk_pll_get_best_div_mul(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate, ptr noundef nonnull %div, ptr noundef nonnull %mul, ptr noundef nonnull %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %conv = trunc i32 %4 to i8
  %range = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %range to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %range, align 2
  %6 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %div, align 4
  %conv1 = trunc i32 %7 to i8
  %div2 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %div2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1, ptr %div2, align 1
  %9 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mul, align 4
  %conv3 = trunc i32 %10 to i16
  %mul4 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 5
  %11 = ptrtoint ptr %mul4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv3, ptr %mul4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mul) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_pll_get_best_div_mul(ptr nocapture noundef readonly %pll, i32 noundef %rate, i32 noundef %parent_rate, ptr noundef writeonly %div, ptr noundef writeonly %mul, ptr noundef writeonly %index) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %layout1 = getelementptr inbounds %struct.clk_pll, ptr %pll, i32 0, i32 6
  %0 = ptrtoint ptr %layout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout1, align 4
  %characteristics2 = getelementptr inbounds %struct.clk_pll, ptr %pll, i32 0, i32 7
  %2 = ptrtoint ptr %characteristics2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %characteristics2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %parent_rate)
  %cmp = icmp ugt i32 %5, %parent_rate
  br i1 %cmp, label %entry.cleanup81_crit_edge, label %if.end

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end:                                           ; preds = %entry
  %mul3 = shl i32 %parent_rate, 1
  %div4 = udiv i32 %mul3, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3, i32 %rate)
  %tobool.not = icmp ult i32 %mul3, %rate
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %div4
  %max = getelementptr inbounds %struct.clk_range, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %parent_rate)
  %cmp8 = icmp ult i32 %7, %parent_rate
  br i1 %cmp8, label %if.then9, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then9:                                         ; preds = %if.end
  %add = add i32 %parent_rate, -1
  %sub = add i32 %add, %7
  %div14 = udiv i32 %sub, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div14)
  %cmp15 = icmp ugt i32 %div14, 255
  br i1 %cmp15, label %if.then9.cleanup81_crit_edge, label %if.end17

if.then9.cleanup81_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end17:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.umax.i32(i32 %div14, i32 %spec.store.select)
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.end.if.end21_crit_edge
  %mindiv.0 = phi i32 [ %spec.store.select, %if.end.if.end21_crit_edge ], [ %8, %if.end17 ]
  %mul_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mul_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mul_mask, align 4
  %add22 = add i32 %10, 1
  %mul23 = mul i32 %add22, %parent_rate
  %add24 = add i32 %rate, -1
  %sub25 = add i32 %add24, %mul23
  %div26 = udiv i32 %sub25, %rate
  %11 = tail call i32 @llvm.umin.i32(i32 %div26, i32 255)
  call void @__sanitizer_cov_trace_cmp4(i32 %mindiv.0, i32 %11)
  %cmp30.not143 = icmp ugt i32 %mindiv.0, %11
  br i1 %cmp30.not143, label %if.end21.cleanup81_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.cleanup81_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %if.end21.for.body_crit_edge
  %bestmul.0149 = phi i32 [ %bestmul.1, %if.end44.for.body_crit_edge ], [ -1, %if.end21.for.body_crit_edge ]
  %bestdiv.0148 = phi i32 [ %bestdiv.1, %if.end44.for.body_crit_edge ], [ -1, %if.end21.for.body_crit_edge ]
  %bestrate.0147 = phi i32 [ %bestrate.1, %if.end44.for.body_crit_edge ], [ -34, %if.end21.for.body_crit_edge ]
  %tmpdiv.0145 = phi i32 [ %inc, %if.end44.for.body_crit_edge ], [ %mindiv.0, %if.end21.for.body_crit_edge ]
  %bestremainder.0144 = phi i32 [ %bestremainder.1, %if.end44.for.body_crit_edge ], [ -1, %if.end21.for.body_crit_edge ]
  %div31 = udiv i32 %parent_rate, %tmpdiv.0145
  %div32141 = lshr i32 %div31, 1
  %add33 = add i32 %div32141, %rate
  %div34 = udiv i32 %add33, %div31
  %mul36 = mul i32 %div34, %div31
  call void @__sanitizer_cov_trace_cmp4(i32 %mul36, i32 %rate)
  %cmp37 = icmp ugt i32 %mul36, %rate
  %sub39 = sub i32 %mul36, %rate
  %sub40 = sub i32 %rate, %mul36
  %remainder.0 = select i1 %cmp37, i32 %sub39, i32 %sub40
  call void @__sanitizer_cov_trace_cmp4(i32 %remainder.0, i32 %bestremainder.0144)
  %cmp42 = icmp ult i32 %remainder.0, %bestremainder.0144
  br i1 %cmp42, label %if.then43, label %for.body.if.end44_crit_edge

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %for.body.if.end44_crit_edge
  %bestremainder.1 = phi i32 [ %remainder.0, %if.then43 ], [ %bestremainder.0144, %for.body.if.end44_crit_edge ]
  %bestrate.1 = phi i32 [ %mul36, %if.then43 ], [ %bestrate.0147, %for.body.if.end44_crit_edge ]
  %bestdiv.1 = phi i32 [ %tmpdiv.0145, %if.then43 ], [ %bestdiv.0148, %for.body.if.end44_crit_edge ]
  %bestmul.1 = phi i32 [ %div34, %if.then43 ], [ %bestmul.0149, %for.body.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remainder.0)
  %tobool45.not = icmp eq i32 %remainder.0, 0
  %inc = add nuw nsw i32 %tmpdiv.0145, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdiv.0145, i32 %11)
  %exitcond = icmp eq i32 %tmpdiv.0145, %11
  %or.cond = select i1 %tobool45.not, i1 true, i1 %exitcond
  br i1 %or.cond, label %for.end, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bestrate.1)
  %cmp50 = icmp slt i32 %bestrate.1, 0
  br i1 %cmp50, label %for.end.cleanup81_crit_edge, label %for.cond53.preheader

for.end.cleanup81_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

for.cond53.preheader:                             ; preds = %for.end
  %num_output = getelementptr inbounds %struct.clk_pll_characteristics, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %num_output to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp54155 = icmp sgt i32 %13, 0
  br i1 %cmp54155, label %for.body55.lr.ph, label %for.cond53.preheader.cleanup81_crit_edge

for.cond53.preheader.cleanup81_crit_edge:         ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

for.body55.lr.ph:                                 ; preds = %for.cond53.preheader
  %output = getelementptr inbounds %struct.clk_pll_characteristics, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %output, align 4
  br label %for.body55

for.body55:                                       ; preds = %for.inc64.for.body55_crit_edge, %for.body55.lr.ph
  %i.0156 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc65, %for.inc64.for.body55_crit_edge ]
  %arrayidx = getelementptr %struct.clk_range, ptr %15, i32 %i.0156
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bestrate.1, i32 %17)
  %cmp57.not = icmp ult i32 %bestrate.1, %17
  br i1 %cmp57.not, label %for.body55.for.inc64_crit_edge, label %land.lhs.true

for.body55.for.inc64_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc64

land.lhs.true:                                    ; preds = %for.body55
  %max60 = getelementptr %struct.clk_range, ptr %15, i32 %i.0156, i32 1
  %18 = ptrtoint ptr %max60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bestrate.1, i32 %19)
  %cmp61.not = icmp ugt i32 %bestrate.1, %19
  br i1 %cmp61.not, label %land.lhs.true.for.inc64_crit_edge, label %if.end70

land.lhs.true.for.inc64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc64

for.inc64:                                        ; preds = %land.lhs.true.for.inc64_crit_edge, %for.body55.for.inc64_crit_edge
  %inc65 = add nuw nsw i32 %i.0156, 1
  %exitcond159.not = icmp eq i32 %inc65, %13
  br i1 %exitcond159.not, label %for.inc64.cleanup81_crit_edge, label %for.inc64.for.body55_crit_edge

for.inc64.for.body55_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body55

for.inc64.cleanup81_crit_edge:                    ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end70:                                         ; preds = %land.lhs.true
  %tobool71.not = icmp eq ptr %div, null
  br i1 %tobool71.not, label %if.end70.if.end73_crit_edge, label %if.then72

if.end70.if.end73_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bestdiv.1, ptr %div, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70.if.end73_crit_edge
  %tobool74.not = icmp eq ptr %mul, null
  br i1 %tobool74.not, label %if.end73.if.end77_crit_edge, label %if.then75

if.end73.if.end77_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %sub76 = add i32 %bestmul.1, -1
  %21 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub76, ptr %mul, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end73.if.end77_crit_edge
  %tobool78.not = icmp eq ptr %index, null
  br i1 %tobool78.not, label %if.end77.cleanup81_crit_edge, label %if.then79

if.end77.cleanup81_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.0156, ptr %index, align 4
  br label %cleanup81

cleanup81:                                        ; preds = %if.then79, %if.end77.cleanup81_crit_edge, %for.inc64.cleanup81_crit_edge, %for.cond53.preheader.cleanup81_crit_edge, %for.end.cleanup81_crit_edge, %if.end21.cleanup81_crit_edge, %if.then9.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup81_crit_edge ], [ -34, %if.then9.cleanup81_crit_edge ], [ %bestrate.1, %for.end.cleanup81_crit_edge ], [ %bestrate.1, %if.then79 ], [ %bestrate.1, %if.end77.cleanup81_crit_edge ], [ -34, %for.cond53.preheader.cleanup81_crit_edge ], [ -34, %if.end21.cleanup81_crit_edge ], [ -34, %for.inc64.cleanup81_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @at91rm9200_pll_layout, !1, !"at91rm9200_pll_layout", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/clk-pll.c", i32 357, i32 29}
!2 = !{ptr @at91sam9g45_pll_layout, !3, !"at91sam9g45_pll_layout", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/clk-pll.c", i32 363, i32 29}
!4 = !{ptr @at91sam9g20_pllb_layout, !5, !"at91sam9g20_pllb_layout", i1 false, i1 false}
!5 = !{!"../drivers/clk/at91/clk-pll.c", i32 369, i32 29}
!6 = !{ptr @sama5d3_pll_layout, !7, !"sama5d3_pll_layout", i1 false, i1 false}
!7 = !{!"../drivers/clk/at91/clk-pll.c", i32 375, i32 29}
!8 = !{ptr @pll_ops, !9, !"pll_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/clk-pll.c", i32 300, i32 29}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/at91/clk-pll.c", i32 297, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @clk_pll_restore_context._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @clk_pll_restore_context._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
!26 = !{i64 2152649844}
!27 = !{i64 2152649686}
