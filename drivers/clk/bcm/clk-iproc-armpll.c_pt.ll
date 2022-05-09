; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-iproc-armpll.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-iproc-armpll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.iproc_arm_pll = type { %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clk/bcm/clk-iproc-armpll.c\00", [61 x i8] zeroinitializer }, align 32
@iproc_arm_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iproc_arm_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iproc_arm_pll_recalc_rate.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_iproc_armpll\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iproc_arm_pll_recalc_rate\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ARM PLL rate: %lu. parent rate: %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@iproc_arm_pll_recalc_rate.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.4, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: ndiv_int: %u, pdiv: %u, mdiv: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__get_fid.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.6, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"__get_fid\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: fid override %u->%u\0A\00", [39 x i8] zeroinitializer }, align 32
@__get_fid.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.7, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: active fid: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 6, i64 7]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 252, i32 6 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"iproc_arm_pll_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 240, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 232, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 234, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 98, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [38 x i8] c"../drivers/clk/bcm/clk-iproc-armpll.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 103, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @iproc_arm_pll_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_arm_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @iproc_armpll_setup(ptr noundef %node) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #6
  %1 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call24 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.iproc_arm_pll, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call24, ptr %base, align 4
  %tobool27.not = icmp eq ptr %call24, null
  br i1 %tobool27.not, label %do.end45, label %if.end61.critedge, !prof !29

do.end45:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef null) #6
  br label %err_free_pll

if.end61.critedge:                                ; preds = %if.end23
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %6 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @iproc_arm_pll_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags, align 4
  %call63 = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #6
  %9 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call63, ptr %parent_name, align 4
  %tobool64.not = icmp eq ptr %call63, null
  %parent_name. = select i1 %tobool64.not, ptr null, ptr %parent_name
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %10 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent_name., ptr %parent_names, align 4
  %tobool65.not = icmp ne ptr %call63, null
  %conv = zext i1 %tobool65.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %11 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %num_parents, align 4
  %init67 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %init67 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %init, ptr %init67, align 8
  %call69 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool71.not = icmp eq i32 %call69, 0
  br i1 %tobool71.not, label %if.end103.critedge, label %do.end87, !prof !30

do.end87:                                         ; preds = %if.end61.critedge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 268, i32 noundef 9, ptr noundef null) #6
  br label %err_iounmap

if.end103.critedge:                               ; preds = %if.end61.critedge
  %call105 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool107.not = icmp eq i32 %call105, 0
  br i1 %tobool107.not, label %if.end103.critedge.cleanup_crit_edge, label %do.end123, !prof !30

if.end103.critedge.cleanup_crit_edge:             ; preds = %if.end103.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end123:                                        ; preds = %if.end103.critedge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 272, i32 noundef 9, ptr noundef null) #6
  call void @clk_hw_unregister(ptr noundef nonnull %call7.i.i) #6
  br label %err_iounmap

err_iounmap:                                      ; preds = %do.end123, %do.end87
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  call void @iounmap(ptr noundef %14) #6
  br label %err_free_pll

