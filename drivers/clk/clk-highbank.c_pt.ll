; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-highbank.c_pt.bc'
source_filename = "../drivers/clk/clk-highbank.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hb_clk = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_hb_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hb_pll_init }, section "__clk_of_table", align 4
@__of_table_hb_a9periph = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-a9periph-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hb_a9periph_init }, section "__clk_of_table", align 4
@__of_table_hb_a9bus = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-a9bus-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hb_a9bus_init }, section "__clk_of_table", align 4
@__of_table_hb_emmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-emmc-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hb_emmc_init }, section "__clk_of_table", align 4
@clk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pll_prepare, ptr @clk_pll_unprepare, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr @clk_pll_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/clk-highbank.c\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"calxeda,hb-sregs\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@a9periphclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_cpu_periphclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@a9bclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_cpu_a9bclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@periclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_periclk_recalc_rate, ptr @clk_periclk_round_rate, ptr null, ptr null, ptr null, ptr @clk_periclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"clk_pll_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 183, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 273, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 274, i32 6 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 282, i32 45 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 288, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"a9periphclk_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 201, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"a9bclk_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 214, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"periclk_ops\00", align 1
@___asan_gen_.26 = private constant [30 x i8] c"../drivers/clk/clk-highbank.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 257, i32 29 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__of_table_hb_a9bus, ptr @__of_table_hb_a9periph, ptr @__of_table_hb_emmc, ptr @__of_table_hb_pll, ptr @clk_pll_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @a9periphclk_ops, ptr @a9bclk_ops, ptr @periclk_ops], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a9periphclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a9bclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hb_pll_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @hb_clk_init(ptr noundef %node, ptr noundef nonnull @clk_pll_ops, i32 noundef 0) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hb_a9periph_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @hb_clk_init(ptr noundef %node, ptr noundef nonnull @a9periphclk_ops, i32 noundef 0) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hb_a9bus_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @hb_clk_init(ptr noundef %node, ptr noundef nonnull @a9bclk_ops, i32 noundef 2048) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hb_emmc_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @hb_clk_init(ptr noundef %node, ptr noundef nonnull @periclk_ops, i32 noundef 0) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hb_clk_init(ptr noundef %node, ptr noundef %ops, i32 noundef %clkflags) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %reg = alloca i32, align 4
  %clk_name = alloca ptr, align 4
  %parent_name = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 4
  %3 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %4 = getelementptr inbounds i8, ptr %init, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 12)
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 274, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #12
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %do.end43, label %if.end59, !prof !35

do.end43:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 278, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end59:                                         ; preds = %if.end22
  %call60 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #8
  %call61 = call ptr @of_iomap(ptr noundef %call60, i32 noundef 0) #8
  %reg62 = getelementptr inbounds %struct.hb_clk, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %reg62 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call61, ptr %reg62, align 4
  call void @of_node_put(ptr noundef %call60) #8
  %tobool65.not = icmp eq ptr %call61, null
  br i1 %tobool65.not, label %do.body75, label %do.end83, !prof !35

do.body75:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/clk-highbank.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #8, !srcloc !36
  unreachable

do.end83:                                         ; preds = %if.end59
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %call61, i32 %9
  %10 = ptrtoint ptr %reg62 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %reg62, align 4
  %call85 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull %clk_name) #8
  %11 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_name, align 4
  %13 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %init, align 4
  %ops87 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %14 = ptrtoint ptr %ops87 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ops, ptr %ops87, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %clkflags, ptr %flags, align 4
  %call88 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #8
  %16 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call88, ptr %parent_name, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %17 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %18 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %num_parents, align 4
  %init89 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %init89 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %init, ptr %init89, align 8
  %call91 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool93.not = icmp eq i32 %call91, 0
  br i1 %tobool93.not, label %if.end125, label %do.end109, !prof !34

