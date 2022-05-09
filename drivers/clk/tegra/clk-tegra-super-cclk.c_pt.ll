; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-tegra-super-cclk.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra-super-cclk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_clk_super_mux = type { %struct.clk_hw, ptr, %struct.tegra_clk_frac_div, ptr, i8, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@cclk_super = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/clk/tegra/clk-tegra-super-cclk.c\00", [55 x i8] zeroinitializer }, align 32
@tegra_cclk_super_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cclk_super_determine_rate, ptr @cclk_super_set_parent, ptr @cclk_super_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_cclk_super_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cclk_super_recalc_rate, ptr null, ptr @cclk_super_determine_rate, ptr @cclk_super_set_parent, ptr @cclk_super_get_parent, ptr @cclk_super_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_clk_frac_div_ops = external dso_local constant %struct.clk_ops, align 4
@cclk_on_pllx = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cclk_super_determine_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_clk_super_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@cclk_super_determine_rate.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.2 = private unnamed_addr constant [11 x i8] c"cclk_super\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 30, i32 36 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 133, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [25 x i8] c"tegra_cclk_super_mux_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 117, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"tegra_cclk_super_ops\00", align 1
@___asan_gen_.12 = private constant [44 x i8] c"../drivers/clk/tegra/clk-tegra-super-cclk.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 109, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"cclk_on_pllx\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @cclk_super, ptr @.str, ptr @tegra_cclk_super_mux_ops, ptr @tegra_cclk_super_ops, ptr @cclk_on_pllx], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cclk_super to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cclk_super_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cclk_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cclk_on_pllx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_super_cclk(ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, i32 noundef %flags, ptr noundef %reg, i8 noundef zeroext %clk_super_flags, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #4
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %2 = load ptr, ptr @cclk_super, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 133, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 52) #7
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %flags29 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %5 = ptrtoint ptr %flags29 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags29, align 4
  %parent_names30 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names30 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_names, ptr %parent_names30, align 4
  %num_parents31 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents31 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %num_parents, ptr %num_parents31, align 4
  %reg32 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg, ptr %reg32, align 4
  %lock33 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %lock33 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %lock33, align 8
  %width = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %width, align 4
  %flags34 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %flags34 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %clk_super_flags, ptr %flags34, align 1
  %init35 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %init35 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %init, ptr %init35, align 8
  %13 = and i8 %clk_super_flags, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37.not = icmp eq i8 %13, 0
  br i1 %tobool37.not, label %if.else, label %if.end27.if.end47_crit_edge

if.end27.if.end47_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %reg, i32 4
  %reg40 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %reg40 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %reg40, align 4
  %shift = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %shift, align 1
  %width43 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %width43 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %width43, align 2
  %frac_width = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %frac_width to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %frac_width, align 1
  %lock46 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %lock46 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %lock, ptr %lock46, align 4
  %div_ops = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %div_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tegra_clk_frac_div_ops, ptr %div_ops, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end27.if.end47_crit_edge
  %tegra_cclk_super_mux_ops.sink = phi ptr [ @tegra_cclk_super_ops, %if.else ], [ @tegra_cclk_super_mux_ops, %if.end27.if.end47_crit_edge ]
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tegra_cclk_super_mux_ops.sink, ptr %20, align 4
  %add.ptr48 = getelementptr i8, ptr %reg, i32 4
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #4, !srcloc !24
  %23 = and i32 %22, -129
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %23) #4, !srcloc !25
  %call54 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #4
  %cmp.i = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.else57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %call7.i.i, ptr @cclk_super, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else57, %if.then56, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %do.end ], [ %call54, %if.else57 ], [ %call54, %if.then56 ], [ inttoptr (i32 -12 to ptr), %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_cclk_pre_pllx_rate_change() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cclk_super, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 14) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 14), align 4
  %call.i = tail call zeroext i8 %1(ptr noundef nonnull %0) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call.i)
  %cmp = icmp eq i8 %call.i, 8
  store i1 %cmp, ptr @cclk_on_pllx, align 1
  br i1 %cmp, label %if.then5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = load ptr, ptr @cclk_super, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 13) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 13), align 4
  %call.i9 = tail call i32 %3(ptr noundef %2, i8 noundef zeroext 4) #4
  br label %return