err_free_pll:                                     ; preds = %err_iounmap, %do.end45
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_pll, %if.end103.critedge.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_arm_pll_recalc_rate(ptr nocapture noundef %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.iproc_arm_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 3080
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rate = getelementptr inbounds %struct.iproc_arm_pll, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %parent_rate, ptr %rate, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 3072
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !31
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  %and12 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rate15 = getelementptr inbounds %struct.iproc_arm_pll, ptr %hw, i32 0, i32 2
  %9 = ptrtoint ptr %rate15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rate15, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %shr = lshr i32 %8, 24
  %and17 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp = icmp eq i32 %and17, 0
  %spec.store.select = select i1 %cmp, i32 16, i32 %and17
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 3108
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !31
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %and.i = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %13, 20
  %and2.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp.i = icmp eq i32 %and2.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 256, i32 %and2.i
  %and4.i = and i32 %13, 1048575
  br label %__get_ndiv.exit

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr8.i = getelementptr i8, ptr %15, i32 3072
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #6, !srcloc !31
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  %shr12.i = lshr i32 %17, 8
  %and13.i = and i32 %shr12.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %cmp14.i = icmp eq i32 %and13.i, 0
  %spec.store.select26.i = select i1 %cmp14.i, i32 1024, i32 %and13.i
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr20.i = getelementptr i8, ptr %19, i32 3076
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #6, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %21 = and i32 %20, -61696
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  br label %__get_ndiv.exit

__get_ndiv.exit:                                  ; preds = %if.else.i, %if.then.i
  %ndiv_frac.0.i = phi i32 [ %and4.i, %if.then.i ], [ %22, %if.else.i ]
  %ndiv_int.0.i = phi i32 [ %spec.store.select.i, %if.then.i ], [ %spec.store.select26.i, %if.else.i ]
  %shl.i = shl nuw nsw i32 %ndiv_int.0.i, 20
  %or.i = or i32 %shl.i, %ndiv_frac.0.i
  %call.i = tail call fastcc i32 @__get_fid(ptr noundef %hw) #6
  %23 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.then24 [
    i32 0, label %__get_ndiv.exit.if.end26_crit_edge
    i32 2, label %__get_ndiv.exit.if.end26_crit_edge103
    i32 6, label %sw.bb1.i
    i32 7, label %sw.bb4.i
  ]

__get_ndiv.exit.if.end26_crit_edge103:            ; preds = %__get_ndiv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

__get_ndiv.exit.if.end26_crit_edge:               ; preds = %__get_ndiv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

sw.bb1.i:                                         ; preds = %__get_ndiv.exit
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr.i90 = getelementptr i8, ptr %25, i32 3080
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #6, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %26)
  %cmp.i91 = icmp ult i32 %26, 16777216
  br i1 %cmp.i91, label %sw.bb1.i.if.end26_crit_edge, label %sw.bb1.i.__get_mdiv.exit_crit_edge

sw.bb1.i.__get_mdiv.exit_crit_edge:               ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__get_mdiv.exit

sw.bb1.i.if.end26_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

sw.bb4.i:                                         ; preds = %__get_ndiv.exit
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr8.i93 = getelementptr i8, ptr %28, i32 3104
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i93) #6, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %29)
  %cmp13.i = icmp ult i32 %29, 16777216
  br i1 %cmp13.i, label %sw.bb4.i.if.end26_crit_edge, label %sw.bb4.i.__get_mdiv.exit_crit_edge

sw.bb4.i.__get_mdiv.exit_crit_edge:               ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__get_mdiv.exit

sw.bb4.i.if.end26_crit_edge:                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

__get_mdiv.exit:                                  ; preds = %sw.bb4.i.__get_mdiv.exit_crit_edge, %sw.bb1.i.__get_mdiv.exit_crit_edge
  %mdiv.0.i.in = phi i32 [ %29, %sw.bb4.i.__get_mdiv.exit_crit_edge ], [ %26, %sw.bb1.i.__get_mdiv.exit_crit_edge ]
  %mdiv.0.i = lshr i32 %mdiv.0.i.in, 24
  br label %if.end26

if.then24:                                        ; preds = %__get_ndiv.exit
  call void @__sanitizer_cov_trace_pc() #8
  %rate25 = getelementptr inbounds %struct.iproc_arm_pll, ptr %hw, i32 0, i32 2
  %30 = ptrtoint ptr %rate25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rate25, align 4
  br label %cleanup

if.end26:                                         ; preds = %__get_mdiv.exit, %sw.bb4.i.if.end26_crit_edge, %sw.bb1.i.if.end26_crit_edge, %__get_ndiv.exit.if.end26_crit_edge, %__get_ndiv.exit.if.end26_crit_edge103
  %mdiv.0.i97 = phi i32 [ %mdiv.0.i, %__get_mdiv.exit ], [ 1, %__get_ndiv.exit.if.end26_crit_edge ], [ 1, %__get_ndiv.exit.if.end26_crit_edge103 ], [ 256, %sw.bb4.i.if.end26_crit_edge ], [ 256, %sw.bb1.i.if.end26_crit_edge ]
  %conv = zext i32 %or.i to i64
  %conv27 = zext i32 %parent_rate to i64
  %mul = mul nuw i64 %conv, %conv27
  %shr28 = lshr i64 %mul, 20
  %conv29 = trunc i64 %shr28 to i32
  %rate30 = getelementptr inbounds %struct.iproc_arm_pll, ptr %hw, i32 0, i32 2
  %div = udiv i32 %conv29, %spec.store.select
  %div32 = udiv i32 %div, %mdiv.0.i97
  %31 = ptrtoint ptr %rate30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div32, ptr %rate30, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_arm_pll_recalc_rate.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_arm_pll_recalc_rate, %if.then39)) #6
          to label %do.body42 [label %if.then39], !srcloc !39