do.end109:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 300, i32 noundef 9, ptr noundef null) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end125:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  %call127 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %do.end109, %do.end43, %do.end
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #8
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
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_prepare(ptr nocapture noundef readonly %hwclk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.hb_clk, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  %3 = and i32 %2, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !39
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !40
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %6 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg1, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  %9 = and i32 %8, 16
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.cond.while.cond12_crit_edge

while.cond.while.cond12_crit_edge:                ; preds = %while.cond
  br label %while.cond12

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.cond12:                                     ; preds = %while.cond12.while.cond12_crit_edge, %while.cond.while.cond12_crit_edge
  %10 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg1, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  %13 = and i32 %12, 32
  %cmp20 = icmp eq i32 %13, 0
  br i1 %cmp20, label %while.cond12.while.cond12_crit_edge, label %while.end22

while.cond12.while.cond12_crit_edge:              ; preds = %while.cond12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond12

while.end22:                                      ; preds = %while.cond12
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pll_unprepare(ptr nocapture noundef readonly %hwclk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.hb_clk, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  %3 = or i32 %2, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_enable(ptr nocapture noundef readonly %hwclk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.hb_clk, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pll_disable(ptr nocapture noundef readonly %hwclk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.hb_clk, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.hb_clk, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !37
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and4 = lshr i32 %3, 20
  %shr = and i32 %and4, 255
  %and5 = lshr i32 %3, 16
  %shr6 = and i32 %and5, 7
  %add = add nuw nsw i32 %shr, 1
  %mul = mul i32 %add, %parent_rate
  %div14 = lshr i32 %mul, %shr6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div14, %if.end ], [ %parent_rate, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_round_rate(ptr nocapture noundef readnone %hwclk, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %rate, i32 33328125) #8
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 2133000000) #8
  %mul.i = shl nuw i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1066499999, i32 %3)
  %cmp5.i = icmp ugt i32 %3, 1066499999
  br i1 %cmp5.i, label %entry.clk_pll_calc.exit_crit_edge, label %for.cond.i.1

entry.clk_pll_calc.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_pll_calc.exit

for.cond.i.1:                                     ; preds = %entry
  %mul.i.1 = shl i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2132999999, i32 %mul.i.1)
  %cmp5.i.1 = icmp ugt i32 %mul.i.1, 2132999999
  br i1 %cmp5.i.1, label %for.cond.i.1.clk_pll_calc.exit_crit_edge, label %for.cond.i.2

for.cond.i.1.clk_pll_calc.exit_crit_edge:         ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_pll_calc.exit

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %mul.i.2 = shl i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2132999999, i32 %mul.i.2)
  %cmp5.i.2 = icmp ugt i32 %mul.i.2, 2132999999
  br i1 %cmp5.i.2, label %for.cond.i.2.clk_pll_calc.exit_crit_edge, label %for.cond.i.3

for.cond.i.2.clk_pll_calc.exit_crit_edge:         ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_pll_calc.exit

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %mul.i.3 = shl i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2132999999, i32 %mul.i.3)
  %cmp5.i.3 = icmp ugt i32 %mul.i.3, 2132999999
  br i1 %cmp5.i.3, label %for.cond.i.3.clk_pll_calc.exit_crit_edge, label %for.cond.i.4

for.cond.i.3.clk_pll_calc.exit_crit_edge:         ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_pll_calc.exit

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %mul.i.4 = shl i32 %3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2132999999, i32 %mul.i.4)
  %cmp5.i.4 = icmp ugt i32 %mul.i.4, 2132999999
  br i1 %cmp5.i.4, label %for.cond.i.4.clk_pll_calc.exit_crit_edge, label %for.cond.i.5

for.cond.i.4.clk_pll_calc.exit_crit_edge:         ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_pll_calc.exit

for.cond.i.5:                                     ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.5 = shl i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2132999999, i32 %mul.i.5)
  %cmp5.i.5 = icmp ugt i32 %mul.i.5, 2132999999
  %mul.i.6 = shl i32 %3, 7
  %spec.select = select i1 %cmp5.i.5, i32 6, i32 7
  %spec.select3 = select i1 %cmp5.i.5, i32 %mul.i.5, i32 %mul.i.6
  br label %clk_pll_calc.exit

