; ModuleID = '/llk/IR_all_yes/drivers/clk/socfpga/clk-periph-s10.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-periph-s10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.stratix10_perip_c_clock = type { i32, ptr, ptr, ptr, i8, i32, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.n5x_perip_c_clock = type { i32, ptr, ptr, ptr, i8, i32, i32, i32 }
%struct.socfpga_periph_clk = type { %struct.clk_gate, ptr, i32, ptr, ptr, i32, i32, i32 }
%struct.stratix10_perip_cnt_clock = type { i32, ptr, ptr, ptr, i8, i32, i32, i8, i32, i32 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clk/socfpga/clk-periph-s10.c\00", [59 x i8] zeroinitializer }, align 32
@peri_c_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_peri_c_clk_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_periclk_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@n5x_peri_c_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @n5x_clk_peri_c_clk_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_periclk_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@peri_cnt_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_peri_cnt_clk_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_periclk_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 112, i32 6 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"peri_c_clk_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 91, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"n5x_peri_c_clk_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 86, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"peri_cnt_clk_ops\00", align 1
@___asan_gen_.11 = private constant [40 x i8] c"../drivers/clk/socfpga/clk-periph-s10.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 96, i32 29 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @peri_c_clk_ops, ptr @n5x_peri_c_clk_ops, ptr @peri_cnt_clk_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_c_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n5x_peri_c_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_cnt_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @s10_register_periph(ptr nocapture noundef readonly %clks, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %name1 = getelementptr inbounds %struct.stratix10_perip_c_clock, ptr %clks, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #5
  %parent_name2 = getelementptr inbounds %struct.stratix10_perip_c_clock, ptr %clks, i32 0, i32 2
  %4 = ptrtoint ptr %parent_name2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name2, align 4
  %6 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %parent_name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 52) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end25:                                         ; preds = %entry
  %offset = getelementptr inbounds %struct.stratix10_perip_c_clock, ptr %clks, i32 0, i32 6
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %reg, i32 %9
  %reg26 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %reg26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %reg26, align 4
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @peri_c_clk_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.stratix10_perip_c_clock, ptr %clks, i32 0, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %flags28 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %15 = ptrtoint ptr %flags28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %flags28, align 4
  %num_parents = getelementptr inbounds %struct.stratix10_perip_c_clock, ptr %clks, i32 0, i32 4
  %16 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_parents, align 4
  %num_parents29 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %18 = ptrtoint ptr %num_parents29 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %num_parents29, align 4
  %19 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent_name, align 4
  %tobool30.not = icmp eq ptr %20, null
  %parent_name. = select i1 %tobool30.not, ptr null, ptr %parent_name
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %21 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %parent_name., ptr %parent_names, align 4
  br i1 %tobool30.not, label %if.then32, label %if.end25.if.end34_crit_edge

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %parent_data = getelementptr inbounds %struct.stratix10_perip_c_clock, ptr %clks, i32 0, i32 3
  %22 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent_data, align 4
  %parent_data33 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 3
  %24 = ptrtoint ptr %parent_data33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %parent_data33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end25.if.end34_crit_edge
  %init37 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %init37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %init, ptr %init37, align 8
  %call40 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end34.cleanup_crit_edge, label %if.then42

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %26 = inttoptr i32 %call40 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end34.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %26, %if.then42 ], [ %call7.i.i, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @n5x_register_periph(ptr nocapture noundef readonly %clks, ptr noundef %regbase) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %name1 = getelementptr inbounds %struct.n5x_perip_c_clock, ptr %clks, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #5
  %parent_name2 = getelementptr inbounds %struct.n5x_perip_c_clock, ptr %clks, i32 0, i32 2
  %4 = ptrtoint ptr %parent_name2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name2, align 4
  %6 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %parent_name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 52) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end25:                                         ; preds = %entry
  %offset = getelementptr inbounds %struct.n5x_perip_c_clock, ptr %clks, i32 0, i32 6
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %regbase, i32 %9
  %reg = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.n5x_perip_c_clock, ptr %clks, i32 0, i32 7
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shift, align 4
  %shift26 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %shift26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %shift26, align 4
  %14 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @n5x_peri_c_clk_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.n5x_perip_c_clock, ptr %clks, i32 0, i32 5
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %flags28 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %18 = ptrtoint ptr %flags28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %flags28, align 4
  %num_parents = getelementptr inbounds %struct.n5x_perip_c_clock, ptr %clks, i32 0, i32 4
  %19 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_parents, align 4
  %num_parents29 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %21 = ptrtoint ptr %num_parents29 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %num_parents29, align 4
  %22 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent_name, align 4
  %tobool30.not = icmp eq ptr %23, null
  %parent_name. = select i1 %tobool30.not, ptr null, ptr %parent_name
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %24 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %parent_name., ptr %parent_names, align 4
  %init33 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %init33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %init, ptr %init33, align 8
  %call36 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end25.cleanup_crit_edge, label %if.then38

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then38:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %26 = inttoptr i32 %call36 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %26, %if.then38 ], [ %call7.i.i, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @s10_register_cnt_periph(ptr nocapture noundef readonly %clks, ptr noundef %regbase) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %name1 = getelementptr inbounds %struct.stratix10_perip_cnt_clock, ptr %clks, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #5
  %parent_name2 = getelementptr inbounds %struct.stratix10_perip_cnt_clock, ptr %clks, i32 0, i32 2
  %4 = ptrtoint ptr %parent_name2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name2, align 4
  %6 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %parent_name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 52) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end25:                                         ; preds = %entry
  %offset = getelementptr inbounds %struct.stratix10_perip_cnt_clock, ptr %clks, i32 0, i32 6
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool26.not = icmp eq i32 %9, 0
  %add.ptr = getelementptr i8, ptr %regbase, i32 %9
  %spec.select = select i1 %tobool26.not, ptr null, ptr %add.ptr
  %10 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select, ptr %10, align 4
  %bypass_reg = getelementptr inbounds %struct.stratix10_perip_cnt_clock, ptr %clks, i32 0, i32 8
  %12 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bypass_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool32.not = icmp eq i32 %13, 0
  %add.ptr35 = getelementptr i8, ptr %regbase, i32 %13
  %add.ptr35.sink = select i1 %tobool32.not, ptr null, ptr %add.ptr35
  %14 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr35.sink, ptr %14, align 4
  %bypass_shift = getelementptr inbounds %struct.stratix10_perip_cnt_clock, ptr %clks, i32 0, i32 9
  %16 = ptrtoint ptr %bypass_shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bypass_shift, align 4
  %bypass_shift40 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %bypass_shift40 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %bypass_shift40, align 8
  %fixed_divider = getelementptr inbounds %struct.stratix10_perip_cnt_clock, ptr %clks, i32 0, i32 7
  %19 = ptrtoint ptr %fixed_divider to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fixed_divider, align 4
  %conv = zext i8 %20 to i32
  %fixed_div = getelementptr inbounds %struct.socfpga_periph_clk, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %fixed_div to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %fixed_div, align 4
  %22 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %3, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @peri_cnt_clk_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.stratix10_perip_cnt_clock, ptr %clks, i32 0, i32 5
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %flags42 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %26 = ptrtoint ptr %flags42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flags42, align 4
  %num_parents = getelementptr inbounds %struct.stratix10_perip_cnt_clock, ptr %clks, i32 0, i32 4
  %27 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_parents, align 4
  %num_parents43 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %29 = ptrtoint ptr %num_parents43 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %num_parents43, align 4
  %30 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent_name, align 4
  %tobool44.not = icmp eq ptr %31, null
  %parent_name. = select i1 %tobool44.not, ptr null, ptr %parent_name
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %32 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %parent_name., ptr %parent_names, align 4
  br i1 %tobool44.not, label %if.then47, label %if.end25.if.end49_crit_edge

