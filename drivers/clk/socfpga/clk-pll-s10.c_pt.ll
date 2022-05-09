; ModuleID = '/llk/IR_all_yes/drivers/clk/socfpga/clk-pll-s10.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-pll-s10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.stratix10_pll_clock = type { i32, ptr, ptr, i8, i32, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/socfpga/clk-pll-s10.c\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"boot_clk\00", [23 x i8] zeroinitializer }, align 32
@clk_boot_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pll_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_boot_clk_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_boot_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pll_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_pll_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@agilex_clk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pll_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @agilex_clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_pll_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@n5x_clk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @n5x_clk_pll_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @n5x_clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_pll_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 200, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 205, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"clk_boot_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 184, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"clk_pll_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 178, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"agilex_clk_pll_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 172, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"n5x_clk_pll_ops\00", align 1
@___asan_gen_.18 = private constant [37 x i8] c"../drivers/clk/socfpga/clk-pll-s10.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 166, i32 29 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @clk_boot_ops, ptr @clk_pll_ops, ptr @agilex_clk_pll_ops, ptr @n5x_clk_pll_ops], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_boot_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n5x_clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @s10_register_pll(ptr nocapture noundef readonly %clks, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %name1 = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %offset = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 5
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %reg, i32 %6
  %reg25 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %reg25 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %reg25, align 4
  %call26 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(9) @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp eq i32 %call26, 0
  %spec.select = select i1 %cmp, ptr @clk_boot_ops, ptr @clk_pll_ops
  %8 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %8, align 4
  %10 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %init, align 4
  %flags = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %flags31 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %13 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flags31, align 4
  %num_parents = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 3
  %14 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_parents, align 4
  %num_parents32 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %16 = ptrtoint ptr %num_parents32 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %num_parents32, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %17 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %parent_names, align 4
  %parent_data = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 2
  %18 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent_data, align 4
  %parent_data33 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 3
  %20 = ptrtoint ptr %parent_data33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %parent_data33, align 4
  %init36 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %init36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %init, ptr %init36, align 8
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bit_idx, align 8
  %call40 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end24.cleanup_crit_edge, label %if.then42

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then42:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %23 = inttoptr i32 %call40 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %23, %if.then42 ], [ %call7.i.i, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @agilex_register_pll(ptr nocapture noundef readonly %clks, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %name1 = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 240, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %offset = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 5
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %reg, i32 %6
  %reg25 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %reg25 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %reg25, align 4
  %call26 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(9) @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp eq i32 %call26, 0
  %spec.select = select i1 %cmp, ptr @clk_boot_ops, ptr @agilex_clk_pll_ops
  %8 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %8, align 4
  %10 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %init, align 4
  %flags = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %flags31 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %13 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flags31, align 4
  %num_parents = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 3
  %14 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_parents, align 4
  %num_parents32 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %16 = ptrtoint ptr %num_parents32 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %num_parents32, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %17 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %parent_names, align 4
  %parent_data = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 2
  %18 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent_data, align 4
  %parent_data33 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 3
  %20 = ptrtoint ptr %parent_data33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %parent_data33, align 4
  %init36 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %init36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %init, ptr %init36, align 8
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bit_idx, align 8
  %call40 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end24.cleanup_crit_edge, label %if.then42

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then42:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %23 = inttoptr i32 %call40 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %23, %if.then42 ], [ %call7.i.i, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @n5x_register_pll(ptr nocapture noundef readonly %clks, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %name1 = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %offset = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 5
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %reg, i32 %6
  %reg25 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %reg25 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %reg25, align 4
  %call26 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(9) @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp eq i32 %call26, 0
  %spec.select = select i1 %cmp, ptr @clk_boot_ops, ptr @n5x_clk_pll_ops
  %8 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %8, align 4
  %10 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %init, align 4
  %flags = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %flags31 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %13 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flags31, align 4
  %num_parents = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 3
  %14 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_parents, align 4
  %num_parents32 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %16 = ptrtoint ptr %num_parents32 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %num_parents32, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %17 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %parent_names, align 4
  %parent_data = getelementptr inbounds %struct.stratix10_pll_clock, ptr %clks, i32 0, i32 2
  %18 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent_data, align 4
  %parent_data33 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 3
  %20 = ptrtoint ptr %parent_data33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %parent_data33, align 4
  %init36 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %init36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %init, ptr %init36, align 8
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bit_idx, align 8
  %call40 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end24.cleanup_crit_edge, label %if.then42

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then42:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %23 = inttoptr i32 %call40 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %23, %if.then42 ], [ %call7.i.i, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_prepare(ptr nocapture noundef readonly %hwclk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_boot_clk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !22
  %3 = lshr i32 %2, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  %and = and i32 %3, 1
  %add = add nuw nsw i32 %and, 1
  %div3 = udiv i32 %parent_rate, %add
  ret i32 %div3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_boot_get_parent(ptr nocapture noundef readonly %hwclk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  ret i8 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %3 = lshr i32 %2, 16
  %and = and i32 %3, 63
  %div181 = udiv i32 %parent_rate, %and
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1, align 4
  %add.ptr193 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr193) #6, !srcloc !22
  %7 = and i32 %6, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %add199 = add nuw nsw i32 %7, 6
  %conv202 = mul i32 %add199, %div181
  ret i32 %conv202
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_pll_get_parent(ptr nocapture noundef readonly %hwclk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  %3 = lshr i32 %2, 8
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 3
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @agilex_clk_pll_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !22
  %3 = lshr i32 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %and = and i32 %3, 15
  %4 = udiv i32 %parent_rate, %and
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg1, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  %8 = and i32 %7, -16580608
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %mul = mul i32 %9, %4
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n5x_clk_pll_prepare(ptr nocapture noundef readonly %hwclk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %3) #6, !srcloc !25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n5x_clk_pll_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !22
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  %and6 = lshr i32 %3, 24
  %shr7 = and i32 %and6, 7
  %4 = zext i32 %shr7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr7, label %while.body.6 [
    i32 0, label %entry.while.end_crit_edge
    i32 1, label %entry.while.end.loopexit_crit_edge
    i32 2, label %while.end.loopexit.fold.split
    i32 3, label %while.end.loopexit.fold.split19
    i32 4, label %while.end.loopexit.fold.split20
    i32 5, label %while.end.loopexit.fold.split21
    i32 6, label %while.end.loopexit.fold.split22
  ]

entry.while.end.loopexit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.6:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

while.end.loopexit.fold.split:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

while.end.loopexit.fold.split19:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

while.end.loopexit.fold.split20:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

while.end.loopexit.fold.split21:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

while.end.loopexit.fold.split22:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.end.loopexit.fold.split22, %while.end.loopexit.fold.split21, %while.end.loopexit.fold.split20, %while.end.loopexit.fold.split19, %while.end.loopexit.fold.split, %while.body.6, %entry.while.end.loopexit_crit_edge
  %mul.lcssa = phi i32 [ 128, %while.body.6 ], [ 2, %entry.while.end.loopexit_crit_edge ], [ 4, %while.end.loopexit.fold.split ], [ 8, %while.end.loopexit.fold.split19 ], [ 16, %while.end.loopexit.fold.split20 ], [ 32, %while.end.loopexit.fold.split21 ], [ 64, %while.end.loopexit.fold.split22 ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %power.0.lcssa = phi i32 [ 1, %entry.while.end_crit_edge ], [ %mul.lcssa, %while.end.loopexit ]
  %and5 = and i32 %3, 63
  %and = lshr i32 %3, 8
  %shr = and i32 %and, 511
  %mul8 = shl i32 %parent_rate, 1
  %add = add nuw nsw i32 %shr, 1
  %mul9 = mul i32 %mul8, %add
  %add10 = add nuw nsw i32 %and5, 1
  %mul11 = mul nsw i32 %power.0.lcssa, %add10
  %div = udiv i32 %mul9, %mul11
  ret i32 %div
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/socfpga/clk-pll-s10.c", i32 200, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/socfpga/clk-pll-s10.c", i32 205, i32 6}
!4 = !{ptr @clk_boot_ops, !5, !"clk_boot_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/socfpga/clk-pll-s10.c", i32 184, i32 29}
!6 = !{ptr @clk_pll_ops, !7, !"clk_pll_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/socfpga/clk-pll-s10.c", i32 178, i32 29}
!8 = !{ptr @agilex_clk_pll_ops, !9, !"agilex_clk_pll_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/socfpga/clk-pll-s10.c", i32 172, i32 29}
!10 = !{ptr @n5x_clk_pll_ops, !11, !"n5x_clk_pll_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/socfpga/clk-pll-s10.c", i32 166, i32 29}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 4952969}
!23 = !{i64 2152528183}
!24 = !{i64 2152528402}
!25 = !{i64 4952551}
!26 = !{i64 2152522988}
!27 = !{i64 2152526451}
!28 = !{i64 2152515593}
!29 = !{i64 2152521250}
!30 = !{i64 2152524720}
!31 = !{i64 2152513327}
!32 = !{i64 2152513858}
!33 = !{i64 2152530326}
!34 = !{i64 2152530551}
!35 = !{i64 2152509549}