clk_pll_calc.exit:                                ; preds = %for.cond.i.5, %for.cond.i.4.clk_pll_calc.exit_crit_edge, %for.cond.i.3.clk_pll_calc.exit_crit_edge, %for.cond.i.2.clk_pll_calc.exit_crit_edge, %for.cond.i.1.clk_pll_calc.exit_crit_edge, %entry.clk_pll_calc.exit_crit_edge
  %divq.0.i.lcssa = phi i32 [ 1, %entry.clk_pll_calc.exit_crit_edge ], [ 2, %for.cond.i.1.clk_pll_calc.exit_crit_edge ], [ 3, %for.cond.i.2.clk_pll_calc.exit_crit_edge ], [ 4, %for.cond.i.3.clk_pll_calc.exit_crit_edge ], [ 5, %for.cond.i.4.clk_pll_calc.exit_crit_edge ], [ %spec.select, %for.cond.i.5 ]
  %mul.i.lcssa = phi i32 [ %mul.i, %entry.clk_pll_calc.exit_crit_edge ], [ %mul.i.1, %for.cond.i.1.clk_pll_calc.exit_crit_edge ], [ %mul.i.2, %for.cond.i.2.clk_pll_calc.exit_crit_edge ], [ %mul.i.3, %for.cond.i.3.clk_pll_calc.exit_crit_edge ], [ %mul.i.4, %for.cond.i.4.clk_pll_calc.exit_crit_edge ], [ %spec.select3, %for.cond.i.5 ]
  %div21.i = lshr i32 %1, 1
  %add.i = add i32 %mul.i.lcssa, %div21.i
  %4 = urem i32 %add.i, %1
  %mul = sub i32 %add.i, %4
  %div2 = lshr i32 %mul, %divq.0.i.lcssa
  ret i32 %div2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %rate, i32 33328125) #8
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 2133000000) #8
  %mul.i = shl nuw i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1066499999, i32 %1)
  %cmp5.i = icmp ugt i32 %1, 1066499999
  br i1 %cmp5.i, label %entry.clk_pll_calc.exit_crit_edge, label %for.cond.i.1

entry.clk_pll_calc.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_pll_calc.exit

for.cond.i.1:                                     ; preds = %entry
  %mul.i.1 = shl i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2132999999, i32 %mul.i.1)
  %cmp5.i.1 = icmp ugt i32 %mul.i.1, 2132999999
  br i1 %cmp5.i.1, label %for.cond.i.1.clk_pll_calc.exit_crit_edge, label %for.cond.i.2

for.cond.i.1.clk_pll_calc.exit_crit_edge:         ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_pll_calc.exit

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %mul.i.2 = shl i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2132999999, i32 %mul.i.2)
  %cmp5.i.2 = icmp ugt i32 %mul.i.2, 2132999999
  br i1 %cmp5.i.2, label %for.cond.i.2.clk_pll_calc.exit_crit_edge, label %for.cond.i.3

for.cond.i.2.clk_pll_calc.exit_crit_edge:         ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_pll_calc.exit

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %mul.i.3 = shl i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2132999999, i32 %mul.i.3)
  %cmp5.i.3 = icmp ugt i32 %mul.i.3, 2132999999
  br i1 %cmp5.i.3, label %for.cond.i.3.clk_pll_calc.exit_crit_edge, label %for.cond.i.4

for.cond.i.3.clk_pll_calc.exit_crit_edge:         ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_pll_calc.exit

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %mul.i.4 = shl i32 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2132999999, i32 %mul.i.4)
  %cmp5.i.4 = icmp ugt i32 %mul.i.4, 2132999999
  br i1 %cmp5.i.4, label %for.cond.i.4.clk_pll_calc.exit_crit_edge, label %for.cond.i.5

for.cond.i.4.clk_pll_calc.exit_crit_edge:         ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_pll_calc.exit

