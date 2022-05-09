; ModuleID = '/llk/IR_all_yes/drivers/clk/socfpga/clk-periph-a10.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-periph-a10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.socfpga_periph_clk = type { %struct.clk_gate, ptr, i32, ptr, ptr, i32, i32, i32 }

@periclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_periclk_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_periclk_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clk/socfpga/clk-periph-a10.c\00", [59 x i8] zeroinitializer }, align 32
@clk_mgr_a10_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div-reg\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fixed-divider\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@__socfpga_periph_init._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 116, ptr null, ptr null }, align 1
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Could not register clock provider for node:%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__socfpga_periph_init\00", [42 x i8] zeroinitializer }, align 32
@__socfpga_periph_init._entry_ptr = internal global ptr @__socfpga_periph_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpu_free_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"noc_free_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdmmc_free_clk\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"periclk_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 55, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 73, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 76, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 81, i32 40 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 90, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 96, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 115, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 46, i32 6 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 47, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [40 x i8] c"../drivers/clk/socfpga/clk-periph-a10.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 48, i32 6 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__socfpga_periph_init._entry, ptr @__socfpga_periph_init._entry_ptr, ptr @periclk_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @socfpga_a10_periph_init(ptr noundef %node) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__socfpga_periph_init(ptr noundef %node) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__socfpga_periph_init(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %reg = alloca i32, align 4
  %clk_name = alloca ptr, align 4
  %parent_name = alloca [5 x ptr], align 4
  %init = alloca %struct.clk_init_data, align 4
  %fixed_div = alloca i32, align 4
  %div_reg = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 4
  %3 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %parent_name) #8
  %4 = call ptr @memset(ptr %parent_name, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %5 = getelementptr inbounds i8, ptr %init, i32 12
  %6 = call ptr @memset(ptr %5, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fixed_div) #8
  %7 = ptrtoint ptr %fixed_div to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %fixed_div, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %div_reg) #8
  %8 = ptrtoint ptr %div_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %div_reg, align 4, !annotation !32
  %9 = getelementptr inbounds [3 x i32], ptr %div_reg, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !32
  %11 = getelementptr inbounds [3 x i32], ptr %div_reg, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !32
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 52) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !33

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 76, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_a10_base_addr to i32))
  %14 = load ptr, ptr @clk_mgr_a10_base_addr, align 4
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  %reg25 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %reg25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %reg25, align 4
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.2, ptr noundef nonnull %div_reg, i32 noundef 3, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool27.not = icmp sgt i32 %call.i, -1
  br i1 %tobool27.not, label %if.then28, label %if.end24.if.end34_crit_edge

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_a10_base_addr to i32))
  %18 = load ptr, ptr @clk_mgr_a10_base_addr, align 4
  %19 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %div_reg, align 4
  %add.ptr29 = getelementptr i8, ptr %18, i32 %20
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %9, align 4
  %shift = getelementptr inbounds %struct.socfpga_periph_clk, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %shift, align 4
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %11, align 4
  %width = getelementptr inbounds %struct.socfpga_periph_clk, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %width, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end24.if.end34_crit_edge
  %.sink = phi ptr [ %add.ptr29, %if.then28 ], [ null, %if.end24.if.end34_crit_edge ]
  %27 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %.sink, ptr %27, align 8
  %call.i.i1 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull %fixed_div, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i1)
  %tobool36.not = icmp sgt i32 %call.i.i1, -1
  br i1 %tobool36.not, label %if.else39, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.else39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fixed_div, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.end34.if.end41_crit_edge
  %.sink2 = phi i32 [ %30, %if.else39 ], [ 0, %if.end34.if.end41_crit_edge ]
  %31 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink2, ptr %31, align 4
  %call42 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef nonnull %clk_name) #8
  %33 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk_name, align 4
  %35 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %init, align 4
  %ops44 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %36 = ptrtoint ptr %ops44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @periclk_ops, ptr %ops44, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %flags, align 4
  %call46 = call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %parent_name, i32 noundef 5) #8
  %conv = trunc i32 %call46 to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %38 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv, ptr %num_parents, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %39 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %parent_name, ptr %parent_names, align 4
  %init50 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %init50 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %init, ptr %init50, align 8
  %call53 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end41
  %call57 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp = icmp slt i32 %call57, 0
  br i1 %cmp, label %do.end62, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk_name, align 4
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %42) #13
  call void @clk_hw_unregister(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.end56.cleanup_crit_edge, %if.then55, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %div_reg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fixed_div) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_periclk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed_div = getelementptr inbounds %struct.socfpga_periph_clk, ptr %hwclk, i32 0, i32 2
  %0 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else:                                          ; preds = %entry
  %div_reg = getelementptr inbounds %struct.socfpga_periph_clk, ptr %hwclk, i32 0, i32 3
  %2 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %div_reg, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else11, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #8, !srcloc !34
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !35
  %shift = getelementptr inbounds %struct.socfpga_periph_clk, ptr %hwclk, i32 0, i32 6
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift, align 4
  %shr = lshr i32 %5, %7
  %width = getelementptr inbounds %struct.socfpga_periph_clk, ptr %hwclk, i32 0, i32 5
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %sub7 = sub i32 32, %9
  %shr8 = lshr i32 -1, %sub7
  %and9 = and i32 %shr8, %shr
  %add10 = add i32 %and9, 1
  br label %if.end19

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %reg = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !36
  %13 = and i32 %12, -16318464
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add18 = add nuw nsw i32 %14, 1
  br label %if.end19

if.end19:                                         ; preds = %if.else11, %if.then3, %entry.if.end19_crit_edge
  %div.0 = phi i32 [ %add10, %if.then3 ], [ %add18, %if.else11 ], [ %1, %entry.if.end19_crit_edge ]
  %div20 = udiv i32 %parent_rate, %div.0
  ret i32 %div20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_periclk_get_parent(ptr noundef %hwclk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hwclk) #8
  %reg = getelementptr inbounds %struct.clk_gate, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %call4 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(13) @.str.7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call5 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(13) @.str.8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false7

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(15) @.str.9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %lor.lhs.false7.if.then_crit_edge, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false7.if.then_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false7.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %3 = lshr i32 %2, 8
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false7.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %lor.lhs.false7.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/socfpga/clk-periph-a10.c", i32 73, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/socfpga/clk-periph-a10.c", i32 76, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/socfpga/clk-periph-a10.c", i32 81, i32 40}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/socfpga/clk-periph-a10.c", i32 90, i32 34}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/socfpga/clk-periph-a10.c", i32 96, i32 32}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/socfpga/clk-periph-a10.c", i32 115, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__socfpga_periph_init._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @__socfpga_periph_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @periclk_ops, !16, !"periclk_ops", i1 false, i1 false}
!16 = !{!"../drivers/clk/socfpga/clk-periph-a10.c", i32 55, i32 29}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/socfpga/clk-periph-a10.c", i32 46, i32 6}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/socfpga/clk-periph-a10.c", i32 47, i32 6}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/socfpga/clk-periph-a10.c", i32 48, i32 6}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 4948613}
!35 = !{i64 2152502889}
!36 = !{i64 2152504199}
!37 = !{i64 2152505993}
