; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-sdmmc-mux.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-sdmmc-mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.tegra_sdmmc_mux = type { %struct.clk_hw, ptr, ptr, ptr, %struct.tegra_clk_periph_gate, i8 }
%struct.tegra_clk_periph_gate = type { i32, %struct.clk_hw, ptr, i8, i32, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@tegra_clk_sdmmc_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_sdmmc_mux_enable, ptr @clk_sdmmc_mux_disable, ptr @clk_sdmmc_mux_is_enabled, ptr @clk_sdmmc_mux_disable_unused, ptr null, ptr @clk_sdmmc_mux_restore_context, ptr @clk_sdmmc_mux_recalc_rate, ptr null, ptr @clk_sdmmc_mux_determine_rate, ptr @clk_sdmmc_mux_set_parent, ptr @clk_sdmmc_mux_get_parent, ptr @clk_sdmmc_mux_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mux_sdmmc_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [44 x i8] zeroinitializer }, align 32
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@tegra_clk_periph_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/tegra/clk-sdmmc-mux.c\00", [62 x i8] zeroinitializer }, align 32
@mux_non_lj_idx = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\03\07\04\06", [27 x i8] zeroinitializer }, align 32
@mux_lj_idx = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\02\05\06", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown parent selector %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_p\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_c4_out2\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_c4_out0\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_c4_out1\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_m\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"tegra_clk_sdmmc_mux_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 221, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"mux_sdmmc_parents\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 29, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 214, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"mux_non_lj_idx\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 37, i32 17 }
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"mux_lj_idx\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 33, i32 17 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 62, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 30, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 30, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 30, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 30, i32 41 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [37 x i8] c"../drivers/clk/tegra/clk-sdmmc-mux.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 30, i32 56 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @tegra_clk_sdmmc_mux_ops, ptr @mux_sdmmc_parents, ptr @.str, ptr @mux_non_lj_idx, ptr @mux_lj_idx, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_sdmmc_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_sdmmc_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_non_lj_idx to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_lj_idx to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_sdmmc_mux_div(ptr noundef %name, ptr noundef %clk_base, i32 noundef %offset, i32 noundef %clk_num, i8 noundef zeroext %div_flags, i32 noundef %flags, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tegra_clk_sdmmc_mux_ops, ptr %ops, align 4
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %flags2 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags2, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mux_sdmmc_parents, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %6 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %num_parents, align 4
  %call = tail call ptr @get_reg_bank(i32 noundef %clk_num) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 64) #8
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %init9 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %init9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %init, ptr %init9, align 8
  %add.ptr = getelementptr i8, ptr %clk_base, i32 %offset
  %reg = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %reg, align 4
  %lock10 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %lock10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lock, ptr %lock10, align 8
  %clk_base11 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %call7.i.i, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %clk_base11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %clk_base, ptr %clk_base11, align 8
  %regs = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %call7.i.i, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %regs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %13 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %enable_refcnt = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %call7.i.i, i32 0, i32 4, i32 5
  %14 = ptrtoint ptr %enable_refcnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %enable_refcnt, align 4
  %clk_num15 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %call7.i.i, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %clk_num15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %clk_num, ptr %clk_num15, align 8
  %flags17 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %call7.i.i, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %flags17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %flags17, align 4
  %div_flags18 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %div_flags18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %div_flags, ptr %div_flags18, align 4
  %gate_ops = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %gate_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tegra_clk_periph_gate_ops, ptr %gate_ops, align 4
  %call20 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %clk26 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %clk26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call20, ptr %clk26, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call20, %if.then22 ], [ %call20, %if.end23 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_reg_bank(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_ops1 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %gate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gate_ops1, align 4
  %hw2 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 4, i32 1
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 4, i32 1, i32 1
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
  %call = tail call i32 %9(ptr noundef %hw2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_sdmmc_mux_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_ops1 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %gate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gate_ops1, align 4
  %hw2 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 4, i32 1
  %disable = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 4
  tail call void %3(ptr noundef %hw2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_ops1 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %gate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gate_ops1, align 4
  %hw2 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 4, i32 1
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 4, i32 1, i32 1
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
  %call = tail call i32 %9(ptr noundef %hw2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_sdmmc_mux_disable_unused(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_ops1 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %gate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gate_ops1, align 4
  %hw2 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 4, i32 1
  %disable_unused = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %disable_unused to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable_unused, align 4
  tail call void %3(ptr noundef %hw2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_sdmmc_mux_restore_context(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #5
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #5
  %call2 = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #5
  %call3 = tail call i32 @clk_hw_get_parent_index(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end24, !prof !31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reg.i = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !32
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %and.i = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %idxprom.i = and i32 %call3, 255
  %arrayidx.i = getelementptr [5 x i8], ptr @mux_non_lj_idx, i32 0, i32 %idxprom.i
  %arrayidx3.i = getelementptr [5 x i8], ptr @mux_lj_idx, i32 0, i32 %idxprom.i
  %index.addr.0.in.i = select i1 %tobool.not.i, ptr %arrayidx3.i, ptr %arrayidx.i
  %4 = ptrtoint ptr %index.addr.0.in.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %index.addr.0.i = load i8, ptr %index.addr.0.in.i, align 1
  %and4.i = and i32 %3, 536870911
  %conv.i = zext i8 %index.addr.0.i to i32
  %shl.i = shl i32 %conv.i, 29
  %or.i = or i32 %shl.i, %and4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !34
  %call26 = tail call i32 @clk_sdmmc_mux_set_rate(ptr noundef %hw, i32 noundef %call2, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %reg = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !32
  %3 = lshr i32 %2, 24
  %add = add nuw nsw i32 %3, 2
  %mul = shl nuw nsw i64 %conv, 1
  %sub = add nuw nsw i32 %3, 1
  %4 = zext i32 %sub to i64
  %add3 = add nuw nsw i64 %mul, %4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add3)
  %cmp176 = icmp ult i64 %add3, 4294967296
  br i1 %cmp176, label %if.then180, label %if.else186, !prof !35

if.then180:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv181 = trunc i64 %add3 to i32
  %div184 = udiv i32 %conv181, %add
  br label %if.end190

if.else186:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %add3) #9, !srcloc !36
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %extract.t302 = trunc i64 %asmresult1.i to i32
  br label %if.end190

if.end190:                                        ; preds = %if.else186, %if.then180
  %rate.0.off0 = phi i32 [ %div184, %if.then180 ], [ %extract.t302, %if.else186 ]
  ret i32 %rate.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_determine_rate(ptr nocapture noundef readonly %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %best_parent_rate, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_rate, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 %5)
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_rate, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8)
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div_flags = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 5
  %11 = ptrtoint ptr %div_flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %div_flags, align 4
  %call = tail call i32 @div_frac_get(i32 noundef %9, i32 noundef %1, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext %12) #5
  %13 = tail call i32 @llvm.smax.i32(i32 %call, i32 0)
  %14 = ptrtoint ptr %div_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %div_flags, align 4
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  %mul23 = shl i32 %1, 1
  %add24 = add nuw i32 %13, 2
  %add19 = add i32 %mul23, -1
  %sub = add i32 %add19, %add24
  %mul23.sink = select i1 %tobool17.not, i32 %mul23, i32 %sub
  %div25 = udiv i32 %mul23.sink, %add24
  %17 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div25, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !32
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr [5 x i8], ptr @mux_non_lj_idx, i32 0, i32 %idxprom
  %arrayidx3 = getelementptr [5 x i8], ptr @mux_lj_idx, i32 0, i32 %idxprom
  %index.addr.0.in = select i1 %tobool.not, ptr %arrayidx3, ptr %arrayidx
  %4 = ptrtoint ptr %index.addr.0.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %index.addr.0 = load i8, ptr %index.addr.0.in, align 1
  %and4 = and i32 %3, 536870911
  %conv = zext i8 %index.addr.0 to i32
  %shl = shl i32 %conv, 29
  %or = or i32 %shl, %and4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_sdmmc_mux_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #5
  %reg = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !32
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 29
  %and3 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %mux_lj_idx.mux_non_lj_idx = select i1 %tobool.not, ptr @mux_lj_idx, ptr @mux_non_lj_idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp40 = icmp sgt i32 %call, 0
  br i1 %cmp40, label %entry.for.body_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %mux_lj_idx.mux_non_lj_idx, i32 %i.041
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp4 = icmp eq i32 %shr, %conv
  br i1 %cmp4, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv7 = trunc i32 %i.041 to i8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %shr) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then6
  %retval.0 = phi i8 [ %conv7, %if.then6 ], [ 0, %do.end ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div_flags = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %div_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %div_flags, align 4
  %call = tail call i32 @div_frac_get(i32 noundef %rate, i32 noundef %parent_rate, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %do.body2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #5
  br label %if.end10

if.end10:                                         ; preds = %do.body2, %if.end.if.end10_crit_edge
  %flags.0 = phi i32 [ %call7, %do.body2 ], [ 0, %if.end.if.end10_crit_edge ]
  %call.i = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #5
  %reg.i = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !32
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %shr.i = lshr i32 %7, 29
  %and3.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  %mux_lj_idx.mux_non_lj_idx.i = select i1 %tobool.not.i, ptr @mux_lj_idx, ptr @mux_non_lj_idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp40.i = icmp sgt i32 %call.i, 0
  br i1 %cmp40.i, label %if.end10.for.body.i_crit_edge, label %if.end10.do.end.i_crit_edge

if.end10.do.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end10.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %mux_lj_idx.mux_non_lj_idx.i, i32 %i.041.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv.i)
  %cmp4.i = icmp eq i32 %shr.i, %conv.i
  br i1 %cmp4.i, label %if.then6.i, label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast = and i32 %i.041.i, 255
  br label %clk_sdmmc_mux_get_parent.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.end10.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %shr.i) #5
  br label %clk_sdmmc_mux_get_parent.exit

clk_sdmmc_mux_get_parent.exit:                    ; preds = %do.end.i, %if.then6.i
  %retval.0.i = phi i32 [ %phi.cast, %if.then6.i ], [ 0, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  %arrayidx = getelementptr [5 x i8], ptr @mux_non_lj_idx, i32 0, i32 %retval.0.i
  %arrayidx15 = getelementptr [5 x i8], ptr @mux_lj_idx, i32 0, i32 %retval.0.i
  %src.0.in = select i1 %tobool12.not, ptr %arrayidx15, ptr %arrayidx
  %10 = ptrtoint ptr %src.0.in to i32
  call void @__asan_load1_noabort(i32 %10)
  %src.0 = load i8, ptr %src.0.in, align 1
  %conv17 = zext i8 %src.0 to i32
  %shl = shl i32 %conv17, 29
  %or = or i32 %shl, %call
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !34
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 429496) #5
  %18 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %clk_sdmmc_mux_get_parent.exit.cleanup_crit_edge, label %if.then30

clk_sdmmc_mux_get_parent.exit.cleanup_crit_edge:  ; preds = %clk_sdmmc_mux_get_parent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then30:                                        ; preds = %clk_sdmmc_mux_get_parent.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %19, i32 noundef %flags.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %clk_sdmmc_mux_get_parent.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %clk_sdmmc_mux_get_parent.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_parent_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @div_frac_get(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
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
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @tegra_clk_sdmmc_mux_ops, !1, !"tegra_clk_sdmmc_mux_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-sdmmc-mux.c", i32 221, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-sdmmc-mux.c", i32 214, i32 6}
!4 = !{ptr @mux_non_lj_idx, !5, !"mux_non_lj_idx", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-sdmmc-mux.c", i32 37, i32 17}
!6 = !{ptr @mux_lj_idx, !7, !"mux_lj_idx", i1 false, i1 false}
!7 = !{!"../drivers/clk/tegra/clk-sdmmc-mux.c", i32 33, i32 17}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/tegra/clk-sdmmc-mux.c", i32 62, i32 2}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/tegra/clk-sdmmc-mux.c", i32 30, i32 2}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/tegra/clk-sdmmc-mux.c", i32 30, i32 11}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/tegra/clk-sdmmc-mux.c", i32 30, i32 26}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/tegra/clk-sdmmc-mux.c", i32 30, i32 41}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/tegra/clk-sdmmc-mux.c", i32 30, i32 56}
!20 = !{ptr @mux_sdmmc_parents, !21, !"mux_sdmmc_parents", i1 false, i1 false}
!21 = !{!"../drivers/clk/tegra/clk-sdmmc-mux.c", i32 29, i32 27}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 4031910}
!33 = !{i64 2152548685}
!34 = !{i64 4031492}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2148946876, i64 2148947156, i64 2148947490, i64 2148947824}
!37 = !{i64 2152562248}
!38 = !{i64 2152562971}