for.cond.i.5:                                     ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.5 = shl i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2132999999, i32 %mul.i.5)
  %cmp5.i.5 = icmp ugt i32 %mul.i.5, 2132999999
  %mul.i.6 = shl i32 %1, 7
  %spec.select = select i1 %cmp5.i.5, i32 393216, i32 458752
  %spec.select87 = select i1 %cmp5.i.5, i32 %mul.i.5, i32 %mul.i.6
  br label %clk_pll_calc.exit

clk_pll_calc.exit:                                ; preds = %for.cond.i.5, %for.cond.i.4.clk_pll_calc.exit_crit_edge, %for.cond.i.3.clk_pll_calc.exit_crit_edge, %for.cond.i.2.clk_pll_calc.exit_crit_edge, %for.cond.i.1.clk_pll_calc.exit_crit_edge, %entry.clk_pll_calc.exit_crit_edge
  %divq.0.i.lcssa = phi i32 [ 65536, %entry.clk_pll_calc.exit_crit_edge ], [ 131072, %for.cond.i.1.clk_pll_calc.exit_crit_edge ], [ 196608, %for.cond.i.2.clk_pll_calc.exit_crit_edge ], [ 262144, %for.cond.i.3.clk_pll_calc.exit_crit_edge ], [ 327680, %for.cond.i.4.clk_pll_calc.exit_crit_edge ], [ %spec.select, %for.cond.i.5 ]
  %mul.i.lcssa = phi i32 [ %mul.i, %entry.clk_pll_calc.exit_crit_edge ], [ %mul.i.1, %for.cond.i.1.clk_pll_calc.exit_crit_edge ], [ %mul.i.2, %for.cond.i.2.clk_pll_calc.exit_crit_edge ], [ %mul.i.3, %for.cond.i.3.clk_pll_calc.exit_crit_edge ], [ %mul.i.4, %for.cond.i.4.clk_pll_calc.exit_crit_edge ], [ %spec.select87, %for.cond.i.5 ]
  %div21.i = lshr i32 %parent_rate, 1
  %add.i = add i32 %mul.i.lcssa, %div21.i
  %div10.i = udiv i32 %add.i, %parent_rate
  %dec.i = add i32 %div10.i, -1
  %reg1 = getelementptr inbounds %struct.hb_clk, ptr %hwclk, i32 0, i32 1
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !37
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %and = lshr i32 %5, 20
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %shr)
  %cmp.not = icmp eq i32 %dec.i, %shr
  br i1 %cmp.not, label %do.body45, label %if.then

if.then:                                          ; preds = %clk_pll_calc.exit
  %or = or i32 %5, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %or9 = or i32 %5, 6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %10 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !40
  %and11 = and i32 %or, -267845633
  %shl = shl i32 %dec.i, 20
  %or13 = or i32 %shl, %divq.0.i.lcssa
  %or14 = or i32 %or13, %and11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %or18 = or i32 %or14, 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %13 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %16 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !40
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then
  %18 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg1, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %21 = and i32 %20, 16
  %cmp31 = icmp eq i32 %21, 0
  br i1 %cmp31, label %while.cond.while.cond_crit_edge, label %while.cond.while.cond32_crit_edge

while.cond.while.cond32_crit_edge:                ; preds = %while.cond
  br label %while.cond32

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.cond32:                                     ; preds = %while.cond32.while.cond32_crit_edge, %while.cond.while.cond32_crit_edge
  %22 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg1, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  %25 = and i32 %24, 32
  %cmp40 = icmp eq i32 %25, 0
  br i1 %cmp40, label %while.cond32.while.cond32_crit_edge, label %while.end42

while.cond32.while.cond32_crit_edge:              ; preds = %while.cond32
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond32

while.end42:                                      ; preds = %while.cond32
  call void @__sanitizer_cov_trace_pc() #10
  %or43 = and i32 %or14, -4
  %and44 = or i32 %or43, 1
  br label %do.body58

do.body45:                                        ; preds = %clk_pll_calc.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %or48 = or i32 %5, 2
  %26 = tail call i32 @llvm.bswap.i32(i32 %or48)
  %27 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !40
  %and50 = and i32 %5, -458753
  %or52 = or i32 %and50, %divq.0.i.lcssa
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %or56 = or i32 %or52, 2
  %29 = tail call i32 @llvm.bswap.i32(i32 %or56)
  %30 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !40
  br label %do.body58