if.then39:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %rate30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate30, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iproc_arm_pll_recalc_rate.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %33, i32 noundef %parent_rate) #6
  br label %do.body42

do.body42:                                        ; preds = %if.then39, %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_arm_pll_recalc_rate.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_arm_pll_recalc_rate, %if.then54)) #6
          to label %do.end59 [label %if.then54], !srcloc !39

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %shr55 = lshr i32 %or.i, 20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iproc_arm_pll_recalc_rate.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %shr55, i32 noundef %spec.store.select, i32 noundef %mdiv.0.i97) #6
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body42
  %34 = ptrtoint ptr %rate30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rate30, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.then24, %if.then14, %if.then
  %retval.0 = phi i32 [ %parent_rate, %if.then ], [ 0, %if.then24 ], [ %35, %do.end59 ], [ 0, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__get_fid(ptr nocapture noundef readonly %pll) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.iproc_arm_pll, ptr %pll, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3584
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !31
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %3, 15
  %policy.0 = select i1 %tobool.not, i32 0, i32 %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %policy.0)
  %cmp = icmp ugt i32 %policy.0, 3
  br i1 %cmp, label %do.body6, label %do.end12, !prof !29

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-iproc-armpll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #6, !srcloc !41
  unreachable

do.end12:                                         ; preds = %entry
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #6, !srcloc !31
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %mul = shl nuw nsw i32 %policy.0, 3
  %shr = lshr i32 %7, %mul
  %and20 = and i32 %shr, 7
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %9, i32 3776
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !31
  %11 = lshr i32 %10, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  %and29 = and i32 %11, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and20, i32 %and29)
  %cmp30.not = icmp eq i32 %and20, %and29
  br i1 %cmp30.not, label %do.end12.do.body47_crit_edge, label %do.body32

do.end12.do.body47_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47

do.body32:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__get_fid.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__get_fid, %if.then42)) #6
          to label %do.body47 [label %if.then42], !srcloc !39

if.then42:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__get_fid.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %and20, i32 noundef %and29) #6
  br label %do.body47

do.body47:                                        ; preds = %if.then42, %do.body32, %do.end12.do.body47_crit_edge
  %fid.0 = phi i32 [ %and20, %do.end12.do.body47_crit_edge ], [ %and29, %if.then42 ], [ %and29, %do.body32 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__get_fid.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__get_fid, %if.then59)) #6
          to label %do.end62 [label %if.then59], !srcloc !39

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__get_fid.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %fid.0) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body47
  ret i32 %fid.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !14, !15, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-iproc-armpll.c", i32 252, i32 6}
!2 = !{ptr @iproc_arm_pll_ops, !3, !"iproc_arm_pll_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/bcm/clk-iproc-armpll.c", i32 240, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/bcm/clk-iproc-armpll.c", i32 232, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @iproc_arm_pll_recalc_rate.__UNIQUE_ID_ddebug185, !5, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/bcm/clk-iproc-armpll.c", i32 234, i32 2}
!11 = !{ptr @iproc_arm_pll_recalc_rate.__UNIQUE_ID_ddebug186, !10, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/bcm/clk-iproc-armpll.c", i32 98, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__get_fid.__UNIQUE_ID_ddebug183, !13, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/bcm/clk-iproc-armpll.c", i32 103, i32 2}
!18 = !{ptr @__get_fid.__UNIQUE_ID_ddebug184, !17, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 4953105}
!32 = !{i64 2152917121}
!33 = !{i64 2152917615}
!34 = !{i64 2152914415}
!35 = !{i64 2152914926}
!36 = !{i64 2152915426}
!37 = !{i64 2152913418}
!38 = !{i64 2152913915}
!39 = !{i64 2148697305, i64 2148697310, i64 2148697323, i64 2148697367, i64 2148697401, i64 2148697422}
!40 = !{i64 2152905675}
!41 = !{i64 2152906049, i64 2152906547, i64 2152906086, i64 2152906142, i64 2152906176, i64 2152906200, i64 2152906241, i64 2152906262, i64 2152906290, i64 2152906324}
!42 = !{i64 2152907799}
!43 = !{i64 2152908297}