if.end25.if.end49_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then47:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %parent_data = getelementptr inbounds %struct.stratix10_perip_cnt_clock, ptr %clks, i32 0, i32 3
  %33 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent_data, align 4
  %parent_data48 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 3
  %35 = ptrtoint ptr %parent_data48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %parent_data48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end25.if.end49_crit_edge
  %init52 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %init52 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %init, ptr %init52, align 8
  %call55 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end49.cleanup_crit_edge, label %if.then57

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %37 = inttoptr i32 %call55 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.end49.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %37, %if.then57 ], [ %call7.i.i, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_peri_c_clk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !18
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %div3 = udiv i32 %parent_rate, %3
  ret i32 %div3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_periclk_get_parent(ptr nocapture noundef readonly %hwclk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bypass_reg = getelementptr inbounds %struct.socfpga_periph_clk, ptr %hwclk, i32 0, i32 4
  %0 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bypass_reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %bypass_shift = getelementptr inbounds %struct.socfpga_periph_clk, ptr %hwclk, i32 0, i32 7
  %2 = ptrtoint ptr %bypass_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bypass_shift, align 4
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #5, !srcloc !18
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and = and i32 %5, %shl
  %6 = ptrtoint ptr %bypass_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bypass_shift, align 4
  %shr = lshr i32 %and, %7
  %conv = trunc i32 %shr to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool5.not = icmp eq i8 %conv, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %reg = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  %11 = lshr i32 %10, 8
  %12 = trunc i32 %11 to i8
  %conv19 = and i8 %12, 7
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv, %if.then.cleanup_crit_edge ], [ %conv19, %if.then9 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n5x_clk_peri_c_clk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shift1 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %hwclk, i32 0, i32 6
  %0 = ptrtoint ptr %shift1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shift1, align 4
  %reg = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !18
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %shl = shl i32 31, %1
  %and = and i32 %5, %shl
  %shr = lshr i32 %and, %1
  %add = add i32 %shr, 1
  %div4 = udiv i32 %parent_rate, %add
  ret i32 %div4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_peri_cnt_clk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed_div = getelementptr inbounds %struct.socfpga_periph_clk, ptr %hwclk, i32 0, i32 2
  %0 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.else:                                          ; preds = %entry
  %reg = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else.if.end8_crit_edge, label %if.then3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  %5 = and i32 %4, -16318464
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add = add nuw nsw i32 %6, 1
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %div.0 = phi i32 [ %add, %if.then3 ], [ 1, %if.else.if.end8_crit_edge ], [ %1, %entry.if.end8_crit_edge ]
  %div9 = udiv i32 %parent_rate, %div.0
  ret i32 %div9
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/socfpga/clk-periph-s10.c", i32 112, i32 6}
!2 = !{ptr @peri_c_clk_ops, !3, !"peri_c_clk_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/socfpga/clk-periph-s10.c", i32 91, i32 29}
!4 = !{ptr @n5x_peri_c_clk_ops, !5, !"n5x_peri_c_clk_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/socfpga/clk-periph-s10.c", i32 86, i32 29}
!6 = !{ptr @peri_cnt_clk_ops, !7, !"peri_cnt_clk_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/socfpga/clk-periph-s10.c", i32 96, i32 29}
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
!18 = !{i64 4950650}
!19 = !{i64 2152509070}
!20 = !{i64 2152513368}
!21 = !{i64 2152513858}
!22 = !{i64 2152507276}
!23 = !{i64 2152511558}