do.body58:                                        ; preds = %do.body45, %while.end42
  %reg.0 = phi i32 [ %and44, %while.end42 ], [ %or52, %do.body45 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %33 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #8, !srcloc !40
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_cpu_periphclk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.hb_clk, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = select i1 %tobool.not, i32 2, i32 3
  %div34 = lshr i32 %parent_rate, %4
  ret i32 %div34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_cpu_a9bclk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.hb_clk, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !37
  %3 = lshr i32 %2, 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %and = and i32 %3, 3
  %add = add nuw nsw i32 %and, 2
  %div3 = udiv i32 %parent_rate, %add
  ret i32 %div3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_periclk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.hb_clk, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  %3 = lshr i32 %2, 23
  %inc = and i32 %3, 62
  %mul = add nuw nsw i32 %inc, 2
  %div3 = udiv i32 %parent_rate, %mul
  ret i32 %div3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_periclk_round_rate(ptr nocapture noundef readnone %hwclk, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %div1 = udiv i32 %1, %rate
  %inc = add i32 %div1, 1
  %and = and i32 %inc, -2
  %div2 = udiv i32 %1, %and
  ret i32 %div2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_periclk_set_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = udiv i32 %parent_rate, %rate
  %and = and i32 %div1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %shr = lshr i32 %div1, 1
  %0 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %reg = getelementptr inbounds %struct.hb_clk, ptr %hwclk, i32 0, i32 1
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #8, !srcloc !40
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__of_table_hb_pll, !1, !"__of_table_hb_pll", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-highbank.c", i32 311, i32 1}
!2 = !{ptr @__of_table_hb_a9periph, !3, !"__of_table_hb_a9periph", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-highbank.c", i32 317, i32 1}
!4 = !{ptr @__of_table_hb_a9bus, !5, !"__of_table_hb_a9bus", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-highbank.c", i32 323, i32 1}
!6 = !{ptr @__of_table_hb_emmc, !7, !"__of_table_hb_emmc", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-highbank.c", i32 329, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-highbank.c", i32 273, i32 34}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-highbank.c", i32 274, i32 6}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-highbank.c", i32 282, i32 45}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-highbank.c", i32 288, i32 32}
!16 = !{ptr @clk_pll_ops, !17, !"clk_pll_ops", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-highbank.c", i32 183, i32 29}
!18 = !{ptr @a9periphclk_ops, !19, !"a9periphclk_ops", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-highbank.c", i32 201, i32 29}
!20 = !{ptr @a9bclk_ops, !21, !"a9bclk_ops", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-highbank.c", i32 214, i32 29}
!22 = !{ptr @periclk_ops, !23, !"periclk_ops", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-highbank.c", i32 257, i32 29}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2152551941, i64 2152552432, i64 2152551978, i64 2152552034, i64 2152552068, i64 2152552092, i64 2152552133, i64 2152552154, i64 2152552182, i64 2152552216}
!37 = !{i64 4953210}
!38 = !{i64 2152529069}
!39 = !{i64 2152529287}
!40 = !{i64 4952792}
!41 = !{i64 2152529913}
!42 = !{i64 2152530382}
!43 = !{i64 2152532008}
!44 = !{i64 2152532226}
!45 = !{i64 2152534009}
!46 = !{i64 2152534227}
!47 = !{i64 2152536010}
!48 = !{i64 2152536228}
!49 = !{i64 2152538011}
!50 = !{i64 2152539814}
!51 = !{i64 2152540070}
!52 = !{i64 2152540508}
!53 = !{i64 2152540974}
!54 = !{i64 2152541388}
!55 = !{i64 2152542014}
!56 = !{i64 2152542483}
!57 = !{i64 2152542747}
!58 = !{i64 2152543199}
!59 = !{i64 2152543613}
!60 = !{i64 2152545396}
!61 = !{i64 2152547022}
!62 = !{i64 2152548650}
!63 = !{i64 2152550022}