return:                                           ; preds = %if.then5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.then5 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @cclk_super_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 14) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 14), align 4
  %call = tail call zeroext i8 %0(ptr noundef %hw) #4
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cclk_super_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 13), align 4
  %call = tail call i32 %0(ptr noundef %hw, i8 noundef zeroext %index) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_cclk_post_pllx_rate_change() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @cclk_on_pllx, align 1
  br i1 %.b1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @cclk_super, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 13) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 13), align 4
  %call.i = tail call i32 %1(ptr noundef %0, i8 noundef zeroext 8) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cclk_super_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  %pllp_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef 4) #4
  %call1 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef 8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pllp_rate) #4
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %tobool.not = icmp eq ptr %call, null
  %tobool3.not = icmp eq ptr %call1, null
  %spec.select = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %spec.select, label %land.rhs, label %if.end43

land.rhs:                                         ; preds = %entry
  %.b145 = load i1, ptr @cclk_super_determine_rate.__already_done, align 1
  br i1 %.b145, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !23

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cclk_super_determine_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end43:                                         ; preds = %entry
  %call44 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call) #4
  %2 = ptrtoint ptr %pllp_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call44, ptr %pllp_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call44)
  %cmp.not = icmp ugt i32 %1, %call44
  br i1 %cmp.not, label %if.else51, label %if.then45

if.then45:                                        ; preds = %if.end43
  %flags = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 1
  %5 = and i8 %4, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool46.not = icmp eq i8 %5, 0
  br i1 %tobool46.not, label %if.else, label %if.then45.if.end49_crit_edge

if.then45.if.end49_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.else:                                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 11), align 4
  %call48 = call i32 %6(ptr noundef %hw, i32 noundef %1, ptr noundef nonnull %pllp_rate) #4
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then45.if.end49_crit_edge
  %rate.0 = phi i32 [ %call48, %if.else ], [ %call44, %if.then45.if.end49_crit_edge ]
  %7 = ptrtoint ptr %pllp_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pllp_rate, align 4
  br label %if.end56

if.else51:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %call52 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %call1, i32 noundef %1) #4
  br label %if.end56

if.end56:                                         ; preds = %if.else51, %if.end49
  %call52.sink = phi i32 [ %call52, %if.else51 ], [ %8, %if.end49 ]
  %call1.sink = phi ptr [ %call1, %if.else51 ], [ %call, %if.end49 ]
  %storemerge = phi i32 [ %call52, %if.else51 ], [ %rate.0, %if.end49 ]
  %best_parent_rate53 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %best_parent_rate53 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call52.sink, ptr %best_parent_rate53, align 4
  %best_parent_hw54 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %best_parent_hw54 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.sink, ptr %best_parent_hw54, align 4
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %storemerge)
  %cmp58 = icmp slt i32 %storemerge, 1
  br i1 %cmp58, label %land.rhs67, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs67:                                       ; preds = %if.end56
  %.b143144 = load i1, ptr @cclk_super_determine_rate.__already_done.1, align 1
  br i1 %.b143144, label %land.rhs67.cleanup_crit_edge, label %if.then78, !prof !23

land.rhs67.cleanup_crit_edge:                     ; preds = %land.rhs67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then78:                                        ; preds = %land.rhs67
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cclk_super_determine_rate.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %land.rhs67.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ], [ -22, %if.then78 ], [ -22, %land.rhs67.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pllp_rate) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cclk_super_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 14) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 14), align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call.i)
  %cmp = icmp eq i8 %call.i, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 10), align 4
  %call6 = tail call i32 %4(ptr noundef %hw, i32 noundef %parent_rate) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %parent_rate.pn = phi i32 [ %call6, %if.end5 ], [ %parent_rate, %entry.cleanup_crit_edge ]
  %5 = lshr i32 %2, 15
  %.lobit = and i32 %5, 1
  %retval.0 = lshr i32 %parent_rate.pn, %.lobit
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cclk_super_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 15) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 15), align 4
  %call = tail call i32 %0(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #4
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-tegra-super-cclk.c", i32 133, i32 6}
!2 = !{ptr @cclk_super, !3, !"cclk_super", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-tegra-super-cclk.c", i32 30, i32 36}
!4 = distinct !{null, !5, !"cclk_on_pllx", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-tegra-super-cclk.c", i32 31, i32 13}
!6 = !{ptr @tegra_cclk_super_mux_ops, !7, !"tegra_cclk_super_mux_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/tegra/clk-tegra-super-cclk.c", i32 117, i32 29}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/clk/tegra/clk-tegra-super-cclk.c", i32 77, i32 6}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/clk/tegra/clk-tegra-super-cclk.c", i32 103, i32 6}
!12 = !{ptr @tegra_cclk_super_ops, !13, !"tegra_cclk_super_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/tegra/clk-tegra-super-cclk.c", i32 109, i32 29}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 4031046}
!25 = !{i64 4030628}
